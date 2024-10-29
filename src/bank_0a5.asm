SECTION "ROM Bank $0a5", ROMX[$4000], BANK[$a5]

    rla
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    push bc
    ccf
    cp $07
    ld a, [$ff07]
    inc bc
    rst $28
    inc de
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
    rla
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

    rst $38
    add b
    rst $38
    add c
    cp $83
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$8d], a
    ld a, [c]
    add l
    ld a, [$f50a]
    add a
    db $fc
    sub d
    db $fd
    add d
    db $fd
    ld [c], a
    db $dd
    ld [c], a
    db $dd
    ld [c], a
    db $dd
    ld [c], a
    db $dd
    and d
    db $dd
    and d
    db $dd
    and d
    db $dd
    and d
    db $dd
    and d
    db $dd
    and d
    db $dd
    and d
    db $dd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    jp nz, $80bd

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$bf], a
    ldh [$9f], a
    sbc b
    rst $20
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    add [hl]
    ld a, a
    rst $20
    cp a
    rst $00
    cp a
    or a
    rst $18
    ld [hl], a
    rst $18
    db $76
    rst $08
    ld d, $ef
    ld [hl], $ff
    ld a, [c]
    ccf
    rst $08
    dec sp
    reti


    ccf
    rst $38
    dec e
    rst $28
    dec e
    db $fd
    ld c, $ff
    ld c, $f6
    rrca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    inc bc
    db $fd

Call_0a5_40ff:
    inc bc
    rst $38
    ld bc, $01ff
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
    rst $38
    db $10
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc [hl]

Call_0a5_413b:
    rst $38
    ld [hl], h
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    or l
    rst $38
    xor [hl]
    rst $38
    rst $20
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $28
    ld a, a
    cpl
    rst $38
    rst $38
    cp a
    adc a
    rst $38
    cp a
    rst $18
    rst $38
    rst $18
    rst $08
    rst $38
    rst $38
    rst $28
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    rst $30
    ld a, e
    cp e
    ld a, a
    ld sp, hl
    ccf
    db $fd
    ccf
    call c, $ff3f
    ld e, $fe
    rra
    xor $1f
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38

jr_0a5_418d:
    ld bc, $01fe
    nop
    rst $38
    ld de, $20ee
    rst $18
    inc h
    db $db
    inc d
    db $eb
    dec d
    ld [$e916], a
    inc b
    ei
    sub [hl]
    ld l, c
    ld [bc], a
    db $fd
    ld [$04f7], sp
    ei
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_0a5_418d

    ld [de], a
    db $ed
    inc b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld [$32ff], sp
    rst $38
    jr c, @+$01

    ld sp, hl
    rst $38
    ld de, $71ff
    rst $38
    ld sp, hl
    rst $38
    xor h
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    db $fd
    ld a, a
    dec a
    rst $38
    dec a
    rst $38
    db $fd
    cp a
    sbc c
    rst $38
    push af
    rst $18
    db $eb
    rst $18
    rst $18
    rst $28
    rst $20
    rst $38
    rst $28
    rst $30
    ld sp, hl
    rst $30
    ld b, b
    cp a
    ld h, b
    sbc a
    and c
    ld e, [hl]
    add b
    ld a, a
    ret nc

    cpl
    ret nz

    ccf
    call nz, Call_0a5_413b
    cp [hl]
    ld b, d
    cp l
    ld bc, $41fe
    cp [hl]
    ld [bc], a
    db $fd
    ld b, b
    cp a
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    and d
    rst $38
    and b
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $40ff
    rst $38
    ld b, d
    rst $38
    sub b
    rst $38
    and b
    rst $38
    and h
    rst $38
    ret nz

    rst $38
    add $ff
    adc c
    rst $38
    push bc
    rst $38
    add $ff
    ld l, $ff
    add hl, sp
    rst $38
    inc e
    rst $38
    ld l, l
    rst $38
    or h
    rst $38
    ld a, [$ecff]
    rst $38
    jr @+$01

    sbc d
    rst $38
    cp [hl]
    rst $38
    rst $38

jr_0a5_42b3:
    rst $38
    sbc $ff
    sbc [hl]
    rst $38
    rst $18
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a5_42cb:
    rst $38
    db $fd
    rst $38
    cp $ff
    or [hl]
    ld c, c
    ld l, d
    sub l
    ld e, $e1
    or h
    ld c, e
    ld l, h

jr_0a5_42d9:
    sub e
    jr z, jr_0a5_42b3

    ld [hl], b
    adc a
    ld c, b
    or a
    sbc b
    ld h, a
    ld a, b
    add a
    xor b
    ld d, a
    db $10
    rst $28
    ld b, b
    cp a
    jr nz, jr_0a5_42cb

    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld d, b
    xor a
    ld h, b
    sbc a
    jr nz, @-$1f

    ld b, b
    cp a
    jr nz, jr_0a5_42d9

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
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
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    and b
    rst $38
    and b
    rst $38
    xor c
    rst $38
    jp hl


    rst $38
    and e
    rst $38
    and c
    rst $38
    sub c
    rst $38
    and b
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    and b
    rst $38
    sub b
    rst $38
    ret c

    rst $38
    or c
    rst $38
    db $ec
    rst $38
    ld [hl], l
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    db $76
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld [hl], l
    adc d
    ld [hl], c
    adc [hl]
    ld l, a
    sub b
    cpl

jr_0a5_4377:
    ret nc

    ld a, c
    add [hl]
    ld a, l
    add d
    add hl, sp
    add $68
    sub a
    dec a
    jp nz, $807f

    ld a, h
    add e
    ld a, b
    add a
    add hl, de
    and $4a
    or l
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    jr nz, jr_0a5_4377

    ld [$08f7], sp
    rst $30
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
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
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld de, $10ff
    rst $38
    ld [de], a
    rst $38
    sub c
    rst $38
    ld [$07ff], sp
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl+]
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    pop af
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    ld a, [hl-]
    rst $38
    dec [hl]
    rst $38
    xor [hl]
    rst $38
    or h
    rst $38
    rst $10
    rst $38
    ld a, $ff
    cp l
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ei
    inc b
    jp hl


    ld d, $e8
    rla
    ld sp, hl
    ld b, $32
    call Call_0a5_7e81
    pop de
    ld l, $e1
    ld e, $c0
    ccf
    add b
    ld a, a
    ld bc, $04fe
    ei
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
    ld bc, $01fe
    cp $00
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
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
    ld bc, $05ff
    rst $38
    ld bc, $21ff
    rst $38
    ld h, c
    rst $38
    jr nc, @+$01

    ld h, d
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    dec l
    rst $38
    rlca
    rst $38
    ld a, [hl+]
    rst $38
    adc c
    rst $38
    jr nz, @+$01

    adc c
    rst $38
    ld b, c
    rst $38
    and c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    and h
    rst $38
    jp nz, Jump_0a5_51ff

    rst $38
    ld d, h
    rst $38
    ld [hl], $ff
    ld e, [hl]
    rst $38
    inc e
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
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0a5_44c5

    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, jr_0a5_44d6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a5_44e6

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0a5_44c5:
    jr nc, jr_0a5_44f8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a5_44cf

jr_0a5_44cf:
    nop
    add hl, sp
    dec l
    dec l
    dec l
    dec l
    dec l

jr_0a5_44d6:
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0a5_44e6:
    ld b, c
    ld b, d
    ld b, e
    dec l
    dec l
    dec l
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_0a5_44f8:
    ld c, d
    dec l
    dec l
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld d, b
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    dec b
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
    nop
    nop
    ld a, c
    dec b
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
    nop
    nop
    add [hl]
    dec b
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
    nop
    nop
    sub e
    dec b
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
    jr c, jr_0a5_456e

jr_0a5_456e:
    nop
    and b
    and c
    and d
    nop
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
    nop
    nop
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
    nop
    cp b
    cp c
    nop
    nop
    nop
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

    nop
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    dec l
    push de
    sub $d7
    nop
    nop
    nop
    ret c

    reti


    nop
    nop
    jp c, $db00

    call c, Call_000_2d2d
    dec l
    db $dd
    sbc $00
    nop
    nop
    nop
    nop
    nop
    rst $18
    nop
    ldh [$e1], a
    dec l
    dec l
    dec l
    dec l
    ld [c], a
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
    rlca
    rlca
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
    nop
    nop
    nop
    rlca
    rlca
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
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a5_4659

jr_0a5_4659:
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a5_46ae

