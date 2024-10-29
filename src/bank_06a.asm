SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

    ld e, a
    inc sp
    jp c, $b337

    inc e
    rla
    cp b
    xor d
    sbc l
    db $f4
    xor a
    or c
    rst $08
    cp c
    rst $00
    cp c
    rst $00
    sub c
    rst $20
    ld e, e
    and l
    ld c, e
    or l
    ld d, e
    xor l
    ld d, c
    xor a
    ret nc

    cpl
    ldh [$1f], a
    ld [hl], b
    adc a
    ld e, d
    and a
    ld e, h
    and e
    ld d, l
    xor e
    or c
    rrca
    ld sp, $b14f
    ld c, a
    xor $5f
    ld l, a
    rst $18
    dec sp
    rst $18
    ld a, a
    sbc a
    ld l, b
    sbc a
    ld l, d
    sbc l
    ld sp, hl
    sbc [hl]
    cp b
    rst $18
    ret c

    rst $38
    jr c, @+$01

    rst $28
    ccf
    rst $08
    ccf
    db $eb

jr_06a_4047:
    rra
    jp $c23f


    ccf
    sbc b
    ld [hl], a
    jr jr_06a_4047

    adc c
    rst $30
    reti


    rst $20
    rst $18
    ld h, e
    cp d
    ld h, a
    adc [hl]
    ld [hl], a
    dec d
    cp $5c
    cp a
    cp h
    ld a, a
    ld [hl], a
    rst $38
    dec b
    rst $38
    add sp, $17
    add $3f
    sbc [hl]
    ld a, a
    push bc
    ld a, $f9
    ld b, $78
    add a
    rst $38
    nop
    rst $38
    nop
    ld e, $e1
    cp $ff
    ld h, e
    db $fc
    rrca
    ldh a, [rSVBK]
    adc a
    rst $08
    ccf
    sbc $ff
    rrca
    rst $38
    ld c, $ff
    ld b, c
    cp $0a
    push af
    rlca
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    di
    inc c
    ld [hl+], a
    db $dd
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    di
    db $fc
    add e
    db $fc
    ld l, a
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$ec]
    rst $38
    ldh [rIE], a
    add sp, -$01
    and b
    rst $38
    ret z

    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    inc de
    db $ed
    db $10
    rst $28
    cpl
    ret nc

    rst $00
    ld hl, sp-$0e
    db $fd
    rst $10
    ccf
    ld e, a

jr_06a_40c3:
    cp a
    ld e, a
    cp a
    ld c, a
    cp a
    rst $08
    cp a
    xor a
    rst $18
    adc a
    rst $38
    db $ed
    rst $18
    call nz, $ecff
    rst $38
    and $ff
    xor $ff
    adc $ff
    xor $ff
    and [hl]
    rst $38
    and [hl]
    rst $38
    ld b, $ff
    jr nz, jr_06a_40c3

    and b
    ld e, a
    xor b
    ld e, a
    add c
    ld a, a
    add [hl]
    ld a, l
    and c
    ld a, a
    ld l, e
    cp a
    ld l, a
    cp a
    ld h, [hl]
    cp a
    or [hl]
    rst $38
    rst $20
    rst $38
    ld l, l
    rst $38
    ld a, b
    rst $38
    ld h, d
    db $fd
    ld b, [hl]
    db $fd
    add d
    ld a, l
    add d
    ld a, l
    ld [$00f7], sp
    rst $38
    ld b, l
    cp a
    ld b, a
    cp a
    ld d, [hl]
    xor a
    ld b, h
    cp a
    jr c, @+$01

    add hl, sp
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    cp e
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    inc l
    rst $18
    inc l
    rst $18
    adc h
    rst $38
    dec a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push hl
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    cp c
    ld a, a
    ld l, l
    ei
    ld c, e
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    add hl, sp
    rst $38
    ld e, a
    cp a
    cp l
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $18
    ccf
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld bc, $e0ff
    rra
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ld a, $ff
    cp $ff
    cp a
    rst $38
    rst $18
    ccf
    ei
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    pop bc
    ccf
    ccf
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ld [$e0ff], sp
    rst $38
    ret nz

    rst $38
    rra
    ldh [$fe], a
    ld bc, $03fd
    rrca
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ld e, l
    rst $38
    ld e, $ff
    ld d, $ff
    add d
    rst $38
    ld [c], a
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp hl


    rst $30
    jp hl


    rst $30
    jp hl


    rst $30
    ei
    rst $30
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    rst $30
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld d, a
    rst $38
    rra
    rst $38
    sub a
    rst $38
    cp a
    rst $18
    xor a
    rst $18
    cpl
    rst $18
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $28
    rst $38
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
    rst $08
    rst $38
    rst $18
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, [hl]
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, $ff
    rst $38
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
    ccf
    rst $18
    ccf
    rst $18
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    add h
    rst $38
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
    rst $00
    jr c, jr_06a_42a9

jr_06a_42a9:
    rst $38
    inc e
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    inc a
    rst $38
    ld de, $9bff
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
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
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
    ld sp, hl
    rst $38
    ld sp, hl
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
    ei
    rst $38
    db $eb
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    or e
    rst $38
    di
    rst $38
    ld [hl], d
    rst $38
    ld sp, $73ff
    rst $38
    ld a, c
    rst $38
    jp $e1ff


    rst $38
    jp nz, $fbff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $cfff


    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc c
    rst $38
    dec e
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    dec [hl]
    rst $38
    inc de
    rst $38
    ld de, $31ff
    rst $38
    dec a
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    rlca
    rst $38
    rst $08
    ccf
    add a
    ld a, a
    or a
    ld c, a
    jp $bb3f


    ld a, a
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc

Call_06a_43bb:
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3

Jump_06a_43ff:
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    and e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    jp $c7ff


    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    cp a
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
    rst $18
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    rst $38

Jump_06a_443d:
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    sub a
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
    ld a, a
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
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $d3
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $30
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
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add $ff
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06a_4504:
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f2ff]
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
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
    ei
    rst $38
    cp e
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    jr jr_06a_45a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06a_45b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06a_45c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06a_45d3

    ld [hl-], a

jr_06a_45a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    rlca
    jr c, jr_06a_45e4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_06a_45b3:
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

jr_06a_45c3:
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

jr_06a_45d3:
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

jr_06a_45e4:
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
    rlca
    rlca
    rlca
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_06a_46a7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06a_46b7

    ld [hl+], a
    inc hl
    inc h
    rlca
    dec h
    ld h, $27
    jr z, jr_06a_46c8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06a_46d8

jr_06a_46a7:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06a_46e8

    ld a, [hl-]
    inc b
    nop
    ld bc, $0001
    nop
    nop

jr_06a_46b7:
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
    inc b
    inc b
    nop
    nop
    nop

jr_06a_46c8:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld bc, $0401
    ld bc, $0000
    nop

jr_06a_46d8:
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

jr_06a_46e8:
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
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0004
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0401
    ld bc, $0000
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, HeaderLogo
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, HeaderLogo
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0400
    inc b
    nop
    ld bc, $0100
    ld bc, $0000
    ld bc, HeaderLogo
    inc b
    nop
    nop
    ld bc, $0101
    nop
    inc b
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    ld bc, $0101
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
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
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$fd02], sp
    ld bc, $107e
    ld l, a
    ld b, d
    dec a
    ld [$4007], sp
    rra
    ld [$0077], sp
    cp $fe
    nop
    ld a, l
    add b
    cp $00
    rst $38
    nop
    ld a, a
    add b
    cp [hl]
    ret nz

    or b
    rst $08
    and l
    jp c, $e798

    ret nz

    cp a
    add [hl]
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    xor h
    di
    sub a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$cb]
    ldh a, [$fe]
    pop af
    db $f4
    ei
    db $fc
    ei
    rst $38
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, l
    cp $3d
    cp $fd
    cp $fe
    rst $38
    cp $ff
    xor $ff
    add a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld d, e
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    or b
    rst $38
    db $fd
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

Jump_06a_4880:
    db $fd
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    jr c, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
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
    ld c, $ff
    ld e, b
    and a
    cp a
    ld b, b
    ld a, [c]
    dec c
    db $f4
    rra
    rra
    rst $38
    ccf
    rst $38
    rst $38

Call_06a_48b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    db $eb
    rst $30
    push de
    rst $28
    xor b
    rst $18
    ld h, c
    sbc [hl]
    ret


    ld a, $c0
    ccf
    add [hl]
    ld a, a
    add c
    ld a, [hl]
    sub a
    ld l, b
    rst $38
    nop
    cp $01
    dec e
    db $e3
    db $e3
    cp $0d
    cp $4a
    cp l
    xor $19
    db $f4
    dec de
    di
    rra
    db $d3
    ccf
    xor d
    ld a, a
    ldh [$7f], a
    nop
    rst $38
    jr @-$17

    cp b
    ld b, a
    ld e, [hl]
    ccf
    ld a, b
    rra
    db $ec
    rra
    xor h
    rra
    ld l, c
    ld e, $28
    rra
    xor e
    inc e
    db $eb
    inc e
    call c, $da3e
    ccf
    sbc b
    ld a, a
    adc e
    ld a, a
    rrca
    rst $38
    ld c, $ff
    dec c
    cp $70
    adc a
    ld h, [hl]
    sbc a
    rst $30
    rra
    ld b, a
    cp a
    ld c, a
    cp a
    ret


    cp $ff
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop

jr_06a_4921:
    cp [hl]
    nop
    rst $38
    add b
    rst $38
    and c
    sbc $81
    cp $00
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    xor b
    rst $10
    nop
    rst $38
    sub b
    ld l, a
    inc b
    ei
    add b
    ld sp, hl
    nop
    db $fc
    jp nz, $35fc

    ret nz

    ccf
    ret nz

    add hl, de
    and $88
    rst $30
    jp z, $84f7

    rst $38
    add c
    rst $38
    db $fc
    rst $38
    pop af
    cp $9f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    jr c, jr_06a_4921

    add hl, de
    rst $20
    ld [$e0f7], sp
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    or c
    db $fc
    ld [hl], a
    ld hl, sp+$77
    ld hl, sp-$49
    ld hl, sp-$09
    ld hl, sp+$07
    ld hl, sp+$0b
    db $fc
    ld h, a
    ld hl, sp-$80
    rst $38
    pop hl
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
    ld a, [$feff]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [bc]
    rst $38
    adc [hl]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    call nz, $ffff
    rst $38
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
    ld a, a
    rst $38
    rst $18
    ccf

jr_06a_49ae:
    sbc $3f
    rrca
    ldh a, [$5f]
    ldh [$cb], a
    db $f4
    rst $20
    ld hl, sp+$3e
    pop hl
    ld b, e
    rst $38
    db $fd
    rst $38
    and $ff
    sub l
    rst $28
    ld de, $efef
    rra
    jp nz, $953f

    ld l, [hl]
    daa

jr_06a_49cb:
    ret c

    rst $08

jr_06a_49cd:
    jr nc, jr_06a_49ae

    jr nz, jr_06a_4a37

    rst $38
    adc $ff
    sbc h
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $00
    ld [$03d7], sp
    rst $38
    ld a, [hl]
    add c
    rst $28
    ldh a, [$fc]
    rst $38

jr_06a_49e6:
    ld a, a
    rst $38

jr_06a_49e8:
    ld a, a
    rst $38
    scf
    rst $38
    rst $00
    ccf
    adc l
    ld a, a
    ld c, $f1
    rlca
    ld hl, sp+$4f
    or b
    rst $08
    jr nc, jr_06a_49e8

    db $10
    push hl
    jr @-$17

    jr jr_06a_49e6

    jr jr_06a_49e8

    jr jr_06a_49cb

    jr nc, jr_06a_49cd

    jr nc, jr_06a_4a20

    ldh [$58], a
    ldh [rNR13], a
    ldh [$1f], a
    ldh [rNR13], a
    rst $28
    ld l, l
    cp $76
    ld hl, sp-$15
    ldh a, [rIF]
    ldh a, [$bf]
    nop
    ld e, h
    inc bc
    call z, Call_06a_7f13
    nop

jr_06a_4a20:
    ld l, b
    rla
    ld b, e
    cp a
    ld d, a
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rlca
    rst $08
    rlca
    rst $28
    db $d3
    inc c
    sbc c
    ld c, $2b
    inc e
    dec sp

jr_06a_4a37:
    inc e
    ccf
    jr @+$75

    inc e
    or e
    inc e
    ld a, [c]
    dec e
    ldh a, [$1f]
    ld [hl], b
    ccf
    jr nc, jr_06a_4ac5

    jr c, @+$01

    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rlca
    rst $38
    and a
    rst $18
    adc a
    rst $30
    ccf
    rst $00
    ccf
    rst $00
    scf
    rst $08
    ld [hl], a
    adc a
    cpl
    rst $18
    sub e
    ld a, a
    sub e
    ccf
    db $d3
    ccf
    inc sp
    ld a, a
    and c
    ld a, a
    ld l, b
    rst $30
    inc d
    db $eb
    ld e, h
    db $e3
    sbc [hl]
    pop hl
    add [hl]
    ld sp, hl
    adc [hl]
    pop af
    dec e
    db $e3
    db $dd
    db $e3
    inc a
    jp Jump_000_07f9


    db $e3
    rra
    ld b, a
    cp a
    rla
    rst $28
    inc sp
    rst $08
    di
    rrca
    di
    rrca
    ld a, e
    add a
    ld a, e
    add a
    ld [hl], e
    adc a
    ld h, e

