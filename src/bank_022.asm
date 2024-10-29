SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    or b
    rst $08
    ldh a, [$cf]
    ldh a, [$cf]
    rst $30
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    ld a, [c]
    rst $08
    ld a, [c]
    rst $08
    ld a, [c]
    rst $08
    ld a, [c]
    rst $28
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, a
    ld [hl], c
    ld l, a
    ld [hl], c
    ld l, a
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    scf
    jr c, jr_022_4081

    inc a
    dec sp
    inc a
    dec sp
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    ld e, $1d
    ld e, $1d
    ld e, $1d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f

jr_022_4081:
    ld c, $07
    ld c, $1f
    ld e, $7f
    ld a, [hl]
    rst $38
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
    ei
    rst $38
    ld a, [$f5ff]
    rst $38
    call z, $9bff
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], h
    rst $38
    add sp, -$01
    ld hl, sp-$01
    db $f4
    rst $38
    db $f4
    rst $38
    reti


    rst $38
    and e
    rst $38
    add h
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$1ef7], sp
    pop hl
    ld [de], a
    db $ed
    ld e, $e1
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
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
    ldh a, [$f0]
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
    db $fc
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
    ei
    inc b
    ei
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
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    adc [hl]
    pop af
    cp [hl]
    pop bc
    ldh a, [$8f]
    ret nz

    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    jp Jump_022_63ff


    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    call z, $b8ff
    rst $38
    ld [hl], c
    rst $38
    and d
    rst $38
    ld b, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    ld a, $ff
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
    add hl, bc
    or $05
    ld a, [$728d]
    call $cd32
    ld [hl-], a
    xor $11
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    adc [hl]
    rst $38
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add d
    db $fd
    add c
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $41
    cp $43
    db $fc
    ld c, a
    ldh a, [$7c]
    jp $cf70


    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    ld sp, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    rla
    rst $38
    sub a
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
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
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
    db $fc
    rst $38
    ld a, b
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
    nop
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

jr_022_42a9:
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    adc [hl]
    ld [hl], e
    adc [hl]
    ld [hl], c
    ld b, [hl]
    cp c
    ld d, l
    xor d
    ld d, c
    xor [hl]
    ld b, l
    cp d
    ld b, h
    cp e

jr_022_42c0:
    inc b
    ei

jr_022_42c2:
    inc b
    ei

jr_022_42c4:
    nop
    rst $38

jr_022_42c6:
    nop
    rst $38

jr_022_42c8:
    jr nz, jr_022_42a9

jr_022_42ca:
    ld [hl], h
    adc e

jr_022_42cc:
    cp $01

jr_022_42ce:
    cp $01

jr_022_42d0:
    cp $01

jr_022_42d2:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_022_42c0

    jr nz, jr_022_42c2

    jr nz, jr_022_42c4

    jr nz, jr_022_42c6

    jr nz, jr_022_42c8

    jr nz, jr_022_42ca

    jr nz, jr_022_42cc

    jr nz, jr_022_42ce

    jr nz, jr_022_42d0

    jr nz, jr_022_42d2

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$e1]
    pop af
    rst $20
    rst $30
    rst $28
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
    rst $38
    rst $38
    cp $ff
    ld a, [$f0ff]
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [$50ff], sp
    cp a
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    and b
    ld e, a
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ldh a, [rIF]
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $e9
    ld d, $e1
    ld e, $e0
    rra
    ldh [$1f], a
    pop af
    ld c, $f5
    ld a, [bc]
    and $19
    xor $11
    cp $01
    db $fc
    inc bc
    cp $01
    xor $11
    adc $31
    call z, $ce33
    ld sp, $35ca
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec de
    add sp, $17
    add sp, $17
    ret z

    scf
    and b
    ld e, a
    or b
    ld c, a
    ld hl, sp+$07
    and b
    ld e, a
    ret nz

    ccf
    ld [$dcf7], sp
    inc hl
    ld e, h
    and e
    ldh a, [rIF]
    jr nz, @-$1f

    ldh [$1f], a
    ret nz

    ccf
    ld bc, $03fe
    db $fd
    rrca
    di
    ccf
    rst $08
    ld a, a
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
    cp $ff
    cp $ff
    ret c

    rst $38
    sub c
    rst $38
    and c
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    and c
    rst $38
    add d
    rst $38
    add d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld [hl], b
    cp a
    jr nc, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    di
    rra
    rst $28
    ld a, a
    sbc a
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
    cp $ff
    db $ec
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    db $fc
    rst $38
    ld a, l
    rst $38
    cp c
    rst $38
    inc sp
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, $20ff
    rst $38
    ld b, d
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec b
    cp $85
    cp $0a
    db $fd
    nop
    rst $38
    inc d
    ei
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    dec b
    ld a, [$e699]
    or b
    rst $08
    pop af
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    db $fd
    rst $38
    ld a, a
    db $fd
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
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
    push bc
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$40ff]
    rst $38
    or b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld sp, hl
    rst $38
    cp $ff
    cp $ff
    ld [hl], h
    rst $38
    ldh a, [rIE]
    and b
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
    add c
    cp $80
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    add h
    ld a, a
    add [hl]
    ld a, l
    adc h
    ld a, e
    inc b
    ei
    dec b
    ld a, [$f21d]
    inc c
    di
    db $10
    rst $28
    ld a, c
    and [hl]
    ld sp, hl
    db $76
    pop af
    ld l, [hl]
    db $fd
    ld [hl], d
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    cp $f3
    db $fc
    di
    db $fc
    ld a, [c]
    db $fc
    and $f8
    and $f8
    add sp, -$02
    db $eb
    xor $e3
    xor $f2
    rst $28
    ld a, [$eeef]
    rst $38
    rst $38
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
    ldh [$fe], a
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
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld l, l
    rst $38
    pop de
    rst $38
    jp $a2ff


    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $03fe
    db $fc
    add hl, bc
    or $09
    or $17
    add sp, $13
    db $ec
    inc de
    db $ec
    rla
    jp hl


    rla
    jp hl


    daa
    ret c

    adc a
    ld [hl], d
    rra
    ldh [rVBK], a
    and b
    rst $28
    inc b
    rst $38
    ret nz

    rst $18
    ld b, b
    rst $38
    nop
    cp a
    ret z

    ei
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld [hl], a
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    ld [hl], b
    adc a
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    adc b
    rlca
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_467e:
    rst $38
    rst $38
    rst $38
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
    ld l, b
    ld c, a
    rst $38
    ld c, a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_469b:
    rst $38

jr_022_469c:
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
    db $f4
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    and b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    jr nz, jr_022_469b

    ld b, b
    cp a
    ld h, h
    sbc e
    ld l, b
    sub a
    ret nz

    ccf
    ret nc

    cpl
    push bc
    ld a, $d5
    ld l, $91
    ld l, [hl]
    jp $e3bc


    call c, $d8f7
    rst $00
    jr c, jr_022_469c

    cp c
    rst $08
    or c
    rst $08
    ld sp, $20df
    rst $18
    jr nz, jr_022_467e

    ld h, b
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
    add b
    cp a
    add b
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec a
    rst $38
    cp c
    ld a, l
    cp e
    ld a, l
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38

Call_022_4732:
    sbc a
    rst $38
    sbc e
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    or a
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $00
    rst $38
    add $ff
    add [hl]
    rst $38
    add h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add h
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $41ff
    cp a
    pop bc
    ccf
    ld [c], a
    sbc a
    ld [c], a
    sbc a
    ld [c], a
    rra
    ld [c], a
    rra
    xor $17
    call z, $cc37
    scf
    call nz, $d43f
    cpl
    ret nc

    cpl
    sbc b
    ld l, a
    add h
    ld a, e
    and h
    ld a, e
    sub l
    ld l, d
    sbc a
    ld h, b
    sbc a
    ld h, d
    sbc a
    ld h, b
    rst $38
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [hl], a
    rst $38
    ld l, e
    rst $38
    ld b, c
    rst $38
    ld hl, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld e, e
    rst $38
    dec bc
    rst $38
    add hl, hl
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl

Jump_022_47ff:
    cp $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    rst $28
    ldh a, [$ef]
    rst $38
    rst $28
    ld a, [$f2ef]
    rst $28
    rst $38
    rst $28
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    pop hl
    cp $e0
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
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f7], a
    add sp, -$09
    add sp, -$09
    add sp, -$19
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ed]
    ld a, [c]
    db $ed
    ld a, [c]
    push hl
    ld a, [$fbe4]
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ld hl, sp-$11
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp+$4f
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$11
    ld hl, sp-$31
    ld hl, sp-$11
    ld hl, sp+$4f
    db $fc
    rst $00
    db $fc
    rst $00
    db $fc
    rst $00
    db $fc
    rlca
    db $fc
    rst $00
    db $fc
    rst $00
    db $fc
    rst $00
    db $fc
    add a
    db $fc
    rlca
    db $fc
    rst $20
    db $fc
    rst $20
    cp $e3
    cp $a3
    cp $23
    cp $23
    cp $f3
    cp $e3
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, b
    rlca
    ld a, b
    rlca
    ld e, b
    daa
    sbc b
    ld h, a
    sbc b
    ld h, a
    ret c

    ld h, a
    ret c

    ld h, a
    ret c

    ld h, a
    ret c

    rst $20
    ret nc

    ld l, a
    ret nc

    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    ret nc

    cpl
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
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
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    cp $01
    ei
    inc b
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $fc
    inc bc
    cp $01
    cp $01
    xor $11
    cp $01
    db $fd
    ld [bc], a
    xor $11
    db $fc
    inc bc
    db $ec
    inc de
    db $fc
    inc bc
    db $ec
    inc de
    db $ec
    inc de
    add sp, $17
    ld hl, sp+$07
    adc b
    ld [hl], a
    ld hl, sp+$07
    ldh a, [rIF]
    add sp, $17
    add sp, $17
    ret nz

    ccf
    sub b
    ld l, a
    ld b, b
    cp a
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $e0
    rra
    ldh [$1f], a
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld [$08f7], sp
    rst $30
    adc b
    ld [hl], a
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    pop hl
    ld e, $e0
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    ldh [$1f], a
    jp nz, $e23d

    dec e
    db $e4
    dec de
    and h
    ld e, e
    and h
    ld e, e
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [hl]
    ld bc, $01fe
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
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
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
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
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fb
    inc b
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    ld sp, hl
    ld b, $f5
    ld a, [bc]
    push af
    ld a, [bc]
    rst $30

jr_022_4a93:
    ld [$08f7], sp
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push de
    ld a, [hl+]
    or c
    ld c, [hl]
    and c
    ld e, [hl]
    and l
    ld e, d
    and [hl]
    ld e, c
    ld [c], a
    dec e
    ld [c], a
    dec e
    db $e4
    dec de
    db $e4
    dec de
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_022_4a93

    inc h
    db $db
    inc h
    db $db
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    ret z

    scf
    add h
    ld a, e
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    adc h
    ld [hl], e
    call z, $c833
    scf
    db $ec
    inc de
    db $ec
    inc de
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld a, e
    add h
    ld a, e
    add h
    ld a, a
    add b
    ld a, a
    add b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
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
    ld [hl], a
    adc b
    ld [hl], e
    adc h
    ld a, e
    add h
    ld a, a
    add b
    ld [hl], l
    adc d
    ld [hl], l
    adc d
    inc sp
    call z, $cc33
    inc sp
    call z, $dc23
    ld [hl+], a
    db $dd
    inc hl
    call c, $f807
    rlca
    ld hl, sp+$05
    ld a, [$e21d]
    dec sp
    call nz, $c03f
    ret nz

    nop
    ld c, b
    add b
    ld c, b
    add b
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    ld b, b
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    and b

Call_022_4b45:
    ld b, b
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSC], a
    ldh [rP1], a
    ld a, [c]
    nop
    or $00
    dec c
    ld a, [c]
    add hl, bc
    or $09
    or $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fe01]
    ld bc, $01fe