jr_0a5_46ae:
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0102
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$39
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
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
    jr nc, @+$01

    jr c, @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    or h
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    di
    rst $38
    rst $20
    rst $38
    rst $08
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$04
    ret nz

    ldh [rP1], a
    add b
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    add b
    inc bc
    ret z

    inc bc
    ret c

    inc bc
    ld hl, sp+$03
    ld hl, sp-$04
    nop
    ld a, h
    add b
    ccf
    ret nz

    db $10
    rst $28
    inc bc
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    dec b
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, l
    cp $3f
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
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    ld hl, $00ff
    rst $38
    jr nz, @+$01

    nop
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
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc bc
    rst $38
    db $fc
    cp $f0
    ld hl, sp-$80
    ret nz

    ld bc, $0700
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
    cp $00
    ld hl, sp+$01
    di
    rlca
    rst $10
    rrca
    inc b
    ccf
    db $10
    ld a, a
    inc b
    rst $38
    add c
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    rst $28
    di
    db $ec
    di
    db $ec
    di
    ld hl, sp-$09
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
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
    ccf
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
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld b, a
    adc a
    rst $20
    rra
    rst $20
    rra
    add a
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    ccf
    rra
    ld a, a
    ld a, a
    rst $38
    rst $30
    rst $38
    ld c, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
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
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    ret nc

    rst $38
    call nc, $f0ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    xor $ff
    cp $ff
    db $fc
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$ffff]
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
    rst $30
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, [de]
    rst $38
    inc e
    rst $38
    jr @+$01

    inc e
    rst $38
    jr @+$01

    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    ld e, $ff
    dec e
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
    rst $38
    rra
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
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
    rrca
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rrca
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
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    cp $ff
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
    cp a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ld [$f1ff], a
    rst $38
    db $eb
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    nop
    rst $38
    sbc $ff
    and b
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    dec b
    ld a, [$da25]
    dec b
    ld a, [$ff00]
    ld a, a
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    db $fd
    rst $38
    xor $ff
    ld a, l
    rst $38
    add hl, sp
    rst $38
    dec e
    rst $38
    ld c, $ff
    rlca
    rst $38
    dec b
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

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
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld sp, hl
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, e
    rst $38
    db $ed
    rst $38
    ld a, d
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [$c0f7], a
    rst $38
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ret nc

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ei
    inc d
    db $eb
    dec sp
    call nz, $e01f
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop

Jump_0a5_4d25:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    cp a
    ld b, b
    ld e, [hl]
    and c
    ld a, h
    add e
    cp h
    ld b, e
    ld a, c
    add [hl]
    call c, $bc23
    ld b, e
    cp $01

jr_0a5_4d3c:
    rst $18
    jr nz, jr_0a5_4d3c

    ld [bc], a
    nop
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
    reti


    rst $38
    sbc c
    rst $38
    ld d, l
    rst $38
    ld h, [hl]
    rst $38
    ld d, l
    rst $38
    sbc c
    rst $38
    sub l
    rst $38
    ld h, [hl]
    rst $38
    ld h, h
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    sbc c
    rst $38
    add hl, sp
    rst $38
    ld h, h
    rst $38
    daa
    cp $19
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    pop af
    nop
    db $f4
    nop
    db $76
    add b
    db $76
    add b
    db $76
    add b
    db $f4
    nop

jr_0a5_4d82:
    pop af
    nop
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
    ldh a, [rSC]
    ldh a, [rP1]
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [c]
    nop
    ld a, [c]
    nop
    ldh a, [$80]
    ld a, a
    add b
    rst $38
    ld e, a
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    sbc b
    rst $38
    dec de
    rst $38
    ld h, $ff
    nop
    rst $38
    call z, $fbbb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    nop
    rst $38
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
    ld b, b
    cp a
    ld a, d
    add l
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
    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, jr_0a5_4d82

    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    ld h, c
    sbc [hl]
    rrca
    ldh a, [rSB]
    cp $03
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [$03ff], sp
    db $fc
    inc b
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld b, $ff
    ld b, [hl]
    cp a
    ld de, $19ff
    rst $38
    db $10
    rst $38
    ld b, $ff
    inc b
    rst $38
    add hl, de
    rst $38
    inc sp
    db $dd
    ld h, a
    sbc [hl]
    ld l, l
    sub [hl]
    ld [hl], l
    sbc e
    ld [hl], a
    sbc c
    db $ec
    rla
    rst $20
    ld e, $71
    sbc a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop

jr_0a5_4e46:
    rst $00
    nop
    rst $10
    nop
    rst $10
    nop
    rlca
    nop
    rst $10
    nop
    rst $10
    nop
    rst $10
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    di
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, b
    inc b
    rst $38
    nop
    ccf
    ld b, b
    inc hl
    ld d, b
    ld [hl], e
    nop
    ld h, b
    sub b
    jr nz, jr_0a5_4e46

    nop

jr_0a5_4e6f:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    rra
    rst $38
    rla
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    ld [$05ff], sp
    cp $20
    rst $38
    reti


    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_0a5_4e6f

    db $fd
    ld [bc], a
    add sp, $17
    ld hl, sp+$07
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
    ld [bc], a
    db $fd
    ld a, [$fd05]
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ei
    rst $18
    jr nz, jr_0a5_4f32

    and b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    rst $30
    ld [$ff00], sp
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    add hl, bc
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld [$99ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld h, [hl]
    rst $38
    ld [bc], a
    rst $38
    ret c

    cp a
    ld de, $f7fe
    ld l, h
    rst $00
    ld a, b
    rst $38
    sub b
    rst $08
    or b
    ld e, a
    ldh [$7f], a
    ret nz

    ld a, a
    add b
    rrca
    ldh a, [$86]
    ld a, c
    db $ec
    dec de
    ret


    ccf
    db $fd
    rrca
    db $fd
    rrca
    cp $0f
    rst $38
    rrca
    ei
    rrca
    rst $38
    rrca
    cp $0f
    ld c, a
    ccf
    cpl
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    ld l, a
    rra

jr_0a5_4f32:
    cpl
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    rrca
    ccf
    ld l, e
    rra
    ld de, $60ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    or b
    rst $38
    and b
    rst $38
    add b
    rst $38
    xor b
    rst $38
    or b
    rst $28
    ld [hl], b
    xor a
    db $e4
    dec sp
    ld sp, hl
    rst $38
    rst $38
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
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    dec b
    ld a, [$e01f]
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    ld d, e
    xor h
    dec hl
    call nc, $847b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ld a, [$f305]
    rrca
    add sp, $17
    db $e4
    dec de
    ld hl, sp+$07
    or b
    ld c, a
    ld a, [hl]
    add c
    db $db
    inc h
    sbc [hl]
    ld h, c
    rst $38
    nop
    ld a, a
    add b
    scf
    ret z

    cpl
    ret nc

    adc a
    ld [hl], b
    rst $38
    nop
    scf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor [hl]
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    jr nz, @+$01

    ld h, h
    ei
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    cp $01
    cp $01
    db $fd
    inc bc
    ld a, [$f507]
    rrca
    add sp, $1f
    or $1f
    and $3f
    sbc b
    ld a, a
    add hl, de
    rst $38
    ld l, d
    rst $38
    ld h, [hl]
    rst $38
    ld b, d
    rst $38
    add hl, de
    rst $38
    jp z, Jump_0a5_66ff

    rst $38
    ld h, [hl]
    rst $38
    cp c
    rst $38
    reti


    rst $38
    and $ff
    and $ff
    reti


    rst $38
    db $fd
    rst $38
    and $ff
    or $ff
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    xor $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    ld a, e
    rst $38
    ld l, a
    rst $38
    ld l, $ff
    rra
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a5_5029:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    or b
    rst $38
    ld c, h
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
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
    jr nz, jr_0a5_5029

    add sp, $17
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    ld b, $f1
    ld c, $da
    dec h
    db $db
    inc h
    di
    inc c
    rst $38
    nop
    ei
    inc b
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld d, b
    xor a
    nop
    rst $38
    ld [$40f7], sp
    cp a
    jr nz, @-$1f

    ld b, b
    cp a
    ld b, b
    cp a
    db $10
    rst $28
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld l, b
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    ret z

    rst $38
    add b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    and b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    or b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    or b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld c, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    jr @-$0f

    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    push af
    dec bc
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$10ff], sp
    rst $28
    ld c, b
    cp a
    ld e, b
    xor a
    adc b
    ld a, a
    ld e, b
    xor a
    nop
    rst $38
    ret nz

    ccf
    or b
    ld c, a
    jr nc, @+$01

    nop
    rst $38
    nop
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
    ret nz

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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_0a5_5159:
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_0a5_515f:
    rst $38
    add b
    rst $38
    add [hl]
    ld hl, sp-$7a
    ld hl, sp+$06
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    ld h, b