jr_06a_4a97:
    sbc a
    inc bc
    rst $38
    db $e4
    rst $38
    add sp, -$01
    ld [c], a
    db $fd
    jp nz, $cefd

    pop af
    db $e4
    ei
    xor $f1
    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh [$4e], a
    pop af
    ld hl, sp+$07
    ldh a, [rIF]
    call z, $8133
    ld a, [hl]
    rst $08
    db $fc
    db $fd
    ld hl, sp-$0a
    pop af
    ld [hl], h
    db $e3
    and h
    jp $87f0


    ld l, b

jr_06a_4ac5:
    add a
    jr nc, jr_06a_4a97

    ret nz

    ccf
    db $e4
    dec de
    ret nz

    ccf
    add b
    ld a, a
    ld c, $f1
    ld a, [hl]
    add c
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
    inc e
    rst $38
    jr @+$01

    ld b, b
    cp a
    db $fc
    rst $38
    cp b
    rst $00
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, $c1
    db $dd
    db $e3
    push bc
    ei
    adc h
    di
    ld h, l
    ei
    jp nz, $8afd

    db $fd
    ld a, d
    push bc
    inc a
    pop bc
    ld a, b
    add c
    pop af
    nop
    jp hl


    nop
    or c
    ld b, b
    or c
    ld b, b
    sub b
    ld h, b
    db $ed
    ldh a, [rNR10]
    rst $38
    db $e4
    rra
    di
    inc c
    ld h, e
    inc e
    ld h, c
    ld e, $31
    adc $31
    adc $91
    ld l, [hl]
    push bc
    ld a, $80
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld d, e
    xor a
    jp nz, $d33f

    cpl
    ld c, h
    or e
    ld c, l
    or d
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ld sp, hl
    rlca
    cp a
    ld b, c
    ld a, $c1
    ld a, l
    add e
    rst $30
    rrca
    ld e, a
    cp a
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
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $eb
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$31
    ldh a, [$df]
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ld hl, sp-$79
    ld [hl], b
    adc a
    rlca
    rst $38
    di
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $f8
    rst $38
    ldh [rIE], a
    rst $20
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    rra
    cp $1d
    cp $1c
    rst $38
    db $fc
    ei
    rst $30
    ld hl, sp-$11
    ldh a, [rSCX]
    db $fc
    add b
    ld a, a
    pop bc
    ccf
    ld [$01e7], sp
    rst $38
    add c
    ccf
    ret nz

    ccf
    add sp, $17
    add c
    ld a, [hl]
    daa
    ret c

    add a
    ld hl, sp+$0f
    ldh a, [$df]
    ldh [$dd], a
    db $e3
    ld [hl], a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], c
    cp $8f
    ldh a, [$8f]
    ldh a, [$0d]
    ldh a, [$67]
    sbc b
    cp $01
    db $fc
    inc bc
    ld a, [$fb07]
    rlca
    rst $20
    rra

jr_06a_4bce:
    rst $20
    rra
    ld c, a
    cp a
    dec de
    rst $38
    cp a
    ld a, a
    ld h, a
    rst $38
    rst $18
    rst $38
    ld l, $ff
    xor a
    rst $18
    cp e
    call nz, Call_06a_48b7
    rst $00
    jr z, jr_06a_4bce

    ld [bc], a
    db $eb
    nop
    pop hl
    ld [bc], a
    ret z

    inc bc
    xor $11
    ld b, $f9
    rst $08
    pop af
    db $db
    rst $20
    ld [$08e7], sp
    rst $20
    ld e, $e1
    rst $18
    ld hl, $41be
    cp $01
    cp $01
    ld a, a
    add c
    rst $38
    ld bc, $01ef
    ld a, l
    inc bc
    cp c
    ld b, a
    cp l
    ld a, a
    cp h
    ld a, a
    cp [hl]
    ld a, a
    dec l
    cp $23
    db $fc
    dec h
    ld a, [$bb44]
    add hl, hl
    rst $10
    add hl, hl
    rst $10
    add hl, bc
    rst $30
    db $dd
    daa
    rst $08
    ccf
    ldh [$1f], a
    adc $11
    ld [c], a
    dec e
    rra
    cp a
    sbc a
    rst $38
    add [hl]
    rst $38
    di
    ldh a, [$fc]
    di
    rst $30
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    add a
    rlca
    rlca
    adc a
    ld [hl], a
    rrca
    rst $30
    rrca
    rst $30
    rla
    rst $28
    jp $c73f


    ccf
    add e
    ccf
    jp Jump_000_033f


    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ccf
    rst $38
    ld [hl], c
    rst $38
    sbc c
    rst $38
    or l
    ei
    rst $30
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ei
    db $fd
    ei
    cp $cd
    cp $db
    db $fc
    rst $38
    ld hl, sp-$39
    ld hl, sp-$01
    ret nz

    inc bc
    db $fc
    ld h, c
    sbc [hl]
    db $db
    ld b, $4a
    add c
    ld a, a
    add b
    add a
    ld hl, sp+$67
    ld hl, sp-$37
    or $be
    pop bc
    ld e, a
    add b
    and $19
    add [hl]
    nop
    ld b, $00
    jp z, Jump_06a_4504

    ld hl, sp-$25
    dec a
    xor $1f
    pop af
    ld c, $3b
    call nz, $c03f
    ld e, $e1
    db $fc
    db $e3
    sub b
    rst $38
    ld c, $f1
    rla
    ldh [$3b], a
    call nz, $07fa
    db $ed
    ld e, $c6
    add hl, sp
    ld e, [hl]
    pop hl
    sbc [hl]
    pop hl
    ccf
    pop bc
    dec a
    jp $c73b


    ei
    rlca
    ei
    rlca
    di
    rrca
    rst $00
    ccf
    adc a
    ld a, a
    rla
    rst $38
    ld e, a
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
    rst $28
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    rst $18
    rst $38
    db $76
    rst $38
    ld [bc], a
    db $fd
    dec hl
    push de
    ccf
    pop bc
    ld a, a
    pop bc
    dec a
    jp $837d


    rra
    add e
    adc e
    rra
    ld l, e
    sbc a
    ld d, b
    rst $38
    cp $f3
    db $fd
    di
    rra
    pop af
    add hl, bc

jr_06a_4cfb:
    rst $30
    ld hl, sp-$19
    ret nc

    rst $28
    call c, $d3e3
    xor $f2
    rst $28
    and $ff
    and $ff
    pop hl
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ret nc

    rst $38
    ld a, a
    add b
    nop
    ret nz

    nop
    ret nz

    ld h, b
    ldh [$60], a
    ldh [$71], a
    ldh a, [$7e]
    or b
    ld [hl], c
    ldh a, [$71]
    pop hl
    db $fc
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
    add [hl]
    ld a, c
    jr c, jr_06a_4cfb

    cp $01
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret c

    rst $38
    ret c

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
    db $fc
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    push de
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, a
    rra
    rra
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0180
    ld b, b
    ld bc, $01a2
    sub d
    ld l, a
    db $ec
    rra
    jr @+$01

    cp h
    ld a, a
    ld l, a
    rra
    db $fc
    inc bc
    or $00
    inc hl
    ret nz

    ld h, a
    ld hl, sp-$04
    ccf
    xor a
    ld [hl], b
    sbc b
    ld h, b
    rra
    ldh [$8a], a
    db $f4
    inc hl
    db $fc
    ret nz

    ccf
    rst $38
    rrca
    rst $38
    rlca
    scf
    jp $f30d


    cp l
    ld b, e
    ei
    rlca
    rst $18
    rlca
    ld a, a
    rrca
    rra
    rst $38
    ccf
    rst $38
    cp $7f
    ld h, c
    cp $cf
    ldh a, [$fc]
    ldh [$cc], a
    ld a, [c]
    rst $00
    ld hl, sp-$40
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    or d
    rst $38
    cp $ff
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
    db $db
    rst $38
    ld b, l
    rst $38
    ld bc, $2bff
    rst $30
    pop hl
    rst $38
    rst $18
    rst $38
    or $ff
    cp $ff
    cp $ff
    jp nz, $faff

    rst $00
    jp nc, $e2ef

    rst $38
    di
    cp $fa
    rst $38
    cp $ff
    ccf
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp l
    inc bc
    jp $fc00


    inc bc
    sbc c
    rlca
    ld a, l
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, a
    add c
    ld a, [hl]
    add c
    add c

jr_06a_4e13:
    ld a, a
    ld b, b
    ccf
    ccf
    nop
    rra
    nop
    add hl, de
    ld b, $e1
    ld b, $01
    inc bc
    inc a
    dec hl
    cp $55
    xor a
    and d
    ld a, a
    ld c, b
    rst $38
    ld bc, $cfff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nz, jr_06a_4e13

    nop
    rst $38
    inc sp
    call z, $f00f
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b

jr_06a_4e40:
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
    ccf
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06a_4e63:
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $18
    rst $38
    db $e3
    rst $38
    ld [hl-], a
    db $fd
    dec bc
    db $fc
    xor b
    rlca
    dec bc
    db $f4
    jr nc, jr_06a_4e40

    cp c
    ret nz

    ccf
    ret nz

    ld sp, hl
    nop
    db $d3
    inc l
    db $eb
    inc b
    ld [hl], e
    add b
    pop hl
    nop

jr_06a_4e8e:
    adc c
    ld b, $0b
    inc e
    push hl
    jr jr_06a_4e63

    jr nc, jr_06a_4e8e

    ret z

    sub a
    ld hl, sp-$06
    db $fd
    db $fd
    cp $fe
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    add d
    db $fd
    rlca
    ld hl, sp+$67
    nop
    nop
    dec de
    nop
    ld bc, $0000
    nop
    ret


    dec bc
    rst $30
    db $fc
    rst $38
    cp $fd
    pop bc
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rSC]
    db $fd
    ld [hl], c
    sbc a
    add a
    rst $38
    pop hl
    rst $38
    or $f9
    ld a, [c]
    db $fd
    db $eb
    ldh a, [$f6]
    ldh [$c8], a
    ldh [$a0], a
    ret nz

    ret nz

    add b
    ld b, [hl]
    add b
    xor d
    nop
    ret c

    nop
    db $fc
    inc bc
    and $01
    cp $01
    db $e4
    dec de
    pop af
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    db $f4
    dec bc
    db $f4
    dec bc
    ldh a, [rIF]
    ldh [$1f], a
    add d
    ld a, l
    ld bc, $ceff
    ccf
    inc c
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld c, b
    or a
    sbc h
    db $e3
    inc e
    db $e3
    inc a
    jp $e39c


    sbc l
    db $e3
    sbc b
    rst $20
    ret c

    rst $20
    ld e, b
    rst $20
    adc b
    ld [hl], a
    and h
    ld a, a
    sbc a
    ld a, a
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    add e
    add e
    ldh [rIE], a
    pop af
    cp $c1
    cp $07
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld [hl], h
    adc e
    ld sp, $03cf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ei
    ei
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ret nc

    ccf
    db $f4
    rrca
    db $fc
    rra
    cp c
    ld a, [hl]
    adc b
    ld [hl], a
    inc [hl]
    jp Jump_000_00f8


    ret nz

    ld a, $0e
    pop af
    adc a
    ld [hl], b
    cp a
    ld b, b
    rst $38
    nop
    ld sp, hl
    nop
    sub $01
    or $01
    db $ec
    inc bc
    db $fc
    inc bc
    ld sp, hl
    ld b, $1b
    ld b, $de
    ccf
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

jr_06a_4fa6:
    cp $ff
    ldh [rIE], a
    ld d, c
    rst $28
    ld a, h
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $ec
    inc bc
    rst $38
    nop
    ei
    inc b
    ld hl, sp+$07
    ld a, b
    add a
    ld a, c
    add [hl]
    and a
    nop
    jr jr_06a_4fa6

    sbc b
    db $fc
    cp d
    db $fc
    cp l
    cp $7f
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    xor [hl]
    ld a, a
    inc l
    rra
    add hl, bc
    rlca
    scf
    nop
    ld c, a
    jr nc, jr_06a_503e

    ld e, $fb
    inc b
    sub l
    cp $a5
    sbc $9d
    ld [c], a
    xor h
    jp $e3dc


    ret nz

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
    rst $38
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    db $d3
    rst $38
    push af
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, a
    jp hl


    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, e
    db $fc
    ld d, e
    db $ec
    ld d, a
    add sp, -$29
    add sp, $57
    add sp, $4d
    di
    ld l, e
    rst $30
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    or $f6
    cp $fe
    ld a, [$e6fa]
    and $60
    ldh [$64], a
    db $e4
    ld h, h
    db $e4
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$60], a
    ldh [$60], a
    ldh [$7c], a
    db $fc

jr_06a_503e:
    ld a, b
    ld hl, sp+$70
    ldh a, [$71]
    pop af
    ld h, b
    ldh [$60], a