jr_022_4b7f:
    cp $fc
    nop
    db $fc

jr_022_4b83:
    nop
    db $e4
    jr jr_022_4b83

jr_022_4b87:
    nop
    db $fc
    nop
    db $fc
    nop
    xor $10
    xor $10
    xor $11
    xor $11
    xor $11
    xor $11
    xor [hl]
    ld d, c
    xor [hl]
    ld d, c
    xor [hl]
    ld d, c
    xor h
    ld d, e
    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c738


    jr c, @-$37

    jr c, jr_022_4b7f

    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    jr c, jr_022_4b87

    db $ec
    inc de
    db $ec
    inc de
    ld c, h
    or e
    ld e, h
    and e

jr_022_4bc8:
    ld e, h
    and e
    ld a, h
    add e
    cp h
    ld b, e
    sbc h
    ld h, e
    inc e
    db $e3
    inc e
    db $e3
    ld c, h
    or e
    ld a, h
    add e
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld a, [hl]
    add c
    sbc $21
    rst $38
    nop
    rst $18
    jr nz, jr_022_4bc8

    jr nz, @+$01

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
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    ld [bc], a
    ld hl, $7003
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld a, c
    ld [bc], a
    ld a, c
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld [$0807], sp
    rlca
    nop
    rlca
    nop
    daa
    nop
    ld [hl], a
    nop
    ld a, a

jr_022_4c54:
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
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_022_4c96:
    ld hl, sp+$07
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    rst $18
    nop
    rst $38
    nop

jr_022_4ca4:
    rst $38
    nop

jr_022_4ca6:
    ld a, a
    add b
    ei
    inc b
    ei
    inc b
    rst $28
    db $10
    ld a, e
    add h
    db $eb
    inc d
    sbc e
    ld h, h
    sbc a
    ld h, b
    rra
    ldh [$af], a
    ld d, b
    adc e
    ld [hl], h
    adc c
    db $76
    ret


    ld [hl], $cd
    ld [hl-], a
    db $ed
    ld [de], a
    rst $08
    jr nc, jr_022_4c96

    jr nc, jr_022_4c54

    ld [hl], h
    adc e
    ld [hl], h
    adc a
    ld [hl], b
    xor a
    ld d, b
    cp a
    ld b, b
    push af
    ld a, [bc]
    ld a, a
    add b
    di
    inc c
    swap h
    rst $20
    jr jr_022_4ca4

    jr c, jr_022_4ca6

    jr c, @-$1f

    jr nz, @+$01

    nop
    rst $28
    db $10
    cp a
    ld b, b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$a05f], sp
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

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
    ld e, a
    and b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$47
    cp b
    ld b, a
    cp b
    rst $00
    jr c, jr_022_4d28

    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld b, e
    cp h

jr_022_4d28:
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    ld bc, $0101
    ld bc, $0605
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0f0e
    db $10
    ld de, $0112
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
    jr nz, jr_022_4d89

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_022_4d99

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$03

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_022_4dba

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_022_4d89:
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

jr_022_4d99:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [de]
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
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, [de]
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld a, [de]
    ld l, [hl]
    ld l, a

jr_022_4dba:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld a, [de]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec hl
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld a, [de]
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
    adc e
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
    ld [$1aeb], a
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
    ld a, [de]
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_022_4e83

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_022_4e93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_022_4ea3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    inc b
    inc b
    inc b

jr_022_4e83:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_022_4e93:
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b

jr_022_4ea3:
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    dec b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $00
    ld b, $00
    nop
    ld b, $06
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
    ld [bc], a
    nop
    inc b
    inc b
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
    ld [bc], a
    nop
    inc b
    inc b
    inc b
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
    ld [bc], a
    nop
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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
    inc b
    inc b
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
    ld [$0c0c], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0c0c], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$0308], sp
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
    nop
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
    ld d, $e9
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    dec d
    ld [$ea15], a
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc bc
    db $fc
    ld bc, $11fe
    xor $01
    cp $00
    rst $38
    ld b, $f9
    ld b, $f9
    ld [bc], a
    db $fd
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
    ret nz

jr_022_5023:
    ccf
    ret nz

jr_022_5025:
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld d, b
    xor a
    ld d, b
    xor a
    jr nc, jr_022_5023

    jr nc, jr_022_5025

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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
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
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    db $10
    rst $28
    ld a, [bc]
    push af
    ld [$88f7], sp

jr_022_50af:
    ld [hl], a
    ret z

    scf
    adc h
    ld [hl], e
    adc l
    ld [hl], d
    add hl, bc
    or $11
    xor $dc
    inc hl
    ld e, h
    and e

jr_022_50be:
    ld e, h
    and e
    ld e, h
    and e
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld l, $d1
    ld l, $d1
    ld c, $f1
    ld b, $f9
    ld b, h
    cp e
    ld b, b
    cp a
    ld h, b
    sbc a
    ld l, b
    sub a
    jr z, jr_022_50af

    ld [$08f7], sp
    rst $30
    inc c
    di
    inc e
    db $e3
    inc e
    db $e3
    inc c
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
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_022_50fc:
    db $10
    rst $28
    db $10
    rst $28
    ld d, $e9
    ld d, $e9
    ld [de], a
    db $ed
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld [$08f7], sp
    rst $30
    inc b
    ei
    inc d
    db $eb
    inc d
    db $eb
    inc [hl]
    swap h
    bit 6, b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld d, b
    xor a
    ld d, b
    xor a
    ld de, $41ee
    cp [hl]
    ld b, a
    cp b
    rst $00
    jr c, jr_022_50fc

    jr c, jr_022_50be

    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    and a
    ld e, b
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    and $19
    and $19
    ld [$e215], a
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rrca

jr_022_5181:
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
    jr nz, jr_022_5181

    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    inc b
    ei
    ld d, $e9
    sub [hl]
    ld l, c
    sub b
    ld l, a
    ldh a, [rIF]
    ld hl, sp+$07
    jp c, $da25

    dec h
    sbc h
    ld h, e
    sub [hl]
    ld l, c
    sbc d
    ld h, l
    ld a, [de]
    push hl
    inc de
    db $ec
    inc de
    db $ec
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10

jr_022_51d5:
    rst $28
    ld d, b
    xor a
    db $10
    rst $28
    inc d
    db $eb
    inc b
    ei
    ld b, $f9
    nop

jr_022_51e1:
    rst $38
    nop

jr_022_51e3:
    rst $38
    nop

jr_022_51e5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_022_51eb:
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
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
    jr nz, jr_022_51e1

    jr nz, jr_022_51e3

    jr nc, jr_022_51d5

    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_022_51eb

    jr z, jr_022_51e5

    ld [hl], b
    adc a
    ldh a, [rIF]
    ld hl, sp+$07
    ret c

    daa
    db $fc
    inc bc
    db $ec
    inc de
    db $ec
    inc de
    db $ec
    inc de
    ld l, h
    sub e
    ld h, h
    sbc e
    ld a, h
    add e
    ld [hl], h
    adc e
    ld e, h
    and e
    ld a, h
    add e
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    add sp, $17
    pop hl
    ld e, $e1
    ld e, $e9
    ld d, $f1
    ld c, $f1
    ld c, $e1
    ld e, $e0
    rra
    ret nz

    ccf
    ret nz

    ccf
    and b
    ld e, a
    and b
    ld e, a
    ld b, b
    cp a
    ld b, b
    cp a
    ret z

    scf
    adc b
    ld [hl], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    sbc c
    ld h, [hl]
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    add a
    ld a, a
    dec bc
    rst $30
    inc bc
    rst $38
    inc bc
    db $fd
    ld bc, $09fe
    or $09
    or $08
    rst $30
    ld c, $f1
    inc d
    db $eb
    dec d
    ld [$e817], a
    ld c, $f1
    inc c
    di
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
    nop
    rst $38
    nop
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
    dec b
    ld a, [$fa05]
    ld b, a
    cp b
    ld b, a
    cp b
    ld h, $d9
    ld b, $f9
    ld c, $f1
    inc c
    di
    add h
    ld a, e
    sub h

jr_022_52f9:
    ld l, e
    sub a
    ld l, b
    rla
    add sp, $0d
    ld a, [c]
    ld l, $d1
    add h
    ld a, e
    add [hl]
    ld a, c
    daa
    ret c

    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    jr z, jr_022_52f9

    xor c
    ld d, [hl]
    ret


    ld [hl], $e8
    rla
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld [hl-], a
    call $cd32
    ld a, [de]
    push hl
    ld a, [hl-]
    push bc
    ld a, [de]
    push hl
    rra
    ldh [rNR21], a
    jp hl


    dec a
    jp nz, $c03f

    ld e, l
    and d
    ld d, c
    xor [hl]
    ld d, l
    xor d
    db $10
    rst $28
    inc e
    db $e3
    jr nc, @-$2f

    add hl, sp
    add $f0
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ld h, b
    ld a, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    or a
    ld c, b
    rst $30
    ld [$18e7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rNR34]
    pop hl
    ld a, [de]
    push hl
    sbc d
    ld h, l
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    jr c, @-$37

    sbc b
    ld h, a
    adc b
    ld [hl], a
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    cpl
    ret nc

    dec hl
    call nc, $ec13
    inc bc

jr_022_53cf:
    db $fc
    dec b

jr_022_53d1:
    ld a, [$fa05]
    inc b

jr_022_53d5:
    ei
    inc c

jr_022_53d7:
    di
    ld bc, $05fe
    ld a, [$fb04]
    db $10
    rst $28
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
    jr nz, jr_022_53cf

    jr nz, jr_022_53d1

    jr nz, @-$1f

    jr nz, jr_022_53d5

    jr nz, jr_022_53d7

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
    add b
    ld a, a
    ld b, $f9
    inc b
    ei
    call nz, Call_022_643b
    sbc e
    inc h
    db $db
    inc d
    db $eb
    dec d
    ld [$c23d], a
    dec h
    jp c, $dc23

    adc b
    ld [hl], a
    adc b
    ld [hl], a
    nop
    rst $38
    inc b
    ei
    inc c
    di
    inc c
    di
    inc a
    jp $8778


    ld a, b
    add a
    inc d
    db $eb
    ld bc, $01fe
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    cp a
    ld b, c
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    ld e, a
    and c
    rra
    pop hl
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    cpl
    pop de
    cpl
    pop de
    cpl
    pop de
    rrca
    pop af
    ld h, a
    sbc c
    ld d, a
    xor c
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    inc bc
    db $fd
    dec bc
    push af
    dec bc
    push af
    rst $20
    ld bc, $01e7
    cp a
    ld b, c
    rst $38
    ld bc, $21df
    rst $38
    ld bc, $21df
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    ld a, l
    add d
    ld l, a
    sub b
    db $fd
    ld [bc], a
    sub a
    ld l, b
    ld d, e
    xor h
    ld l, a
    sub b
    rst $38
    nop
    db $dd
    ld [hl+], a
    ld d, $e9
    sub [hl]
    ld l, c
    ld e, [hl]
    and c
    call z, $cc33
    inc sp
    db $ec
    inc de
    xor b
    ld d, a
    ret


    ld [hl], $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$09
    ldh a, [$0b]
    pop af
    dec bc
    pop af
    dec bc
    pop af
    dec bc
    pop af
    inc de
    pop hl
    inc de
    pop hl
    rla
    pop hl
    rla
    pop hl
    rla
    pop hl
    daa
    jp $c327


    daa
    pop bc
    cpl
    jp $c32f


    ld c, a
    add e
    ld c, a
    add d
    ld c, a
    add e
    ld c, a
    add a
    ld c, a
    add d
    sbc a
    ld b, $9f
    rlca
    sbc a
    rlca
    sbc a
    inc b
    ld e, $04
    rra
    rlca
    rst $00
    ccf
    call z, $cc3f
    ccf
    call z, $cf3f
    ccf
    rst $08
    ccf
    adc c
    ld a, a
    adc c
    ld a, a
    ld a, h
    ld a, [bc]
    ld a, l
    ld a, [de]
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    dec de
    rst $38
    ld de, $11ff
    push af
    ld a, [de]
    rst $38
    rst $38
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
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, a
    rra
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
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $28
    adc a
    rst $28
    adc a
    rst $08
    adc a
    rst $28
    sbc a
    rst $28
    sbc a
    rst $28
    sbc a
    rst $28
    sbc a
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $28
    rst $28
    ret nz

    rst $08
    rst $28
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
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    or $ff
    db $76
    rst $38
    or $ff
    or $ff
    or $ff
    and $ff
    rst $20
    rst $38
    rst $28
    rst $38
    xor $ff
    jp z, $ccff

    rst $38
    call $c2ff
    rst $38
    jp nz, $c0ff

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
    add d
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    db $fd
    nop
    rst $38
    ld b, $f9
    ld d, $e9
    and [hl]
    reti


    ld b, [hl]
    cp c
    ld c, [hl]
    or c
    ld c, $f1
    ld c, $f1
    ld a, $c1
    rra
    ldh [rNR34], a
    pop hl
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld h, $d9
    ld h, $d9
    ld a, [hl-]
    push bc
    ld a, [hl+]
    push de
    xor d
    ld d, l
    xor b
    ld d, a
    xor d
    ld d, l
    ld [$eb15], a
    inc d
    db $eb
    inc d
    jp c, Jump_022_6a25

    sub l
    ld l, $d1
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    rst $38
    nop
    rst $38
    nop
    reti


    ld h, $fc
    inc bc
    db $f4
    dec bc
    db $fc
    inc bc
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld d, e
    xor h
    sub e
    db $ec
    sub a
    add sp, -$2d
    db $ec
    pop af
    xor $f3
    db $ec
    pop af
    cp $f9
    cp $fd
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
    nop
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    or $ff
    ld a, [c]
    rst $38
    ld b, b
    rst $38
    adc d
    rst $38
    call nc, $c4ff
    rst $38
    jp nz, $80ff

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
    ld [bc], a
    db $fd
    ld [$00ff], sp
    rst $38
    ld [$08f7], sp
    rst $30
    inc c
    rst $30
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $20ff
    rst $18
    ld [hl+], a
    db $dd
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    inc de
    db $ec
    dec de
    db $e4
    dec bc
    db $f4
    ld bc, $01fe