jr_0a5_516d:
    sbc a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld a, h
    add e
    ld a, h
    add e
    ld a, a
    add b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    jr z, jr_0a5_5159

    ld d, b
    xor a
    db $10
    rst $28
    jr z, jr_0a5_515f

    ld [$20f7], sp
    rst $18
    jr nz, jr_0a5_516d

    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, [$fa04]
    ld b, $f9
    ld b, $f9
    inc b
    ei
    inc b
    ei
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $01ff
    rst $38
    ld [$19f7], sp
    rst $30
    ld a, [bc]
    rst $30
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    dec b
    cp $01
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc

Jump_0a5_51ff:
    db $fc
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    dec b
    ld hl, sp+$05
    ld hl, sp+$0d
    ld hl, sp+$08
    db $fd
    nop
    db $fd
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    dec c
    ld sp, hl
    ld bc, $03f9
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    dec bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    dec bc
    pop af
    dec de
    pop af
    dec de
    pop af
    inc de
    pop af
    add hl, de
    di
    add hl, bc
    di
    rst $30
    ei
    rlca
    ei
    rra
    di
    ld e, a
    di
    sbc a
    db $d3
    dec sp
    rst $30
    ei
    rst $30
    ei
    rst $30
    ld b, $f3
    ld b, $f3
    ld b, $f3
    ld c, $f3
    xor $13
    inc e
    di
    inc b
    ei
    ld b, $f9
    dec bc
    db $fc
    dec b
    cp $02
    rst $38
    add e
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld d, b
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
    add b
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    ld [$fcff], sp
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $08
    ld b, a
    adc a
    ld b, a
    adc a
    sbc a
    rst $08
    sbc a
    rst $08
    sbc a
    rst $08
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    sbc a
    adc a
    sbc a
    adc a
    sbc a
    adc a
    adc a
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    adc a
    rra
    adc a
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    cp a
    rra
    cp a
    rra
    ccf
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    rrca
    sbc a
    sbc a
    adc a
    rst $10
    adc a
    xor e
    rst $00
    db $dd
    ld [c], a
    rst $28
    ldh a, [$f3]
    db $fc
    cp $ff
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
    cp $ff
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    rst $20
    nop
    inc bc
    ret nz

    jp $01c0


    call nz, $e001
    nop
    pop af
    ld c, $ff
    ld [bc], a
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld e, $e1
    ld b, $f9
    ld a, [bc]
    db $fd
    ld c, $ff
    add hl, bc
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rla
    rst $38
    dec de
    rst $38
    dec a
    rst $38
    ld e, $ff
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
    ccf
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    inc a
    cp $78
    cp $7c
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ei
    db $fc
    ld hl, sp-$01
    db $f4
    ei
    rst $30
    ld hl, sp-$0a
    ld sp, hl
    ld [hl], h
    ei
    ld a, $f1
    ld e, $f1
    ld b, $f9
    inc c
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    cp $ff
    ldh a, [rIE]
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    db $f4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    add sp, -$01
    db $ec
    rst $38
    db $ec
    rst $38
    ret z

    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [hl-]
    ld a, a
    ld [hl], h
    ccf
    ld a, [hl]
    ccf
    ld a, $ff
    cp $ff
    sbc $ff
    and $ff
    call nz, $92ff
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, b
    add a
    ld a, e
    add h
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    add b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    sub e
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
    ld a, a
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
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
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
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
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
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    rst $38
    adc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    ld d, e
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $28
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
    rra
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    inc b
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    rla
    jr jr_0a5_5595

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    inc b
    inc b
    inc b

jr_0a5_5595:
    inc b
    inc b
    ld h, $27
    jr z, jr_0a5_55c4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a5_55d4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a5_55e4

    ld a, [hl-]
    dec sp
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $3d3d
    dec a
    ld c, b

jr_0a5_55c4:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc b
    ld c, [hl]
    ld c, a
    ld bc, $5001
    ld bc, $513d
    ld d, d
    ld d, e

jr_0a5_55d4:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc b
    ld e, d
    ld e, e
    ld e, h
    ld bc, $3d01
    dec a
    ld e, l
    ld e, [hl]