jr_06a_5047:
    ldh [rSVBK], a
    ldh a, [rP1]
    add b

jr_06a_504c:
    ld [$9c88], sp

jr_06a_504f:
    sbc h
    add b
    add b
    nop
    add b
    cp a

jr_06a_5055:
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    rst $30
    rst $38
    add e
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    pop af
    cp $fe
    rst $38
    jr nz, jr_06a_504f

    ccf
    ret nz

    ld a, a
    add b
    ld [hl], a
    adc b
    jr nc, jr_06a_5047

    sbc a
    jp $80df


    ld sp, $fbc0
    inc b
    db $fd
    inc bc
    ld a, a
    add b
    db $ec
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_06a_504c

    adc [hl]
    ld [hl], c
    ld c, l
    di
    ldh [$fb], a
    add b
    ld a, a
    add hl, bc
    cp $00
    rst $38
    nop
    add $80
    jr nc, jr_06a_5055

    ld a, [hl]
    ld a, h
    rst $38
    ei
    db $fc
    cp $ff
    rst $08
    rst $38
    inc hl
    rst $18
    cp e
    ret nz

    ld h, h
    add b
    ld sp, hl
    nop
    adc $31
    inc e
    db $e3
    ld a, b
    add a
    ldh a, [rIF]
    db $fc
    inc bc
    sbc b
    ld h, a
    db $10
    rst $28
    rlca
    rst $38
    ld h, c
    sbc a
    reti


    daa
    ld a, l
    inc bc
    xor h
    inc de
    ld a, c
    ld b, $74
    dec bc
    ld a, [hl+]
    push de
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld e, [hl]
    cp a
    dec sp
    rst $38
    rlca
    rst $38
    db $fd
    ld h, [hl]
    adc a
    ld [hl], b
    di
    nop
    db $fc
    nop
    ld a, b
    add [hl]
    ld de, $31ea
    cp $80
    ld a, a
    jp nz, Jump_06a_443d

    cp e
    ld a, h
    add e
    ld a, h
    add e
    adc [hl]
    pop af
    nop
    rst $38
    rla
    rst $38
    sub c
    ld a, a
    sbc d
    ld a, a
    adc [hl]
    ld a, a
    ld e, $ff
    sbc [hl]
    rst $38
    rra
    rst $38
    ld e, a
    cp c
    ld e, [hl]
    cp c
    rla
    ld hl, sp-$23
    nop
    sbc l
    nop
    adc h
    ld bc, $8971
    ld h, l
    sbc c
    ld b, l
    ld sp, hl
    rla
    jp hl


    dec [hl]
    ret


    rra
    pop hl
    scf
    pop bc
    ccf
    pop bc
    rra
    pop hl
    dec e
    db $e3
    ld e, a
    and c
    ld l, a
    add c
    ld a, a

jr_06a_512d:
    add c
    ld a, a
    add c
    ccf
    pop bc
    ld b, [hl]
    ld sp, hl
    ld b, a
    cp b
    call c, $fa23
    ld bc, $8679
    ld [de], a
    db $ed
    cp c
    ld b, b
    db $f4
    nop
    rst $18
    add b
    sbc a
    ld [bc], a
    jp c, $9f24

    ld h, b
    cp a
    ld b, e
    rrca
    di
    ld e, d
    and a
    ld a, d
    add a
    and $1f
    jr z, jr_06a_512d

    ld d, a
    add sp, -$24
    rst $08
    ret nc

    adc a
    add c
    cp $c0
    ccf
    ld [hl], a
    adc h
    db $db
    db $e4
    rst $08
    ldh a, [$0b]
    db $fc
    ld [hl-], a
    rst $08
    add b
    ld a, a
    ld a, e
    db $fc
    db $dd
    cp $2e
    rst $18
    di
    rrca
    ld a, [hl]
    add c
    add $39
    cp [hl]
    jp $f926


    ret nz

    ccf
    ld [$7717], a
    add d
    rra
    ld [c], a
    ld sp, hl
    ld a, [hl]
    rst $38
    ld a, h
    ld [hl], c
    db $fc
    ldh [$f8], a
    add sp, -$10

jr_06a_518e:
    adc a
    ldh a, [$bf]
    ld a, a
    db $ec
    inc de
    db $fd
    ld [bc], a
    db $f4
    ld [bc], a
    db $eb
    inc b
    ld [de], a
    dec b
    ld [hl-], a
    dec b
    ld bc, $2b0f
    rst $18
    rra
    rst $38
    ld [hl], d
    rst $38
    pop hl
    rst $38
    ld h, a
    rst $38
    ld a, c
    rst $30
    adc c
    rst $30
    ld a, [$4081]

jr_06a_51b1:
    add c
    add b
    ld bc, $01cb
    sbc $01
    db $ec
    inc de
    inc c
    db $d3
    add hl, hl
    or $61
    cp $61
    cp $ea
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $08
    ldh a, [$ef]
    ret nc

    cp a
    ret nz

    ld a, a
    add b
    ld d, h
    xor e
    call nz, $c13b
    ccf
    add hl, bc
    rst $30
    ld d, b
    rst $28
    scf
    ret nz

    cp $c0
    dec a
    jp nz, $5023

    ld a, [bc]
    ld [hl], b
    ld [$2c74], sp
    ld [hl], b
    ld sp, hl
    ld a, [hl]
    rst $38
    rst $38
    ccf
    rst $38
    ld sp, hl
    ld a, a
    or e
    ld a, c
    ret c

    ld sp, $3190
    ld bc, $5030
    or c
    ld [$77b1], a
    xor c
    ld c, a
    or b
    adc a
    jr nc, jr_06a_518e

    jr nc, jr_06a_51b1

    inc de
    sub h
    jr nz, jr_06a_521b

    db $fc
    ld l, a
    rst $38
    ld c, a
    cp a
    ld b, l
    dec de
    dec a
    ld b, b
    xor h
    ld d, b
    sub h
    ldh [$73], a
    add b
    ld a, h
    add e
    ld [hl], c

jr_06a_521b:
    rst $38
    rst $00
    rst $38

jr_06a_521e:
    xor a
    rst $00
    cp a
    rst $00
    sbc c
    rst $20
    db $e4
    rst $38
    rst $00
    db $fc
    call nz, $a4ff
    rst $18
    or b
    rst $08
    ei
    call nz, $c6f9
    add d
    db $fd
    ei
    inc b
    db $fc
    inc bc
    cp e
    rst $00
    db $fc
    rlca
    dec e
    and $c5

jr_06a_523f:
    rrca
    inc l
    rra
    sbc $3f
    dec a
    ld [bc], a
    inc a
    db $10
    dec b
    ldh [$d4], a
    db $e3
    ld c, h
    di
    ld [hl], b
    rst $38
    inc [hl]
    rst $38
    add hl, sp
    or $71
    cp $c0
    ccf
    call nz, Call_000_023f
    rst $38
    inc a
    rst $38
    add sp, $1f
    db $e4
    dec de
    ret nz

    ccf
    ld e, a
    inc a
    ret z

jr_06a_5267:
    inc a
    ld a, [de]
    db $ec
    ld [hl], l
    jp z, $817e

    rst $38
    rra
    ld e, a
    cp a
    ld a, a
    rst $38
    add a
    rst $38
    jr c, jr_06a_523f

    ld a, $c0
    ld e, h
    db $e3
    ld b, a
    rst $38
    jr jr_06a_5267

    rst $28
    db $10
    cp [hl]
    ld bc, $3fdf
    rr a
    inc hl
    inc e
    ld a, l
    ld [bc], a
    rrca
    nop
    ld a, [hl]
    add c
    cp a
    rst $38
    cpl
    rst $18
    scf
    rst $08
    and l
    ld c, e
    ld h, a
    add b
    dec h
    add b
    jr nc, jr_06a_521e

    nop
    add b
    ld d, [hl]
    and b
    adc [hl]
    pop af
    ret c

    rst $20
    add sp, -$09
    ei
    db $fc
    adc [hl]
    rst $38
    cpl
    adc a
    rlca
    adc a

jr_06a_52b0:
    dec c
    add e
    dec b
    add e
    cp [hl]
    ld bc, $09b6
    ld a, d

jr_06a_52b9:
    add h
    ld a, c
    add [hl]
    ld l, c
    add [hl]
    push af
    ld [bc], a
    jr nz, jr_06a_52b9

    ld [hl], b
    ei
    ld a, h
    rst $38
    inc a
    rst $38
    add hl, de
    cp $08
    rst $38
    nop
    ld bc, $3e19
    ld a, l
    rst $38
    cp c
    rst $38
    dec de
    rst $38
    cp d
    rst $38
    sbc e
    db $fc
    inc e
    inc bc
    ld bc, $8400
    nop
    or b
    nop
    jr nc, jr_06a_52e4

jr_06a_52e4:
    add b
    ld [hl], b
    ld l, d
    pop af
    rst $38
    rst $38
    db $fc
    rst $38
    pop hl
    db $fc
    call $e6f0
    ldh a, [$e4]
    ldh a, [$e0]
    ldh a, [$eb]
    db $f4
    ld a, [$e0fc]
    db $fc
    ld l, [hl]
    sub b
    ld c, h
    sub b

jr_06a_5300:
    adc b
    sub b
    ld h, [hl]
    sbc b
    sub e
    db $fc
    sbc h
    rst $38
    ld e, a
    rst $38
    add sp, -$01
    or $e9
    pop hl
    rst $38
    ld c, d
    push hl
    di
    ld h, b
    ld c, c
    jr nc, jr_06a_52b0

    ld h, b
    ld l, h
    rst $00
    ld [$ccc7], a
    db $e3
    rst $20
    ldh a, [$ed]
    ldh a, [$ef]
    ldh a, [rNR42]
    cp $1a
    rst $20
    ret c

    rst $20
    ld a, b
    rst $00
    ei
    ld b, a
    ld e, a
    rst $20
    ld h, a
    rst $38
    rst $00
    rst $38
    ld bc, $0efe
    add b
    pop af
    sbc h
    ld d, b
    and b
    ldh [rP1], a
    jr nc, jr_06a_5300

    dec c
    ldh a, [$09]
    add $05
    ret nz

    ld b, a
    add b
    add $03
    jp z, Jump_06a_4880

    add b
    dec sp
    call nz, $fe01
    inc l
    db $d3
    add e
    ld a, h
    cp $01
    ld h, [hl]
    sbc a
    db $10
    rst $38
    nop
    rst $38
    add hl, bc
    rst $30
    ld a, l
    add e
    dec e
    db $e3
    ldh [$1f], a
    rra
    nop
    ld l, $01
    and b
    ld e, a
    rrca
    db $fc
    adc d
    db $fd
    adc h
    rst $38
    xor h
    rst $38
    db $10
    rst $28
    ld hl, sp+$07
    add a
    ld a, a
    rst $18
    rst $28
    rst $38
    rst $08
    dec a
    rst $08
    db $fd
    rra
    add hl, de
    rst $38
    rst $18
    rst $38
    adc h
    ldh a, [$bc]
    ld h, b
    adc d
    ld [hl], b
    ld c, [hl]
    pop af
    rst $08
    ldh a, [$df]
    ldh [$9f], a
    ldh [$82], a
    rst $08
    add l
    rst $38
    add hl, de
    rst $20
    db $fc
    inc bc
    push af
    ld [bc], a
    add hl, bc
    ld b, $40
    rrca
    and l
    ld c, [hl]
    cpl
    call c, Call_06a_7e3d
    db $76
    rst $38
    rst $18
    rst $38
    sbc e
    rst $38
    add e
    rst $38
    and e
    rst $38
    sub a
    pop hl
    dec a
    ret nz

    ld a, [hl]
    add b
    db $fc
    nop
    cp $00
    ld a, [$f000]
    nop
    nop
    ldh a, [$80]
    ld a, d
    inc c
    ei
    ld l, h
    sbc a
    cpl
    rst $18
    ret


    rst $30
    ld [hl], e
    db $fd
    xor b
    rst $18
    ld c, d
    cp l
    sub d
    db $fd
    sub b

jr_06a_53d5:
    rst $38
    adc b
    ld [hl], a
    adc [hl]
    ld [hl], c
    jr nc, @+$01

    ld a, a
    rst $38
    dec hl
    ld a, a
    jp nz, $8200

    nop
    ld [bc], a
    nop
    ld h, a
    sub d
    di
    add a
    dec h
    adc e
    ld [hl], l
    adc e
    cp c
    inc bc
    xor l
    inc bc
    cp l
    inc bc
    db $dd
    inc hl
    sbc e
    ld h, a
    sub a
    ld l, a
    rlca
    rst $38
    db $e3
    rra
    and a
    rra
    cp e
    rlca
    cp [hl]
    rlca
    ld l, $97
    ld d, a
    and [hl]
    rst $00
    cp a
    sbc [hl]
    rst $20
    ld b, $ff
    rrca
    rst $38
    cp $0f
    cp $00
    ld hl, sp-$10
    ldh [$f9], a
    or a
    ld l, a
    sub a
    rst $28
    cp h
    adc $62
    rst $38
    sbc c
    ld h, [hl]
    ld [hl], e
    inc c
    db $f4
    rrca
    xor h
    rst $38
    ld [hl], a
    db $fc
    inc bc
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    ld [$edff], sp
    nop
    adc b
    ld [hl], c
    sub l
    ld [bc], a
    sub b
    nop
    sbc b
    ld h, b
    rst $20
    nop
    ld sp, hl
    nop
    ldh [rP1], a
    dec bc
    ldh a, [rHDMA1]
    and b
    db $10
    jr nz, jr_06a_54a4

    jr z, jr_06a_53d5

    ld a, c
    ld [hl], $c9