jr_022_5719:
    cp $4b

jr_022_571b:
    or h
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_022_5727:
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    ld l, a
    ld d, b
    xor a
    ld [hl], d
    adc l
    ld a, a

jr_022_5739:
    add b
    ld e, a
    and b
    ld e, c
    and [hl]
    jr jr_022_5727

    jr z, jr_022_5719

    jr z, jr_022_571b

    ret c

    daa
    ret nz

    ccf
    ret z

    scf
    ret z

    scf
    db $ec
    inc de
    db $ec
    inc de
    call c, Call_000_1e23
    pop hl
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    and d
    ld e, l
    and e
    ld e, h
    xor e
    ld d, h
    xor d
    ld d, l
    ld l, d
    sub l
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl-], a
    call $cc33
    inc hl
    call c, $c43b
    scf
    ret z

    jr c, jr_022_5739

    cp b
    ld b, a
    cp b
    ld b, a
    cp d
    ld b, l
    jp c, $dc25

    and e
    db $fc
    db $e3
    ld hl, sp-$01
    ld bc, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_578f:
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    ld d, b
    rst $38
    sbc e
    rst $38
    call c, $84ff
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
    jr nc, @-$2f

    db $10
    rst $28
    add hl, bc
    or $84
    ei
    jr z, jr_022_578f

    inc b
    ei
    ld b, d
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    dec b
    ld a, [$f20d]
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$47
    cp b
    scf
    ret z

    inc sp
    call z, $ce31
    ld hl, $11de
    xor $88
    rst $30
    ld [$47f7], sp
    ld sp, hl
    nop
    rst $38
    ld c, $f1
    inc c
    di
    rlca
    ld hl, sp+$4b
    or h
    ld c, e
    or h
    or e
    call z, $c9b6
    or a
    ret z

    sbc e
    db $e4
    ld a, c
    add $7b
    call nz, $63dc
    ld d, a
    add sp, -$05
    ld b, h
    sbc l
    ld h, d
    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    nop

jr_022_5809:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rlca
    rst $38
    adc b
    ld [hl], a
    ld l, e
    sub h
    ld a, d
    add l
    ld e, h
    and e
    ld d, h
    xor e
    ld d, b
    xor a
    cp d
    ld b, l
    ld a, [$ba05]
    ld b, l
    sbc [hl]
    ld h, c
    rst $18
    jr nz, jr_022_5809

    ld hl, $01fe
    jp nc, $f22d

    dec c
    ld [$ea15], a
    dec d
    and [hl]
    ld e, c
    and d
    ld e, l
    or d
    ld c, l
    xor e
    ld d, h
    dec hl
    call nc, Call_022_649b
    inc de
    db $ec
    inc sp
    call z, $cd32
    ld [hl-], a
    call $af50
    ld d, d
    xor l
    jp c, $d625

    add hl, hl
    sbc $21
    xor $11
    ld l, h
    sub e
    ld c, h
    or e
    ld c, [hl]
    or c
    rrca
    ldh a, [$0b]
    db $f4
    ld a, [bc]
    push af
    adc d
    push af
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_5878:
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    call nc, Call_000_22ff
    rst $38
    reti


    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop

jr_022_5899:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld hl, $82de
    ld a, l
    db $10
    rst $28
    ld [$14f7], sp
    ei
    inc c
    ei
    add h
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    and b
    ld e, a
    jr nz, jr_022_5899

    sub b
    ld l, a
    or c
    ld c, [hl]
    ld hl, sp+$07
    cp d
    ld b, l

jr_022_58c2:
    db $f4
    dec bc
    db $fc
    inc bc
    and $01
    or [hl]
    ld bc, $01fa
    ld a, e
    add b
    ld a, l
    add b
    ld e, c
    add b
    ld l, l
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld e, $c0
    cp a
    ld b, b
    xor a
    ld b, b
    cpl
    ret nz

    rst $10
    jr nz, jr_022_5878

    ld h, b
    db $eb
    db $10
    ld c, e
    or b
    or c
    ld c, b
    or c
    ld c, b
    push de
    jr z, jr_022_58c2

jr_022_58ef:
    inc l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $28
    jr z, jr_022_58ef

    ret


    ld [hl], $c9
    ld [hl], $c9
    ld [hl], $61
    sbc [hl]
    ld d, l
    xor d
    ld d, l
    xor d
    ld e, c
    and [hl]
    ld e, c

Jump_022_5927:
    and [hl]
    ld d, e
    xor h
    db $dd
    ld [hl+], a
    ld a, a
    add b
    rla
    add sp, $13
    db $ec
    ld de, $51ee
    xor [hl]
    ld sp, $35ce
    jp z, $ca35

    ld [hl], l
    adc d
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld e, l
    and d
    call nc, $d62b
    add hl, hl
    sub $29
    sub $29
    sub [hl]
    ld l, c
    and [hl]
    ld e, c
    and h
    ld e, e
    and h
    ld e, e
    ld l, h
    sub e
    ld b, h
    cp e
    ld d, h
    xor e
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld b, h
    cp e
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, $f9
    dec b
    ld a, [$fc03]
    ld b, $f9
    inc bc
    db $fc
    ld b, l

jr_022_5991:
    cp d
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    add b
    cpl
    ret nc

    ccf

jr_022_599d:
    ret nz

    rra
    ldh [rBGP], a
    ld hl, sp-$79
    ld hl, sp+$43
    db $fc
    ld hl, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_022_5991

    nop
    rst $38
    inc b
    ei
    ld [$00f7], sp
    rst $38
    inc b
    ei
    jr nz, jr_022_599d

    ld h, b
    sbc a
    ret nc

    cpl
    add c
    ld a, [hl]
    and b
    ld e, a
    jr nz, jr_022_5a27

    ld b, e
    inc a
    ld b, c
    ld a, $60
    rra
    ldh [$1f], a
    xor b
    rla
    or b
    rrca
    sbc h
    inc bc
    ld e, h
    inc bc
    ld l, h
    inc bc
    and [hl]
    ld bc, $004f
    inc b
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $03ff
    rst $38
    rlca
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    pop af
    rst $38
    pop hl
    rra
    rst $28
    ccf
    rst $38
    ld e, e
    cp a
    and e
    ld e, a
    and e
    ld e, a
    and e
    ld e, a
    inc hl
    rst $18
    and e
    ld e, a
    and e
    ld e, a
    and e
    ld e, a
    and e
    ld e, a
    and e
    ld e, a
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    inc hl

jr_022_5a27:
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    and e
    ld e, a
    add e
    ld a, a
    add e
    ld a, a
    ld b, e
    cp a
    ld h, e
    sbc a
    ld h, e
    sbc a
    ld b, e
    cp a
    ld b, e
    cp a
    ld h, e
    sbc a
    ld h, e
    sbc a
    ld h, e
    sbc a
    ld h, e
    sbc a
    inc hl
    rst $18
    inc hl
    rst $18
    inc sp
    rst $18
    ld [hl], e
    rst $38
    di
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
    ld c, a
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
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38

jr_022_5a7e:
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld e, b
    and a
    ccf
    ret nz

    cp e
    ld b, b
    push af
    nop
    or a
    ld c, b
    ld l, e
    inc d
    db $dd
    ld [hl+], a
    rst $38
    nop
    ld [hl], l
    adc b
    ld a, [hl]
    add b
    rst $38
    nop
    ld e, a
    jr nz, jr_022_5a7e

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $30
    nop
    ei
    inc b
    db $fd
    nop
    db $fd
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ccf
    ret nz

    sbc l
    ld h, b
    ld l, a
    sub b
    cp a
    ld b, h
    sbc [hl]
    ld h, b
    sbc a
    ld h, b
    cp $01
    ld a, a
    add b
    ld e, [hl]
    and c
    ld [de], a
    db $ed
    inc de
    db $ec
    rrca
    ldh a, [$2c]
    di
    ld [$10f7], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38

jr_022_5ad6:
    ld [bc], a
    rst $38
    ld bc, $21ff
    rst $18
    ld [hl+], a
    db $dd

jr_022_5ade:
    sub d
    ld l, l

jr_022_5ae0:
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add a
    ld hl, sp+$17
    add sp, $14
    db $eb
    rla
    add sp, $07
    ld hl, sp+$2f
    ret nc

    inc hl
    call c, $d02f
    rra
    ldh [rIF], a
    ldh a, [$5e]
    and b
    ld e, [hl]
    and b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    jr c, jr_022_5ad6

    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    jr c, jr_022_5ade

    jr c, jr_022_5ae0

    inc a
    ret nz

    ld a, l
    add b
    ld a, l
    add b
    ld a, a
    add b
    ld l, a
    sub b
    ld c, a
    or b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    ld l, $d1
    ld l, $d1
    cpl
    ret nc

    rla
    add sp, $35
    jp z, $ea15

    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    or $09
    and $19
    push af
    ld a, [bc]
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $ed
    ld [de], a
    ld a, [$de05]
    ld hl, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

jr_022_5b69:
    ccf
    ldh a, [$cf]
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
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr nz, jr_022_5b69

    sbc b
    ld h, a
    db $eb
    inc d
    ld a, d
    dec b
    db $fd
    ld [bc], a
    ld a, b
    rlca
    db $ed
    ld [bc], a
    ld a, a
    add b
    ei
    nop
    ld l, l
    db $10
    sbc $00
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
    db $fd
    nop
    or a
    nop
    ccf
    nop
    ld e, a
    nop
    ld l, a
    nop
    and a
    nop
    or e
    nop
    inc sp
    nop
    ld sp, hl
    nop
    db $f4
    nop
    ld e, $e0
    ld c, a
    or b
    add a
    ld a, b
    add b
    ld a, a
    ret nz

    ccf
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
    ret nz

    cp a
    ld bc, $f0fe
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    daa
    ret c

    or a
    ld c, b
    cp l
    ld b, d
    rst $38
    nop
    ld a, l
    add d
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    inc e
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
    rst $28
    db $10
    rst $08
    jr nc, jr_022_5c84

    xor d
    ld [$e700], a
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
    or b
    ld a, a
    add b
    ld b, b
    nop
    ld b, e
    nop
    ld d, c
    nop
    cp c
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    ccf
    ret nz

    cp a
    ld b, b
    cp $01
    or $09
    ld [hl], a
    adc b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, @+$01

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
    add b
    ld a, a
    ldh a, [rIF]
    cp $e1
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
    cp a
    rst $38