jr_0a5_55e4:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc b
    ld h, a
    ld bc, $3d01
    dec a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    dec a
    dec a
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
    dec a
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
    ld bc, $908f
    sub c
    sub d
    inc b
    inc b
    inc b
    sub e
    sub h
    inc b
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld bc, $9b9a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld bc, $0101
    ret nz

    pop bc
    inc b
    inc b
    inc b
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    ld bc, $0101
    jp z, $cccb

    inc b
    inc b
    call $cfce
    ret nc

    pop de
    jp nc, $01d3

    ld bc, $0101
    call nc, $d6d5
    inc b
    inc b
    inc b
    rst $10
    inc b
    inc b
    ret c

    reti


    jp c, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
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
    ld bc, $0001
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
    rlca
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $01
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    ld c, a
    or b
    ld l, a
    sub b
    dec a
    jp nz, $a35c

    ld e, $e1
    inc e
    db $e3
    ld c, $f1
    inc bc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld de, $01ff
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    db $10
    rst $38
    ld [$ffff], sp
    nop
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_0a5_5885:
    jr nz, jr_0a5_5885

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$2ad5], sp
    push af
    ld a, [bc]
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
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    add hl, bc
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
    ld [$04ff], sp
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$0aff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    add c
    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    ld d, [hl]
    rst $38
    dec d
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    add d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld b, l
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    call nc, $f42b
    dec bc
    ldh a, [rIF]
    call nc, $f42b
    dec bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    db $f4
    dec bc
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld l, [hl]
    sub c
    db $ec
    inc de
    db $ec
    inc de
    cp b
    ld b, a
    jr z, @-$27

    sbc b
    ld h, a
    ld [$00f7], sp
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
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    ld [$06ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    add hl, hl
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    pop af
    rst $38
    rst $00
    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    ld [hl], b
    rst $38
    ld d, h
    rst $38
    or l
    rst $38
    sbc h
    rst $38
    or h
    rst $38
    inc a
    rst $38
    ld e, c
    rst $38
    xor l
    rst $38
    inc l
    rst $38
    sbc e
    rst $38
    db $ed
    rst $38
    ld l, h
    rst $38
    sub $ff
    ld b, [hl]
    rst $38
    ld a, [hl+]
    rst $38
    db $76
    rst $38
    ld h, a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    or [hl]
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    db $ed
    rst $38
    ld a, h
    rst $38
    cp $ff
    dec a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    ccf
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld b, $ff
    dec b
    rst $38
    inc c
    rst $38
    add e
    rst $38
    dec c
    rst $38
    rla
    rst $38
    ld c, a
    rst $38
    sub a
    rst $38
    rra
    rst $38
    rst $20
    rst $38
    xor a
    rst $38
    ld a, a
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
    rst $18
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $fc
    rst $38
    cp $fd
    rst $38
    db $fd
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    cp a
    ei
    di
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add c
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
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    rst $38
    add hl, hl
    rst $38
    ld [de], a
    rst $38
    and d
    rst $38
    dec l
    rst $38
    add hl, bc
    rst $38
    ld de, $59ff
    rst $38
    dec de
    rst $38
    or l
    rst $38
    jr @+$01

    ld a, [hl-]
    rst $38
    xor e
    cp $b8
    rst $38
    or a
    db $fd
    or a
    db $fd
    cp c
    rst $38
    cp a
    ei
    rst $18
    ei
    db $d3
    rst $38
    rst $18
    rst $30
    sbc $f7
    rst $20
    cp $ff
    xor $dd
    xor $cd
    cp $ff
    call c, $fcdf
    sbc e
    db $fc
    rst $38
    cp b
    ld a, a
    cp b
    scf
    ld hl, sp+$77
    ld hl, sp-$01
    ld [hl], b
    ld a, a
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    ldh [$f0], a
    ret nz

    ldh [$f0], a
    ldh [$f0], a
    ld hl, sp-$03
    cp $ff
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
    ld b, a
    rst $38
    dec de
    rst $20
    ld e, e
    rst $20
    dec de
    rst $20
    dec de
    rst $20
    dec de
    rst $20
    dec sp
    rst $20
    dec sp
    rst $20
    dec sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld a, [$fbff]
    cp $f3
    cp $f5
    cp $f7
    db $fc
    ld l, a
    db $fc
    ld [$e8fd], a
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    or b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ldh a, [$6f]
    ld a, e
    db $e4
    rst $18
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    cpl
    rra
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rst $30
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
    rst $38
    rst $38
    rst $38
    adc e
    rlca
    inc bc
    ld bc, $c3bf
    rst $38
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
    jp $c1e1


    rst $38
    rst $38
    add l
    db $fd
    xor b
    push de
    adc b
    push af
    cp b
    push bc
    rst $00
    db $fd
    add d
    call $8d82
    ret nz

    rst $08
    ldh a, [rIE]
    ret nz

    rst $38
    pop bc
    pop af
    jp nz, $aafe

    push de
    xor e
    call nc, $d4ab
    cp e
    call nz, $c4bf
    cp a
    call nz, $c4ff
    cp a
    call nz, $c4ff
    ei
    call nz, $84fb
    db $db
    and h
    db $d3
    adc h
    rst $10
    adc b
    ei
    add h
    cp a
    ret nz

    rst $30
    ret z

    rst $30
    ret z

    rst $38
    ret nz

    rst $10
    add sp, -$69
    add sp, -$69
    add sp, -$6b
    ld [$ee91], a
    sub c
    xor $d1
    xor $d1
    xor $e0
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
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
    rst $38
    nop
    cp $01
    ld a, [c]
    dec c
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
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
    rst $18
    sbc a
    ld b, b
    sbc a
    ld b, b
    cp a
    ld b, b
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    cp a
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
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $28
    db $10
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $ec
    inc de
    ld hl, sp+$07
    rla
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    rst $20
    rst $38
    ld sp, hl
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    rst $38
    nop
    rst $38
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
    ei
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$5f], a
    and b
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rrca
    ldh a, [rP1]
    rst $38
    db $fd
    rst $38
    call nc, $0eff
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    ld [$20f7], sp
    rst $18
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    or $09
    cp $01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ret nz

    pop hl
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld e, a
    ld e, a
    xor e
    xor a
    rst $10
    dec hl
    rst $10
    dec hl
    db $d3
    cpl
    db $d3
    cpl
    db $d3
    cpl
    or a
    ld c, e
    or a
    ld c, e
    or a
    ld c, e
    cp a
    ld b, e
    cp a
    ld b, e
    rst $38
    inc bc
    rst $28
    inc de
    rst $28
    inc de
    rst $30
    dec bc
    rst $20
    dec de
    rst $20
    dec de
    rst $38
    inc bc
    rst $30
    dec bc
    push af
    dec bc
    rst $30
    dec bc
    pop hl
    rra
    and c
    ld e, a
    and a
    ld e, e
    add l
    ld a, e
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    adc a
    ld [hl], b
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
    xor l
    jp $8103


    ei
    rst $00
    rst $38
    rst $38
    rra
    rst $38
    ld a, a
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
    rst $30
    rst $38
    rst $28
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
    db $fc
    rst $38
    rst $20
    rst $18
    rst $38
    rst $18
    rst $38
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
    ld d, [hl]
    xor c
    inc l
    db $d3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $02fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    ei
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a5_5efe:
    db $eb
    inc d
    jp hl


    ld d, $eb
    inc d
    rst $20
    jr jr_0a5_5efe

    ld [$08f7], sp
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
    cp $ff
    ld a, [$f8fc]
    ldh a, [$f8]
    ldh a, [$fa]
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
    cp a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    db $e4
    ld hl, sp-$19
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
    ld hl, sp-$01
    sub e
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, c
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $30
    rra
    pop hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

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
    rst $38
    nop
    ei
    inc b
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
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
    cp $01
    jp c, Jump_0a5_4d25

    or d
    xor l
    ld d, d
    or [hl]
    ld c, c
    sub $29
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    db $fc
    inc bc
    or d
    ld c, l
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
    dec bc
    rlca
    rlca
    inc bc
    rlca
    rlca
    ld a, $1f
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    and b
    rst $38
    ld bc, $3fff
    rst $38
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
    ret nz

    rst $38
    and b
    rst $38
    and b
    rst $38
    ret z

    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add h
    rst $38
    jp nz, $98ff

    rst $38
    ld e, b
    rst $38
    ldh [rIE], a
    ld e, h
    rst $38
    ldh a, [rIE]
    cp $ff
    cp c
    rst $38
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    jp hl


    rst $38
    db $fc
    rst $38
    ei
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld a, l
    rst $38
    ld a, $ff
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, e
    add h
    xor [hl]
    ld d, c
    di
    inc c
    db $fc
    inc bc
    rst $38
    nop
    pop af
    ld c, $93
    ld l, h
    ld e, c
    and [hl]
    ld c, c
    or [hl]
    xor h
    ld d, e
    cp [hl]
    ld b, c
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $ed
    ld [de], a
    ld h, [hl]
    sbc c
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rst $38
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a5_611f:
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
    jr nz, @+$01

    and b
    rst $38
    add b
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
    jr z, jr_0a5_611f

    add e
    rlca
    ld h, b
    add c
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    add b
    nop
    add b
    ret nz

    ld d, b
    ldh [$38], a
    ldh a, [$88]
    db $fc
    and [hl]
    rst $38
    pop de
    rst $38
    call nz, Call_0a5_40ff
    rst $38
    jr nz, @+$01

    and b
    ld e, a
    db $f4
    rrca
    ld a, [$ff07]
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    db $ec
    inc de
    cp $01
    ret c

    daa
    ld b, $f9
    and [hl]
    ld e, c
    jp $c93c


    ld [hl], $e5
    ld a, [de]

jr_0a5_6192:
    ccf
    ret nz

    rst $38
    nop
    db $fc
    inc bc
    adc [hl]
    ld [hl], c
    sbc [hl]
    ld h, c
    rst $08
    jr nc, jr_0a5_6192

    inc c
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
    ld b, $f9
    ld b, $f9
    inc bc
    ld sp, hl
    dec bc
    pop af
    dec bc
    pop af
    ld bc, $01f3
    di
    ld bc, $11f3
    db $e3
    ld de, $01e3
    db $e3
    ld bc, $15e3
    db $e3
    ld de, $15e3
    db $e3
    dec d
    db $e3
    rla
    db $e3
    rla
    db $e3
    rla
    db $e3
    inc de
    rst $20
    ld [bc], a
    rst $20
    ld c, $e7
    ld b, $ef
    ld [hl], $cf
    ld l, $df
    inc a
    rst $18
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    pop hl
    rst $38
    jp $0fff


    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld b, b
    ccf
    nop
    rrca
    nop
    rlca
    nop
    rlca
    inc b
    rlca
    nop
    rlca
    inc c
    rlca
    jr c, jr_0a5_621b

    cp b
    rlca
    ldh a, [rIF]
    ret nz

    ccf
    add b

jr_0a5_621b:
    ld a, a
    nop
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, c
    rst $38
    add b
    ld a, a
    pop de
    ccf
    db $eb
    rra
    rst $38
    rlca
    db $fd
    inc bc
    sub b
    ld l, a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    sub b
    ld l, a
    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
    adc b
    ld [hl], a
    rst $38
    nop
    ld [hl], l
    adc d
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$9f], a
    ld h, b
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    xor $ff
    adc $ff
    adc $ff
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    jr c, @+$01

    inc h
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld [$14ff], sp
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr z, @+$01

    jr z, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
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
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    sbc c
    rst $38
    ld d, [hl]
    rst $28
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    ei
    rlca
    db $fd
    inc bc
    or $09
    rst $38
    nop
    cp a
    ld b, b
    ld hl, sp+$07
    ret c

    daa
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
    add b
    ld a, a
    ret c

    daa
    cp d
    ld b, l
    scf
    ret z

    cp h
    ld b, e
    rst $38
    nop
    rst $38
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
    ld [bc], a
    db $fd
    ld b, $f9
    ld [bc], a
    db $fd
    ld b, $f9
    rlca
    ld hl, sp+$06
    ld sp, hl
    rrca
    ldh a, [$0c]
    di
    inc c
    di
    ld e, $e1
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$2f]
    ret nc

    rrca
    ldh a, [$3f]
    ret nz

    rla
    add sp, $3f
    ret nz

    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$cf], a
    jr nc, jr_0a5_636b

    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_0a5_636b:
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    sbc c
    rst $38
    ld l, h
    rst $38
    ld sp, hl
    rst $38
    ld [c], a
    rst $38
    ld h, d
    rst $38
    daa
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
    rst $18
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
    inc h
    db $db
    inc c
    di
    db $e3
    inc e
    jp nc, $bc2d

    ld b, e
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
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
    rst $30
    ld [$28d7], sp
    ccf
    ret nz

    ld e, a
    and b
    rra
    ldh [rTAC], a
    ld hl, sp+$0a
    push af
    rlca
    ld hl, sp+$07
    ld hl, sp+$1d
    ld [c], a
    nop
    rst $38
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    jr nz, @+$01

    ld sp, $03ff
    rst $38
    and c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $38
    add b
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
    ld c, b
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    and h
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld a, b
    rst $38
    inc e
    rst $38
    add $ff
    rst $20
    rst $38
    ld sp, hl
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
    ld [bc], a
    db $fd
    ld b, b
    cp a
    ld a, [hl+]
    push de
    rla
    add sp, $4f
    or b
    ld e, a
    and b
    sbc a
    ld h, b
    rst $08
    jr nc, @+$01

    nop
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a5_6471:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, [hl]
    add c
    or [hl]
    ld c, c
    xor a
    ld d, b
    and [hl]
    ld e, c
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_0a5_6471

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
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
    nop
    rst $38
    adc b
    rst $38
    ld [$90ff], sp
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $00ff
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    ld bc, $a0ff
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    call nz, $e2ff
    rst $38
    ld sp, hl
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    rst $30
    rrca
    ei
    rlca
    db $fd
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
    ld [hl], a
    adc b
    inc a
    jp $c13e


    ld a, [hl-]
    push bc
    ld a, [hl]
    add c
    cp b
    ld b, a
    ld e, b
    and a
    sub [hl]
    ld l, c
    ld [hl], $c9
    db $10
    rst $28
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
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, [$f8f7]
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld b, $08
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    add hl, bc
    ld a, [bc]
    ld b, $0b
    inc c
    dec c
    ld c, $06
    ld b, $06
    ld b, $06
    ld b, $0b
    ld b, $0f
    ld b, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$08

    add hl, de
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
    jr z, jr_0a5_6604

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a5_6614

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a5_65f9

    ld b, $39
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_0a5_65f9:
    ld b, h
    ld b, $45
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    ld a, [hl-]
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_0a5_6604:
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
    ld a, [hl-]
    ld a, [hl-]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_0a5_6614:
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
    ld a, [hl-]
    ld a, [hl-]
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
    ld a, [hl-]
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
    ld b, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl-]
    ld a, [hl-]
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
    ld a, [hl-]
    ld a, [hl-]
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
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    sbc e
    ld b, $06
    add hl, bc
    sbc h
    sbc l