jr_06a_5452:
    ccf
    ret nz

    ccf
    ret nz

    add b
    rst $38
    nop
    rst $38
    cp $01
    dec b
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    ld [hl], a
    add b
    ld a, b
    add a
    ld [hl], e
    adc h
    cp e
    call nz, Call_000_07f9
    ld hl, sp+$07
    pop af
    rrca
    or $09
    rst $38
    nop
    rst $28
    db $10
    daa
    ld hl, sp-$0d
    db $fc
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    jp nc, Jump_06a_66ff

    rra
    ld l, $1f
    cp l
    ld e, $c3
    inc a
    rst $10
    jr z, jr_06a_5452

    inc a
    jp Jump_000_263c


    ld sp, hl
    rra
    ldh [rOCPD], a
    add b
    cp $01
    cp $01
    and a
    nop
    sbc b
    nop
    ret nz

    nop

jr_06a_54a4:
    ld e, l
    nop
    dec c
    nop
    add d
    ld bc, $8f53
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
    sub l
    ld a, a
    rlca
    ccf
    ld h, e
    rra
    ld de, $190f
    rlca
    ld [bc], a
    ld bc, $0100
    ld bc, $b000
    ld b, b
    ld b, b
    or b
    cpl
    ret nc

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add hl, sp
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add l
    ld a, [de]
    xor h
    inc de
    rra
    inc hl
    add a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    adc a
    rst $18
    rst $18
    sbc a
    rst $18
    sbc a
    ccf
    sbc a
    xor a
    rra
    rst $38
    rra
    rst $08
    ccf
    ld l, a
    sbc e
    rst $38
    add hl, sp
    pop af
    ld [$09b0], sp
    or $09
    push bc
    add hl, de
    ld d, a
    xor c
    ld h, c
    ccf
    rra
    ccf
    ld e, [hl]
    ccf
    ld de, $763e
    jr c, @+$13

    ld h, b
    ld e, l
    and b
    adc $30
    ld a, [c]
    inc a
    ld a, b
    ccf
    cp [hl]
    ld a, a
    ld a, a
    cp $7d
    cp $e9
    cp $32
    rst $38
    ld a, [hl+]
    rst $30
    jp hl


    db $76
    adc b
    ld [hl], a
    xor b
    ld d, a
    dec bc
    db $f4
    ld d, e
    db $ec
    call nz, $71ff
    adc [hl]
    inc de
    adc h
    ld e, b
    ld a, $08
    inc e
    inc hl
    inc b
    ret nz

    inc a
    ld a, [hl+]
    db $fc
    inc h
    cp $29
    sbc $15
    adc d
    add sp, $04
    adc a
    ld [hl], b
    ld a, c
    db $fc
    rlca
    ld hl, sp+$3d
    ret nz

    sbc b
    ld h, a
    ldh [rIE], a
    xor $f1
    rst $28
    ldh a, [$f9]
    cp $fe
    rst $38
    rst $30
    db $fc
    xor a
    ld [hl], b
    scf
    ld hl, sp-$71
    ld [hl], b
    ld a, [hl]
    add b
    ldh a, [$fe]
    ld b, $fd
    add $f9
    call Call_06a_58e0
    ldh [$c9], a
    ld a, $f1
    rrca
    rst $18
    ccf
    call c, $90e3
    pop hl
    ld de, $e1e0
    ld a, [c]
    ret nz

    di
    jp nc, $80e1

    rst $38
    inc [hl]
    ld a, e
    jr c, jr_06a_560b

    inc e
    db $fd
    jr c, @+$01

    ld c, a
    jr nc, jr_06a_55a9

    ld a, c
    nop
    rst $38
    ld b, a
    ld hl, sp+$11
    ldh [rTMA], a
    ret nz

    add d
    nop
    ret nz

    nop
    ld b, b
    ldh [$e0], a
    ld [hl], b
    ld h, b
    ldh a, [$60]
    ldh a, [$38]

jr_06a_55a9:
    push af
    cp h
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $fc
    cp $f8
    db $fc
    db $f4
    ld hl, sp-$04
    ldh a, [$ee]
    pop af
    and $f1
    add sp, -$0f
    ld a, [$f4f0]
    ld hl, sp+$72
    db $fc

jr_06a_55c6:
    jr nc, jr_06a_55c6

    dec [hl]
    ld a, d
    cp h
    ld [hl], e
    jr c, @-$0b

    db $76
    ld sp, hl
    ld l, a
    ldh a, [$d6]
    ldh [$fe], a
    ldh [$aa], a
    ldh a, [$db]
    ldh [$db], a
    ldh [$c9], a
    ldh a, [$c4]
    ld hl, sp-$3b
    inc bc
    ld b, [hl]
    add c
    and l
    jp nz, $cfb6

    cp $ff
    rst $30
    cp $e6
    rst $38
    rst $18
    ldh [$d0], a
    ldh [$f4], a

jr_06a_55f3:
    ret nz

    inc a
    ret nz

    ld d, $f8
    ldh [rIE], a
    sub l
    ld l, [hl]
    ld e, c
    and h
    db $fd
    nop
    call c, Call_000_1d01
    ld bc, $058b
    sub c
    rst $28
    ei
    rst $38
    ret


jr_06a_560b:
    cp $bd

jr_06a_560d:
    cp $33
    db $fc
    jr nz, jr_06a_560d

    ld [$09fe], sp
    ld e, a
    dec c
    rst $38
    ld c, a
    cp l
    ld bc, $fadf
    ld a, [$fe38]
    inc h
    jr jr_06a_55f3

    inc l
    pop bc
    inc a
    jr jr_06a_560d

    sub b
    ld l, l
    ld b, d
    xor l
    jp nc, $c62d

    add hl, sp
    ret nz

    dec sp
    db $ed
    inc de
    jr z, jr_06a_560d

    or b
    ld b, a
    and $1b
    jr nz, jr_06a_565b

    dec l
    rra
    ld e, l
    cpl
    cp $0d
    ret z

    rra
    ld h, b
    rra
    ld l, h
    inc de
    ld e, e

jr_06a_5649:
    daa
    ld e, c
    daa
    sub a
    ld l, a
    ldh a, [rIF]
    call z, $a033
    ld a, a
    ld hl, sp+$07
    ld a, [hl]
    add c
    scf
    ret z

    rst $38

jr_06a_565b:
    nop
    rst $38
    nop
    inc bc
    rst $38
    or a
    ld c, a
    or a
    ld c, a
    inc b
    rst $38
    db $f4
    rrca
    jr nz, jr_06a_5649

    and a
    ld e, b
    inc de
    db $fc
    ld [bc], a
    db $fd
    inc b
    ei
    cp $01
    cp e
    rlca
    ld c, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $08
    ccf
    xor a
    rra
    rst $28
    rra
    rst $08
    inc sp
    rst $20
    inc bc
    rlc a
    ei
    rlca
    db $ed
    inc bc
    cp l

jr_06a_5691:
    inc bc
    add l
    inc bc
    ld b, c
    add e
    ld de, $79e3
    rlca
    dec bc
    rlca
    ld b, a
    inc bc
    ld [hl], a
    rrca
    ld l, a
    rlca
    ld c, e
    rlca
    rst $20
    rrca
    rla
    rrca
    dec hl
    rlca
    and c
    rra
    db $e3
    dec e
    scf
    rst $08
    ld a, l
    rst $38
    add b
    rra
    nop
    rra
    jr nz, jr_06a_5691

    ld b, c
    cp l
    reti


    rst $20
    rst $00
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $38
    ccf
    di
    rrca
    inc bc
    rst $08
    rlca
    inc bc
    add a
    inc bc
    add e
    add e
    add e
    rst $00
    inc hl
    pop bc
    db $db
    ld hl, $3947
    ld h, c
    rra
    ld h, e
    rra
    ld a, [c]
    rrca
    db $e3
    rra
    ld c, e
    ccf
    adc e
    rst $00
    ld b, e
    add a
    ld e, a
    add a
    ld l, a
    sbc a
    ld d, [hl]
    cp a
    daa
    rst $38
    inc hl
    rst $38
    ld l, e
    sub a
    ld a, e
    add a
    ld l, e
    add a
    inc bc
    add a
    ld l, e
    add a
    ld b, e
    adc a
    rst $30
    adc a
    ld a, l
    add e
    ld c, b
    add e
    rla
    bit 0, a
    adc e
    ld b, e
    adc a
    ld b, e
    adc a
    jp $9b0f


    rlca
    cp e
    rlca
    sub e
    cpl
    cp e
    rlca
    rst $38
    rlca
    sbc a
    rst $20
    rst $10
    rst $28
    rst $18
    rst $28
    daa
    rst $18
    sbc a
    ld a, a
    adc a
    ld a, a
    ld [hl], e
    rrca
    and e
    rra
    and e
    rra
    db $e3
    rra
    ld b, a
    cp a
    ld b, [hl]
    cp a
    rlca
    rst $38
    ld b, $ff
    ld e, $ff
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    add hl, sp
    rst $38
    dec hl
    rst $38
    dec sp
    rst $38
    ld a, d
    rst $38
    cp $ff
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
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    and a
    rst $38
    and l
    rst $38
    or b
    rst $38
    reti


    cp a
    db $fd
    adc a
    rrca
    rst $20
    add e
    rst $38
    ld l, a
    sbc a
    ld e, e
    xor a
    rst $28
    sbc a
    cp e
    rst $18
    adc a
    rst $18
    xor a
    rst $18
    adc a
    rst $38
    add $ff
    adc $ff
    add h
    rst $38
    adc h
    rst $38
    dec b
    cp $48
    rst $38
    ld a, b
    rst $38
    and b
    rst $38
    or b
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld e, c
    rst $38
    ld de, $31ff
    rst $38
    ld sp, $28ff
    rst $38
    ld l, b
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
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
    ei
    rst $38
    ei
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
    cp a
    rst $38
    rst $30
    rst $38
    or e
    rst $38
    or c
    rst $38
    or c
    rst $38
    pop af
    rst $38
    or e
    rst $38
    ei
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
    rst $38
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    rst $30
    rst $38
    or $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$fbff]
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $fdff
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld l, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $28
    pop bc
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    pop hl
    rst $38
    jp Jump_06a_43ff


    rst $38
    rlca
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    inc bc
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
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    push hl
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    sub e
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    add hl, de
    rst $38
    jr z, @+$01

    jr @+$01

    jr @+$01

    db $10

jr_06a_58d7:
    rst $38
    ld [de], a
    rst $38
    add b
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38

Call_06a_58e0:
    ldh a, [rIE]
    db $e4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    call nc, $deef
    rst $28
    rst $18
    rst $28
    rst $08
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    and h
    db $db
    jr nz, jr_06a_58d7

    ld b, b
    cp a
    ld h, b
    sbc a
    ld d, c
    cp a
    ld d, l
    cp a
    rrca
    rst $38
    dec l
    rst $18
    pop hl
    rra
    ld h, c
    sbc a
    ld h, c
    sbc a
    ld bc, $00ff
    rst $38
    or d
    rst $38
    jp hl


    or $e1
    cp $64
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    jr @+$01

    ld a, $ff
    adc a
    rst $38
    rrca
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    and a

jr_06a_592f:
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    nop
    rst $38
    jr nc, jr_06a_592f

    nop
    rst $38
    add b
    rst $38
    add h
    ei
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ld [c], a
    db $fd
    jp hl


    cp $f0
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld hl, sp-$01
    db $f4
    rst $38
    db $76
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $deff
    rst $38
    sbc $ff
    jp c, Jump_000_1eff

    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    add $ff
    ld c, $ff
    inc c
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c

jr_06a_59d3:
    rst $38
    ld e, l
    cp a
    ld e, [hl]
    cp l
    ld e, b
    cp a
    sbc b
    ld a, a
    sub b
    ld a, a
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld h, d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    cp $ff
    rst $38
    rst $38
    ld [c], a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    set 6, a
    jp $c3ff


    rst $38
    jp z, $8bf7

    rst $30
    adc e
    rst $30
    sbc e
    rst $20
    dec sp
    rst $00
    dec sp
    rst $00
    jr c, jr_06a_59d3

    cpl
    ret nz

    ld a, $c1
    cp l
    ld b, e
    ei
    rlca
    ld a, d
    add a
    ld d, $ef
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    db $ec
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    db $dd
    rst $38
    set 7, a
    ret z

    rst $38
    db $ec
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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

jr_06a_5a43:
    rst $38
    rst $38
    rst $38
    rst $38