jr_022_5c84:
    rst $08
    rst $38
    di
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ld bc, $d0ff
    cpl
    ld [hl], b
    adc a
    ld e, b
    and a
    db $e4
    dec de
    ldh a, [rIF]
    ld a, h
    inc bc
    ld e, c
    ld b, $3e
    ld bc, $009f
    rst $28
    nop
    di
    nop
    cp l
    nop
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    nop
    ld l, [hl]
    ld de, $18e7
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
    ld b, b
    rst $38
    nop
    rst $38
    ld hl, $20ff
    rst $38
    jr nc, @+$01

    adc b
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
    ld h, b
    sbc a
    ld b, b
    cp a
    ld e, d
    and l
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    inc bc
    cp $03
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
    inc bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    ld b, e
    cp a
    rst $38
    inc bc
    rst $08
    inc sp
    rst $38
    inc bc
    rst $18
    inc hl
    rst $38
    inc bc
    adc a
    ld [hl], e
    rst $08
    scf
    ld c, a
    or a
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
    ld a, a
    add a
    ld a, a
    add a
    ld [hl], a
    adc a
    rla
    rst $28
    sub a
    ld l, a
    sub a
    ld l, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    ld h, a
    sbc a
    ccf
    rst $00
    rst $28
    rla
    rst $18
    daa
    rst $30
    rrca
    or a
    ld c, a
    rst $38
    rlca
    cp a
    ld b, a
    rst $18
    daa
    rlca
    rst $38
    rst $20
    rra
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
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38

jr_022_5da0:
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld a, h
    inc bc
    or $01
    xor a
    ld b, b
    rst $18
    jr nz, jr_022_5da0

    db $10
    push af
    ld [$847a], sp
    db $dd
    ld [hl+], a
    or $09
    scf
    ret z

    rst $18
    ld h, b
    call Call_022_4732
    cp b
    and e
    ld e, h
    db $10
    rst $28
    ld b, b
    cp a
    rlca
    ld sp, hl
    ld [bc], a
    db $fd
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38

jr_022_5dd8:
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c1ff
    ld a, $ed
    ld [de], a
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    or a
    ld [$00bf], sp
    ld b, b
    cp a
    ld b, b
    cp a
    and b
    ld e, a
    db $f4
    dec bc
    ld c, h
    or e
    ld l, h
    sub e
    ld [$ce15], a
    ld sp, $30cf
    rst $28
    db $10
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    jr nc, jr_022_5dd8

    rst $00
    jr jr_022_5e32

    ld h, b
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    ld bc, $0cde
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    and c
    sbc $a0
    rst $18
    and b
    rst $18
    and b
    rst $18
    and b
    rst $18
    and b
    rst $18

jr_022_5e32:
    and b
    rst $18
    ldh [$df], a
    ldh [$df], a
    and e
    rst $18
    ret nz

    rst $38
    add h
    rst $38
    xor b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    or b
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    jp hl


    rst $38
    cp l
    rst $38
    xor d
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    ld sp, hl
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    db $eb
    rst $38
    di
    rst $38
    db $eb
    rst $38
    ld a, [$f3ff]
    rst $38
    cp $ff
    or $ff
    xor $ff
    xor $ff
    sub $ff
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $28
    rst $38
    db $fd
    rst $38
    cp $ff
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_022_5e99:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_022_5e9f:
    rst $38
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    cp [hl]
    ld b, c
    sbc a
    ld h, b
    ld h, e
    sbc h
    or c
    ld c, [hl]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_022_5e9f

    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc h
    rst $18
    jr nc, jr_022_5e99

    ld [$94f7], sp
    ld l, e
    ld [bc], a
    db $fd
    db $eb
    inc d
    ld [$e815], a
    rla
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_022_5eef:
    nop
    nop
    rst $38
    ld bc, $06ff
    cp $18
    ld hl, sp-$1f
    pop hl
    rrca
    ld c, $3e
    jr nc, jr_022_5eef

    ret nz

    inc sp
    ret nz

    ld bc, $0000
    nop
    ld bc, $0000
    rlca
    ld b, $38
    ld sp, $8fc0
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    ld a, l
    add d
    dec d
    ld [$fe01], a
    ld [hl+], a
    db $dd
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$85ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$f4ff], sp
    rst $38
    add d
    db $fd
    ld [$8cff], sp
    rst $38
    adc h
    rst $38
    add h
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    adc a
    rst $38
    ld c, $ff
    dec c
    cp $08
    ldh a, [rIF]
    ldh a, [$03]
    rst $38
    inc hl
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    ld de, $39ff
    rst $38
    or e
    rst $38
    rst $00
    ccf
    call nz, $d9fb
    cp $fc
    rst $38
    sbc a
    rst $38
    ld a, $ff
    or l
    rst $38
    ei
    rst $38
    cp a
    rst $38
    pop af
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b

jr_022_5fa5:
    rst $38
    jr nz, @+$01

    ld [$04ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld hl, sp+$07
    or h
    ld c, e
    ld d, h
    xor e
    dec h
    jp c, $f609

    dec b
    ld a, [$fe01]
    jr nz, jr_022_5fa5

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl-], a
    call $ef10
    db $10
    rst $28
    inc l
    db $d3
    ccf
    ret nz

    or a
    ld c, b
    ld [hl], a
    adc b
    ld [hl], e
    adc h
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b
    rst $38
    inc bc
    rst $38
    rrca
    ld [hl], b
    ldh a, [$83]
    add e
    rrca
    inc c
    ld a, a
    ld [hl], b
    db $fc
    add b
    ldh [rP1], a
    nop
    nop
    nop

jr_022_5fff:
    nop
    rst $38
    nop
    ei
    inc b
    db $e3
    inc e
    inc bc
    db $fc
    di
    inc c
    dec de
    inc c
    ei
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0bf4], sp
    xor $19
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_022_5fff

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    and b
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
    ld bc, $00ff
    rst $38
    xor c
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld de, $19ff
    rst $38
    add hl, de
    rst $38
    ld e, c
    rst $20
    ld h, e
    add c
    rlca
    ld bc, $07fb
    db $dd
    rst $28
    rst $38
    rst $38
    rst $18
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld sp, $d3ff
    rst $38
    di
    rst $38
    di
    rst $38
    cpl
    rst $18
    jp $f3ff


    rst $38
    cp e
    rst $38
    db $d3
    rst $38
    db $db
    rst $38
    db $d3
    rst $38
    db $db
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
    ld a, a
    rst $38
    sbc a

jr_022_6087:
    rst $38
    rst $38
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
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ld d, b
    xor a
    and d
    ld e, l
    jr nc, jr_022_6087

    ld hl, $03de
    rst $38
    inc e
    rst $38
    nop
    rst $38
    cp l
    ld b, d
    ld d, l
    xor d
    ld h, l
    sbc d
    ld h, l
    sbc d
    ld [hl], l
    adc d
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld l, l
    sub d
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $fd
    ld c, $fd
    ld a, $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, h
    ld a, a
    inc a
    ccf
    inc a
    rra
    inc a
    rra
    inc a
    rra
    inc a
    rra
    jr c, jr_022_610d

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    ld a, b

Jump_022_60fd:
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    rra
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld a, b

jr_022_610d:
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ei
    db $f4
    ei
    db $f4
    ld sp, hl
    or $f9
    or $f9
    or $f9
    or $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh [$fb], a
    db $e4
    ei
    db $e4
    ei
    db $e4
    db $eb
    db $f4
    pop hl
    cp $f1
    xor $f2
    db $ed
    ld a, [c]
    db $ed
    rst $30
    add sp, -$01
    ldh [$eb], a
    db $f4
    ei
    db $e4
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$bf], a
    cp h
    and e
    rst $30
    add b
    rst $38
    ret nz

    rst $38
    and b
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp $f9
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
    ei

jr_022_6191:
    db $fd
    rst $38

jr_022_6193:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ld [hl+], a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_022_6191

    jr nc, jr_022_6193

    ld d, c
    xor [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, a
    cp b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld [hl], l
    adc d
    db $eb
    inc d
    db $eb
    inc d
    cp c
    ld b, [hl]
    cp e
    ld b, h
    rst $30
    ld [$0bf4], sp
    call nz, $fc3b
    inc bc
    ldh a, [rIF]
    ld [hl], c
    adc [hl]
    ld h, c
    sbc [hl]
    ld h, e
    sbc h
    ld h, e
    sbc h
    inc hl
    call c, $de21
    dec l
    jp nc, $da25

    and l
    ld e, d
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    adc c
    db $76
    ret


    ld [hl], $c5
    ld a, [hl-]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    ld b, l
    cp d
    ld b, c
    cp [hl]
    pop de
    ld l, $d9
    ld h, $f9
    ld b, $e9
    ld d, $e9
    ld d, $f9
    ld b, $e9
    ld d, $e9
    ld d, $79
    add [hl]
    ld sp, hl
    ld b, $7d
    add d
    ld a, l
    add d
    rst $38
    nop
    rst $28
    db $10
    xor a
    ld d, b

jr_022_6230:
    rst $10
    jr z, jr_022_6230

    ld [bc], a
    ld a, [hl]
    add c
    ld e, a
    and b
    ld e, a
    and b
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc [hl]
    ld [hl], c
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec hl
    call nc, $fc03
    rlca
    ld hl, sp+$0b
    db $f4
    dec bc
    db $f4
    ld a, [bc]
    push af
    ld c, e
    or h
    adc a
    ld [hl], b
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_022_6261

jr_022_6261:
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
    inc a
    inc bc
    rst $20
    nop
    ld bc, $00fe
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, a
    rst $38
    ld e, a
    cp a
    db $d3
    rst $28
    or $f9
    ld a, [hl]
    rst $38
    ld a, a
    sbc a
    sbc e
    rst $20
    and $f9
    db $fc
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    rst $08
    cp a
    rst $30
    rst $28
    pop af
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    di
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld c, a
    rst $38
    rla
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_022_62f6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_022_6306

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_022_6316

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_022_6326

    ld [hl-], a

jr_022_62f6:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_022_6336

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_022_6306:
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

jr_022_6316:
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

jr_022_6326:
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

jr_022_6336:
    ld [hl], e
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
    ld [hl], e
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
    ld [hl], e
    ld [hl], h
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld [hl], e
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
    xor a
    cp a
    ret nz

    add a
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
    ld d, c
    or $f7
    ld hl, sp-$07
    ld d, c
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, $51
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $5112
    inc de
    inc d
    dec d
    ld d, $17
    ld d, c
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_022_6417

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]

Jump_022_63ff:
    dec hl
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, HeaderLogo

jr_022_6417:
    ld bc, $0101
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc b
    inc b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc b

Call_022_643b:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    rlca
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    inc b
    ld b, $06
    nop
    nop
    nop
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
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld b, b
    nop
    nop

Call_022_649b:
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    jr nz, jr_022_64cd