Call_0a5_6666:
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $a5
    and [hl]
    ld b, $06
    ld b, $06
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    ld a, [hl-]
    ld a, [hl-]
    ld b, $ae
    xor a
    ld b, $b0
    ld b, $06
    ld b, $06
    or c
    ld b, $b2
    or e
    or h
    or l
    ld a, [hl-]
    ld b, $b6
    or a
    ld b, $b8
    cp c
    cp d
    ld b, $06
    ld b, $06
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld b, $c0
    pop bc
    ld b, $06
    jp nz, $06c3

    ld b, $06
    ld b, $c4
    push bc
    add $c7
    ret z

    ld b, $c9
    jp z, $cb06

    call z, $cecd
    ld b, $06
    ld b, $06
    ld b, $cf
    ret nc

    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0a5_66ff:
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a5_672c

jr_0a5_672c:
    nop
    nop
    nop
    nop
    ld bc, $0203
    nop
    nop
    nop
    nop
    nop
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
    dec b
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
    dec b
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
    jr nz, jr_0a5_67a5

jr_0a5_67a5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rst $28
    sbc b
    ld h, a
    ld [$0cf7], sp
    di
    inc b
    ei
    inc b
    ei
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $02
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add b
    ld a, a
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    ld bc, $20fe
    rst $18
    db $10
    rst $28
    jr nc, @-$2f

    db $10
    rst $28
    add hl, de
    and $19
    and $88
    ld [hl], a
    inc c
    di
    ld c, $f1
    rrca
    ldh a, [$0d]
    ld a, [c]
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$0d
    ld a, [c]
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    add b
    ld a, a
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$02
    cp $f9
    cp $f8
    db $fd
    ld a, [$fef8]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    inc b
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld de, $00ff
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    ld de, $0bff
    rst $38
    dec l
    rst $38
    adc h
    rst $38
    dec e
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    ld c, $ff
    ld c, d
    rst $38
    ld a, [bc]
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    rra
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
    add b
    rst $38
    add b
    rst $38
    ld b, e
    rst $38
    push bc
    db $fd
    push bc
    db $fd
    add h
    db $fc
    and h
    db $fc
    cp e
    rst $38
    xor [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    add e
    db $fc
    add d
    db $fd
    add b
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
    pop bc
    cp $d0
    rst $28
    call $e0f2
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$19
    ld e, b
    rst $20
    ld a, b
    rst $00
    ld hl, sp-$39
    ret c

    db $e3
    ret c

    db $e3
    cp b
    db $e3
    ld hl, sp-$1d
    ld a, b
    db $e3
    ld hl, sp-$19
    ldh a, [$e7]
    ld h, b
    rst $30
    ldh [$f7], a
    ld a, b
    rst $30
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    ld e, $ff
    dec a
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, [de]
    rst $38
    ld a, [hl+]
    rst $38
    ld l, $fb
    ld l, a
    ld a, [$fa7f]
    ld [hl], e
    cp $57
    ld a, [$fe73]
    pop af
    cp $f1
    cp $b9
    or $fd
    or $fd
    or $ff
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $28
    db $f4
    ld l, a
    db $f4
    rst $28
    db $f4
    ld [hl], a
    db $ec
    ld [hl], a
    db $ec
    ld [hl], e
    db $ec
    ld a, e
    db $ec
    ei
    db $ec
    ld a, e
    db $ec
    ld a, a
    add sp, -$61
    add sp, -$21
    add sp, -$21
    add sp, -$31
    ld hl, sp-$11

jr_0a5_6aef:
    ret c

    cp b
    rst $08
    or b
    rst $08
    ldh a, [$cf]
    ld hl, sp-$31
    ret nc

    rst $08
    ld d, b
    rst $08
    ld d, b
    rst $08
    ld d, b
    rst $28
    nop
    rst $38
    inc c
    ei
    ld c, h
    db $d3
    jr jr_0a5_6aef

    nop
    rst $38
    nop
    rst $38
    sbc b
    sbc b
    adc h
    adc h
    call z, $c6cc
    add $e6
    and $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    rst $18
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    ei
    inc h
    rst $38
    jr nz, jr_0a5_6b9e

    or b
    ld l, a
    or b
    ld l, l
    or d
    ld e, l
    or d
    ld e, [hl]
    or c
    ld e, h
    or e
    ld a, a
    sub b
    ld a, l
    sub d
    ld a, l
    sub d
    dec [hl]
    jp c, $da35

    scf
    ret c

    daa
    ret c

    cpl
    ret c

    ld l, $d9
    ld l, $d9
    ld e, $e9
    ld a, [de]
    db $ed
    ld a, [de]
    db $ed
    ld a, [de]
    db $ed
    ld a, [de]
    db $ed
    ld a, [de]
    db $ed
    ld d, $ed
    ld b, $fd
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld d, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    adc d
    rst $38
    db $db
    rst $38
    ld c, e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38

jr_0a5_6b7e:
    rst $38
    rst $38

jr_0a5_6b80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a5_6b86:
    rst $38
    rst $38

jr_0a5_6b88:
    ldh [rIE], a

jr_0a5_6b8a:
    add b
    rst $38

jr_0a5_6b8c:
    add b
    rst $38

jr_0a5_6b8e:
    add b
    rst $38
    adc a
    ld [hl], b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a5_6b9e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr nz, jr_0a5_6b86

    jr nz, jr_0a5_6b88

    jr nz, jr_0a5_6b8a

    jr nz, jr_0a5_6b8c

    jr nz, jr_0a5_6b7e

    jr nc, jr_0a5_6b80

    jr nc, jr_0a5_6b8e

    jr nc, jr_0a5_6be1

    rst $38
    ld a, $ed
    ld [hl-], a
    db $ed
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    add $c6
    and $e6
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld sp, $fc31
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38

jr_0a5_6be1:
    nop
    rst $38
    nop

jr_0a5_6be4:
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
    rst $38
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
    cp a
    ld b, b
    ei
    inc b
    rst $18
    jr nz, jr_0a5_6be4

    ld [hl+], a
    rst $28
    db $10
    rst $28
    db $10
    or $09
    rst $30
    ld [$04fb], sp
    xor e
    ld d, h
    sub l
    ld l, d
    adc l
    ld [hl], d
    dec c
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a5_6c29:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld h, l
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
    ret z

    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ld hl, sp-$50
    ld c, b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    jr nz, jr_0a5_6c29

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    cp a
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    rst $38
    ld h, e
    rst $38
    inc sp
    ld sp, $1931
    add hl, de
    sbc b
    sbc b
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38

jr_0a5_6cac:
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
    ld a, [$ff05]
    nop
    rst $30
    ld [$08f7], sp
    cp $01
    cp $01
    rst $28
    db $10
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_0a5_6cac

    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    or a
    ld c, b
    rst $30
    ld [$807f], sp
    ld a, a
    add b
    ld l, a
    sub b
    rst $20
    jr @+$5a

    and a
    add a
    ld a, e
    add a
    ld a, e
    add e
    ld a, a
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
    inc b
    rst $38
    ld hl, $02ff
    rst $38
    inc de
    rst $38
    rla
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
    ldh [rIE], a
    rrca
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $c700


    nop
    cp $04
    jr jr_0a5_6d35

jr_0a5_6d35:
    inc e
    jr jr_0a5_6d3c

    ld [$1814], sp
    inc b

jr_0a5_6d3c:
    inc e
    nop
    jr jr_0a5_6d44

    ld c, $00
    rrca
    nop

jr_0a5_6d44:
    rlca
    nop
    inc bc
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
    rlca
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

jr_0a5_6d78:
    nop
    rst $38

jr_0a5_6d7a:
    nop
    rst $38

jr_0a5_6d7c:
    rst $38
    add hl, de

jr_0a5_6d7e:
    rst $38
    sbc b

jr_0a5_6d80:
    sbc h
    sbc h
    adc h
    adc h
    adc $ce

jr_0a5_6d86:
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_0a5_6d8b:
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_0a5_6d78

    jr nz, jr_0a5_6d7a

    jr nz, jr_0a5_6d7c

    jr nz, jr_0a5_6d7e

    jr nz, jr_0a5_6d80

    jr nz, jr_0a5_6d7e

    inc h
    rst $18
    jr nz, jr_0a5_6d86

    jr nz, jr_0a5_6d86

    ld [hl+], a
    rst $18
    jr nz, jr_0a5_6d8b

    ld hl, $a15e
    ld d, a
    xor b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, e
    and h
    ld d, b
    xor a
    ld [bc], a
    db $fd
    ld c, b
    rst $38
    ld c, [hl]
    rst $38
    adc $ff
    xor $ff
    xor $ff
    xor b
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc l
    rst $38
    and [hl]
    rst $38
    sub $ff
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
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    ld hl, sp+$00
    db $fc
    ld a, [bc]
    sub l
    rlca
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    rlca
    inc bc
    inc b
    ld bc, $0000
    nop
    nop
    nop

jr_0a5_6e20:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, a
    nop
    rra
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call $b732
    ld c, b
    rst $10
    jr z, jr_0a5_6e20

    jr z, jr_0a5_6eaa

    jr nz, @+$59

    jr z, jr_0a5_6ece

    nop
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
    rst $38
    sbc b
    rst $38
    call z, $cccc
    ld c, [hl]
    ld c, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $21
    rst $38
    nop
    db $ed
    ld [de], a
    ld l, l
    sub d
    ld [hl], c
    adc [hl]
    or e
    ld c, h
    or d
    ld c, l
    inc sp
    call z, $f708
    ld d, d
    xor l
    inc e
    db $e3
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a5_6eaa:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop

jr_0a5_6eb3:
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld hl, $95ff
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
    ldh [rIE], a
    inc bc
    rst $38
    rst $38
    rst $38

jr_0a5_6ece:
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38

jr_0a5_6ed4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    jr nz, jr_0a5_6eb3

    jr nc, jr_0a5_6f3d

    or b
    jr nz, jr_0a5_6ed4

    nop
    ldh [$a0], a
    ld d, b
    ldh a, [$08]
    ld a, h
    nop
    ld e, $00
    ld [$0707], sp
    nop
    inc bc
    nop
    ld bc, $ff06
    nop
    rst $38
    nop
    ld c, $f0
    ld b, $09
    rlca
    nop
    ld b, a
    add b
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
    xor $11
    call z, $cf33
    jr nc, @+$01

    nop
    or e
    ld c, h
    cp a
    ld b, b
    rst $38

jr_0a5_6f3d:
    nop
    rst $38
    nop
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    rst $38
    rst $38
    call z, $cccc
    call z, Call_0a5_6666
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    inc bc
    db $fc
    ld sp, hl
    ld b, $d9
    ld h, $fa
    dec b
    rst $38
    inc b
    or d
    ld c, l
    or d
    ld c, l
    ld a, [c]
    dec c
    ld l, d
    sub l
    ld l, d
    sub l
    ld [$da15], a
    dec h
    db $d3
    dec l
    db $d3
    dec l
    and e
    ld e, l
    ld hl, $03df
    db $fd
    ld b, c
    cp a
    ld hl, $00df
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [$02ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld c, d
    rst $38
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    sbc l
    nop
    ld hl, sp+$00
    jr c, jr_0a5_6fcf

jr_0a5_6fcf:
    inc e
    nop
    ld c, $00
    rlca
    inc bc
    inc b
    ld bc, $0002
    inc bc
    nop
    inc bc
    ld bc, $0702
    nop
    rlca
    ld [$019e], sp
    cp $00
    db $fc
    nop
    ldh a, [$08]
    ldh [rP1], a
    nop
    add b
    nop
    nop
    rrca
    db $10
    rra
    jr nz, jr_0a5_7074

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

Call_0a5_6fff:
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ld h, b
    sbc a
    ldh [$1f], a
    add b
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $08
    rst $08
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld e, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    add c
    rst $38
    ret nz

    cp a
    pop bc
    cp a
    pop bc
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, a
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
    and a
    rst $38
    adc a
    rst $38
    adc a
    rst $38

jr_0a5_7074:
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
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
    nop
    rst $38
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

jr_0a5_70ae:
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    ld bc, $8000
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
    rst $18
    jr nz, jr_0a5_70ae

    jr nc, @+$41

    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fc
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f8ff]
    rst $38
    ld a, [$eeff]
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    reti


    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    cp $ff
    xor $ff
    rst $38
    rst $38
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    dec a
    rst $38
    ld e, $ff
    ld c, $ff
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
    ld b, a
    cp b
    and b
    ld e, a
    nop
    rst $38
    dec e
    ld [hl+], a
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rra
    nop
    rra
    nop
    rra
    jr nz, @+$01

    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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

    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    ld bc, $20ff
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    call nz, $c0ff
    rst $38
    ld l, b
    rst $38
    ldh [rIE], a
    ld h, d
    rst $38
    add sp, -$01
    db $ec
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    db $d3
    rst $38
    ld [hl], b
    rst $38
    add sp, -$01
    and $ff
    ld hl, sp-$01
    ei
    rst $38
    xor $ff
    sbc $ff
    cp $ff
    db $ed
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    or $ff
    rst $30
    rst $38
    ld a, [$feff]
    rst $38
    xor h
    rst $38
    cp $ff
    ld a, l
    rst $38
    ld a, $ff
    sbc h
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld a, b
    rst $38
    cp h
    ld a, a
    ld e, $ff
    ld e, $ff
    ld c, a
    cp a
    rst $30
    rrca
    ei
    rlca
    db $fd
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
    nop
    rst $38
    nop
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
    ld b, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $38
    ccf
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
    ld b, h
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
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld de, $29ff
    rst $38
    ld de, $28ff
    rst $38
    sbc a
    rst $38
    rst $28
    ld a, a
    ld e, $ff
    rst $18
    cp a
    add sp, -$21
    rst $38
    rst $28
    db $fc
    rst $30
    or $fb
    ld a, c
    rst $38
    cp h
    ld a, a
    rst $38
    ld a, $fe
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    db $fd
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    adc c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    dec h
    rst $38
    ret z

    ld a, a
    ld [hl], b
    cp a
    or b
    rst $18
    ret z

    rst $38
    ldh a, [$ef]
    ld sp, hl
    rst $30
    rst $30
    ei
    ld sp, hl
    rst $38
    cp $7d
    cp [hl]
    ld a, a
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $30
    rrca
    ei
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01fe
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
    db $fd
    rst $38
    ld c, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    cp $ff
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
    jr nz, @+$01

    inc b
    rst $38
    add d
    rst $38
    add b
    rst $38
    adc a
    ldh a, [$c7]
    ld hl, sp-$1b
    ld a, [$fe63]
    ccf
    cp $1f
    rst $38
    rrca
    rst $38
    rlca
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
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    nop
    rst $38
    ld de, $12ff
    rst $38
    ld a, [bc]
    rst $38
    ld a, [de]
    rst $38
    add hl, hl
    rst $38
    rla
    rst $38
    sub d
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    add sp, -$01
    ld sp, $90ff
    ld a, a
    ld [c], a
    cp a
    cp b
    rst $18
    ret


    rst $38
    db $e4
    rst $38
    ld a, [$f6f7]
    ei
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    cp $7f
    rst $38
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rrca
    rst $28
    rla
    db $e3
    rra
    push hl
    dec de
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    add sp, $07
    ld hl, sp+$00
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    ld a, h
    inc bc
    ld a, a
    add b
    ld a, [hl]
    add c
    ld sp, hl
    ld [bc], a
    ld a, [hl]
    add b
    ld a, [de]
    db $e4
    jp $fcfc


    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
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
    rst $38
    nop
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
    jr nz, @+$01

    nop
    rst $38
    nop
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
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    add c
    rst $38
    dec b
    rst $38
    call nc, Call_0a5_6fff
    rst $38
    or a
    ld a, a
    sbc a
    rst $38
    db $fd
    rst $18
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, Call_000_3fff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld bc, $f0fe
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38

jr_0a5_74b6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    cp a
    ld hl, sp+$07
    rrca
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    jr jr_0a5_74b6

    rst $20
    ld hl, sp-$07
    cp $1e
    rst $38
    rst $10
    rst $38
    push bc
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld [$c6ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    ld hl, $08ff
    rst $38
    add c
    rst $38
    inc h
    rst $38
    sbc c
    rst $38
    cp c
    rst $38
    db $dd
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ld l, l
    rst $38
    call c, Call_000_00ff
    ld bc, $0202
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0202
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a5_7566

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a5_7576

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [bc], a
    ld [bc], a
    ld l, $2f
    jr nc, jr_0a5_7588

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [bc], a
    ld [hl], $37
    jr c, jr_0a5_7599

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_0a5_7566:
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
    ld [bc], a

jr_0a5_7576:
    ld c, a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld [bc], a

jr_0a5_7588:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, a
    ld [bc], a
    ld l, b

jr_0a5_7599:
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
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    add $02
    ld [bc], a
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
    ld [$eb02], a
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [c]
    di
    ld [bc], a
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0202
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0902], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0401
    nop
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0402
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0109
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
    call nz, $c0f8
    db $fc
    ld [c], a
    db $fc
    ldh a, [$fe]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $807f
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$a7]
    ld hl, sp+$73
    db $fc
    or c
    ld a, [hl]
    ld hl, sp-$01
    db $ec
    rst $38
    or $ff
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, [$dff5]
    db $e3
    rst $28
    dec de
    cp e
    ld a, a
    cp e
    ld a, a
    cp l
    ld a, a
    ld a, l
    cp a
    db $fc
    cp a
    cp b
    rst $38
    jp nc, $86ff

    rst $38
    ld c, $ff
    ld l, $ff
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    db $f4
    rst $38
    di
    rst $38
    db $e3
    rst $38
    jp Jump_000_1bff


    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    add hl, sp
    rst $38
    ld [hl], $ff
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    xor $ff
    xor $ff
    db $ed
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $10
    rst $38
    sbc e
    rst $38
    dec sp
    rst $38
    ld a, [$f9ff]
    rst $38
    ld a, c
    rst $38
    ld [hl], l
    rst $38
    scf
    rst $38
    ld l, $ff
    sbc [hl]
    rst $38
    ld e, $ff
    db $dd
    rst $38
    rst $08
    rst $38
    db $eb
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $10
    rst $38
    ld a, $ff
    ld a, c
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    ld a, l
    rst $38
    rra
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    or $ff
    rst $10
    rst $38
    push af
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    ccf
    rra
    cp a
    rrca
    rst $38
    rrca
    rst $10
    rrca
    ld [hl], a
    add a
    dec sp
    rst $00
    dec sp
    jp $e11b


    add hl, de
    pop hl
    adc l
    pop af
    adc a
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    pop af
    cp $f9
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    ld a, [hl]
    cp $3e
    rst $38
    ld e, $fd
    ld e, $fe
    inc c
    cp $04
    cp $00
    ld a, [hl]
    add b
    ccf
    ret nz

    sbc a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$e7]
    ld hl, sp-$4d
    db $fc
    db $fd
    cp $d6
    rst $38
    add $ff
    adc a
    rst $38
    dec a
    rst $38
    db $ed
    rst $38
    xor $ff
    db $ec
    rst $38
    add sp, -$01
    and $ff
    ld b, [hl]
    rst $38
    rla
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    cp c
    rst $38
    cp c
    rst $38
    or e
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    dec e
    rst $38
    ld e, h
    rst $38
    db $fd
    rst $38
    db $eb
    rst $38
    and $ff
    xor $ff
    rst $18
    rst $38
    or [hl]
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    xor e
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    cp l
    rst $38
    ld e, l
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    xor $ff
    adc $ff
    sbc $ff
    cp l
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld l, e
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $30
    ld hl, sp-$31
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    db $fc
    db $fd
    ld hl, sp-$03
    ld sp, hl
    ld a, c
    ld sp, hl
    ld sp, hl
    ld a, c
    or e
    ld a, c
    ld sp, hl
    inc sp
    db $d3
    inc sp
    di
    inc de
    db $e3
    inc de
    ld [hl], a
    add e
    ld [hl], e
    add a
    ccf
    rst $00
    dec sp
    rst $00
    rra
    db $e3
    sbc a
    db $e3
    adc a
    pop af
    rst $08
    pop af
    rst $30
    ret z

    sub a
    ret z

    db $d3
    adc h
    add e
    sbc h
    sbc c
    sbc [hl]
    sbc b
    sbc a
    cp h
    rra
    sbc h
    ccf
    ld a, $3f
    ld a, $3f
    cp a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    ld a, e
    add a
    ld a, a
    add e
    ccf
    pop bc
    sbc a
    ldh [$cf], a
    ldh a, [$67]
    ld hl, sp-$2d
    db $fc
    reti


    cp $dc
    rst $38
    adc $ff
    sbc a
    rst $38
    cpl
    rst $38
    ld l, c
    rst $38
    ld l, a
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    sbc [hl]
    rst $38
    or l
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp c
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    ld l, a
    rst $38
    ld l, [hl]
    rst $38
    ld e, l
    cp $bf
    cp $7f
    cp $b6
    rst $38
    xor $ff
    cp $ff
    db $dd
    cp $ff
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    db $ed
    cp $fd
    cp $fd
    cp $fb
    db $fc
    rst $38
    ld hl, sp+$7f
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ee]
    pop af
    rst $28
    ldh a, [$dd]
    ld [c], a
    rst $18
    ldh [$fd], a
    jp nz, $c2fd

    reti


    and $fb
    db $e4
    rst $38
    ldh [$db], a
    db $e4
    cp e
    call nz, $84fb
    rst $30
    adc b
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    cp $3f
    rst $38
    ld e, $7e
    sbc [hl]
    ld a, [hl]
    adc [hl]
    ld a, $ce
    ld [hl], $ce
    sbc h
    and $8a
    db $f4
    call z, $c6f0
    ld hl, sp-$1c
    ld a, [$f8e7]
    ld a, [c]
    db $fd
    ld sp, hl
    cp $f9
    cp $fe
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$0f
    ld hl, sp-$07
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f3]
    ldh a, [$e3]
    ldh a, [$f3]
    ldh [$e3], a
    ld h, b
    and d
    ld h, b
    add $20
    and $00
    and $10
    ld c, [hl]
    or b
    ld l, $d0
    adc h
    ldh a, [$ce]
    ldh a, [$fc]
    ldh [$9c], a
    ldh [$0c], a
    ret nz

    db $ec
    add b
    call c, $8c80
    ret nz

    sbc h
    ret nz

    cp b
    ret nz

    ld a, b
    add b
    cp h
    nop
    ld a, [$f800]
    nop
    inc a
    add b
    ld a, h
    add b
    cp l
    nop
    db $fd
    nop
    db $f4
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    ei
    rlca
    ei
    rlca
    ei
    rlca
    push hl
    dec de
    rst $30
    inc c
    ld hl, sp+$07
    di
    rrca
    rst $10
    cpl
    rst $30
    rrca
    ret nc

    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    rst $38
    add a
    rst $38
    sbc d
    rst $28
    jp c, $c7ef

    rst $38
    rst $00
    rst $38
    jp $edff


    rst $30
    push hl
    rst $38
    db $e3
    rst $38
    di
    rst $38
    or $e3
    rst $20
    db $e3
    db $e4
    db $e3
    rst $20
    ldh [$e6], a
    ldh [$e4], a
    ret nz

    db $ec
    ret nz

    call z, $ccc0
    ret nz

    call z, $c8c0
    ret nz

    ret z

    add b
    ret z

    add b
    sbc b
    add b
    sbc b
    add b
    sbc b
    add b
    sbc b
    add b
    sub b
    nop
    sub b
    nop
    stop
    stop
    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld hl, $63ff
    db $fd
    ld h, c
    rst $38
    sbc d
    ld h, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    or a
    ld b, c
    dec a
    jp $c33d


    ld a, c
    add e
    ld a, a
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld [hl], e
    add a
    ld a, e
    add a
    ei
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $28
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rra
    rst $38
    rrca
    rst $20
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    rra
    rst $10
    dec l
    sbc $3e
    rst $18
    ccf
    db $dd
    ld a, $4d
    cp l
    rst $38
    inc hl
    db $ed
    dec de
    ld a, $fd
    ld a, [hl]
    ld a, $7d
    inc a
    rl e
    ld h, a
    rlca
    ld b, a
    inc de
    ei
    add hl, sp
    cp [hl]
    ld a, h
    db $fd
    ld a, c
    or a
    inc sp
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    ld [hl], e
    ld a, a
    ld hl, sp+$7e
    ld hl, sp-$15
    ld [hl], a
    cp a
    ld h, a
    ld l, a
    sbc a
    cp a
    ld c, a
    rst $28
    or $f6
    ld sp, hl
    rst $38
    ldh a, [$de]
    rst $28
    rst $28
    ld e, a
    rst $18
    ccf
    xor $df
    rst $38
    db $e4
    rst $38
    pop af
    or $ed
    rst $38
    call z, $bfde
    cp a
    ld a, a
    rst $18
    cp [hl]
    ei
    call $e3ff
    push de
    db $eb
    cp e
    db $dd
    ld a, l
    cp [hl]
    ld a, [hl]
    rst $38
    db $fd
    ld a, [hl]
    db $dd
    cp e
    rst $28
    rst $10
    rst $00
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
    ld h, $ff
    rrca
    rst $38
    rst $30
    rst $38
    ld a, [$38ff]
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    dec sp
    rst $38
    ld a, l
    rst $38
    db $dd
    rst $38
    rst $20
    rst $38
    db $db
    rst $38
    dec a
    rst $38
    sbc $ff
    cp $01
    rrca
    db $10
    ld [$1f1f], sp
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
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
    db $fc
    nop
    db $fd
    nop
    rrca
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    rst $38
    rst $38
    xor $df
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    pop hl
    pop hl
    ld b, d
    push bc
    jp nz, $cbc5

    call z, $dcdb
    cp $f9
    cp $f9
    ld [hl], h
    di
    ld h, h
    db $e3
    call nz, $c4c3
    jp $cfc8


    ret c

    rst $18
    ld hl, sp-$01
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    inc sp
    rst $38
    daa
    rst $38
    adc a
    rst $38
    rst $38
    daa
    or $fb
    ei
    db $fc
    rst $30
    ld a, [$f7fb]
    rst $18
    cpl
    rst $28
    rra
    ld [hl], a
    rst $28
    ei
    or $fe
    ld sp, hl
    ld sp, hl
    or $ff
    and $ef
    rst $18
    rst $18
    ccf
    rst $28
    rst $18
    push af
    xor $ff
    pop af
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    ld sp, hl
    or a
    xor $8f
    rst $38
    ld [hl], a
    rst $38
    ei
    cp $78
    rst $38
    or [hl]
    rst $38
    rst $08
    rst $38
    ld [hl], a
    rst $38
    ld a, d
    rst $38
    cp d
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    ld a, e
    rst $38
    cp h
    rst $38
    adc [hl]
    ld bc, $e01e
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
    sbc a
    ld a, a
    ldh a, [rP1]
    ld a, [$f800]
    nop
    pop af
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    or $7f
    sbc a
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, b
    ld a, b
    ldh a, [$f0]
    pop hl
    pop hl
    rst $38
    nop
    rst $30
    cp $ff
    nop
    rst $38
    nop
    ld [$08f7], sp
    rst $30
    ld c, l
    rst $38
    ld de, $01ee
    cp $c5
    ld a, [hl-]
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $fc
    ld a, a
    rst $38
    cp e
    sub e
    rst $38
    rst $00
    rst $38
    rst $38
    sub e
    cp a
    ld a, c
    rst $38
    db $fc
    rst $38
    ld a, c
    rst $30
    dec sp
    rst $38
    add a
    or a
    rst $08
    ei
    scf
    ld a, [hl]
    ld sp, hl
    rst $38
    db $fc
    ld a, l
    ei
    rst $38
    ld [hl], e
    rst $10
    cpl
    rst $38
    adc a
    cp a
    ld h, a
    cp $f3
    ei
    db $fc
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
    or $f7
    ld sp, hl
    ld [hl], a
    xor $7f
    sbc a
    ld a, a
    rst $28
    push af
    cp $ff
    ld sp, hl
    ld h, l
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    ldh a, [rIE]
    ld [hl], l
    rst $38
    xor [hl]
    rst $38
    cpl
    rst $38
    or $ff
    ld a, c
    rst $38
    rlca
    nop
    inc e
    ldh [$f4], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld e, $e0
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $f5
    cp $4f
    rst $38
    rra
    rst $38
    rst $38
    ld a, h
    ld a, h
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ccf
    ld [hl-], a
    call Call_000_00ff
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld e, $e1
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    rst $38
    nop
    nop
    rst $38
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, [hl]
    ld a, a
    cp [hl]
    cp e
    db $dd
    rst $28
    db $db
    rst $38
    rst $20
    sbc c
    db $db
    db $fd
    inc a
    cp $7e
    db $fc
    dec a
    rst $18
    cp c
    rst $38
    jp $c7ff


    db $fd
    sbc e
    cp a