jr_06a_5a47:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    ld [$01ff], sp
    cp $02
    db $fd
    dec bc
    db $fc
    inc de
    db $fc
    ld bc, $02fe
    db $fd
    jr nz, jr_06a_5a43

    nop
    rst $38
    jr nz, jr_06a_5a47

    ld de, $33ef
    rst $08
    dec de
    rst $20
    scf
    rst $08
    rlca
    rst $38
    sbc [hl]
    ld a, a
    rra
    rst $38
    daa
    rst $38
    ld l, e
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ldh [rIE], a
    ld c, b
    rst $38
    ld b, h
    ei
    ld d, a
    ld hl, sp+$12
    db $fd
    jr nc, @+$01

    ld a, [hl-]
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rrca
    rst $38
    ld e, a
    cp a
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    sbc b
    rst $20
    adc b
    rst $30
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
    ret nz

    cp a
    ld b, b
    cp a
    jr nz, @+$01

    ld sp, $65fe
    cp $79
    xor $da
    rst $28
    adc h
    rst $38
    xor [hl]
    db $dd
    ld c, a
    db $fd
    dec de
    db $fd
    dec sp
    db $fd
    dec sp
    db $fd
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    sbc c
    rst $38
    dec de
    rst $38
    ld c, $ff
    ccf
    rst $38
    ld a, e
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    ldh [rIE], a
    rst $20
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    di
    rst $38
    jp $a0ff


    rst $18
    and d
    rst $18
    jp hl


    sub a
    ret nc

    ccf
    and d
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    db $10
    rst $28
    nop
    rst $38
    ld b, e
    db $fd
    ret nz

    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    ld a, a
    ld b, a
    cp a
    pop bc
    ccf
    jp $013f


    rst $38
    ld bc, $c3ff
    rst $38
    rst $18
    rst $38
    rst $38
    cp $fd
    cp $fc
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    jp hl


    cp $f1
    cp $f3
    db $fc
    db $e3
    db $fc
    rst $30
    ld hl, sp+$46
    ld sp, hl
    push hl
    ei
    rst $38
    di
    rla
    rst $38
    rra
    rst $38
    xor a
    ld e, a
    rst $08
    ccf
    ld e, a
    cp a
    ld a, a
    cp a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    dec c
    rst $38
    adc l
    rst $38
    add a
    rst $38
    add hl, de
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc $ff
    adc a
    rst $38
    rrca
    rst $38
    ld e, h
    rst $38
    rrca
    rst $38
    ld b, $ff
    add h
    ld a, a
    inc c
    rst $38
    ld [$8cff], sp
    rst $38
    ldh [rIE], a
    add $ff
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
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
    jr jr_06a_5bd3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06a_5be3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06a_5bf3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06a_5c03

    ld [hl-], a

jr_06a_5bd3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06a_5c13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06a_5be3:
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

jr_06a_5bf3:
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

jr_06a_5c03:
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

jr_06a_5c13:
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
    jr jr_06a_5cd3

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
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_06a_5cd3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06a_5d13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld bc, $0001
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0404
    ld bc, HeaderLogo
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_06a_5d13:
    nop
    inc b
    inc b
    inc b
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
    inc b
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0401
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
    ld bc, HeaderLogo
    inc b
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, HeaderLogo
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0808
    ld [$0808], sp
    ld [$0908], sp
    ld [$0809], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    ld [$0809], sp
    ld [$0808], sp
    ld [$0809], sp
    ld [$0908], sp
    ld [$0909], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $ed
    ld a, [c]
    db $eb
    db $f4
    rst $30
    ld hl, sp-$0d
    db $fc
    di
    db $fc
    db $eb
    db $fc
    ld a, a
    ld hl, sp+$7d
    ld a, [$78ff]
    ld b, d
    db $fd
    db $10
    rst $38
    sbc h
    ld a, a
    ld a, e
    db $fc
    ldh a, [$7f]
    db $e3
    ld a, h

jr_06a_5e3e:
    sbc h
    ld a, b
    and h
    ld a, b
    cp [hl]
    ld h, b
    cp [hl]
    ld h, b
    adc $30
    ld l, a
    sub b
    rst $28
    db $10
    rst $20
    jr jr_06a_5e3e

    jr jr_06a_5e9c

    cp h
    xor e
    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    ld l, $d1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    inc c
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc b
    ld a, [$1e00]
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    xor $10
    cp a
    ld d, b
    and a
    ld e, b
    scf
    ret z

    rrca
    ldh [rNR22], a
    ldh [$31], a
    ret nz

    dec de
    ldh [$e6], a
    ld sp, hl
    db $fd
    ei

jr_06a_5e9c:
    ld sp, hl
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
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $e3
    db $fc
    rst $08
    ldh a, [$eb]
    db $f4
    ld a, [c]
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    ret z

    scf
    ret


    ld [hl], $f8
    rlca
    push af
    dec bc
    di
    rrca
    adc b
    ccf
    sub $39
    dec de
    db $e4
    sbc b
    rst $20
    ld bc, $8dff
    ld [hl], e
    add hl, bc
    rst $30
    ld bc, $c1ff
    ccf
    inc de
    rst $00
    rla
    rst $28
    sbc a
    ld a, a
    and e
    ld a, a
    ld c, l
    di
    ld c, h
    di
    ccf
    jp nz, $e718

    inc b
    rst $38
    inc c
    rst $38
    add sp, -$01
    ei
    db $fc
    ld sp, $00fe
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_06a_5f2a:
    db $10
    rst $28
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret c

    db $fd
    ld hl, sp-$01
    db $fc
    rst $38
    call c, $087f
    rst $30
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld hl, sp+$00
    ld a, e
    nop
    rst $38
    nop
    rst $30
    nop
    nop
    call nc, $8b10
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld l, h
    rst $38
    jr @+$01

    ld a, a
    ld hl, sp+$7f
    cp $7d
    cp $23
    db $fc
    ld [de], a
    db $fc
    jr jr_06a_5f2a

    jr @+$01

    jr c, @+$01

    rst $30
    ld [$0877], sp
    ld a, h
    nop
    cp d
    inc b
    db $fc
    inc bc
    db $eb
    rlca
    rst $38
    inc bc
    jp c, $0307

    sbc $03
    cp [hl]
    inc bc
    cp a
    inc bc
    sbc a
    inc bc
    rst $18
    dec b
    cp a
    ld bc, $03ff
    rst $38
    cp $01
    sbc a
    nop
    rrca
    nop
    rst $38
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
    ldh a, [rIE]
    ld [hl], h
    ei
    dec hl
    db $f4
    rlca
    ld hl, sp-$31
    or b
    ld a, a
    add b
    ld a, a
    add b
    db $ed
    db $10
    rst $28
    db $10
    ld h, a
    sbc b
    inc de
    db $fc
    add hl, sp
    cp $c4
    rst $38
    jp nz, $d1ff

    rst $28
    db $dd
    db $e3
    sbc $e1
    jp $e3fd


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

jr_06a_5fe8:
    nop
    rst $38
    db $10
    rst $28
    ld [$46e7], sp
    sbc a
    dec c
    cp $be
    rst $38
    jr c, @+$01

    ld [hl], c
    cp $e3
    db $fc
    pop bc
    cp $c0
    rst $38
    call nz, $87ff
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    add hl, de
    and $5d
    and d
    sub b
    ld a, a
    adc c
    ld a, a
    and b
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_06a_5fe8

    rrca
    rst $30
    rrca
    add a
    ld a, a
    rla
    rst $28
    scf
    rst $08
    rra
    rst $00
    dec de
    rst $00
    ei
    rlca
    ei
    rlca

jr_06a_6032:
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38

jr_06a_603b:
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    ld a, [hl]
    ld bc, $00b7
    ld a, e
    nop
    ld a, a
    nop
    ld e, a
    nop
    sbc a
    nop
    daa
    nop
    sbc a
    nop
    rrca
    nop
    ld e, $01
    db $fd
    inc bc
    adc a
    rst $38
    ld b, b
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    rra
    ldh [$bc], a
    ld b, b
    add sp, $00
    adc h
    nop
    adc h
    nop
    db $fd
    nop
    rst $28
    nop
    jr nz, jr_06a_6032

    jr nz, jr_06a_60b4

    nop
    ld hl, sp-$58
    ld [hl], c
    jr c, jr_06a_603b

    add sp, -$0a
    ret c

    and d
    sub b
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $30
    ret nz

    db $ed
    ret nz

    add l
    ld b, b
    pop af
    add b
    db $fc
    ldh [$c0], a
    or b
    ret nz

    adc b
    ldh a, [rIE]
    ldh a, [rVBK]
    ldh a, [$63]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $30
    rst $38
    cp [hl]
    rst $38
    cp $ff
    di
    rst $38
    ret nz

    rst $38
    inc a
    jp Jump_000_00ff


    cp a
    nop
    rst $38
    nop
    rst $38
    nop

jr_06a_60b4:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ldh [$1f], a
    ld bc, $40fe
    rst $38
    add b
    rst $38
    ld bc, $cefe
    rst $38
    di
    rst $38
    ld [c], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jr @+$01

    ld de, $1bff
    rst $38
    xor l
    ld e, a
    ld [hl], a
    adc a
    rst $30
    adc a
    rst $30
    rrca
    rst $28
    rra
    rst $38
    ccf
    ccf
    rst $38
    ei
    db $fc
    inc [hl]
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$eb]
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$df], a
    ldh [$1f], a
    ldh [$9e], a
    ld h, c
    ld a, $c1
    ld b, h
    ei
    nop
    rst $38
    xor $11
    rst $38
    nop
    rst $38
    nop
    cp b
    ld b, b
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $e4
    rst $38
    add [hl]
    rst $38
    jp nz, $87ff

    rst $38
    jp $dbff


    rst $20
    and e
    rst $38
    di
    rst $38
    pop hl
    rst $38
    db $ed
    rst $38
    adc l
    rst $38

jr_06a_6144:
    ld sp, hl
    rst $38
    add sp, -$01
    ld [hl], c
    rst $38
    ld l, c
    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    ld a, a
    ld a, c
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    dec a
    cp $cd
    ld a, $f5
    ld c, $07
    rst $38
    ld b, $7f
    inc bc
    ld h, $23
    rlca
    add hl, bc
    scf
    dec d
    ld l, e
    cpl
    rra
    ccf
    db $fd
    dec h
    ld a, e
    ld a, l
    inc bc
    dec l
    ld d, e
    cpl
    pop de
    ld [hl], l
    adc e
    dec c
    ld a, [c]
    ld b, b
    sbc l
    nop
    db $dd
    jr nz, jr_06a_6144

    ld [bc], a
    pop hl
    nop
    ld [c], a
    nop
    pop bc
    nop
    db $e3
    ld bc, $030f
    rra
    inc de
    rrca
    ld [hl], $09
    add l
    dec sp
    ld d, a
    rst $28
    rrca
    rst $18
    rra
    rst $38
    cp $ff
    rst $38
    cp $7d
    cp $b9
    cp $37
    ld hl, sp+$27
    ld hl, sp-$79
    ld hl, sp+$16
    ld sp, hl
    inc d
    ei
    rst $28
    db $10
    db $eb
    inc d
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, [$fe05]
    ld bc, $01fe
    cp h
    ld b, e
    inc a
    jp $0ff0


    jp $9f3c


    ld h, b
    ld c, $f1
    dec c
    di
    sbc l
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    pop bc
    cp $df
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$eb]
    db $f4
    db $eb
    db $f4
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    rst $38
    rst $08
    ccf
    scf
    rrca
    call c, $bb03
    nop
    db $fc
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    call z, $e13f
    ld e, $fb
    rlca
    ldh a, [rIE]
    di
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    dec bc
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    ld a, c
    rst $38
    cp c
    rst $38
    jr c, @+$01

    cp e
    db $fd
    cp l
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
    db $fc
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
    ret nz

    rst $38
    ld a, $c1
    ld a, l
    add e
    ld sp, hl
    rlca
    ld a, e
    add a
    dec de
    rst $20
    dec a
    jp $ef11


    db $db
    dec h
    sbc $01
    cp $01
    ccf
    nop
    rst $38
    nop
    xor $01
    ld hl, $17df
    rst $28
    adc h
    cpl
    adc h
    dec sp
    jr @-$5d

    nop
    ei
    add b
    ld a, a
    ld bc, $7dbb
    add e
    ld [de], a
    rst $28
    ld c, h
    rst $38
    ld d, h
    ei
    ld l, h
    di
    ld l, b
    rst $30
    ld e, c
    rst $20
    reti


    rst $20
    add sp, -$09
    add sp, -$09
    add sp, -$09
    ld hl, sp-$19
    ld e, b
    rst $20
    ret c

    ld h, a
    jr c, @+$49

    jr jr_06a_6307

    sbc c
    ld h, a
    inc de
    ld l, a
    jp $853f


    ld a, a
    add l
    ld a, a
    inc d
    rst $38
    sbc l
    ld a, a
    ld c, [hl]
    cp a
    sbc [hl]
    ld a, a
    ld c, $ff
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    db $e4
    rra
    rst $10
    ccf
    or a
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    jp nz, $a2ff

    rst $18
    ld h, b
    sbc a
    pop bc
    ccf
    pop bc
    ccf
    jp $c73f


    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    cp a
    ld e, a
    sbc a
    ld a, a
    rst $18
    ccf
    ld [hl], $ff
    ld de, $01fe
    cp $c3
    db $fc
    inc hl
    call c, Call_000_38d7
    ld [bc], a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    inc l
    di
    ld a, b
    add a
    jr nc, @-$2f

    add b
    ld a, a
    ld e, l
    add e
    ld a, a
    add b
    rst $10
    jr nz, jr_06a_6316