jr_022_64cd:
    nop
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0303
    inc bc
    inc bc
    dec b
    dec b
    ld [$0808], sp
    inc c
    inc c
    dec bc
    ld bc, $0101
    ld bc, $010b
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    ld [$0c0c], sp
    dec bc
    dec bc
    dec bc
    ld bc, $0c0c
    inc c
    inc c
    inc c
    ld bc, $0b0b
    dec bc
    rrca
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_654e:
    nop
    nop
    add b
    ld a, a
    add b
    ld a, a
    db $10
    rst $28
    ld d, c
    xor [hl]
    sub b
    ld l, a
    sub c
    ld l, [hl]
    xor b
    ld d, a
    add sp, $17
    ld l, h
    sub e
    ld a, l
    add d
    ld a, $c1
    cpl
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    dec sp
    call nz, $e01f

jr_022_6570:
    rra
    ldh [$ae], a
    ld d, c
    xor a
    ld d, b
    xor a
    ld d, b
    sub a
    ld l, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_022_654e

    jr nc, jr_022_6570

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $07
    db $fc
    add hl, bc
    cp $10
    rst $38
    dec h
    ld a, [$fb44]
    ld b, d
    db $fd
    inc [hl]
    add hl, hl
    jr z, jr_022_65ea

    jr jr_022_65dc

    db $10
    rla
    ld [$080e], sp
    ld [$080a], sp
    inc b
    inc b
    sub h
    inc b
    ld [c], a
    ld [bc], a
    ld a, d
    ld [bc], a
    db $fd
    add c
    cp l
    add c
    rst $18
    pop bc

jr_022_65dc:
    ld e, [hl]
    ret nz

    ld a, [hl]
    ldh [$e0], a
    ld a, a
    ldh [$7f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ld hl, sp+$1f

jr_022_65ea:
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc

jr_022_65f1:
    rrca
    cp $07
    cp $07
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    add b
    ld a, a

jr_022_6603:
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    jr nc, jr_022_65f1

    jr nz, jr_022_6603

    add b
    ld a, a
    add b
    ld a, a
    add h
    ld a, e
    add h
    ld a, e
    add [hl]
    ld a, c
    ld b, $f9
    ld [bc], a
    db $fd
    inc bc
    db $fc
    and a
    ld e, b
    add a
    ld a, b
    sub a
    ld l, b
    adc a
    ld [hl], b
    push de
    ld a, [hl+]
    ld sp, hl
    ld b, $fd
    ld [bc], a
    ld hl, sp+$07
    ld a, b
    add a
    ld [hl], b
    adc a
    ld a, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    rst $38
    inc bc
    rlca
    rst $38
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fe03
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$39]
    and $78
    rst $00
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $bd
    ld b, d
    dec e
    ld [c], a
    rst $38
    jp c, $fbbe

    sbc c
    ld l, [hl]
    ld h, e
    sbc [hl]
    ld [hl], d
    adc a
    ld hl, sp+$07
    db $eb
    inc d
    ld a, e
    add h
    ldh a, [rIF]
    ld hl, sp+$07
    add sp, $17
    ld a, h
    adc e
    ld [hl], h
    adc e
    inc [hl]
    rst $18
    xor h
    db $d3
    cp b
    rst $10
    ld a, [hl]
    ret z

    ld a, h
    call z, $a171
    ld [hl], b
    and b
    ld a, b
    and b
    jr c, @-$2e

    inc e
    ldh a, [$4c]
    cp b
    ld l, h
    sbc b
    ld l, $d8
    rrca
    db $f4
    rlca
    db $fc
    ld b, a
    cp d
    add e
    ld a, [hl]
    sub e
    db $ed
    res 6, l
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rlca
    cp $07
    cp $03
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
    ld a, a
    pop bc
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    inc e
    db $e3
    inc e
    db $e3
    dec [hl]
    jp z, $e11e

    ld e, $e1
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld b, e
    cp h
    daa
    ret c

jr_022_6734:
    rla

jr_022_6735:
    add sp, -$33
    ld [hl-], a
    call $e532
    ld a, [de]
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop

jr_022_6742:
    rst $38
    inc bc

jr_022_6744:
    rst $08
    scf
    rst $38
    rrca
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop

jr_022_675b:
    nop
    nop
    nop
    nop
    ld bc, $fe03
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$7f], a
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
    rst $28
    db $10
    rst $20
    jr jr_022_6744

    jr c, jr_022_6742

    inc a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nc

    cpl
    ldh a, [rIF]
    ld sp, hl
    ld b, $af
    ld d, b
    db $dd
    inc hl
    call Call_000_2a33
    push de
    db $e4
    dec de
    pop de
    ld l, $fb
    inc b
    reti


    ld h, $06
    jr nz, @+$16

    ld [hl+], a
    ld [de], a
    jr z, jr_022_67ba

    jr nz, jr_022_67ba

    jr nz, jr_022_67bc

    ld [$4091], sp
    ld [bc], a
    jr nc, jr_022_6734

    jr z, jr_022_6735

    jr nz, jr_022_67f8

    ld [$2241], sp
    ld b, c
    ld [bc], a

jr_022_67ba:
    ld c, e
    inc d

jr_022_67bc:
    inc bc
    inc b
    ld b, e
    nop
    xor a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    add b
    rst $38
    ld [bc], a
    db $db
    ld h, $ab
    ld [hl], a
    db $e3
    ccf
    ld e, b
    daa
    jr jr_022_675b

    db $10
    adc [hl]
    ld de, $0848
    ld b, [hl]
    add b
    jr nz, jr_022_681e

    jr nz, @-$7d

    ld hl, $1161
    pop hl
    ld de, $0ac2
    ld [c], a
    ld a, [bc]
    ld h, c
    inc b
    pop af
    inc b
    db $eb
    nop
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_022_67f8:
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$3f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fd
    rlca
    db $fd
    rlca
    ld e, $e1
    inc e
    db $e3
    inc c
    di
    rla
    add sp, -$6c
    ld l, e
    sub $29
    ld c, [hl]
    or c

jr_022_681e:
    sub [hl]
    ld l, c
    ld d, $e9
    ld c, e
    or h
    adc a
    ld [hl], b
    sub [hl]
    ld l, c
    and [hl]
    ld e, c
    xor [hl]
    ld d, c
    ld l, [hl]
    sub c
    ld [hl], a
    adc b
    db $76
    adc c
    ld a, [hl]
    add c
    cp h
    ld b, e
    cp b
    ld b, a
    cp c
    ld b, a
    ld sp, hl
    rlca
    ei
    dec b
    rst $38
    ld a, l
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$f2ff]
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $20ff
    rst $38
    ld h, b
    rst $38
    ldh [$bf], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    rst $30
    add hl, bc
    ld [hl], e
    adc l
    ld [hl], c
    adc a
    add hl, hl
    sub $00
    rst $38
    ld bc, $32fe
    call $8804
    nop
    jr z, jr_022_6895

jr_022_6895:
    ld c, h
    nop
    xor h
    jp $c12c


    inc h
    add c
    ld l, $81
    ld b, $81
    ld c, $80
    daa
    nop
    rlca
    ld b, b
    daa
    ret nz

    rlca
    add b
    rrca
    add b
    rla
    ret nz

    rra
    jr jr_022_68b9

    jr @+$09

    nop
    rrca
    ld de, $710f

jr_022_68b9:
    rrca
    ld de, $136f
    ld l, [hl]
    jp nz, $e43e

    inc e
    ld [hl], h
    inc c
    ld [hl], h
    inc c
    adc h
    jr @-$70

    jr @+$18

    sub b
    rla
    sub b
    rla
    sub b
    daa
    and b
    daa
    and b
    ld b, a
    ld b, b
    ld c, e
    ld b, b
    ld c, a
    ld b, b
    adc a
    add b
    add a
    add c
    rlca
    ld bc, $0305
    rlca
    ld [bc], a
    add e
    ld [bc], a
    jp $c706


    inc b
    rst $20
    inc b
    rst $20
    inc c
    rst $28
    ld [$08ff], sp
    rst $28
    jr @+$01

    db $10
    rst $38
    db $10
    ld a, a
    jr nc, @+$01

    jr nz, @-$3f

    ld h, b
    cp a
    jr nz, jr_022_697e

    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    db $fd
    add b
    db $f4
    add b
    ldh a, [$80]
    ld [hl], b
    nop
    stop
    db $fc
    inc bc
    cp b
    rlca
    ld a, [$da05]
    dec b
    add sp, $07
    db $ec
    inc bc
    db $fd
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    cp h
    inc bc
    cp h
    inc bc
    cp [hl]
    ld bc, $033c
    ld l, $01
    xor a
    nop
    cp $01
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld a, [c]
    ld a, [c]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    pop hl
    ldh [$e3], a
    ldh [$e3], a
    ldh [$73], a
    ldh a, [$73]
    ldh a, [$71]
    ldh a, [$71]
    ldh a, [$71]
    ldh a, [$39]
    ld hl, sp-$47
    ld hl, sp-$47
    ld hl, sp-$48
    ld hl, sp-$48
    ld hl, sp-$64
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    ld c, h
    db $fc
    ld l, $fe
    ld l, $fe
    ld l, $fe
    ld l, $fe
    ld d, $fe
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38

jr_022_697e:
    dec bc
    rst $38
    dec bc
    dec de
    dec de
    dec bc
    dec de
    dec bc
    dec bc
    dec bc
    adc l
    adc l
    adc l
    add l
    adc l
    add l
    adc l
    add l
    call Call_022_4b45
    ld b, a
    ld c, d
    ld b, [hl]
    xor $42
    xor $22
    xor $22
    cpl
    inc hl
    dec a
    inc hl
    scf
    ld de, $11f7
    sbc a
    ld d, c
    sbc a
    ld d, c
    ld a, $e1
    rst $38
    ld hl, $41ef
    rst $30
    ld b, c
    rst $28
    ld b, d
    and a
    jp nz, $82f7

    or $04
    cp $04
    cp [hl]
    inc b
    cp $08
    ld a, a
    ld [$5daa], sp
    sub d
    ld a, l
    call nc, $d53b
    ld a, [hl-]
    and l
    ld a, d
    and a
    ld a, b
    and d
    ld a, l
    ldh [$5f], a
    ld a, b
    rst $00
    ld a, [hl]
    pop bc
    ld a, [$f985]
    add [hl]
    ld hl, sp-$79
    ldh [$9f], a
    ld [$e015], a
    rra
    ldh [$1f], a
    ld l, c
    sub [hl]
    ld [hl+], a
    db $dd
    nop
    rst $38
    ld [hl+], a
    db $dd
    add hl, de
    and $09
    or $11
    xor $a3
    ld e, h
    db $eb
    inc d
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $20
    jr jr_022_6a64

    sbc b

jr_022_69fe:
    inc sp
    call z, $2cd3
    rst $20
    jr @-$17

    jr jr_022_69fe

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    ccf
    rst $38

jr_022_6a20:
    ccf
    rst $38
    rra
    rst $38
    ccf

Jump_022_6a25:
    rst $38
    jr jr_022_6a20

    inc e
    db $fc
    inc a
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$04
    ldh a, [$0c]
    ldh a, [$0c]
    ldh [rNR32], a
    ret nz

    ld a, $80
    ld a, [hl]
    nop
    cp $00
    cp $00
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_022_6a64:
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
    add d
    ld a, a
    add d
    ld a, a
    jp nz, $c33f

    ccf
    jp $c33f


    ccf
    jp $c33f


    ccf
    pop hl
    rra
    pop hl
    sbc a
    pop hl
    sbc a
    pop hl
    sbc a
    db $e3
    sbc l
    di
    adc h
    pop af
    call z, $c8f0
    ld a, [c]
    call z, $c2ce
    adc $c2
    and $e2
    and $e6
    and $e6
    and $e6
    and $e6
    ld [hl], e
    di
    ld [hl], e
    di
    ld [hl], e
    di
    ld [hl], e
    di
    di
    di
    cp e
    ei
    cp c
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, de
    ld sp, hl
    dec e
    db $fd
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    ld c, $fe
    ld c, $fe
    ld c, $fe
    ld c, $fe
    ld b, $fe
    rlca
    rst $38

jr_022_6aca:
    rlca
    rst $38

jr_022_6acc:
    rlca
    rst $38