Call_0a5_7e81:
    ld a, h
    ld a, l
    cp $bf
    ld a, c
    db $fd
    dec sp
    cp a
    rst $00
    rst $38
    rst $00
    ld a, a
    or e
    ld a, [$ff7d]
    db $fc
    ld a, e
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    rst $38
    rst $20
    cp $fd
    di
    rst $18
    ld l, l
    ld e, a
    cp [hl]
    adc $ff
    rst $38
    xor $ff
    di
    ld c, c
    rst $38
    ld a, $ff
    sbc $ff
    db $e3
    rst $38
    db $e3
    rst $38
    dec e
    rst $38
    cp $ff
    db $eb
    rst $38
    rst $20
    rst $38
    ld [bc], a
    ld bc, $e018
    pop bc
    or $f7
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    pop bc
    ccf
    add b
    nop
    nop
    nop
    jp $dffc


    rst $28
    rst $28
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $08
    rst $18
    rst $18
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $18
    rst $18
    cp [hl]
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    rst $30
    rst $38
    rst $18
    ld l, [hl]
    rst $38
    rra
    rst $38
    rst $38
    ld a, $3e
    ld a, h
    ld a, h
    ld hl, sp-$08
    nop
    db $fc
    ld a, l
    add c
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld a, [$f806]
    inc b
    ld [$18f0], sp
    ldh [rNR24], a
    pop hl
    cp e
    ld b, e
    sbc a
    ld h, a
    rst $38
    rlca
    ld c, $f6
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]
    rst $38
    rst $38
    cp $ff
    rst $38
    ld a, $7f
    cp [hl]
    rst $38
    db $dd
    db $dd
    db $eb
    db $eb
    rst $30
    rst $18
    ret


    sbc [hl]
    cp h
    ccf
    ld a, [hl]
    sbc a
    cp h
    ld sp, hl
    sbc l
    rst $18
    db $e3
    rst $18
    db $e3
    rst $38
    sbc c
    db $fd
    ld a, $ff
    ld a, [hl]
    rst $18
    cp l
    rst $38
    sbc c
    db $db
    rst $20
    rst $38
    jp $99ff


    cp l
    ld a, [hl]
    rst $38
    ld a, [hl]
    adc a
    ld [hl], b
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
    rst $38
    nop
    ld a, a
    sbc [hl]
    ld a, a
    rst $18
    db $fd
    xor $ff
    di
    db $eb
    rst $18
    db $fd
    ccf
    rst $38
    cp [hl]
    rst $38
    db $dd
    rst $38
    rst $20
    sbc e
    rst $38
    ld a, l
    rst $38
    cp b
    rst $38
    jp nc, $cfff

    rst $38
    ld [hl], a
    rst $38
    ld a, c
    rst $38
    and [hl]
    rst $38
    cpl
    rst $38
    inc bc
    nop
    add b
    nop
    pop bc
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
    ld bc, $0000
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
    db $fc
    inc bc
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    jp hl


    call Call_000_1e3e
    sbc a
    cp [hl]
    adc $dc
    db $e3
    pop hl
    db $e3
    db $e3