jr_06a_6307:
    nop
    rst $28
    nop
    ld b, b
    add a
    ret


    rst $30
    inc b
    rst $38
    add l
    ld a, [hl]
    ld bc, $2bfe
    db $fc

jr_06a_6316:
    ld l, e
    db $fc
    ld a, e
    db $fc
    ld [hl], e
    db $fc
    ld h, [hl]
    ld hl, sp+$6f
    ldh a, [$90]
    ld a, a
    jr nc, @+$01

    jp hl


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    or e
    rst $38
    pop af
    rst $38
    db $fd
    di
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add $ff
    ld c, $ff
    adc $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $28
    pop af
    rst $28
    pop af
    rst $28
    ld sp, hl
    rst $30
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, h
    ld a, e
    inc [hl]
    inc sp
    dec a
    dec sp
    ccf
    dec sp
    ccf
    ccf
    ccf
    ccf
    ld a, h
    ld a, h
    ld e, [hl]
    rst $38
    dec bc
    rst $38
    add hl, de
    rst $38
    dec de
    rst $38
    rra
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    jp $f1ff


    rst $38
    xor a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    dec a
    cp $3d
    cp $5d
    cp $7d
    cp $74
    rst $38
    ld h, c
    cp $61
    cp $71
    cp $56
    rst $38
    rst $00
    rst $38
    xor $ff
    rst $28
    cp $f6
    rst $38
    add $ff
    ld l, $df
    ld l, $df
    ld e, $ff
    ld e, $ff
    dec a
    cp $7d
    cp $7d
    cp $fc
    rst $38
    ei
    rst $38
    rst $38
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$0e
    db $fd
    pop af
    rst $38
    inc de
    rst $38
    add l
    ld a, a
    rst $30
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    ld e, $e1
    ld e, $65
    sbc [hl]
    add l
    cp $e7
    db $fc
    di
    db $ec
    sub a
    add sp, $67
    sbc b
    ld a, a
    add b
    di
    nop
    add hl, sp
    ret nz

    add b
    rst $38
    ld [hl], e
    add b
    ret nz

    nop
    nop
    add b
    add hl, bc
    add b
    cp $01
    ld hl, sp+$07
    inc d
    xor $06
    rst $38
    db $10
    rst $38
    ld b, a
    cp a
    ld bc, $01df
    sbc a
    nop
    rlca
    nop
    nop
    or d
    db $fd
    ret z

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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

jr_06a_6474:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    adc c
    rst $38
    ld hl, $34ff
    rst $38
    cp l
    cp $fd
    cp $72
    db $fd
    rst $30
    ld hl, sp-$19
    ld hl, sp-$17
    ldh a, [$f3]
    ldh [$f7], a
    ldh [$df], a
    ldh [$f7], a
    nop
    ld a, a
    add b
    rst $30
    nop
    ld l, a
    add b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_06a_6474

    ld b, b
    rst $00
    jr c, jr_06a_64ef

    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    push de
    ld l, $f9
    ld b, $05
    cp $38
    rst $38
    ret c

    ccf
    ret c

    ccf
    dec c
    cp $03
    db $fc
    rst $00
    jr c, @-$2f

    jr nc, jr_06a_6502

    ldh a, [$b9]
    cp $b6
    ld a, a
    di
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
    ld a, a
    rst $38
    inc e
    rst $38
    ldh [$1f], a
    ei

jr_06a_64ef:
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    di
    nop
    cp h
    nop

jr_06a_6502:
    inc d
    add sp, -$33
    ld a, $2e
    rra
    ld d, b
    ccf
    ret nz

    ccf
    ld a, [hl-]
    rst $00
    ldh [rTAC], a
    db $fc
    inc bc
    or a
    ld bc, $0fd1
    add d
    ld a, a
    add $3f
    rrca
    rst $38
    add a
    ld a, a
    jp $fe3f


    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $28
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    cpl
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
    rst $18
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ei

jr_06a_6587:
    rst $38
    ld sp, hl
    rst $38
    db $f4
    ei
    db $ec
    di
    ld e, c
    and $30
    rst $08
    ld a, b
    add a
    ld c, [hl]
    or c
    ret nc

    cpl
    rst $38
    nop
    nop
    rst $38
    xor a
    ld a, a
    reti


    ld h, $e1
    ld e, $fb
    inc b
    push af
    ld [bc], a
    sub e
    ld l, h
    srl h
    dec de
    db $fc
    cp a
    ld a, b
    ld a, b
    rst $38
    ld a, l
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    db $fd
    inc bc
    ld a, b
    add a
    rst $08
    rst $38
    db $eb
    rst $38
    jr c, jr_06a_6587

    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    db $10
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    call nc, $fe2f
    rrca
    cp $0f
    ld h, [hl]
    sbc a
    add h
    rst $38
    add sp, -$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    sbc $ff
    ld h, e
    sbc a
    db $fc
    inc bc
    cp $01
    call c, $8023
    ld a, a
    cp e
    ld a, h
    rla
    ld hl, sp-$13
    ldh a, [$eb]
    ldh a, [$7f]
    ldh [$fd], a
    nop
    ccf
    nop
    db $eb
    db $10
    ret nz

    ld sp, hl
    ret z

    rst $38
    ld b, l
    sbc [hl]
    rrca
    ldh a, [$79]
    ldh [$ef], a
    ldh a, [$b0]
    ret nz

    nop
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add [hl]
    nop
    cp b
    nop
    adc a
    ld [hl], b
    cp h
    ld b, b
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, $c0
    ld a, $c0
    inc a
    ret nz

    cp $80
    ld a, [hl]
    add b
    ld a, $c0
    rrca
    ldh a, [rIF]
    ldh a, [$3c]
    ret nz

    jr c, @-$3e

    ld a, a
    add b
    dec [hl]
    jp nz, $f38c

    adc l
    ldh a, [$84]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$3a
    ld sp, hl
    add [hl]
    ld sp, hl
    add $f9
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add d
    db $fd
    add e
    db $fc
    add e
    db $fc
    jp $c0fc


    db $fd
    jp nz, $c3fd

    db $fc
    pop bc
    cp $c1
    cp $c0
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    db $ec
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld b, b
    cp a
    adc h
    ld [hl], e
    pop hl
    rra
    inc bc
    rst $38
    sbc $ff
    inc [hl]
    rst $08
    cp e
    rst $00
    adc a
    ld [hl], e
    rst $28
    rra
    rlca
    rst $38
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld a, [c]
    rrca
    pop hl

jr_06a_66a5:
    ld e, $e9
    ld e, $99
    ld h, a
    ld [de], a
    rst $28
    rst $08
    ld a, $c2
    rst $38
    cp $ff
    db $fd
    rst $38
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    inc c
    di
    rrca
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    adc [hl]
    ld [hl], c
    add b
    ld a, a
    db $10
    rst $28
    rlca
    ld hl, sp+$08
    rst $30
    jr c, jr_06a_66a5

    ld sp, hl
    ld b, $7e
    add c
    ld a, h
    add e
    ld [hl], b
    adc a
    ld [hl], a
    adc a
    rst $08
    ccf
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    rra
    ldh [$de], a
    ld bc, $031c
    sub b
    rrca
    pop bc
    ld c, $e2
    inc e
    pop hl

Jump_06a_66ff:
    ld e, $0f
    cp $10
    rst $38
    dec b
    ei
    and b
    ld [hl], e
    db $10
    ldh [$7e], a
    rst $38
    rst $38
    rst $38
    ld de, $ffff
    nop
    ld a, [hl]
    ld bc, $0174
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $f709
    add sp, $17
    ld hl, sp+$07
    db $ed
    ld [bc], a
    add $00
    add $00
    rst $28
    nop
    ldh a, [rSB]
    ld h, b
    ld bc, $0138
    inc e
    ld bc, $01f4
    ld hl, sp+$01
    inc d
    ld bc, $0118
    ld [de], a
    ld bc, $0113
    rst $38
    ld bc, $01ff
    ccf
    ld bc, $01bb
    dec sp
    ld bc, $01bf
    rst $38
    ld bc, $21df
    cp a
    inc de
    rst $18
    ccf
    dec [hl]
    ei
    sub l
    ld a, e
    ld d, a
    cp e
    rst $00
    dec sp
    dec [hl]
    adc e
    add l
    nop
    sbc c
    nop
    add d
    ld a, l
    inc a
    jp $f30c


    nop
    rst $38
    jp $4bff


    rst $38
    rst $08
    rst $38
    db $ec
    rst $38
    sbc $ff
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06a_677d:
    rst $38
    rst $38
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
    sbc e
    db $e4
    add h
    rst $38
    ld [hl], b
    adc a
    ld l, a
    sub b
    rra
    ldh [$d8], a
    rst $20
    ret c

    rst $20
    add [hl]
    ld sp, hl
    and h
    db $db
    sub e
    db $ec
    add b
    rst $38
    ld b, [hl]
    cp c
    ldh [$1f], a
    pop af
    ld c, $fc
    inc bc
    inc d
    db $eb
    add hl, hl
    rst $18
    rst $38
    ld bc, $01ff
    cp a
    pop bc
    xor h
    db $d3
    jr c, jr_06a_677d

    db $fc
    inc bc
    ldh [$1f], a
    add c
    ld a, a
    ld [hl-], a
    rst $08
    ld a, a
    add b
    ld sp, $00ce
    rst $38
    ld [bc], a
    db $fd
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ld c, b
    cp a
    add l
    ld a, a
    dec c
    rst $38
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    ld a, l
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld a, $ff
    jr nz, @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rPCM34]
    ld hl, sp+$17
    ld hl, sp+$67
    sbc b
    db $76
    adc b
    ldh a, [rIF]
    ei
    inc c
    sub e
    inc c
    db $d3
    inc c
    ld l, a
    nop
    adc e
    nop
    ld b, b
    add b
    ld b, b
    ldh [$a0], a
    ld b, b
    add b
    ld b, b
    and b
    ret nz

    ret c

    rst $20
    pop af
    ret nz

    nop
    ret nz

    ret nz

    add b
    ret nz

    add b
    sbc b
    ret nz

    ret z

    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    rst $18
    nop
    rst $38
    nop
    dec sp
    nop
    ld sp, $1000
    nop
    stop
    ld [bc], a
    nop
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_06a_683d:
    nop
    rst $38
    nop
    cp $01
    cp $01
    ld sp, hl
    ld b, $f8
    rlca
    ldh a, [rIF]
    cp a
    ld b, b
    add h
    ld a, e
    nop
    rst $38
    nop
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
    add c
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    inc c
    db $e3
    ret


    ld [hl], $69
    sub h
    rst $28
    jr jr_06a_68dc

    adc a
    jr c, jr_06a_683d

    nop
    rst $38
    sub b
    rst $38
    add hl, de
    rst $38
    ld a, c
    rst $38
    or $ff
    ret nz

    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec c
    rst $38
    ld l, l
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    ret nc

    rst $28
    ld b, c
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ccf
    rst $38
    ld bc, $c1ff
    ccf
    ld b, c
    cp a
    ld sp, hl
    rlca
    inc hl
    rst $18
    rst $38
    rst $38
    dec de
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld h, b
    sbc a
    ld a, [c]
    rrca
    ld b, $ff
    inc a
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    db $10
    rst $28
    ld l, [hl]
    rst $38
    add c
    ld a, a
    inc b
    ei
    pop af
    rrca
    ei
    rlca
    jp nz, $fe3f

    rst $38
    jp nz, Jump_000_22ff

    rst $18
    or $0f
    ld b, $ff
    rra
    rst $38
    ld a, a
    rst $38
    ld d, b
    rst $38