jr_022_6ace:
    rlca
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
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec bc
    ld a, [c]
    dec bc
    ld a, [c]
    dec bc
    ld a, [c]
    dec bc
    ld a, [c]
    dec bc
    ld a, [c]
    rla
    db $e4
    rla
    db $e4
    rla
    db $e4
    rla
    db $e4
    rla
    db $e4
    cpl
    ret z

    cpl
    ret z

    cpl
    ret z

    cpl
    ret z

    cpl
    ret z

    ld e, a
    sub b
    ld e, a
    sub b
    ld e, a
    sub b
    ld e, a
    sub b
    ld e, a
    sub b
    cp a
    jr nz, jr_022_6aca

    jr nz, jr_022_6acc

    jr nz, jr_022_6ace

    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f6ff]
    db $fd
    and $fd
    xor $fd
    sbc $ff
    add $ff
    add $fb
    rst $00
    ld sp, hl
    and a
    ld sp, hl
    and c
    cp $a1
    cp $20
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    jr c, jr_022_6b81

    ld a, $3f
    ld a, $3f
    inc a
    ccf
    ccf
    ccf
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $38
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla

jr_022_6b81:
    rst $28
    rla
    rst $28
    dec de
    rst $30
    db $db
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
    rst $38
    ei
    ld a, a
    ld sp, hl
    ld a, a
    db $fd
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ccf
    ld a, a
    ccf
    ld a, [hl]
    ccf
    cp [hl]
    ccf
    cp [hl]
    ccf
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp a
    sbc a
    cp a
    sbc a
    rra
    rra
    rst $18
    sbc a
    rst $38
    sbc $ff
    sbc $ff
    cp $ff
    cp $fe
    ld a, l
    db $fc
    ld a, l
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $39
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp-$45
    ld hl, sp-$45
    db $fc
    cp e
    db $f4
    di
    db $f4
    di
    ldh a, [$f7]
    ld h, b
    rst $20
    add sp, -$39
    ret z

    rst $20
    ld b, b
    rst $08
    ld e, b
    rst $08
    db $10
    rst $18
    jr c, @+$01

    jr nc, @+$01

    jr @+$01

    db $10
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld hl, $30ff
    rst $38
    ld d, h
    db $eb
    ld h, c
    cp $40
    rst $38
    ld h, d
    db $fd
    ld b, c
    cp $85
    ld a, [$ffc0]
    add l
    ld a, [$fac7]
    rst $38
    rst $38
    rst $20
    rst $38
    ld [c], a
    db $fd
    ld a, [c]
    ld a, l
    rst $30
    ld a, e
    rst $38
    ei
    cp $ff
    rst $38
    rst $38
    db $db
    rst $38
    or a
    rst $18
    cp [hl]
    rst $10
    ld a, [$fadf]
    rst $38
    ld a, e
    cp a
    ld e, l
    or a
    adc l
    ld [hl], a
    adc a
    ld [hl], l
    ld a, [bc]
    rst $30
    ld b, $fb
    inc b
    ei
    inc b
    ei
    ld b, h
    cp e
    ld b, b
    cp a
    ld d, b
    xor a
    or b
    ld c, a
    add b
    ld a, a
    add c
    ld a, [hl]
    adc c
    db $76
    adc d
    ld [hl], l
    rlca
    ld hl, sp-$79
    ld hl, sp+$42
    db $fd
    jp nz, Jump_022_60fd

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    add sp, -$01
    db $ec
    rst $38
    db $f4
    rst $38
    ld a, [$fdff]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    sub b
    rst $38
    or b
    rst $38
    or b
    rst $38
    sbc b
    rst $38
    pop hl
    rst $38
    or c
    rst $38
    or c
    rst $38
    and c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    ld h, d
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    add d
    rst $38
    jr nz, @+$01

    adc d
    rst $38
    xor b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld de, $10fe
    rst $38
    ld sp, $55de
    cp d
    ld b, e
    cp h
    ld b, d
    cp l
    ld b, l
    cp d
    ld l, e
    or h
    dec c
    ld a, [c]
    ld a, [bc]
    push af
    adc d
    ld [hl], l
    db $db
    inc h
    db $db
    inc h
    sbc e
    ld h, h
    sub a
    ld l, b
    sbc a
    ld h, b
    cp e
    ld b, h
    sbc $fb
    rst $30
    rst $38
    ld d, l
    rst $38
    ld d, h
    db $eb
    db $f4
    db $eb
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $b7
    ld b, h
    cp a
    ld b, b
    cp a
    ld c, b

jr_022_6d19:
    cp a
    ld e, b
    cp a
    ld hl, sp-$01
    ld a, [$ffff]
    rst $38
    rst $18
    rst $30
    ld e, a
    rst $30
    ld a, d
    rst $20
    ld a, d
    and a
    ld d, b

jr_022_6d2b:
    xor a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, l
    sbc d
    ld [hl], e
    adc h
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_022_6d19

    xor b
    ld d, a
    xor b
    ld d, a
    add sp, $17
    jp hl


    ld d, $85
    ld a, d
    ld b, [hl]
    cp c
    ld b, h
    cp e
    ld h, h
    sbc e
    jr nz, jr_022_6d2b

    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    and d
    db $dd
    ld [hl+], a
    db $fd
    ld [hl], d
    db $dd
    rst $30
    db $fc
    or c
    cp $ff
    cp $54
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    db $f4
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
    ret nz

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
    ldh [rIE], a
    nop
    rst $38
    ld l, d
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38

jr_022_6d94:
    nop
    rst $38
    nop

jr_022_6d97:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_022_6d9f:
    rst $38
    rlca

jr_022_6da1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_022_6d9f

    jr nz, jr_022_6da1

    db $10
    rst $28
    sub b
    ld l, a
    jr nc, jr_022_6d97

    or c
    ld c, [hl]
    or b
    ld c, a
    or [hl]
    ld c, l
    pop de
    ld l, $b2
    ld c, l
    or d
    ld c, l
    or e
    ld c, h
    and e
    ld e, h
    or e
    ld c, h
    rst $20
    jr jr_022_6d94

    ld c, b
    cp a
    ld b, b
    rst $30
    ld [$807e], sp
    push af
    ld [$807e], sp
    db $76
    adc b
    ld d, [hl]
    adc b
    or $08
    and $08
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld [hl], b
    cp a
    ld h, c
    cp $21
    cp $e3
    db $fc
    di
    call z, $80ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30

jr_022_6e09:
    ld [$00ff], sp
    db $fd
    add d
    db $ed
    sub d
    rst $28
    jp nc, $f6eb

    db $db
    ld [hl], $cf
    ld a, $af
    ld e, a
    ld h, l
    sbc a
    ld h, h
    sbc a
    ret nz

    ccf
    ld b, b
    cp a
    ld c, b
    or a
    ld c, b
    or a
    ld b, h
    cp e
    inc [hl]
    rlc h
    ei
    inc b
    ei
    inc h
    db $db
    jr z, jr_022_6e09

    ld c, h
    or e
    ld d, d
    xor l
    ld d, d
    xor l
    ld [hl-], a
    call $d926
    ld c, $f1
    sbc [hl]
    ld h, c
    sub $29
    rst $10
    jr z, @-$47

    ld c, b
    inc sp
    call z, $ed12
    inc de
    db $ec
    ld [de], a
    db $ed
    nop
    rst $38
    adc b
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    call z, $b4ff
    rst $38
    push af
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
    nop
    rst $38
    nop
    rst $38
    cpl
    rst $38
    dec b
    rst $38
    rla
    rst $38
    daa
    rst $38
    daa
    rst $38
    dec hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    rla

jr_022_6e7d:
    rst $38
    daa

jr_022_6e7f:
    rst $38
    db $db
    rst $38
    ld [hl+], a
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_022_6e7d

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    jr z, jr_022_6e7f

    ret z

    scf
    ld l, b
    sub a
    ld l, a
    sub b
    ld a, a
    add b
    ei
    inc b
    rst $28
    db $10
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    sbc $01
    rst $18
    nop
    sbc e
    nop
    sbc e
    nop
    sbc c
    nop
    sbc l
    nop
    sbc l
    nop
    sbc l
    nop
    sbc a
    nop
    sub a
    nop
    sub h
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    push de
    ld a, [hl+]
    sbc a
    ld h, b
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
    sub a
    add sp, $17
    add sp, $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    ret z

    scf
    adc b
    ld [hl], a
    adc c
    db $76
    ld de, $11ee
    xor $01
    cp $01
    cp $00
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, d
    cp l
    sub d
    ld l, l
    sub [hl]
    ld l, c
    and d
    ld e, l
    and e
    ld e, h
    ld b, e
    cp h
    ld b, d
    cp l
    jp $c53c


    ld a, [hl-]
    ld h, $d9
    ld h, $d9
    ld l, $d1
    sbc b
    rst $20
    db $10
    rst $28
    ret z

    rst $38
    ld [c], a
    rst $38
    or h
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    or c
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
    sbc a
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    sbc c
    rst $38
    adc l
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38

jr_022_6f76:
    inc b
    rst $38
    nop
    rst $38
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $28
    ld d, h
    xor e
    ld c, h
    or e
    ld d, h
    xor e
    ld c, a
    or b
    adc e
    ld [hl], h
    ld c, [hl]
    or c
    rst $18
    jr nz, jr_022_6f76

    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    db $db

jr_022_6fa1:
    nop
    ld a, d
    add b
    reti


    nop
    ret c

    jr nz, jr_022_6fa1

    nop
    ld l, b
    nop
    add sp, $00
    ld l, b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$8af7], sp
    ld [hl], l
    rst $28
    db $10
    cp $01
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_022_6fdb:
    nop
    rst $38

jr_022_6fdd:
    nop
    xor h
    ld d, e
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    inc b
    ei
    inc b
    ei
    inc c
    di
    inc c
    di
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_022_6fdb

    jr nz, jr_022_6fdd

    ld c, b
    or a
    ld c, b
    or a
    ld e, b
    and a
    sbc b
    ld h, a
    sub b
    ld l, a
    sub h
    ld l, e
    db $f4
    dec bc
    ld b, h
    cp e
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    ld c, e
    or h
    dec hl
    call nc, $d42b
    dec hl
    call nc, $ce31
    ld de, $f0ee
    rst $28
    ret c

    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_703e:
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
    ret nz

    rst $38
    or b
    rst $38
    ret c

    rst $38
    jp z, $c8ff

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    add h
    rst $38
    add h
    rst $38
    call nz, $c4ff
    rst $38
    jp nz, $42ff

    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, b
    rst $38
    ld hl, $a0ff
    rst $38
    and c
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    adc c
    db $76
    adc [hl]
    ld [hl], c
    rst $00
    jr c, jr_022_703e

    ld e, h
    db $e3
    inc e
    db $eb
    inc d
    push bc
    ld a, [hl-]
    adc e
    ld [hl], h
    xor l
    ld [de], a
    ld [hl], a
    ld [$00bf], sp
    ccf
    nop
    ld e, a
    jr nz, jr_022_70ce

    jr nz, jr_022_70b1

jr_022_70b1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$21f7], sp
    sbc $00
    rst $38
    sbc h
    ld h, e
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    sub b
    ld l, a
    or b
    ld c, a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a

jr_022_70ce:
    cp $01
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    ld l, a
    sub b
    ld c, [hl]
    or c
    ld c, $f1
    inc c
    di
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    add h
    ld a, e
    adc h
    ld [hl], e
    xor b
    ld d, a
    and h
    ld e, e
    and h
    ld e, e
    and b
    ld e, a
    nop
    rst $38
    ld bc, $01fe
    cp $85
    ld a, d
    add l
    ld a, d
    add l
    ld a, d
    add l
    ld a, d
    add c
    ld a, [hl]
    add [hl]
    ld a, c
    ld d, $e9
    ld d, $e9
    adc [hl]
    ld [hl], c
    sbc [hl]
    ld h, c
    sub [hl]
    ld l, c
    sub d
    ld l, l
    and e

jr_022_710f:
    ld e, h
    cp d
    ld b, l
    xor d

jr_022_7113:
    ld d, l
    xor h
    ld d, e
    xor h
    ld d, e
    xor b
    ld d, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp a
    ld b, h
    rst $38
    jp z, $59ff

    rst $38
    ld d, l
    rst $38
    db $fc
    rst $38
    rst $30
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
    nop
    rst $38
    rlca

jr_022_7139:
    rst $38
    add [hl]
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop

jr_022_714f:
    rst $38
    inc b
    ei
    ld [$0af7], sp
    push af
    inc b
    ei
    ld b, $f9
    ld d, $e9
    rla
    add sp, -$65
    db $e4
    reti


    and h
    ld e, [hl]
    and b
    ld l, [hl]
    sub b
    ld a, [hl+]
    ret nc

    ld l, d
    ret nc

    cpl
    ret nc

    db $dd
    ld h, b
    or c
    ld c, b
    sub b
    ld l, b
    ld e, [hl]

jr_022_7173:
    jr nz, jr_022_7113

    ld h, b
    db $f4
    jr nz, jr_022_714f

    jr nz, jr_022_71d1

    jr nz, jr_022_710f

    jr nz, jr_022_7139

    nop
    cp d
    nop
    cp b
    nop
    sbc b
    nop
    ld e, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld d, h
    nop
    sub b
    nop
    nop
    rst $38
    jr nz, jr_022_7173

    nop
    rst $38
    nop
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
    dec b
    ld a, [$d22d]
    cpl

jr_022_71a7:
    ret nc

    cpl
    ret nc

    xor a
    ld d, b
    sbc e
    ld h, h
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    and $19
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ld bc, $41fe
    cp [hl]
    ld b, c
    cp [hl]
    ld d, b
    xor a
    nop
    rst $38
    ld bc, $11fe
    xor $14
    db $eb
    ld d, b
    xor a
    ld d, b

jr_022_71d1:
    xor a
    ld d, c
    xor [hl]
    ld hl, $21de
    sbc $21
    sbc $31
    adc $38
    rst $00
    jr c, jr_022_71a7

    add hl, sp
    add $3d
    jp nz, $c23d

    inc [hl]
    swap h
    res 3, d
    ld h, l
    ld l, d
    sub l
    ld l, d
    sub l
    ld l, d
    sub l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    or b
    ld c, a
    and b
    ld e, a
    ld hl, $10df
    rst $38
    ld d, h
    rst $38
    ld c, d
    rst $38
    sbc h
    rst $38
    or c
    rst $38
    sbc $ff
    rst $38
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
    add b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    ld b, b
    rst $38
    ld h, b

jr_022_722f:
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $00ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr nz, jr_022_722f

    and b
    ld e, a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld [$08f7], sp
    rst $30
    inc c
    di
    dec d
    ld [$d823], a
    ld a, $c1
    sbc a
    ld h, b
    cp l
    ld h, b
    ld e, $60
    ld e, h
    jr nz, jr_022_72c1

    jr nz, jr_022_72a3

jr_022_726f:
    nop
    ld hl, $0c10
    db $10
    ld a, [de]
    nop
    add b
    ld [$0800], sp
    adc h
    nop
    ld b, l
    nop
    ld b, h
    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld [de], a
    nop
    nop
    nop
    inc c
    nop
    ld b, $00
    ld b, [hl]
    nop
    ld h, $00
    add b
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    dec d

jr_022_7297:
    rst $38
    sbc l
    or $78
    rst $30
    ld [hl], b
    rst $18
    ret nc

    ccf
    ret nz

    ccf
    ret nz

jr_022_72a3:
    ccf
    nop
    rst $38
    jr c, jr_022_726f

    jr c, @-$37

    ld a, b
    add a
    inc [hl]
    bit 6, h
    adc e
    ld h, h
    sbc e
    ld h, h
    sbc e
    dec h
    jp c, Jump_022_7a85

    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    sub a
    ld l, b
    rra

jr_022_72c1:
    ldh [rNR33], a
    ld [c], a
    rla
    add sp, $1a
    push hl
    ld a, [hl-]
    push bc
    ld a, $c1
    ld [hl], $c9
    jr c, jr_022_7297

    ld d, c
    xor [hl]
    ld l, c
    sub [hl]
    pop hl
    ld e, $51
    xor [hl]
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [de]
    push hl
    call nc, Call_022_742b
    adc e
    ld [hl], h
    adc e
    db $f4
    dec bc
    ld hl, sp+$07
    cp c
    ld b, [hl]
    or c
    ld c, [hl]
    or c
    ld c, [hl]
    add c
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, h
    daa
    db $fc
    ld c, e
    db $fc
    ld d, a
    db $fc
    rlca
    db $fd
    and a
    db $fd
    db $fd
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
    rrca
    rst $38
    rst $30
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
    rst $38
    rst $38
    rra
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    rla
    cp $c4
    dec sp
    inc de
    db $ec
    nop
    rst $38
    ld a, $f1
    ld a, a
    add b
    cp a
    ret nz

    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rTMA]
    ld sp, hl
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $87ff
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld hl, $21ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    call nc, $b42b
    dec bc
    ld a, [$fe05]
    ld bc, $02fd
    ld l, a
    nop
    dec d
    nop
    inc c
    ld bc, $0047
    ld b, [hl]
    nop
    ld bc, $6000
    nop
    ld sp, $0000
    nop
    jr nz, jr_022_7382

jr_022_7382:
    sub b
    nop
    jr nz, jr_022_7386

jr_022_7386:
    sbc b
    nop
    jr z, jr_022_738a

jr_022_738a:
    ret nz

    nop
    inc d
    nop
    dec b
    nop
    pop af

jr_022_7391:
    ld e, [hl]
    pop hl

jr_022_7393:
    ld a, [hl]
    add c
    cp $41
    cp $11
    xor $33
    call z, $fc03
    add e

jr_022_739f:
    ld a, h
    add e

jr_022_73a1:
    ld a, h
    add e

jr_022_73a3:
    ld a, h
    add a
    ld a, b
    add a
    ld a, b
    rlca

jr_022_73a9:
    ld hl, sp-$59

jr_022_73ab:
    ld e, b
    and [hl]

jr_022_73ad:
    ld e, c
    and $19
    xor $11
    xor $11
    adc $31
    call z, $8c33
    ld [hl], e
    adc h
    ld [hl], e
    sbc h
    ld h, e
    inc e
    db $e3
    jr jr_022_73a9

    jr jr_022_73ab

    jr jr_022_73ad

    jr @-$17

    jr c, jr_022_7391

    jr c, jr_022_7393

    jr nc, @-$2f

    jr nc, jr_022_739f

    jr nc, jr_022_73a1

    jr nc, jr_022_73a3

    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
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
    add c
    ld a, a
    add e
    ld a, a
    adc l
    ld a, a
    add a
    ld a, a
    rla
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    cp [hl]
    cp $be
    cp $fe
    cp $ff
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    ccf
    nop

Call_022_742b:
    ccf
    ret nz

    ccf
    ret nz

    ccf
    jr nz, jr_022_7451

    db $10
    rrca
    ret nc

    adc a
    ret z

    ld b, a
    ret z

    ld b, a
    db $e4
    inc hl
    db $e4
    inc hl
    ld a, [c]

jr_022_743f:
    ld de, $11f2
    ld sp, hl
    ld [$08f9], sp
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    add c
    add c

jr_022_7451:
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr z, jr_022_743f

    inc l
    rst $18
    inc l
    rst $38
    cp [hl]
    ld a, a
    ld e, [hl]
    cp a
    rst $08
    ccf
    ld [hl], c
    adc a
    ld l, l
    sbc e
    ld l, b
    sbc a
    rst $30
    rrca
    or a
    ld c, a
    db $fd
    inc bc
    and $09
    cp [hl]
    ld bc, $0177
    jp nc, $0801

    ld hl, $006a
    inc l
    nop
    inc d
    nop
    inc d
    nop
    db $10
    ld [$000a], sp
    jr nc, jr_022_748e

jr_022_748e:
    inc b
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
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
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    ld l, a
    sub b
    ld e, a
    and b
    ccf
    ret nz

    ld e, a
    and b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [$09]
    or $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    inc c
    di
    inc c
    di
    ld [$00f7], sp
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
    ccf
    ld b, b
    ccf
    jr nz, jr_022_754f

    db $10
    rrca
    sub b
    adc a
    adc b
    add a
    ret z

    ld b, a
    call nz, $e443
    inc hl
    ld [c], a
    ld hl, $11f2
    ld e, $f1
    ld c, $f9
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $81

jr_022_754f:
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    and b
    ld a, a
    sub b
    ld a, a
    ret nc

    cp a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ccf
    inc b
    ccf
    ld [hl], $0f
    ld l, d
    rla
    add hl, de
    scf
    inc sp
    rra
    rrca
    rra
    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rrca
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec de
    nop
    db $ec
    inc de
    db $ec
    inc de
    db $ec
    inc de
    db $fc
    inc bc
    call c, $dc23
    inc hl
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    rst $08
    jr nc, @+$21

    ldh [$5f], a
    and b
    rra
    ldh [$9f], a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld [hl], a
    adc b
    ld [hl], h
    adc e
    ld h, l
    sbc d
    ld h, c
    sbc [hl]
    push hl
    ld a, [de]
    inc bc
    db $fc
    jp $c73c


    jr c, jr_022_75f0

    ld hl, sp-$7a
    ld a, c
    rla
    add sp, $45
    cp d

jr_022_75f0:
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_022_761d

    jr nz, jr_022_761f

    db $10
    rrca
    adc b
    add a
    adc b
    add a
    call nz, $c443
    ld b, e
    ld [c], a
    ld hl, $21e2
    pop af
    db $10
    ld e, $f1
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03

jr_022_761d:
    cp $83

jr_022_761f:
    rst $38
    ld a, [c]
    dec c
    ret nz

    ccf
    pop bc
    ld a, $c2
    dec a
    jp nz, $e93d

    ld d, $d9
    ld h, $f8
    rlca
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ei
    nop
    di
    nop
    or e
    nop
    nop
    rst $38
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld b, $f9
    dec b
    ld a, [$fa05]
    dec bc
    db $f4
    dec bc
    db $f4
    dec b
    ld a, [$ea15]
    adc b
    ld [hl], a
    ret z

    scf
    pop de
    ld l, $f9
    ld b, $fe
    ld bc, $01fe
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0100

jr_022_7675:
    nop
    ld bc, $0900
    nop
    add hl, de
    nop
    ld sp, hl
    nop
    db $eb
    db $10
    ret


    jr nc, @-$63

    ld h, b
    ld [hl], e
    add b
    ld h, e
    db $10
    ld d, e
    jr nz, jr_022_76ce

    jr nc, jr_022_76e0

    jr nz, jr_022_7675

    nop
    jp $4224


    dec b
    ld b, [hl]
    nop
    ld b, h
    ld [bc], a
    ld [$8204], sp
    ld [$0411], sp
    dec d
    nop
    ld b, e
    ld [$0219], sp
    dec d
    ld [bc], a
    rla
    nop
    rla
    nop
    dec l
    nop
    inc l
    nop
    inc e
    nop
    ld bc, $0a00
    ld bc, $0002
    ld [bc], a
    nop
    ld [$1800], sp
    nop
    nop
    nop
    stop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc

jr_022_76ce:
    ei
    inc b
    rst $38
    nop
    sbc a
    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_022_76e0:
    ld a, a
    add b
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
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_022_771b

    jr nz, jr_022_771d

    db $10
    rrca
    ld d, a
    xor b
    scf
    ret z

    rlca
    ld hl, sp+$41
    cp [hl]
    dec b
    ld a, [$fc03]
    inc bc
    db $fc
    inc bc
    db $fc
    inc de
    db $ec
    rla
    add sp, $17
    add sp, $2f
    ret nc

    rra
    ldh [$7f], a

jr_022_771b:
    add b
    ld a, a