jr_06a_68dc:
    inc b
    ei
    add hl, de
    and $37
    ret z

    dec hl
    call nc, $ff00
    jp nz, Jump_000_213f

    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    ld [hl], h
    rrca
    or $0f
    db $f4
    rrca
    pop bc
    ccf
    dec sp
    rst $30
    rst $00
    ccf
    push af
    rrca
    pop af
    rrca
    ldh [$1f], a
    jp z, Jump_000_0101

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld de, $6e0e
    sbc [hl]
    ld a, [$ee0e]
    ld e, $04
    ld e, $3f
    inc b
    ld sp, hl
    ld b, $67
    cp $ef
    cp $c9
    cp $0e
    ld c, $00
    nop
    nop
    nop
    ld a, $3e
    ld a, $3e
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    rlca
    rst $38
    ld e, $e6
    inc d
    db $ec
    inc b
    db $fc
    inc b
    db $fc
    adc a
    ld a, a
    call nz, $d63c
    ld l, $97
    ld l, a
    rla
    rst $28
    sub a
    ld l, a
    rst $00
    ccf
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc e
    db $fc
    rra
    rst $38
    ld e, $fe
    ld a, [de]
    ld a, [$f838]
    ld a, $fe
    cp [hl]
    cp $f8
    ld hl, sp-$08
    ld hl, sp-$0f
    pop af
    ld bc, $30ff
    rst $08
    ld l, b
    sbc a
    ld e, b
    cp a
    ret nz

    ccf
    ld c, l
    cp a
    db $fc
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld [$01ff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    ld hl, sp-$79
    sbc b
    rst $20
    adc b
    rst $30
    db $10

jr_06a_6993:
    rst $28
    and a
    rst $38
    ld b, c
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld e, $ff
    cp a
    rst $38
    rst $38
    rst $38
    dec sp
    rst $00
    adc d
    rst $30
    sub b
    rst $38
    ld b, b
    cp a
    or b
    ld c, a
    inc sp
    rst $08
    db $10

jr_06a_69af:
    rst $28
    ld hl, $f8de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_06a_6993

    ld a, l
    add e
    cp l
    jp $fb85


    ld bc, $00ff
    rst $38
    jr nz, jr_06a_69af

    ld sp, $6fcf
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_06a_69e0:
    rst $38
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
    rst $38
    rst $38
    ld a, [c]
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    pop hl
    cp $70
    add b
    ld b, c
    add b
    ld [hl], l
    add b
    ld h, [hl]
    add b
    add $81
    cp a
    jp $e7d9


    ld a, $c1
    inc [hl]
    ret nz

    cp a
    ret nz

    ld a, [$1e9f]
    nop
    ld hl, $0100
    nop
    rra
    nop
    ld d, b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ldh [rP1], a
    jr nz, jr_06a_69e0

    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld c, c
    or a
    pop hl

jr_06a_6a29:
    rra
    pop hl
    rra
    ld hl, $315f
    rst $08
    ld de, $18ef
    rst $20
    jr @-$17

    jr nz, @+$01

    ld [hl], b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rst $00
    ei
    jp $c1ff


    rst $38
    pop hl
    rst $18
    dec [hl]
    rst $08
    jr nz, jr_06a_6a29

    db $10
    rst $28
    add c
    rst $38
    sub e
    rst $38
    pop de
    rst $38
    ld bc, $09ff
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    adc a
    rst $38
    ld c, e
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    db $d3
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    rla
    rst $38
    sub a
    ld a, a
    sbc a
    ld a, a
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
    adc d
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    add e
    rst $38
    ld a, c
    add a
    ld de, $00ef
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    add hl, de
    rst $38
    ld sp, $c8ff
    rst $30
    ret nz

    rst $38
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    jp hl


    rst $30
    add [hl]
    ld sp, hl
    rst $08
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add [hl]
    rst $38
    adc a
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$22
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $3e
    rst $38
    call z, $ec3f
    rra
    call c, $bc3f
    ld a, a
    cp h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    rst $20
    rra
    jr jr_06a_6aff

    db $ed
    rra
    and a
    ld e, a
    ld h, e
    sbc a
    reti


jr_06a_6aff:
    rlca
    ld c, $01
    add [hl]
    inc bc
    xor e
    ld b, a
    inc [hl]
    dec de
    and h
    rra
    rrca
    rst $38
    dec a
    nop
    ld bc, $0000
    nop
    ld bc, $0700
    ld bc, $03d5
    ld hl, $631f
    rra
    db $fd
    inc bc
    ld a, [hl]
    ld bc, $ffff
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    set 7, a
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    jp nc, $9cff

    rst $38
    call c, $fdff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    di
    rst $38
    rst $30
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    adc $ff
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    db $dd
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    ld h, d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    add h
    rst $38
    add h
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld e, [hl]
    rst $38
    db $fc
    rst $38
    db $fd
    cp $ff
    cp $3e
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    dec de
    rst $20
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    jr nz, @+$21

    ldh [$63], a
    db $fc
    nop
    rst $38
    ld [hl], c
    adc a
    ld sp, hl
    rlca
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$10
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    scf
    ld hl, sp+$0f
    ldh a, [$b7]
    ret z

    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ldh [$67], a
    ld hl, sp+$63
    db $fc
    rst $28
    ldh a, [$e3]
    db $fc
    jp hl


    cp $00
    rst $38
    ld [hl], a
    nop
    ld hl, $9f00
    ld h, b
    sbc e
    db $e4
    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$db], a
    ldh [rIF], a
    ldh a, [rIF]
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
    rst $18
    rst $38
    sbc $ff
    sbc $ff
    ld e, [hl]
    rst $38
    ld a, $ff
    ld l, $ff
    rst $38
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
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
    ei
    rst $38
    sbc e
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
    cp a
    rst $38
    cp l
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
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc l
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    cp l
    ld a, a
    dec a
    rst $38
    sbc e
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    add [hl]
    rst $38
    adc h
    rst $38
    call $ccff
    rst $38
    call nz, Call_000_08ff
    rst $30
    dec c
    rst $38
    rrca
    rst $38
    pop hl
    rst $38
    ld bc, $1aff
    rst $38
    ld e, b
    rst $38
    add d
    ld a, l
    rst $38
    nop
    ldh [$1f], a
    ccf
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    jr c, @+$01

    ld [$c3ff], sp
    inc a
    rst $38
    nop
    ldh a, [rIF]
    jr @+$01

    jr nz, @+$01

    rrca
    rst $38
    rla
    rst $28
    rst $30
    rrca
    ld sp, hl
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    ld bc, $807e
    ld a, a
    add h
    ld [hl], e
    adc b
    ld [hl], a
    and b
    ld a, a
    ld bc, $70ff
    rrca
    xor h
    rra
    xor $1f
    add $3f
    ld [c], a
    rra
    jp nc, $c22f

    ccf
    ldh a, [rIF]
    cp b
    rlca
    cp b
    rst $38
    ret c

    rst $38
    rst $18
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
    di
    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    inc c
    rst $38
    ret c

    rst $38
    cp $ff
    sbc $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    adc $ff
    adc a
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    ld c, $ff
    adc h
    rst $38
    xor h
    rst $18
    and l
    sbc $a6
    rst $18
    sub [hl]
    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $eb
    rst $30
    or [hl]
    rst $38
    sub l
    rst $38
    sbc c
    rst $38
    reti


    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    db $fc
    ei
    add sp, -$01
    db $ec
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38

jr_06a_6d82:
    ret nz

    rst $38
    reti


    cp $83
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld hl, $d0df
    cp a
    or [hl]
    ei
    ld [hl-], a
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ccf
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    ld h, e
    rst $38
    ld l, e
    rst $30
    ld l, e
    rst $30
    rst $20
    rst $38
    rst $10
    rst $28
    rst $10
    rst $28
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld e, $ff
    ld a, $ff
    cp [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    daa
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    and b
    rst $38
    ld hl, $29fe
    cp $33
    db $fc
    ld [hl], e
    db $fc
    scf
    ld hl, sp-$41
    ld [hl], b
    cpl
    ldh a, [rIE]
    ld h, b
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    rst $28
    ld [hl], b
    ccf
    jr nc, jr_06a_6d82

    ld a, [hl-]
    xor e
    ld e, $ef
    ld e, $ff
    cp $fe
    rst $38
    dec a
    cp $3d
    adc [hl]
    sbc a
    db $ec
    db $ec
    rst $38
    pop hl
    db $fc
    or h
    ret z

    db $e4
    ld [$8468], sp
    db $f4
    inc b
    ldh a, [rTMA]
    db $f4
    ld [bc], a
    ld [hl], a
    add b
    ld [hl], h
    add e
    ld a, a
    add d
    ld c, l
    or d
    db $fc
    inc bc
    cp h
    ld b, e
    ld [$fc00], a
    nop
    ld a, h
    add b
    ld a, h
    add b
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ret


    rst $38
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    cpl
    cp $3c
    rst $38
    dec c
    cp $02
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    adc [hl]
    rst $30
    jp $d2ff


    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    sub [hl]
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ld sp, $2aff
    push af
    xor [hl]
    ld [hl], c
    adc l
    ld [hl], e
    ld b, c
    rst $38
    dec bc
    rst $30
    sub a
    rst $28
    sub e
    rst $28
    inc d
    db $eb
    rlca
    ld hl, sp+$2e
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [$5f]
    ldh [$df], a
    ldh [$df], a
    ldh [$de], a
    pop hl
    call c, $aee3
    pop af
    cp [hl]
    pop hl
    sbc h
    db $e3
    xor [hl]
    di
    or h
    ei
    or b
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    inc hl
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld hl, $20de
    sbc $5e
    cp h
    add hl, hl
    db $fc
    ld c, b
    db $fc
    ld [hl], $c8
    ld [hl], a
    adc b
    ld a, a
    add b
    ccf
    ret nz

    rst $08
    ldh a, [$c8]
    rst $30
    rst $08
    pop af
    dec h
    ei
    and e
    ld a, a
    and a
    ld a, a
    rst $00
    ccf
    adc $3f
    call z, $bc3f
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, a
    jr @+$01

    ld e, $ff
    ld e, [hl]
    cp a
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $08
    ccf
    cp h
    ld a, a
    cp h
    ld a, a
    ld a, l
    cp $1d
    cp $3b
    db $fc
    dec de
    db $fc
    ccf
    ld hl, sp+$7b
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp+$7d
    ld hl, sp+$7b
    db $fc
    ld a, a
    ld hl, sp+$17
    ld a, b
    scf
    jr @+$09

    jr jr_06a_6f32

    ld e, b
    dec de
    nop
    inc de
    ld [$041b], sp
    dec sp
    call nz, $8649
    add h
    ld b, e
    ld [hl+], a
    ld b, c
    ld [hl-], a
    ld b, c
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $30
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38

jr_06a_6f32:
    cp l
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $e3
    db $fc
    ei
    db $fc
    rst $00
    ld hl, sp-$21
    ldh [$6f], a
    ldh a, [$3b]
    db $fc
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], l
    ei
    ld [hl], e
    rst $38
    ld [hl], d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    dec a
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
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl-]
    db $fd
    dec a
    ld hl, sp-$0f
    ld hl, sp-$07
    ldh a, [$79]
    ldh a, [$b9]
    ld [hl], b
    cp e
    ld [hl], b
    sub a
    ld a, b
    xor b
    ld [hl], a
    ret nc

    daa
    add c
    ld h, d
    ld [hl+], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld sp, hl
    call nz, $e09f
    or a
    ret z

    rst $30
    adc b
    di
    adc h
    and b
    rst $18
    ldh a, [$9f]
    db $fc
    sbc a
    ld [bc], a
    sbc l
    cp b
    rra
    ld [de], a
    ccf
    push af
    ld a, $3a
    ld a, a
    xor b
    ld a, a
    db $e4
    ld a, e
    and $79
    rst $08
    ld [hl], b
    ld e, e
    ldh [$5f], a
    ldh [rKEY1], a
    ldh a, [$c9]
    ldh a, [$92]
    db $fc
    cp a
    cp $fe
    rst $38
    xor $ff
    ld a, h
    rst $38
    db $fd
    ccf
    ld a, e
    sbc a
    ld l, a
    sbc a
    inc [hl]
    srl a
    ret nz

    ld a, h
    add e
    ccf
    pop bc
    ccf
    pop bc
    sbc l
    pop hl
    reti


    db $e3
    ld sp, hl
    db $e3
    call $eff3
    di
    ld a, a
    db $e3
    rra
    db $e3
    dec bc
    rst $30
    ld c, e
    or a
    ld d, [hl]
    cp a
    ld a, a
    sbc a
    rla
    rst $38
    inc de
    rst $38
    rrca
    rst $38
    rrca

jr_06a_7001:
    rst $38
    inc c
    rst $38
    sbc d
    ld a, l
    cp d

jr_06a_7007:
    ld a, l
    ld a, [de]
    db $fd
    db $76
    ld sp, hl
    ccf
    ldh a, [$bb]
    ld [hl], h
    rst $08
    jr nc, jr_06a_7001

    ld sp, $33ec
    ret z

    scf
    call z, $c833
    scf
    ret c

    daa
    jr jr_06a_7007

    db $ec
    rst $18
    sbc [hl]
    rst $38
    sbc a
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld hl, $01ff
    rst $38
    ld h, c
    rst $38
    add e
    rst $38
    ld bc, $09ff
    rst $30
    inc bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    add e
    db $fc
    adc a
    ldh a, [$9f]
    ldh [$7c], a
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, a
    pop bc
    ld a, [hl]
    pop bc
    ld e, [hl]
    pop hl
    ld d, [hl]
    jp hl


    jp nz, $c2fd

    db $fd
    ld [c], a
    db $fd
    cp $ff
    rst $20
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    db $eb
    rst $30
    jp hl


    rst $30
    db $ed
    di
    ld sp, hl
    di
    db $ed
    di
    push hl
    ei
    push bc
    ei
    rlca
    ei
    ld b, l
    cp e
    call nz, $863b
    ld a, c
    ld b, [hl]
    cp c
    ld d, [hl]