jr_022_771d:
    add b
    rst $38
    nop
    nop
    rst $38
    nop

jr_022_7723:
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
    nop
    rst $38
    ld [hl], b
    adc a
    or b
    ld c, a
    cp b
    ld b, a
    jr jr_022_7723

    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    sbc e
    ld h, h
    sub e

jr_022_7745:
    ld l, h
    sbc e
    ld h, h
    sbc e
    ld h, h
    cp e
    ld b, h
    db $db
    inc h
    db $db
    inc h
    db $db
    inc h
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
    inc a
    jp $837c


    jr c, jr_022_7745

    ld h, b
    sbc a
    sbc a
    nop
    ld e, a
    nop
    ld a, [hl]
    ld bc, $0bf4
    db $ed
    ld [de], a
    db $eb
    inc d
    cp [hl]
    ld bc, $02fd
    ei
    inc b
    rst $28
    db $10
    ld a, h
    ld [bc], a
    ld [hl], l
    ld [$116a], sp
    ld d, l
    ld [hl+], a
    ld l, c
    ld [bc], a
    db $d3
    nop
    dec hl
    add b
    ld h, d
    add hl, bc
    sbc e
    ld b, b
    ld e, e
    add b
    or a
    nop
    or a
    nop
    ld [hl], l
    nop
    dec [hl]
    nop
    jp c, $ac25

    ld d, e
    ld hl, sp+$07
    add sp, $17
    ldh a, [rIF]
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    call nz, $883b
    ld [hl], a
    ld [$30f7], sp
    rst $08
    ld d, b
    xor a
    db $e4
    dec de
    db $e4
    dec de
    add sp, $17
    xor b
    ld d, a
    ret nc

    cpl
    ld h, b
    sbc a
    and b
    ld e, a
    ld a, [c]
    dec c
    db $ec
    inc de
    or h
    ld c, e
    add sp, $17
    xor b
    ld d, a
    ld d, b
    xor a
    jr nz, @-$1f

    ld h, b
    sbc a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    jr jr_022_7844

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_022_7833

jr_022_7833:
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_022_7869

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_022_7844:
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_022_787e

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    jr c, jr_022_7894

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop

jr_022_7869:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_022_787e:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld d, e
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

jr_022_7894:
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
    ld [hl], h
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    adc l
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
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
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

    call nz, $c5c4
    nop
    add $c7
    ret z

    ret


    jp z, $cbc0

    call z, $cecd
    rst $08
    call nz, $c4c4
    ret nc

    nop
    pop de
    nop
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $c4c4

    call nz, Call_000_00d0
    db $db
    nop
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    call nz, $e6c4
    rst $20
    add sp, $00
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    call nz, $f3c4
    db $f4
    push af
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
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
    inc b
    inc b
    inc b
    ld b, $06
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
    inc b
    inc b
    inc b
    ld b, $00
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
    inc b
    inc b
    ld b, $00
    nop
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
    inc b
    ld b, $00
    nop
    nop
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
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    dec b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $00
    nop
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
    inc b
    inc b
    inc b
    dec b
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
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
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    nop
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
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop

Jump_022_7a85:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld h, $ff
    ld h, $ff
    ld h, $ff
    ld l, $ff
    scf
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    ld a, [hl-]
    rst $38
    ld l, d
    rst $38
    ld l, d
    rst $38
    ld l, d
    rst $38
    dec a
    rst $38
    ld l, l
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    cp c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld e, e
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
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
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    db $eb
    rst $38
    ld d, c
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld e, h
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    ei
    rst $38
    ld e, a
    rst $38
    inc b
    rst $38
    ld d, b
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld [hl], d
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    ld bc, $25ff
    rst $38
    ld hl, $01ff
    rst $38
    sub c
    rst $38
    or c
    rst $38
    or c
    rst $38
    jp hl


    rst $38
    add hl, bc
    rst $38
    xor c
    rst $38
    rst $08
    rst $38
    adc [hl]
    rst $38
    adc $ff
    xor $ff
    ld l, d
    rst $38
    ld [$6aff], a
    rst $38
    db $eb
    rst $38
    ld l, e
    rst $38
    rst $30
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
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    ld a, [$feff]
    rst $38
    ld a, [$deff]
    rst $38
    ld a, [$deff]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    xor $ff
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e4
    rst $38
    call z, $f3ff
    rst $38
    ld h, e
    rst $38
    ld b, d
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    ld de, $a8ff
    rst $38
    add hl, sp
    rst $38
    ld l, c
    rst $38
    ld e, a
    rst $38
    ld a, e
    rst $38
    ld e, a
    rst $38
    ld a, e
    rst $38
    ld d, a
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [$fc03]
    ld bc, $05fe
    ld a, [$ff00]
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    or c
    rst $38
    or d
    rst $38
    or d
    rst $38
    or d
    rst $38
    ld h, b
    rst $38
    pop hl
    rst $38
    add $ff
    ld a, d
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    dec de
    rst $38
    ld a, $ff
    cp e
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    sub d
    rst $38
    ld e, $ff
    cp l
    rst $38
    inc a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $ed
    rst $38
    xor [hl]
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld a, [$faff]
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld b, e
    rst $38
    db $d3
    rst $38
    ret c

    rst $38
    push de
    rst $38
    push af
    rst $38
    di
    rst $38
    or b
    rst $38
    or h
    rst $38
    adc e
    rst $38
    sbc a
    rst $38
    adc e
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    push de
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    db $eb
    cp $d7
    db $fc
    xor $f8
    ld e, h
    ldh [$f1], a
    pop bc
    ld h, e
    add d
    ld a, [bc]
    push af
    ld e, $e1
    dec e
    ld [c], a
    dec e
    ld [c], a
    cp l
    ld b, d
    cp a
    ld b, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    scf
    ret z

    ld [hl], l
    adc d
    daa
    ret c

    inc hl
    call c, $dc23
    daa
    ret c

    ld [hl+], a
    db $dd
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
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $21ff
    rst $38
    ld hl, $30ff
    rst $38
    and b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    jr nc, @+$01

    or b
    rst $38
    or c
    rst $38
    or c
    rst $38
    or c
    rst $38
    or c
    rst $38
    sub c
    rst $38
    sub l
    rst $38
    db $f4
    rst $38
    or h
    rst $38
    or c
    rst $38
    cp c
    rst $38
    and $ff
    and d
    rst $38
    or c
    rst $38
    and c
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc $ff
    adc $ff
    rst $00
    rst $38
    add h
    rst $38
    ld e, l
    rst $38
    cp d
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    call $cfff
    rst $38
    push bc
    rst $38
    set 7, a
    rst $18
    rst $38
    rst $38
    cp $77
    db $fc
    db $ec
    ldh a, [$d8]
    ldh [$cf], a
    di
    inc e
    rst $20
    ld a, b
    adc a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld [hl], a
    adc b
    ld d, a
    xor b
    ld d, $e9
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    ld d, a
    xor b
    ld d, a
    xor b
    dec [hl]
    jp z, $ca35

    ld [hl], $c9
    ld a, $c1
    inc e
    db $e3
    inc e
    db $e3
    sbc b
    ld h, a
    sbc b
    ld h, a
    add h
    ld a, e
    add h
    ld a, e
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, a
    cp b
    ld b, c
    cp [hl]
    nop
    rst $38
    db $10
    rst $28
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    and d
    rst $38
    and e
    rst $38
    call $f0ff
    rst $38
    ret nz

    rst $38
    jp nz, $d2ff

    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    pop af
    rst $38
    jp z, Jump_022_47ff

    rst $38
    ld c, d
    rst $38
    ld b, a
    rst $38
    adc a
    rst $38
    ld b, l
    rst $38
    adc a
    rst $38
    ld [hl], l
    rst $38
    db $eb
    rst $38
    ld a, l
    rst $38
    db $eb
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    ei
    db $fc
    sub $f8
    db $ec
    ldh a, [$59]
    pop hl
    db $e3
    add d
    rst $08
    inc c
    sbc a
    db $10
    ccf
    jr nz, jr_022_7e3c

    ld b, b
    rst $38
    add b
    or $09
    ld l, a
    sub b
    ccf
    ret nz

    ei
    inc b
    sbc e
    ld h, h
    sbc e
    ld h, h
    cp a

jr_022_7dcd:
    ld b, b
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    ei
    inc b
    xor d
    ld d, l
    adc d
    ld [hl], l
    ld c, b
    or a
    ld c, b
    or a
    nop
    rst $38
    add b
    ld a, a
    sbc b
    ld h, a
    jr jr_022_7dcd

    add hl, bc
    or $48
    or a
    ld c, b
    or a
    add hl, bc
    or $09
    or $08
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    and b
    rst $38
    and l
    rst $38
    dec d
    rst $38
    ld c, c
    rst $38
    ld c, e
    rst $38
    ld c, d
    rst $38
    ld a, [bc]
    rst $38
    adc h
    rst $38
    adc l
    rst $38
    adc d
    rst $38
    jr @+$01

    ld a, [hl+]
    rst $38
    inc d
    rst $38
    dec sp
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [$feff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38

jr_022_7e3c:
    ld a, [$fdff]
    cp $eb
    db $fc
    sbc $f8
    cp c
    jp hl


    ld [hl], e
    jp nz, $84e7

    rst $08
    ld [$101f], sp
    ld a, a
    ld h, b
    add b
    rst $38

jr_022_7e52:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_022_7e5c:
    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $e1
    ld e, $e7
    jr jr_022_7e52

    jr jr_022_7e5c

    db $10

jr_022_7e6e:
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$09f6], sp
    or $09
    db $e4
    dec de
    db $e4
    dec de
    call nz, $e63b
    add hl, de
    rst $20
    jr jr_022_7e6e

    inc d
    db $db
    inc h
    db $db
    inc h
    db $db
    inc h
    ld [hl-], a
    call $e619
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    inc b
    ei
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
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [hl], h
    rst $38
    ld [hl], b
    rst $38
    ld d, b
    rst $38
    ret c

    rst $38
    call c, $beff
    rst $38
    sbc l
    rst $38
    adc e
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    db $dd
    rst $38
    db $eb
    rst $38
    di
    rst $38
    or e
    rst $38
    ld [hl], e
    rst $38
    and d
    rst $38
    rlca
    rst $38
    adc d
    rst $38
    dec d
    cp $2a
    db $fc
    inc e
    ldh a, [$b9]
    pop hl
    ld h, a
    add $cf
    ld [$109f], sp
    ldh [$3f], a
    ret nz

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
    ld bc, $03ff
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc c
    rst $38
    ld a, [de]
    rst $38
    inc [hl]
    rst $38
    and e
    ld e, h
    di
    inc c
    rst $28
    db $10
    db $eb
    inc d
    db $eb
    inc d
    db $fd
    ld [bc], a
    ld a, a
    add b
    add hl, hl
    sub $39
    add $39
    add $39
    add $19
    and $b9
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    or $09
    rst $30
    ld [$08f7], sp
    cp $01
    ld a, d
    add l
    ld e, b
    and a
    ld c, b
    or a
    ld c, e
    or h
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
    inc c
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
    nop
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
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    sub e
    rst $38
    or d
    rst $38
    rst $10
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor [hl]
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    sub a
    db $fc
    xor [hl]
    ld hl, sp-$27
    pop af
    di
    db $e3
    rst $20
    call nz, $df38
    ldh [$3f], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld b, c
    cp $e2
    db $fd
    add l
    ld a, [$f10e]
    sbc [hl]
    pop hl
    inc e
    db $e3
    jr c, @-$37

    ld a, c
    add [hl]
    ldh a, [rIF]
    xor d
    ld e, a
    push af
    rra
    xor $13
    db $fd
    inc bc
    ld a, [$fd07]
    rlca
    ld a, [$f507]
    rrca
    ld a, [c]
    rrca
    pop af
    rrca
    jp nc, $c92f

    scf
    jp c, Jump_022_5927

    and a
    ld l, d
    sub a
    ret z

    scf