jr_06a_7079:
    xor c
    ld d, [hl]
    xor c
    ld c, a
    or c
    ld c, [hl]
    or c
    adc h
    di
    adc [hl]
    pop af
    sbc [hl]
    pop hl
    ld c, $f1
    db $10
    db $e3
    sub c
    ld h, e
    adc l
    ld [hl], e
    ld b, e
    rst $38
    dec h
    rst $38
    ld d, c
    cp a
    dec d
    ei
    cp c
    ld a, a
    ccf
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $28
    xor e
    ld b, a
    cpl
    ld b, e
    inc h
    ld b, e
    and d
    ld b, c
    ld h, $41
    adc [hl]
    ld b, e
    inc a
    jp $c33e


    jr c, jr_06a_7079

    db $eb
    inc d
    rst $28
    db $10
    sub $20
    sbc $20
    rst $18
    jr nz, @+$7f

    add b
    ld a, a
    add b
    add b
    rst $30
    ret nz

    rst $38
    add b
    cp $80
    db $fc
    xor b
    ld d, h
    inc b
    ld a, b
    ld [$0874], sp
    or $5d
    jr nz, @+$75

    add h
    db $eb
    sub h
    pop af
    add [hl]
    ld de, $8cc6
    di
    ld h, b
    ei
    inc h
    ei
    db $10
    rst $28
    ldh a, [$cf]
    add sp, -$09
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
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    dec bc
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $20
    rra
    ccf
    rst $08
    rla
    rst $28
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld l, e
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    cp $fd
    cp $fc
    cp $f1
    cp $f1
    cp $f2
    db $fc
    ld a, [$f6fc]
    ld hl, sp-$0b
    ld hl, sp-$0a
    ld hl, sp-$16
    ldh a, [$e6]
    ld hl, sp-$12
    ldh a, [$e8]
    ldh a, [$fe]
    ldh [$ec], a
    ldh a, [$fc]
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$ed]
    ldh a, [$df]
    ldh [$df], a
    ldh [$db], a
    db $e4
    pop de
    xor $c1
    cp $e2
    db $dd
    db $d3
    db $ec
    rst $08
    ldh a, [$ee]
    pop de
    and [hl]
    reti


    cp [hl]
    pop bc
    cp [hl]
    pop bc
    cp $81
    cp $81
    ld a, d
    add l
    jp nz, $879d

    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$49
    ld hl, sp-$0f
    cp $f8
    rst $38
    db $dd
    cp $dc
    cp $bf
    cp $8e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    dec de
    ccf
    ld c, $1f
    nop
    rrca
    and b
    rlca
    sub d
    rlca
    db $10
    rlca
    ld bc, $1106
    ld b, $0a
    dec b
    inc b
    inc bc
    add hl, bc
    rlca
    nop
    rlca
    adc c
    rlca
    sbc l
    inc bc
    call $d503
    inc bc
    inc [hl]
    jp $e116


    xor e
    ldh a, [$c7]
    ld hl, sp+$3a
    ret nz

    rla
    ldh [$03], a
    db $fc
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $08
    ei
    rst $28
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    cp $fb
    db $fc
    cp $f8
    db $e4
    ld hl, sp-$3e
    db $fc
    ld [c], a
    db $fc
    jp nz, $ecf8

    ldh a, [$e0]
    db $fc
    db $d3
    db $fc
    ld a, [c]
    db $fc
    di
    db $fc
    ld [c], a
    db $fc
    ei
    db $fc
    or $f8
    cp $f0
    ld l, h
    ldh a, [$fc]
    ldh [$6d], a
    ldh a, [rP1]
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
    ld de, $1212
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_06a_7254

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06a_7264

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06a_7274

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06a_7284

    ld [hl-], a

jr_06a_7254:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06a_7294

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06a_7264:
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

jr_06a_7274:
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

jr_06a_7284:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, [de]
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_06a_7294:
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

    call Call_000_12ce
    rst $08
    ld l, b
    ret nc

    ld [de], a
    pop de
    jp nc, $d4d3

    ld [de], a
    ld [de], a
    ld [de], a
    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld e, b
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
    ld [de], a
    inc b
    dec b
    ld b, $07
    ld [de], a
    ld [$0a09], sp
    ld h, $0b
    ld [de], a
    inc c
    dec c
    ld c, $0f
    ld [de], a
    db $10
    ld de, $1212
    inc de
    inc d
    call c, Call_000_1615
    rla
    jr jr_06a_7364

    add hl, de
    ld [de], a
    ld [de], a
    ld [de], a
    ld a, [de]
    adc [hl]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06a_7378

    ld [hl+], a
    inc hl
    dec [hl]
    inc h
    ld a, [de]
    dec h
    ld h, $27
    jr z, jr_06a_7361

jr_06a_7361:
    nop
    nop
    nop

jr_06a_7364:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06a_7378:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0707
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
    ld bc, $0202
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
    ld bc, $0202
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
    jr nz, jr_06a_7435

jr_06a_7435:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_06a_744a

jr_06a_744a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0800], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    jr nz, @+$0a

    nop
    ld [$0808], sp
    ld [$0800], sp
    ld [$0008], sp
    ld [$2008], sp
    ld [$0808], sp
    ld [$0820], sp
    nop
    nop
    nop
    ld [$0840], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$2008], sp
    ld [$0840], sp
    ld [$0808], sp
    ld a, e
    rst $38
    ld l, c
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    adc e
    rst $38
    add l
    rst $38
    ei
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
    sbc a
    rst $38
    adc h
    rst $38
    jp $c1ff


    rst $38
    ret z

    rst $38
    jp nz, $88ff

    rst $38
    and l
    rst $38
    inc bc
    rst $38
    ld bc, $93ff
    rst $38
    set 7, a
    rrca
    rst $38
    ld l, a
    rst $38
    ld c, [hl]
    rst $38
    xor [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    sbc c
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    ld sp, $21ff
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    rst $28
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp a
    rst $38
    cp a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl-]
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    jp $c7ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
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
    ld a, a
    rst $38
    ei
    rst $38
    sbc e
    rst $38
    cp b
    rst $38
    add b
    rst $38
    adc c
    rst $30
    ld b, h
    rst $38
    call z, $ccff
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$78fd]
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $1fff
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
    cp $ff
    cp $ff
    ld e, $ff
    ld e, $ff
    sbc h
    rst $38
    sbc h
    rst $38
    sbc l
    rst $38
    rst $18
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    and e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $83ff
    rst $38
    ld de, $f8ff
    rst $38
    db $fd
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
    ld e, a
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
    sbc a
    rst $38
    sbc $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    jp hl


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    sub a
    rst $38
    ld h, a
    rst $38
    add a
    rst $38
    adc a
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
    call nz, Call_06a_43bb
    ccf
    ld c, b
    ccf
    ld d, b
    ccf
    ld d, b
    ccf
    ld c, b
    scf
    ld c, b
    scf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld d, b
    ccf
    ld a, a
    ccf
    rst $38
    cp a
    jp nc, $c0bf

    cp a
    ret nz

    cp a
    rst $00
    cp a
    rst $18
    cp a
    rst $38
    rst $38
    di
    di
    ei
    ei
    di
    di
    di
    di
    di
    di
    ld sp, hl
    ld sp, hl
    ld hl, sp-$01
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld e, [hl]
    rst $38
    dec de
    rst $38
    dec sp
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    call z, $a0ff
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], c
    cp $f3
    db $fc
    ld [c], a
    db $fd
    pop bc
    rst $38
    jp $87ff


    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add e
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    add [hl]
    rst $38
    add c
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    scf
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $20
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    add $ff
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    db $ed
    rst $38
    jp z, $c0ff

    rst $38
    ld [c], a
    rst $38
    ld a, [$ffff]
    rst $38
    xor a
    xor a
    rst $28
    rst $28
    xor a
    xor a
    cp a
    cp a
    sbc a
    sbc a
    rst $18
    rst $18
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp e
    ei
    ccf
    rst $38
    ccf
    rst $38
    dec [hl]
    push af
    or a
    rst $30
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    call Call_000_19ff
    rst $38
    xor c
    rst $38
    adc l
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
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
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rla
    rst $38
    daa
    rst $38
    dec b
    rst $38
    ld b, $ff
    dec d
    cp $57
    db $fc
    adc e
    db $fc
    adc a
    rst $38
    xor l
    db $d3
    add a
    ld hl, sp-$7d
    db $fc
    add b
    rst $38
    ret nz

    rst $38
    ld a, [c]
    db $fd
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
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $c1ff
    rst $38
    jp $fbff


    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    sbc $ff
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    jp c, $deff

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
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, e
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
    rst $08
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    pop de
    rst $38
    ld d, e
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld [hl], a
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
    scf
    rst $38
    and a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ld d, $ff
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $dd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    rst $38
    call c, $e8ff
    rst $38
    db $ec
    rst $38
    call c, $fcff
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
    rst $18
    rst $38
    call c, $f8ff
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    and $f9
    ldh [rIE], a
    ld de, $84fe
    ld a, e
    ret z

    scf
    and b
    ld e, a
    nop
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    adc a
    ld a, a
    inc de
    rst $28
    nop
    rst $38
    jr nc, @-$2f

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    jp $8fff


    rst $38
    rst $28
    rst $38
    ld b, e
    rst $38
    ldh [rIE], a
    push af
    rst $38
    xor b
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $28
    rst $38
    or c
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    jp $8fff


    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    cp $ff
    cp $ff
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    call c, $deff
    rst $38
    rst $18
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
    cp a
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
    ei
    rst $38
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    di
    rst $38
    or e
    rst $38
    cp e
    rst $38
    rst $30
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
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38

jr_06a_7a45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
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
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld sp, $10ff
    rst $38
    ld c, [hl]
    cp a
    dec l
    rst $18
    jr nc, jr_06a_7a45

    ld a, h
    add e
    cp [hl]
    pop bc
    inc h
    ei
    ld c, c
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    jr @+$01

    ret z

    ccf
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
    rra
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld [hl], d
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
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
    cp $ff
    cp $ff
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
    db $fc
    rst $38
    cp $ff
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
    db $fd
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
    ld a, h
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    inc sp
    rst $08
    adc a
    rst $38
    ld l, [hl]
    rst $38
    ld sp, $90ff
    ld a, a
    inc bc
    db $fc
    pop af
    cp $18
    rst $38
    rlca
    rst $38
    ld a, h
    add e
    ld de, $cfef
    rst $38
    cp $ff
    ret nz

    rst $38
    ld h, c
    sbc [hl]
    ld l, d
    sub l
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    db $e3
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
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    ld bc, $03ff
    rst $38
    scf
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    inc hl
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c3ff
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add hl, bc
    cp $05
    ld a, [$fa05]
    ld d, $f8
    ld bc, $05fe
    cp $07
    db $fc
    add b
    ld a, h
    add b
    ld a, b
    ld a, [de]
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    jr nz, @+$01

    ld h, b
    rst $38
    pop hl
    cp $63
    db $fc
    push bc
    cp $c3
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and h
    rst $38
    ld b, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    ld a, h
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
    ld bc, $86ff
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec c
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ld [hl], e
    rst $38
    inc sp
    rst $38
    sbc a
    ld a, a
    ccf
    rst $18
    sbc a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    inc d
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    scf
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    ld [$00ff], a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    xor $ff
    rst $38
    rst $38
    ei
    rst $38
    add c
    rst $38
    add e
    rst $38
    rst $08
    rst $38
    cp $ff
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld bc, $c5ff
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
    inc bc
    db $fc
    rla
    add sp, $3a
    push bc
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add c
    adc h
    inc bc
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_06a_7d07

    ld a, h

jr_06a_7d07:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    rst $38
    ld c, [hl]
    rst $38
    ld c, $ff
    ldh [$9f], a
    add hl, bc
    cp $0c
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, -$01
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    inc [hl]
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    call c, $80ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
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
    sbc a
    rst $38
    ld bc, $c0ff
    rst $38
    call nz, $e3ff
    rst $38
    cp $ff
    ld e, a
    rst $38
    inc bc
    rst $38
    sbc a
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
    ld a, a
    rst $38
    inc bc
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
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
    ccf
    rst $38
    ld h, d
    db $fd
    ld c, [hl]
    pop af
    inc b
    ei
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_06a_7df1

    ld [$0804], sp
    nop

jr_06a_7df1:
    nop
    rst $38
    nop
    nop
    rst $38
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
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a

Call_06a_7e3d:
    ld a, a
    ld e, $ff
    rlca
    rst $38
    daa
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    ld sp, $efff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, h
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld b, h
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    inc bc
    rst $38
    add hl, bc
    rst $38
    adc a
    rst $38
    inc l
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ei
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    jr nc, @+$01

    cp $ff
    sbc [hl]
    rst $38
    add d
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    cp a
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
    cp a
    rst $38
    add e
    ld a, a
    pop de
    cp a
    add hl, bc
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc

Call_06a_7f13:
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    inc a
    rst $38
    daa
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ldh [rIE], a
    add c
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f2ff]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, c
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $43ff
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop bc
    rst $38
    pop hl

jr_06a_7fdb:
    rst $38
    add e
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp h
    ld c, c
    or h
    sbc e
    db $e4
    db $fc
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_06a_7fdb

    inc c
    rst $38
    db $08
    rst $38
