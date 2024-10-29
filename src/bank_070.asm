SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

    cp $ff
    db $fc

Call_070_4003:
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$c0ff], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    or $ff
    ld [$c2ff], a
    rst $38
    sub $ff
    cp $ff
    db $fc
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
    di
    rst $38
    di
    rst $38
    push af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    or $ff
    db $fd
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
    rst $38
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
    cp a
    ld a, a
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
    rst $38
    ccf
    rst $38
    or $ff
    or $ff
    rrca
    rst $38
    call $feff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $f4
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
    rst $38
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
    scf
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    di
    rst $38
    jp $dfff


    rst $38
    rst $38
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
    db $fd
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld d, d
    rst $38
    ld h, c

Jump_070_40ff:
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld b, e
    rst $38
    jr c, @+$01

Jump_070_4108:
    jr c, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    dec d
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, $ff
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
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld [$c0ff], sp
    rst $38
    ld [hl], b
    rst $38
    db $fc
    rst $38
    ld e, a
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc b
    rst $38
    reti


    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    call nc, $c0ff
    rst $38
    add h
    rst $38
    rrca
    rst $38
    adc l
    rst $38
    rst $00
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

Jump_070_41ae:
    rst $28
    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    ld b, c
    rst $38
    ld bc, $21ff
    rst $38
    jr nz, @+$01

    ld b, c
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
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
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
    and $ff
    rst $10
    rst $38
    adc a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld l, d
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    or e
    db $fc
    rst $30
    ld hl, sp-$13
    ld a, [c]
    jp c, $e2e4

    db $fc
    pop hl
    db $fc
    call $d1f8
    ld hl, sp-$36
    pop af
    and b
    di
    or $e3
    add a
    rst $28
    jp $ebff


    rst $30
    db $db
    rst $20
    cp e
    rst $00
    ld [hl], a
    adc a
    ld sp, hl
    rrca
    add sp, $1f
    add hl, de
    rst $38
    ld a, e
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [hl], a
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
    ld sp, hl
    rst $38
    ei
    rst $38
    scf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    pop af
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    rst $30
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    or b
    rst $38
    add b
    rst $38
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, Jump_000_23ff

    rst $38
    ld h, $ff
    cp h
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    adc b
    rst $38
    rst $38
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
    and c
    rst $38
    ldh a, [rIE]
    cp $ff
    cp $ff
    adc $ff
    add hl, hl
    cp $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f8fd]
    rst $38
    dec b
    ld hl, sp+$01
    ld hl, sp-$0e
    db $fd
    ld sp, hl
    rst $38
    ei
    db $fd
    pop af
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    jp Jump_070_43ff


    rst $38
    and b
    rst $18
    cp h
    jp $c33c


    db $fc
    add e
    ld a, h
    add e
    sbc c
    rlca
    cp h
    inc bc
    ld h, e
    inc e
    ret nz

    ccf
    ld [hl], c
    cp $f1
    cp $70
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    call nz, $c63f
    ccf
    ld b, d
    ccf
    rst $00
    ccf
    ld b, $ff
    rlca
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    ld l, e
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
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
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    db $fd
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
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc $ff
    ld c, $ff
    rra
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    ld bc, $33ff
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rst $38
    or $f9
    pop de
    rst $38
    adc a
    rst $38
    ld b, a
    cp a
    ld h, a
    sbc a
    inc bc
    rst $18
    di
    rrca
    db $d3
    cpl
    ld b, a
    cp a
    nop
    rst $38
    ld c, b
    or a
    ret z

    scf
    ld bc, $09fe
    cp $e0
    rra
    add e
    ccf
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc h
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ld c, e
    or a
    db $e3
    ld e, $07
    db $fc
    pop bc
    cp $d7
    ld hl, sp-$45

Jump_070_43ff:
    db $f4
    add b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    add d
    dec a
    and d
    dec e
    rst $18
    ccf
    reti


    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    or b
    rst $38
    ldh a, [rIE]
    ld e, b
    rst $38
    jr @+$01

    ld a, b
    rst $18
    ld [$28ff], sp
    rst $30
    jr nc, @+$01

    ld b, b
    rst $38
    and $f9
    ldh [rIE], a
    add b
    rst $38
    add e
    db $fc
    add c
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38

jr_070_4435:
    rst $38
    rst $38

jr_070_4437:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    ei
    jp nc, Jump_070_78e9

    rst $38
    inc h
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld [hl], b
    rst $38
    ld sp, $3bff
    rst $38
    dec a
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
    rst $30
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    and b
    rst $18
    jr nc, jr_070_4435

    jr nc, jr_070_4437

    db $10
    rst $28
    ld [de], a
    rst $28
    inc b
    rst $38
    ld [hl], h
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld a, [$f0ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    di
    rst $38
    dec sp
    rst $38
    ld a, [c]
    rst $38
    ld h, c
    rst $38
    pop bc
    rst $38
    jp $feff


    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, $ff
    add hl, bc
    cp $07
    ld hl, sp-$0e
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
    db $fc
    rst $38
    cp h
    ret z

    ldh a, [$8c]
    cp d
    call nz, $e499
    xor l
    ret nz

    or c
    call z, $f589
    call nz, $c9ff
    or $c9
    or $dd
    ld [c], a
    ld e, c
    and $59
    and $40
    rst $38
    ret nc

    rst $28
    pop bc
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    ld l, a
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    inc hl
    rst $38
    xor c
    ld [hl], a
    ld hl, $12ff
    rst $28
    add [hl]
    ld a, a
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld c, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    push bc
    ei
    db $fd
    ei
    ld hl, sp-$01
    ld [hl], a
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    ld [$00ff], sp
    rst $38
    ld [$48ff], sp
    cp a
    inc c
    rst $38
    xor h
    ld e, a
    dec e
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    or $ff
    sbc [hl]
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    inc hl
    rst $38
    rst $28
    rst $38
    inc de

jr_070_4551:
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ld [$35ff], sp
    rst $38
    ld sp, $37ff
    rst $38
    ld b, $ff
    rrca
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, jr_070_4551

    nop
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld de, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    cp $ff
    ld h, b
    rst $38
    db $e3
    db $fc
    ld h, b
    rst $38
    jr z, @-$07

    ld sp, $7fff
    rst $38
    ei
    rst $38
    ld a, [$fcff]
    rst $38
    ei
    rst $38
    cp $ff
    ld [c], a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nc, @-$0f

    ld [hl], b
    rst $28
    ldh [rIE], a
    ldh [rIE], a
    add $f9
    ld h, b
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld c, $ff
    ld [$00ff], sp
    rst $38
    ld [hl+], a
    db $dd
    jr nz, @-$1f

    ld bc, $03ff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    or b
    rst $38
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    and e
    rst $38
    rlca
    rst $38
    ld h, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
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
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    pop hl
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add e
    db $fc
    rst $00
    ld hl, sp+$05
    ei
    rst $00
    ld hl, sp-$39
    ld hl, sp+$4f
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    sub l
    ei
    or c
    rst $38
    add c
    rst $38
    and c
    rst $38
    add b
    rst $38
    sub e
    db $fc
    rst $18
    db $fc
    rra
    db $fc
    cp h
    rst $38
    ld a, [de]
    rst $38
    ld bc, $03fe
    db $fc
    db $eb
    db $fc
    db $fd
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp $3b
    cp $39
    cp $bf
    ld a, [hl]
    dec sp
    cp $3f
    cp $bc
    ld a, [hl]
    ccf
    cp $7e
    cp $fe
    cp $06
    db $fc
    add c
    ld a, [hl]
    nop
    rst $38
    daa
    call c, $fc07
    rst $38
    db $fc
    db $fc
    rst $38
    ld b, h
    rst $38
    cp h
    ld b, a
    ld a, h
    add a
    call c, Call_000_1027
    rst $28
    inc bc
    db $fc
    inc bc
    db $fc
    ld a, $f1
    ld [hl], l
    ld a, [$ff70]
    ld [hl], c
    cp $79
    cp $05
    cp $16
    rst $38
    ld a, [$fefe]
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    ldh [rIE], a
    rst $20
    rst $38
    db $e3
    db $fc
    ldh [rIE], a
    ld h, l
    ld a, d
    ld bc, $351e
    ld a, [hl-]
    ld sp, $f93e
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld e, [hl]
    ld e, a
    ld e, $1f
    dec a
    ccf
    ccf
    ccf
    ccf

Call_070_46ff:
    ccf
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca

jr_070_4709:
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
    rst $28
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    and $e7
    call nz, $c7c7
    rst $00
    pop bc
    pop bc
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    inc hl
    db $fc
    rst $00
    ld hl, sp+$4f
    ldh a, [$39]
    rst $38
    inc a
    rst $38
    cp b
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    dec c
    rst $38
    add h
    ld a, e
    ld [hl], d
    inc a
    rlca
    jr c, @-$6f

    ld [hl], b
    add e
    ld a, h
    ld [hl], d
    adc h
    inc bc
    add b
    ld h, c
    add b
    db $dd
    and b
    ld e, $e1
    adc b
    ld h, c
    push de
    jr nz, jr_070_4709

    ld h, e
    ld c, $ff
    adc a
    ld a, a
    cp a
    ld a, a
    cpl
    ld a, a
    or l
    ld a, a
    and a
    ld a, a
    ld b, a
    rst $38
    inc bc
    db $fc
    add sp, $40
    and e
    ld b, b
    sub c
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ld a, e
    nop
    ld bc, $fe03
    ld bc, $00e0
    or [hl]
    nop
    ld e, e
    inc b
    dec d
    ld [$3dc2], sp
    scf
    rst $08
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    inc bc
    db $fc
    ld bc, $93fe
    ld l, a
    and $1f
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    adc e
    rra
    add h
    dec de
    add c
    ld e, $9d
    jr @-$1a

    dec de
    cp a
    rra
    inc hl
    call c, Call_070_7000
    ldh [rP1], a
    ld hl, sp+$00
    or h
    nop
    add e
    nop
    rst $38
    ret nz

    nop
    rst $38
    rst $18
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
    ret nz

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
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $00
    ld hl, sp-$71
    ldh a, [rTIMA]

jr_070_4801:
    ld a, [$fe81]
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]

jr_070_4810:
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
    rst $08
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $38

jr_070_482d:
    rst $38
    rst $18
    rst $18
    inc bc
    rst $38
    ld bc, $b7ff
    rst $38
    add b
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    ld bc, $31fe
    cp $93
    ld a, a
    db $10
    rst $38
    ret nz

    ccf
    inc hl

jr_070_4847:
    rst $38
    ld h, b
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    add e
    db $fc
    db $fc

jr_070_4853:
    ld hl, sp+$00
    db $fc
    db $e3
    inc e
    and e
    inc e
    xor d
    ld de, $00b8
    call c, $fc00
    nop
    di
    inc c
    dec bc
    ldh a, [rNR42]
    ldh a, [$c8]
    jr nc, @-$2b

    jr z, jr_070_4853

    nop
    ld a, [hl]
    add c
    ret nc

    rst $38
    call nz, $c6f8
    ld hl, sp-$36
    db $f4
    call nz, $94f8
    add sp, $24
    ld d, b
    ld [hl], b
    jr jr_070_4801

    jr c, jr_070_48c6

    jr c, jr_070_4810

    jr nc, jr_070_482d

    nop
    add h
    nop
    nop
    add b
    ld h, b
    add b
    ld b, b
    and b
    db $ec
    nop
    adc a
    ld [hl], b
    ret nz

    rst $38
    push af
    jp $c0b1


    ld a, b
    add b
    ld a, c
    add [hl]
    ld e, b
    add a
    ldh a, [rIF]
    pop bc
    ld a, $01
    cp $0d
    ld a, [c]
    rra
    ldh [$0e], a
    pop af
    inc c
    di
    add hl, bc
    rst $30
    ld h, b
    ldh [rIF], a
    ld h, b
    and a
    nop
    ld a, [c]
    ld bc, $e015
    call nz, $e7c0
    nop
    inc c
    jr jr_070_4847

    nop
    sub d
    nop
    ret nz

    nop

jr_070_48c6:
    sub b
    nop
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_070_48f1:
    rst $38
    add b
    rst $38
    jr nz, @+$01

    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_070_48ff:
    rst $38
    nop
    rst $38
    add b
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
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    or h
    or h
    ld a, d
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld c, a
    rst $30
    sub e
    ld l, a
    ld h, a
    cp $35
    cp $01
    cp $c5
    cp $7d
    cp $80
    ld a, a
    pop bc
    ld a, $50
    adc a
    ret nz

    rst $38
    cp b
    rlca
    inc e
    inc bc
    db $ed
    inc de
    db $e3
    rlca
    sub $03
    add [hl]
    inc bc
    sbc l
    inc bc
    or c
    ld b, $de
    jr nz, jr_070_48f1

    ld h, d
    inc c
    ld [c], a
    ld b, h
    ld [hl+], a
    ld h, c
    ld [bc], a
    ld d, e
    nop
    inc de
    add c
    ld [c], a
    rst $38
    ld a, [hl]
    rst $38
    ccf
    ld a, a
    rrca
    ccf
    ld d, a
    rrca
    add e
    rlca
    dec d
    inc bc
    dec b
    ld [bc], a
    jr c, jr_070_4972

jr_070_4972:
    or b
    nop
    stop
    jr nz, jr_070_4978

jr_070_4978:
    ld b, b
    jr nz, @+$62

    nop
    ld h, b
    nop
    ld d, b
    nop
    add b
    ld b, b
    inc sp
    call z, $ff0e
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, h
    cp a
    rst $38
    ccf
    rst $38
    ccf
    cp h
    ld a, a
    dec e
    cp $9b
    db $fc
    sbc e
    db $fc
    dec bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    jp nz, $f0ff

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld bc, $07ff
    rst $38
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    rla
    db $ec
    sbc $25
    sub $2d
    sub $2d
    sub $2d
    push de
    ld l, $c5
    ld a, $c4
    ld a, $84
    ld a, [hl]
    inc b
    cp $0c
    cp $0d
    rst $38
    rrca
    rst $38
    add hl, bc
    rst $38
    inc c
    cp $0c
    cp $9c
    cp $dc
    cp $fc
    cp $fe
    cp $ff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    and c
    rst $38
    cp $fe
    ret nz

    ret nz

    ld bc, $09ff
    rst $38
    sub [hl]
    rst $28
    ld h, $df
    nop
    rst $38
    rst $38
    nop
    cp $01
    cp b
    rst $00
    ldh [$1f], a
    add hl, sp

jr_070_4a33:
    cp $dc
    rst $38
    ld a, h
    rst $38
    ld b, d
    db $fc
    inc c
    ldh a, [$c2]
    ld a, l
    adc h
    ld a, a
    or b
    ld a, a
    rst $00
    jr c, @+$12

    rst $28
    add e
    db $fc
    jp Jump_070_63fc


    sbc h
    ld h, e
    add h
    dec [hl]
    jp Jump_070_41ae


    ld h, c
    nop
    jr nc, jr_070_4a56

jr_070_4a56:
    ld hl, $6a00
    db $10
    ld [hl], a
    add b
    ld bc, $8000
    ld bc, $c027
    ld l, h
    nop
    add b
    nop
    adc b
    nop
    ld b, h
    add b
    ret


    add b
    ld b, [hl]
    add b
    ld d, l
    nop
    ld a, [bc]
    db $10
    dec de
    nop
    ld l, a
    nop
    rst $20
    nop
    sbc e
    nop
    dec [hl]
    ld [$18c5], sp
    ld sp, $f40c
    rrca
    ld l, a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    ld a, b
    rst $38
    inc hl
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ccf
    nop
    ccf
    nop
    ccf
    inc bc
    inc a
    ld b, [hl]
    jr c, jr_070_4a33

    ld [hl], b
    sub b
    ld h, b
    nop
    ld h, b
    ld h, b
    nop
    jr nc, jr_070_4ab4

jr_070_4ab4:
    jr nc, jr_070_4ab6

jr_070_4ab6:
    ld a, [hl]
    nop
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
    ld a, h
    add b
    ld a, a
    add b
    nop
    add b
    nop
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld d, e
    add b
    ld [hl-], a
    add b
    ld h, d
    add b
    add $80
    pop af
    add b
    ld b, e
    add b
    ld e, e
    add b
    ld de, $0100
    ld a, c
    ld bc, $01e1
    db $e3
    ld bc, $0003
    add e
    nop
    jp $c700


    nop
    add h
    nop
    nop
    nop
    inc b
    nop
    ld e, $10
    ld a, a
    inc a
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    ld [c], a
    db $fd
    ld a, [c]
    db $fd
    ld a, [$f2fd]
    db $fd
    ld a, h
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    add h
    rst $38
    adc [hl]
    rst $38
    xor h
    rst $38
    add b
    rst $38
    pop hl
    cp $f0
    rst $38
    rla
    ld hl, sp+$3c
    rst $38
    db $dd
    rst $38
    pop hl
    cp $f1
    ld c, $e1
    rra
    cp c
    ld b, $70
    adc a
    rlca
    ld hl, sp-$3e
    add c
    xor a
    ret nz

    ld [hl], h
    ret nz

    add hl, sp
    ret nz

    ldh [$1f], a
    db $e3
    rra
    add a
    ld l, a
    ld b, h
    rst $20
    dec hl
    add $78
    add a
    cp c
    ld a, [hl]
    nop
    cp $9a
    ld h, l
    ld a, l
    inc bc
    ld sp, hl
    rlca
    or a
    ld a, a
    adc c
    or $00
    db $fc
    and a
    jr @+$03

    ld [$00c0], sp
    ld [hl], b
    nop
    pop af
    nop
    and h
    nop
    ld bc, $2a80
    rst $00
    ld [hl], l
    ld a, [bc]
    ld bc, $0200
    nop
    inc h
    nop
    ld b, e
    nop
    ld [bc], a
    rrca
    ld h, $19
    cp [hl]
    ld bc, $00df
    ei
    nop
    db $e3
    nop
    rst $08
    nop
    sbc c
    nop
    adc l
    ld [hl], d
    ld h, h
    sbc e
    ld e, b
    rst $38
    sbc $ff
    and b
    rst $38
    ld c, a
    ldh a, [rDMA]

jr_070_4b89:
    ld hl, sp+$0f

jr_070_4b8b:
    ldh a, [$0a]
    db $f4
    ld a, [bc]
    db $f4
    ld [hl], $c8
    ld [hl], b
    adc b
    db $fc
    nop
    rst $38
    nop
    call $8700
    nop
    dec c
    ld [bc], a
    rlca
    nop
    nop
    db $fd
    db $10
    xor $b0
    ld b, c
    add b
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0401], sp
    ld bc, $0100
    ld [hl], b
    dec bc
    ld hl, sp+$07
    nop
    pop hl
    nop
    pop hl
    ld [hl+], a

jr_070_4bbf:
    pop bc
    nop
    ld b, b
    ld [bc], a
    ld b, c
    jr nz, jr_070_4b89

    ld d, b
    and e
    jr c, jr_070_4b8b

    nop
    add c
    nop
    ld bc, $4102
    inc b
    ld bc, $010c
    db $10
    ld bc, $0300
    nop
    rst $38
    nop
    add e
    nop
    add e
    nop
    sbc h
    nop
    cp $00
    rst $38
    db $10
    rst $38
    nop
    ld [hl], a
    nop
    ld a, l
    nop
    rst $38
    nop
    add a
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    rra
    ld [$80ff], sp
    rst $38
    inc hl
    rst $18
    ld b, e
    cp a
    ld bc, $15ff
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    adc b
    rst $38
    and e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$02ff], sp
    rst $38
    ld [bc], a
    rst $38
    jp nc, $382f

    rst $00
    db $fc
    inc bc
    call nz, $bf3f
    ld b, a
    ei
    rlca
    db $fc
    inc bc
    ld [bc], a
    add c
    rst $20
    nop
    ld e, $e1
    db $dd
    ld [hl+], a
    ld h, h
    ret nz

    ld d, b
    jr nz, jr_070_4bbf

    inc bc
    db $eb
    inc b
    db $e4
    jr jr_070_4c3d

    ld hl, sp-$1c
    ld hl, sp-$1c

jr_070_4c3d:
    ld hl, sp+$7e
    ldh a, [rOBP0]
    add [hl]
    dec c
    ld b, $e1
    ld b, $22
    add b
    ld d, $c0
    add hl, bc
    add h
    add b
    ld [$0912], sp
    rst $08
    ccf
    rrca
    rlca
    ld [bc], a
    rlca
    ld e, $03
    add hl, de
    inc bc
    jr nc, jr_070_4c5d

    ld [hl], c

jr_070_4c5d:
    nop
    inc bc
    ret nz

    ld a, [$0401]
    inc bc
    nop
    inc bc
    db $e3
    nop
    jr nc, jr_070_4caa

    ld b, d
    add b
    adc e
    nop
    adc $00
    ld b, b
    inc b
    ret


    inc b
    xor $00
    rst $20
    nop
    ld sp, hl
    ld b, $d9
    ld h, $d3
    inc h
    add hl, de
    ldh [$8d], a
    ldh a, [$dc]
    ldh [rBGP], a
    ldh [rSTAT], a
    nop
    ld bc, $0100
    nop
    ld [$1000], sp
    nop
    ld b, b
    nop
    ld [$1a00], sp
    inc b
    pop af
    ld c, $68
    sub [hl]
    db $fd
    ld [bc], a
    rlc b
    adc a
    nop
    nop
    jr nz, jr_070_4ca3

jr_070_4ca3:
    jr nz, jr_070_4ca5

jr_070_4ca5:
    nop
    nop
    ld [$0000], sp

jr_070_4caa:
    nop
    jr nz, jr_070_4cad

jr_070_4cad:
    ld h, b
    nop
    ld h, h
    nop
    db $f4
    nop
    db $ec
    nop
    jp hl


    nop
    pop hl
    nop
    ld [c], a
    nop
    ld h, c
    nop
    ld h, b
    ld [$0460], sp
    ld h, b
    nop
    ld h, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld b, b
    ld [bc], a
    adc b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rSC]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    cp $00
    xor $00
    rst $18
    nop
    and [hl]
    nop
    add h
    nop
    nop
    nop
    or h
    nop
    ld hl, sp+$00
    db $ec
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ret nc

    nop
    ld a, [hl]
    nop
    ld l, h
    nop
    jp hl


    nop
    add sp, $00
    db $f4
    add b
    ld sp, hl
    nop
    or b
    add b
    ldh a, [$84]
    pop af
    nop
    rst $30
    ld bc, $018f
    rlc c
    db $eb
    nop
    db $e3
    ld b, d
    di
    jr nz, @-$08

    db $10
    cp $54
    cp $64
    cp $e4
    db $ec
    ret nz

    db $ec
    ret nz

    db $ec
    ld [$10fc], sp
    ld a, [$d710]
    sub b
    ld a, c
    add b
    ld d, l
    add b
    inc a
    add b
    jr z, jr_070_4d2d

jr_070_4d2d:
    ld de, $1800

jr_070_4d30:
    jr @+$3a

    jr c, jr_070_4d30

    inc a
    db $fc
    ld b, $1f
    rlca
    rrca
    ld h, b
    rlca
    inc d
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    db $10
    cp h
    nop
    inc hl
    nop
    ld c, $03
    inc [hl]
    ld c, $70
    ld hl, sp-$70
    ldh [$b1], a
    ret nz

    inc bc
    add b
    ld l, b
    rlca
    daa
    rst $18
    inc l
    rst $38
    ld a, [hl-]
    db $fd
    db $eb
    db $fd
    ld l, b
    rst $38
    ld hl, $e8f8
    nop
    add hl, sp
    add b
    sbc h
    jr nz, jr_070_4d6b

jr_070_4d6b:
    nop
    ld [$0400], sp
    nop
    inc b
    rst $38
    ld bc, $40ff
    rst $38
    ld d, b
    rst $38
    add hl, de
    rst $38
    jr @+$01

    add hl, de
    rst $38
    db $10
    rst $38
    ld [$ecff], sp
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    halt
    adc c
    db $10
    rlca
    jr jr_070_4dd7

    rra
    rlca
    rra
    ld bc, $0d1f
    inc sp
    add l
    ld a, e
    rst $38
    ld h, e
    rst $38
    cp a
    rst $38
    cp a
    di
    pop af
    di
    push hl
    pop af
    push hl
    ldh a, [$e7]
    ldh a, [$cf]
    ld hl, sp-$19
    ldh a, [$e0]
    jp z, $f888

    ldh [rIE], a
    ld hl, sp-$01
    ldh [rIE], a
    rst $08
    rst $18
    adc a
    rst $08
    adc $ef
    adc a
    rst $38
    add [hl]
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop

jr_070_4dd7:
    nop
    nop
    ld h, b
    nop
    jr nz, jr_070_4ddd

jr_070_4ddd:
    jr nz, jr_070_4ddf

jr_070_4ddf:
    ld h, b
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
    ret nz

    nop
    ld b, b
    inc b
    ld h, b
    rlca
    ldh a, [rTAC]
    ldh a, [rTAC]

jr_070_4df4:
    and b
    rrca
    ret nz

    rrca
    ret nz

    rrca
    and b
    rrca
    ldh [rIF], a
    sub b
    rrca
    nop
    rrca
    ld [$0e0f], sp
    rrca
    rst $08
    rrca
    rst $18
    rlca
    ld sp, hl
    ld bc, $003a
    inc a
    nop
    jr nc, jr_070_4e4d

    jr nc, jr_070_4e8f

    jr nz, jr_070_4e91

    ld [hl], b

jr_070_4e17:
    ldh a, [rSVBK]
    ldh a, [rLCDC]
    pop af
    ld h, b
    ldh a, [rLCDC]
    ldh a, [rNR42]
    ld hl, sp+$0c
    cp h
    add b
    cp [hl]
    add b
    cp b
    nop

jr_070_4e29:
    and c
    inc b
    and c
    inc b
    pop bc
    inc d
    jp Jump_070_4108


    jr jr_070_4df4

    ld e, b
    pop hl
    ld h, c
    ld [hl], c
    dec sp

jr_070_4e39:
    ei
    adc a
    cp a
    pop bc
    bit 4, b
    pop bc
    ld bc, $a100
    nop
    rlca
    nop
    ld l, a
    nop
    add h
    ld a, b
    ld a, h
    add b
    ld [hl+], a

jr_070_4e4d:
    nop
    jr nc, jr_070_4e50

jr_070_4e50:
    nop
    nop
    nop
    nop
    inc a
    nop
    db $e4
    jr jr_070_4e39

    ld hl, sp-$30
    db $ec
    ld c, d
    and h
    ld [hl+], a
    db $fd
    ld hl, $09c6
    ld b, $07
    nop
    ld bc, $0000
    nop
    ld [$0000], sp
    nop
    stop
    ld [$8c00], sp
    nop

jr_070_4e74:
    ret nz

    nop
    db $10
    jr nz, jr_070_4e29

    nop
    jp nz, Jump_000_0910

    db $10
    rlca
    jr jr_070_4e17

    ld [$001b], sp
    rlca
    ld [$0a05], sp
    inc de
    inc c
    dec b
    ld a, [de]
    daa
    jr @+$69

jr_070_4e8f:
    jr jr_070_4e74

jr_070_4e91:
    inc e
    push hl
    ld a, [de]
    pop hl
    ld e, $de
    ccf
    db $fd
    rst $38
    ld hl, sp-$01
    db $fd
    cp $ba
    db $fc
    sub c
    adc c
    sub d
    sub d
    sbc [hl]
    and l
    adc d
    and c
    ret nz

    or c
    ret nz

    db $db
    ret nz

    sbc l
    ld b, b
    ld c, a
    rst $08
    ld [hl], b
    ld c, a
    ldh a, [$dd]
    ldh [$a4], a
    ret c

    cp h
    ret nz

    cp h
    ret nz

    sbc h
    ret nz

    cp h
    ret nz

    cp h
    ret nz

    sbc [hl]
    ldh [$de], a
    ldh [$cf], a
    ldh a, [$eb]
    db $f4
    rst $20
    ld hl, sp-$17
    cp $fb
    db $fc
    db $e4
    ldh [$c7], a
    call nc, $81c7
    call nz, $c484
    nop
    rst $00
    ld h, h
    rst $08
    ld b, [hl]
    rst $38
    rst $10
    ld b, b
    nop
    ld b, b
    nop
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld d, $80
    inc b
    ldh [rP1], a
    ld hl, sp+$00
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
    ld bc, $01ff
    rst $38
    ld bc, $c1ff
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, a
    ld a, a
    sbc a
    rra
    rst $28
    rrca
    db $e3
    inc bc
    jp $ac01


    nop
    adc a
    nop
    xor a
    nop
    rst $38
    nop
    add b
    rrca
    nop
    inc c
    nop
    inc c
    nop
    rrca
    nop
    dec bc
    nop
    cp e
    pop bc
    rst $38
    di
    rst $38
    daa
    cp a
    inc hl
    rst $38
    and e
    rst $38
    ldh [rIE], a
    ldh [$fe], a
    ld [c], a
    di
    jp nz, $82e3

    rst $00
    add b
    rst $00
    add b
    db $fc
    ld b, b
    inc l
    adc b
    cpl
    nop
    ld e, $0d
    inc e
    add h
    inc c
    nop
    inc bc
    or b
    ld bc, $0400
    nop
    ld [bc], a
    ld [$0000], sp
    ld bc, $0010
    inc l
    nop
    ret nc

    nop
    ld [hl], b
    nop
    sub b
    nop
    inc e
    jp $cf58


    db $e4
    ld c, a
    adc [hl]
    ld b, a
    ld b, a
    ld h, e
    ld a, [bc]
    ld h, e
    ld d, $63
    ld sp, $6027
    rla
    ld b, $11
    dec a
    inc bc
    ld b, e
    rra
    and $1f
    ld [hl], c
    ld c, $f7
    ld [$0cf3], sp
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $7a
    inc b
    call z, $c033
    ccf
    ld a, [c]
    rrca
    db $fc
    rrca
    db $e4
    rra
    ld h, a
    rra

jr_070_4f96:
    adc h
    ld a, a
    ld e, a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    xor a
    ld a, a
    sbc $e0
    xor l
    ld a, [hl]
    db $db
    inc a
    ld sp, hl
    inc h
    ld a, l
    jr c, jr_070_4f96

    jr c, jr_070_4fb1

    ei
    rst $10
    nop
    add e

jr_070_4fb1:
    nop
    add c
    nop
    inc bc
    nop
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
    nop
    rlca
    nop
    rrca
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    cp a
    nop
    ld [$08e7], sp
    daa
    cp b
    inc d
    cp b
    dec e

jr_070_4fd8:
    jr jr_070_5052

    dec de
    ld a, b
    sbc a
    cp b
    sbc a
    sbc b
    sbc a
    cp b
    sbc a
    cp $bf
    rst $18
    cp a
    rst $18
    cp a
    db $dd
    cp a
    rst $08
    rst $38
    or a
    rst $38
    rst $30
    jr jr_070_4ff2

jr_070_4ff2:
    inc d
    nop
    ld [bc], a
    nop
    inc de
    nop
    inc de
    nop
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fc
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]

jr_070_5017:
    ldh [rIE], a
    ldh [rIE], a

jr_070_501b:
    jr nz, jr_070_501b

    jr nz, jr_070_5017

    nop

jr_070_5020:
    ld [$1270], sp
    ld [hl], b
    db $10
    ld a, b
    jr nz, jr_070_5020

jr_070_5028:
    jr nz, jr_070_5028

    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$01
    sbc $fe
    inc a
    cp $cc
    cp $44
    db $fc
    jr nz, jr_070_5078

    add hl, de
    cp h
    jr jr_070_4fd8

    db $10
    inc a
    inc d
    cp [hl]
    jr nc, jr_070_5081

    jr nz, jr_070_50b9

    ld bc, $0079
    ld e, e
    nop
    inc de
    nop
    add e
    db $10
    add e

jr_070_5052:
    dec bc
    add e
    dec de
    jp $e70b


    dec bc
    di
    inc bc

jr_070_505b:
    rst $08
    rlca
    rrca
    daa
    rlca
    rra
    rlca
    ld b, a
    rlca
    rla
    rst $00
    ld b, a
    rst $08
    ld h, a
    rst $08
    jr nc, jr_070_505b

jr_070_506c:
    jr nz, jr_070_506c

    ld [hl], c
    cp e
    ld a, b
    ld sp, hl
    ret c

    ld sp, hl
    db $fc
    db $fc
    db $fc
    rst $38

jr_070_5078:
    or b
    rst $08
    ld h, b
    add c
    add h
    ld bc, HeaderROMSize
    ret nc

jr_070_5081:
    ld bc, $0084
    jp nz, $e000

    nop
    adc l
    nop
    ld b, b
    nop
    ld c, b
    add b
    dec b
    ldh [rIF], a
    or b
    ld h, b
    sbc a
    ld [$c0c7], sp
    rst $20
    ld l, b
    rst $30
    ld a, d
    pop af
    ld hl, $f2f8
    db $ec
    dec sp
    jr nc, jr_070_5114

    jr nz, jr_070_50d0

    ld [hl], b
    xor b
    ld [hl], b
    ret c

    ld h, b
    add c
    ld h, b
    and e
    ld b, b
    ld h, a
    add b
    ld bc, $03fe
    db $fd
    inc bc
    ei
    rlca
    ei
    inc bc

jr_070_50b9:
    ei
    rlca
    pop hl
    rrca
    rst $00
    rrca
    jp $831f


    rra

Call_070_50c3:
    adc a
    rra
    add a
    rra
    add a
    rra
    or a
    rra
    add a
    rra
    rst $08
    rra
    rst $08

jr_070_50d0:
    rra
    cpl
    rra
    ld a, a
    rrca
    rst $28
    rrca
    ld c, a
    cp a
    rst $18
    rra
    ld e, a
    rra
    rst $18
    ccf
    cp a
    or b
    ld bc, $0300
    add b
    rlca
    nop
    rrca
    ld b, b
    ccf
    nop
    rrca
    add b
    rlca
    ld b, b
    dec hl
    nop
    ccf
    nop
    ccf
    nop
    rla
    nop
    rrca
    nop
    ccf
    ld b, b
    ccf
    nop
    ccf
    add b
    rra
    ld b, b
    rlca
    db $10
    inc bc
    nop
    inc bc
    add b
    inc b
    nop
    ld b, $00
    rlca
    nop
    add a
    add b
    rst $00
    add b
    rst $38
    cp b
    rst $38

jr_070_5114:
    ld hl, sp-$01
    ld l, b
    rst $38
    jr nc, @+$01

    nop
    rra
    nop
    rrca
    add a
    rrca
    add b
    ld c, $00
    ld e, $08
    rrca
    rlca
    ccf
    inc bc
    rra
    ld bc, $1d3f
    ccf
    ld de, $031f
    rst $38
    ld l, d
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    ld a, a
    cpl
    ld a, a
    cp a
    ld a, a
    dec sp
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    call $c4ff
    rst $38
    ret nz

    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    pop af
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    rst $38
    db $fd
    rst $38
    ld hl, sp-$04
    ld h, b
    ldh a, [rP1]
    ld h, d
    nop
    call z, $f981
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    db $10
    ld [hl], c
    nop
    sbc b
    nop
    ret z

    nop
    call nz, $e200
    nop
    ld h, e
    nop
    ld d, e
    nop
    add hl, de
    ld [$0c1c], sp
    inc e
    ld e, $7e
    ld [bc], a
    ld l, a
    nop
    db $eb
    ld bc, $019b
    rlca
    ld a, [bc]
    rlca
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    add hl, bc
    add h
    ld bc, $0004
    ld a, c
    nop
    ld e, c
    nop
    ccf
    nop
    add hl, de
    nop
    rra
    nop
    rlca
    nop
    dec d
    nop
    ld bc, $0100
    nop
    rla
    nop
    rla
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
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
    ld b, e
    nop
    add c
    nop
    ld b, e
    nop
    xor e
    nop
    ccf
    nop
    rra
    nop
    cp a
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
    rst $38
    nop
    rst $20
    nop
    and a
    nop
    xor a
    db $10
    rst $00
    db $10
    jp $ee00


    nop
    cp $00
    db $fc
    nop
    db $fd
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    ld a, a
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $18
    ld [bc], a
    rrca
    nop
    rst $38
    inc b
    rst $30
    inc b
    scf
    ld b, $bf
    rlca
    rst $38
    ld a, a
    rst $38
    inc de
    rst $38
    nop
    ld a, e
    nop
    rst $30
    rlca
    rst $30
    rst $00
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    ld sp, $31ff
    rst $38
    inc bc
    rst $38
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
    rst $30
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
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
    ld sp, hl
    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$04
    ld hl, sp-$03
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    sbc c
    ld d, b
    ld b, c
    db $e3
    rst $30
    rst $18
    rst $38
    ld a, a
    rst $38
    ld b, a
    rst $38
    ld bc, $00fb
    ldh a, [rP1]
    ld [hl], b
    nop
    jr nz, jr_070_527f

jr_070_527f:
    ldh [rP1], a
    stop
    sbc b
    nop
    db $e4
    nop
    jr nc, jr_070_5289

jr_070_5289:
    cp $00
    cp $00
    ld h, d
    nop
    nop
    nop
    ld de, $9f01
    ld bc, $018f
    adc a
    nop
    ld b, a
    jr nc, jr_070_52e3

    or b
    ld b, [hl]
    sub d
    rlca
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
    jr jr_070_52d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_070_52e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_070_52f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_070_5303

    ld [hl-], a

jr_070_52d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_070_5313

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_070_52e3:
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

jr_070_52f3:
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

jr_070_5303:
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

jr_070_5313:
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
    jr jr_070_53d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_070_53e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_070_53f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_070_5403

    ld [hl-], a

jr_070_53d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_070_5413

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101

jr_070_53e3:
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701

jr_070_53f3:
    nop
    dec b
    dec b
    ld bc, $0302
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b

jr_070_5403:
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b

jr_070_5413:
    nop
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0701
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
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
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add h
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
    ld bc, $01fe
    cp $03
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
    db $fd
    rlca
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$03]
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$08
    rst $30
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    jr @+$01

    ei
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and c
    cp $43
    db $fc
    jp $80fc


    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, [$c0ff]
    rst $38
    ldh [rIE], a
    ld d, b
    rst $38
    ld b, b
    rst $38
    add $f9
    adc e
    ldh a, [$0b]
    ldh a, [rNR21]
    pop hl
    ld [de], a
    push hl
    ld sp, $02cf
    rst $18
    ld c, $ff
    jr nz, @+$01

    inc bc
    rst $38
    rrca
    rst $38
    rra
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
    db $fd
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [$fd], a
    ret nz

    rst $38
    ret nz

    ei
    ret nz

    di
    ret nz

    di
    add b
    rst $38
    ret nz

    rst $08
    add b
    rst $18
    add b
    rst $08
    add b
    rst $38
    add c
    rst $38
    add c
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
    cp a
    nop
    rst $38
    add c
    ld a, [hl]
    rrca
    ldh a, [rIE]
    nop
    dec b
    ld a, [$fd02]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$0f
    cp $07
    ei
    rrca
    rst $30
    rlca
    ei
    rrca
    rst $38
    rra
    cp $3f
    cp $ff
    rst $38
    xor $f1
    db $ed
    ldh a, [$c9]
    ldh a, [$c9]
    ldh a, [$89]
    ldh a, [$89]
    ldh a, [$9b]
    ldh [rNR30], a
    pop hl
    ld e, a

jr_070_5661:
    sbc a
    ld c, a
    adc a
    ld h, a
    add a
    inc sp
    jp $8179


    inc a
    ret nz

    inc c
    ldh [rRP], a
    sub b
    ccf
    pop de
    ld sp, $31d7
    rst $00
    ld bc, $11e6
    xor $08
    rst $20
    jr jr_070_5661

    inc c
    di
    inc d
    pop hl
    nop
    pop af
    ld [$01f1], sp
    ldh a, [$03]
    ldh a, [rNR22]
    ldh [$33], a
    ret nz

    ld c, a
    or b
    db $f4
    nop
    pop hl
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    cp a
    add b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    ld e, $f8
    ld b, [hl]
    cp b
    ld [hl], h
    adc b
    ld b, l
    sbc b
    ld a, [hl]
    add c

jr_070_56ba:
    ld e, a
    and b
    ld e, d
    add b
    ld a, a
    add b
    ld b, e
    cp h
    sbc d
    push hl
    xor h
    jp $a14e


    rst $08
    jr nz, jr_070_56ba

    nop
    cp $00
    ld a, a
    add b
    dec e
    add d
    ld a, h
    add e
    ld d, a
    rst $38
    ld [hl], c
    rst $38
    inc bc
    db $fc
    ld [hl-], a
    adc $0f
    ldh [$38], a
    ret nz

    ld h, b
    ret nz

    ld d, b
    ldh [rOCPS], a
    db $e4
    ld b, a
    ldh [$d0], a
    ldh [$e8], a
    ldh a, [$e0]
    ldh a, [$f8]
    pop af
    pop af
    ld sp, hl
    xor l
    di
    ret nz

    cp [hl]
    pop af
    sbc h
    ld a, [c]
    sbc h
    and b
    sbc $08
    cp $02

Jump_070_56ff:
    cp $47
    cp $02
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld b, $ff
    rrca
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    inc a
    rst $38
    ld a, c
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
    ld bc, $feff
    ld bc, $1ee1
    add b
    ld a, a
    and b
    ld e, a
    dec bc
    db $f4
    ld sp, $80ce
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    ld b, b
    cp a
    ld b, b
    cp a
    pop af
    ld c, $bf
    jr c, @+$01

    ld a, h
    ld a, [hl]
    cp l
    inc a
    db $dd
    xor [hl]
    ld c, [hl]
    di
    ldh [rNR13], a
    ldh [rSB], a
    ldh [rNR10], a
    ldh [$b0], a
    ld b, b
    xor h
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rlca
    nop
    ld b, $01
    cp h
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, [$0307]
    ld hl, sp+$03
    db $fc
    add a
    db $fc
    and e
    cp b
    sbc a
    sbc h
    cp a
    adc h
    sbc $9c
    rst $30
    rlca
    ld hl, sp+$01
    or b
    ld bc, $00f9
    cp b
    nop
    sbc b
    nop
    db $fc
    nop
    db $10
    db $ec
    xor c
    ld b, [hl]
    and $00
    ld l, b
    nop
    ccf
    rst $38
    ccf
    rst $38
    ccf

jr_070_5799:
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
    rst $38
    cp $ff
    cp $ff
    cp $ff
    nop
    pop af
    ld a, $c3
    inc a
    rst $20
    jr jr_070_5799

    dec e
    sub $09
    jp c, $d005

    rrca
    db $e4
    rra
    ret z

    ccf
    ld sp, hl
    cp $09
    cp $0a
    db $fd
    sbc [hl]
    ld a, l
    inc a
    ld a, a
    dec a
    ld a, [hl]
    db $fd
    ld a, [hl]
    ld a, [hl]
    db $fd
    dec b
    cp $e8
    inc b
    ld c, e
    inc b
    adc b
    inc b
    ld [$b204], sp
    inc c
    nop
    jr jr_070_5802

    db $10
    ld h, c
    jr nc, jr_070_5845

    jr nc, jr_070_5817

    ld h, b
    ld e, d
    ld h, b
    pop de
    ld h, b
    jp $d6e0


    pop hl
    db $f4
    db $e3
    ldh [rIE], a
    ld a, [hl-]
    ld bc, $0023
    jr jr_070_581a

    ld a, [hl+]
    nop
    inc b
    nop
    jr c, jr_070_5800

jr_070_5800:
    ld d, $20

jr_070_5802:
    adc c
    jr nc, jr_070_5856

    jr nz, jr_070_5830

    ld b, b
    ld c, e
    add b
    nop
    add b
    db $10
    add b
    nop
    add b
    ld d, l
    add b
    dec hl
    ret nz

    add e
    ret z

    ld a, h

jr_070_5817:
    ret nz

    ld h, e
    ret nc

jr_070_581a:
    ld b, a
    db $fc
    ld b, h
    cp $03
    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    inc c
    rst $38

jr_070_5830:
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    ld c, $f1
    ld a, l

jr_070_5845:
    ld [bc], a
    ld a, [$f408]
    rlca
    adc $2d
    adc [hl]
    dec c
    db $fc
    rra
    sbc c
    ld h, e
    dec c
    inc bc
    dec e
    inc bc

jr_070_5856:
    dec e
    inc bc
    add hl, de
    rlca
    sbc c
    rlca
    pop af
    rrca
    db $e3
    rra
    call nz, Call_070_50c3
    ld c, a
    ld h, b
    ld a, a
    db $10
    rrca
    jr @+$09

    ldh [$af], a
    ld h, b
    daa
    ld d, b
    rrca
    ld hl, sp-$09
    ld hl, sp+$7f
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$37
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    cp b
    rlca
    sbc b
    rlca
    ldh [rIF], a
    ldh a, [rIF]
    jr nz, jr_070_5899

    jr nc, @+$11

    ld d, b
    rrca
    db $10
    rrca
    inc a
    inc bc
    xor a
    nop
    push bc

jr_070_5895:
    ld [bc], a
    rlca
    nop

jr_070_5898:
    inc bc

jr_070_5899:
    nop
    ld b, $01
    inc de
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    ld h, c
    cp $40
    ld hl, sp+$58
    ldh [$62], a
    ret nz

    ld [$6dc0], sp
    ret nz

    adc [hl]
    ld [hl], b
    and e
    ld a, h
    and c
    ld a, [hl]
    ccf
    rst $38
    ccf
    rst $38
    ei
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    rst $30
    rst $38
    ld a, $c1
    rlca
    ld hl, sp+$66
    cp c
    rst $00
    jr c, jr_070_5898

    jr nc, jr_070_5895

    inc [hl]
    db $eb
    inc [hl]
    add a
    ld a, b
    ld c, b
    cp a
    inc sp
    db $fc
    rst $28
    nop
    jr z, jr_070_58d8

jr_070_58d8:
    nop
    nop
    nop
    db $10
    stop
    ld b, c
    nop
    ld sp, $3400
    dec de
    sub c
    ld a, [hl-]
    or d
    ld a, h
    ld b, d
    db $fc
    inc d
    add sp, $50
    ld hl, sp-$7f
    ld hl, sp-$40
    di
    sub b
    and $3e
    ret nz

    db $10
    ldh [$f2], a
    nop
    stop
    ld [de], a
    nop
    ret


    ld b, $f3
    inc c
    rla
    ld a, b
    sub a
    ld b, b
    rla
    ret nz

    ld d, e
    add b
    ld sp, hl
    add b
    ret nz

    nop
    inc b
    nop
    push de
    nop
    db $e4
    nop
    jp nc, Jump_000_3800

    nop
    nop
    nop
    and d
    db $10
    ld a, $00
    inc b
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $10
    rst $38

jr_070_5945:
    ld bc, $c9ff
    pop af
    ld c, $c0
    ccf
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, [hl]
    add [hl]
    ld a, c
    ret nz

    ccf
    ret nz

    ccf
    adc b
    ld [hl], a
    add b
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    pop hl
    ld e, $fe
    ld bc, $13ec
    add b

jr_070_596b:
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    inc e
    db $e3
    inc e
    rst $20
    ld l, h
    sub a
    jr c, jr_070_5945

    db $fc
    inc bc
    ld a, h
    add e
    ld [hl], h
    adc e
    inc b
    ei
    rla
    ld sp, hl
    ld [$40ff], sp
    cp a
    ld b, c
    add [hl]
    ret nc

    rlca
    ldh [$03], a
    nop
    inc bc
    ld c, h
    inc bc
    ld e, h
    inc bc
    add b
    rst $38
    jr nc, @+$01

    ld [bc], a
    pop hl
    or b
    ld b, e
    jp nz, $e701

    nop
    ld h, e
    nop
    ld a, [hl]
    ld bc, $3142
    ld a, e
    nop
    rst $00
    jr c, jr_070_59c3

    rst $38
    ld [c], a
    sbc l
    sbc e
    add h
    pop de
    adc [hl]
    ld l, c
    add [hl]
    ld e, b
    add a
    db $10
    rst $28
    sbc e
    rst $20
    cp l

jr_070_59c3:
    jp $c339


    dec de
    pop hl
    rst $38
    add c
    ld c, e
    add c
    rst $08
    ld bc, $815f
    dec h
    ei
    rst $18
    jr nz, jr_070_596b

    ld h, b
    ld d, c
    nop
    jr nz, jr_070_59db

    ld b, d

jr_070_59db:
    ld bc, $0020
    ld [hl+], a
    nop
    pop bc
    nop
    ret nz

    add b
    ld d, b
    nop
    add hl, bc
    nop
    nop
    nop
    ld bc, $0c00
    nop
    nop
    nop
    add b
    ld bc, $00c3
    sbc b
    nop
    ld l, a
    nop
    ld h, e
    nop
    sbc a
    nop
    cp $01
    ld a, l
    inc bc
    sbc c
    rlca
    cp c
    rlca
    db $e3
    rrca
    ld a, [c]
    rrca
    sub $0f
    sub [hl]
    rrca
    add sp, $1f
    adc a
    ld a, a
    xor $1f
    ld l, a
    rra
    ld l, a
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    or e
    rst $38
    add a
    rst $38
    ld b, $ff
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
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ret nz

    ccf
    and c
    ld e, $ed
    ld [bc], a
    ld de, $310f
    rrca
    ret nz

    ccf
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
    inc b
    rst $38
    dec b
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
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [hl], h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld hl, $64ff
    rst $38
    call nz, Call_070_48ff
    rst $38
    ld [hl], b
    rst $38
    ld h, e
    rst $38
    dec hl
    rst $38
    inc bc
    rst $38
    add hl, hl
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, $ff
    inc l
    rst $38
    jr @+$01

    ld a, b
    rst $38
    ld [hl], c
    rst $38
    push af
    rst $38
    add hl, hl
    rst $38
    rst $28
    ld a, a
    ld h, a
    rst $38
    ld h, e
    rst $38
    add e
    rst $38
    xor a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    dec de
    rst $38
    ei
    rst $38
    ld l, e
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld l, $ff
    add hl, bc
    rst $38
    ret nc

    rst $38
    ld e, h
    rst $38
    inc c
    rst $38
    add d
    db $fd
    and b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    add h

jr_070_5ac9:
    rst $38
    dec [hl]
    cp $93
    db $fc
    db $d3
    ld sp, hl
    rst $10
    ld sp, hl
    rlca
    reti


    add hl, hl
    rla
    ld [hl], c
    rrca
    inc e
    db $e3
    ld de, $1efe
    db $fc
    daa
    inc a
    and l
    ld e, $01
    ld b, $07
    nop
    add l
    nop
    dec de
    nop
    rla
    nop
    dec bc
    nop
    add hl, bc
    nop
    ld b, b
    add b
    ret nc

    nop
    nop
    nop
    inc d
    nop
    ccf
    nop
    dec sp
    nop
    ld b, $c0
    ld d, b
    ret nz

    push af
    add b
    ld h, h

jr_070_5b03:
    add b
    ld a, c
    add b
    jr nc, jr_070_5ac9

    dec hl
    ret nc

    ld e, $e0
    inc a
    ret nz

    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, e
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld e, $e1
    sbc h
    db $e3
    sbc h
    db $e3
    jp nz, Jump_000_00ff

    rst $38
    ld bc, $80fe
    rst $38
    add sp, -$01
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
    ld a, l
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    sub e
    ld l, h
    rst $08
    jr nc, jr_070_5b03

    rst $38
    ld b, $f9
    ld b, c
    cp [hl]
    ld b, c
    cp a
    ld [$98ff], sp
    rst $38
    ld a, d
    rst $38
    ld a, c
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $38ff
    rst $38
    inc [hl]
    rst $38
    pop af
    cp $91
    cp $a4
    rst $38
    inc sp
    db $fc
    ld e, c
    cp $11
    cp $d0
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    call z, $8fff
    cp $8d
    cp $08
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $e4
    rst $38
    and $ff
    rst $20
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    dec h
    rst $38
    ld d, b

jr_070_5b93:
    rst $38
    jr nc, @+$01

    cp b
    rst $38
    ld e, b
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    cp l
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    ret nz

    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    inc e
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop

jr_070_5bb7:
    rst $38
    adc b
    ld a, a
    ld [bc], a
    db $fd
    sub [hl]
    ld sp, hl
    rst $18
    ldh a, [$cb]
    inc [hl]
    jr nc, jr_070_5b93

    ld h, b
    sbc a
    ld h, a
    sbc b
    adc [hl]
    pop af
    ldh a, [rIE]
    add $f9
    cp e
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    db $fd
    ld [bc], a
    ld l, e
    sub h
    rst $38
    nop
    cp c
    ld b, [hl]
    ld b, b
    rlca
    ld b, b
    ld [bc], a
    add c
    ld [bc], a
    sbc $03
    cp e
    inc b
    adc $31
    add $3f
    ld a, [c]
    rrca
    ei
    rlca
    jr c, jr_070_5bb7

    ld c, c
    ld a, $6e
    rra
    cpl
    rra
    dec e
    ld a, $96
    ld a, b
    ld b, $38
    sub e
    inc c
    ld [hl], l
    ld a, [bc]
    ld a, b
    add a
    ret c

    rlca
    ret c

    rlca
    call z, Call_070_4003
    adc a
    ret nc

    rrca
    ld bc, $421e
    inc e
    ld c, c
    inc e
    jp nz, $e71c

    rra
    ld c, a
    cp a
    ld c, $ff
    ld e, $ff
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $ed
    inc de
    add $f9
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    rra
    rst $38
    pop af
    cp $40
    cp a
    add a
    ld a, b
    ld sp, hl
    cp $78
    rst $38
    db $10
    rst $38
    ret nz

    ccf
    ret z

    ccf
    ld e, b
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    rrca
    rst $38
    jr nz, @+$01

    ld c, b
    cp a
    nop
    cp a
    jr c, @+$01

    ret z

    ccf
    ld b, b
    ccf
    ld c, h
    ccf
    rra
    ld a, a
    cp a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    ccf
    rst $38
    adc b
    ld a, a
    adc b
    ld a, a
    nop
    rst $38
    inc c
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    call c, $38ff
    rst $38
    ld de, $00ff
    rst $38
    adc b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    sub b
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc c
    rst $38
    cp d
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld hl, $01ff
    rst $38
    nop
    rst $38
    ld b, $ff
    add h
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    add b
    rst $38
    ld [$04ff], sp
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld [$00ff], sp
    rst $38
    ld hl, $3cff
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld e, a
    rst $38
    add c
    ld a, a
    ld b, b
    rst $38
    rrca
    ldh a, [rNR31]
    db $e4
    add $79
    inc b
    ei
    ld [bc], a
    db $fd
    ld a, a
    rst $38
    cp a
    ld a, a
    dec e
    rst $38
    add c
    ld a, a
    ld e, $e1
    sbc $61
    sub h
    ld l, e
    ld l, a
    sub b
    ld d, e
    add b
    ld a, a
    nop
    ld l, [hl]
    nop
    add l
    ld [bc], a
    inc d
    inc bc
    dec b
    ei
    add b
    rst $38
    ld sp, hl
    rst $38
    rst $20
    ld sp, hl
    rlca
    ld hl, sp-$74
    ld [hl], b
    ld h, l
    add b
    db $10
    ldh [$0e], a
    ldh a, [$2c]
    rra
    sub a
    rrca
    sbc b
    rlca
    cp h
    ld b, e
    dec a
    jp nz, $e31c

    dec c
    di
    dec a
    jp $c72b


    add hl, hl
    add $f9
    inc b
    rst $38
    nop
    ld a, e
    inc b
    ld d, c
    ld l, $da
    rst $38
    sbc e
    rst $38
    sbc b
    rst $38
    sbc e
    db $fc
    rst $18
    ld hl, sp-$42
    ld sp, hl
    cpl
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    ld a, b
    add a
    inc d
    rst $38
    ld [hl], b
    adc a
    ld a, d
    add a
    ld a, [$4f01]
    jr nz, jr_070_5d3f

    ei
    rst $20
    db $10
    rrca

jr_070_5d3f:
    ldh a, [$80]
    ld a, a
    inc e
    rst $38
    inc b
    rst $38
    ld e, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    add d
    rst $38
    ld hl, $00de
    cp $05
    cp $fc
    rst $38
    sbc l
    cp $83
    db $fc
    ld bc, $00fc
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    adc e
    db $fc
    add d
    db $fd
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld d, a
    rst $38
    daa
    rst $38
    adc $ff
    ld bc, $01fe
    cp $2c
    rst $38
    ld l, h
    rst $38
    rst $38
    rst $38
    call $c1ff
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, $f9
    ld h, $f9
    ld b, d
    db $fd
    nop
    rst $38
    dec e
    ld [c], a
    ld sp, hl
    ld b, $5b
    and h
    inc c
    di
    call nz, Call_000_00fb
    rst $38
    nop
    rst $38
    add b
    rst $38
    add $ff
    inc hl
    rst $38
    and b
    ld a, a
    add c
    ld a, a
    ld [bc], a
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b

jr_070_5db5:
    rst $38
    ld bc, $80ff
    rst $38
    ld [bc], a
    rst $38
    rst $00
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc e
    rst $28
    ld [bc], a
    rst $38
    ld a, d
    add l
    jr jr_070_5db5

    ld [bc], a
    rst $38
    ret


    ld [hl], $50
    xor a
    ld c, h
    or e
    ld l, a
    sub b
    rra
    ldh [$6e], a
    sub c
    ld b, b
    add e
    ld h, [hl]
    add c
    ld a, $01
    ld e, l
    nop
    ld a, d
    add b
    ld a, l
    add b
    ld l, l
    add b
    ld c, a
    add b
    rrca
    add e
    ld a, a
    add e
    ld c, a
    ccf
    dec sp
    rlca
    sbc e
    rlca
    ld [hl], e
    rrca
    cp $01
    db $10
    rst $20
    inc de
    rst $28
    ld a, d
    rlca
    ld a, [c]
    rrca
    ld l, b
    add a
    inc d
    db $eb
    add b
    rst $38
    adc a
    ldh a, [rIE]
    nop
    push af
    nop
    di
    nop
    rst $38
    nop
    rst $00
    jr nc, @+$05

    db $fc
    rrca
    ldh a, [rTIMA]
    ld a, [$00ff]
    db $fc
    ld bc, $f907
    rst $30

jr_070_5e21:
    rst $38
    db $f4
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    adc a
    ld a, [hl]
    add c
    ld a, a
    add b
    inc bc
    db $fc
    jr @-$17

    ld b, $f9
    rlca
    ld hl, sp+$10
    adc a
    ld l, h
    add e
    ld e, $e1
    ei
    nop
    jr nz, jr_070_5e21

    ld b, a

jr_070_5e43:
    cp a
    dec d
    ei
    ld [hl], b
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    call Call_070_7cff
    rst $38
    jr c, @+$01

    adc l
    ld a, [hl]
    ldh a, [rIF]
    adc b

jr_070_5e5b:
    ld a, a
    jr c, @+$01

    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld [$01ff], sp
    cp $20
    rst $18
    inc c
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    jr nc, jr_070_5e43

    jr nz, @-$1f

    jp nc, $06ed

    db $fd
    add c
    ld a, [hl]
    ld c, b
    or $f0
    rst $38
    ccf
    db $fd
    ld a, h
    ld sp, hl
    di
    ld a, h
    dec de
    db $fc
    add e
    db $fc
    jr nc, jr_070_5e5b

    ld [$12ff], sp
    db $fc
    inc a
    ret z

    ld a, [c]
    dec e
    ld c, l
    ld [hl-], a
    add [hl]
    ld a, b
    add hl, de
    and $81
    ld a, [hl]
    ld [$02f7], sp
    rst $38
    ld c, $ff
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    inc hl
    rst $38
    rra
    rst $38
    db $10
    rst $38
    jr @+$01

    ld de, $00ff
    rst $38
    inc b

jr_070_5eb7:
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld hl, $80df
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld bc, $47ff
    cp a
    ld b, e
    cp a
    cp b
    ld b, a
    rlca
    rst $38
    ei
    rlca
    or h
    rrca
    add sp, $17
    ld [c], a
    ld bc, $08f7
    jr z, jr_070_5eb7

    dec a
    jp $e314


    add hl, hl
    add $c3
    inc c
    add b
    rra
    jp $ec3f


    di
    sbc [hl]
    pop hl
    cp [hl]
    pop bc
    and e
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, h
    add e
    ld hl, sp+$07
    ld sp, hl
    ld b, $f4
    dec bc
    ld [hl], l
    nop
    ld h, a
    add b
    ld a, [hl]
    add c
    ld sp, $00cf
    rst $38
    ld a, $c1
    ld a, [c]
    dec c
    rst $28
    db $10
    sbc $21
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    and a
    ld a, b
    ld b, $f9
    inc c
    di
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_070_5f29:
    rst $38
    nop
    rst $38
    nop
    rst $38
    or b
    ld c, a
    db $10
    rst $28
    or c
    ld c, a
    di
    rrca
    ld a, [hl+]
    rst $10
    inc bc
    rst $38
    db $10
    rst $28
    add b
    rst $38
    nop

jr_070_5f3f:
    rst $38
    jr jr_070_5f29

    rst $08
    ldh a, [$e4]
    ei
    nop
    rst $38
    ld [$e0ff], sp
    rst $38
    or $ff
    rst $28
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [c], a
    rst $38
    ld a, [$78ff]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    xor $ff
    ld hl, sp-$01
    jr nc, jr_070_5f3f

    jr nz, @-$2f

    ld [hl], a
    adc a
    ld d, [hl]
    xor a
    ld a, b
    add a
    ld b, [hl]
    xor c
    ld [hl], a
    adc c
    sub b
    ld l, a
    ld d, [hl]
    jp hl


    sbc $e1
    adc a
    pop af
    add l
    ei
    adc l
    di
    ld e, [hl]
    pop hl
    inc e
    db $e3
    ld [hl], c
    adc a
    ld [bc], a
    dec c
    ld [$fa05], a
    ld bc, $0157
    ld [hl], a
    add hl, bc
    daa
    add hl, de
    cp a
    ld bc, $c937
    nop
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    add e
    rst $38
    ld [$c0f7], sp
    rst $38
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jp $e0ff


    rst $38
    and c
    rst $38
    ld bc, $28ff
    rst $18
    ld bc, $0afe
    rst $38
    inc c
    rst $38
    inc h
    rst $38
    call c, $70ff
    rst $38
    ld h, b
    rst $38
    ldh [$1f], a
    ldh [rIE], a
    sbc h
    db $e3
    pop af
    rrca
    push bc
    dec sp
    xor a
    ld d, c
    cp c
    ld b, a
    inc a
    jp $c33c


    rst $20
    rra
    rst $08
    ccf
    rst $18
    ccf
    dec a
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    dec de
    db $fc
    add a
    ld a, b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    cp h
    ld [hl], e
    ret nc

    ccf
    pop bc
    ccf
    adc h
    ld [hl], e
    add e
    ld a, h
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    cp $62
    db $fd
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38

jr_070_601e:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld b, [hl]
    ld sp, hl
    add a
    ld hl, sp-$7c
    ei
    ld a, [bc]
    push af
    sub d
    ld a, l
    ld b, $f9
    ld a, h
    add c
    ld a, l
    add b
    scf
    ret z

    inc b
    ld sp, hl
    inc sp
    ld sp, hl
    or d
    ld sp, hl
    ld d, d
    ld hl, sp+$24
    jp c, $c834

    jr c, jr_070_601e

    adc d
    db $f4
    adc a
    ldh a, [$65]
    ld a, [$fe41]
    ret


    cp $09
    cp $04
    cp $8f
    or $c3
    cp $e1
    cp $82
    rst $38
    inc d
    rst $38
    ld e, e
    db $fc
    ld b, a
    db $fc
    ld h, c
    cp $f9
    cp $19
    cp $51
    cp $19
    cp $f4
    rst $38
    call nz, $c0ff
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    inc a
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    or b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    jr @+$01

    jr @+$01

    ld sp, hl
    cp $f6
    rst $38
    ld d, $ff
    ld d, h
    rst $38
    ld [hl], l
    rst $38
    push de
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    daa
    rst $38
    ld [bc], a
    rst $38
    set 7, a
    dec bc
    rst $38
    inc sp
    rst $38
    ei
    rst $38
    sbc b
    rst $38
    ld a, h
    sbc a
    sbc $3f
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc a
    inc bc
    rst $38
    ld bc, $21ff
    rst $38
    ret nz

    rst $38
    inc de
    rst $28
    ccf
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    jr c, @+$01

    nop
    rst $38
    ret nz

    ccf
    dec d
    db $eb
    nop
    rst $38
    ld hl, $00ff
    rst $38
    ldh [$9f], a
    and b
    rst $18
    adc [hl]
    rst $38

jr_070_60ee:
    ret c

    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b

jr_070_60f5:
    ld a, a
    add a
    ld a, a
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld b, b
    cp a
    add [hl]
    ld a, a
    cp a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    and b
    ld e, a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ld hl, $7fff
    rst $38
    rst $38
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
    sbc a
    rst $38
    jp nz, $a0ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    or $e8
    rst $30
    ldh a, [rIE]
    jr c, @+$01

    sbc e
    ld a, a
    nop
    rst $38
    dec c
    ldh a, [$a4]
    db $10
    inc d
    nop
    dec e
    nop
    cp a
    nop
    cpl
    sub b
    ld l, l
    sub b
    adc l
    ldh a, [$3e]
    pop de
    push af
    ld [bc], a
    ld a, d
    nop
    ld [bc], a
    ld [$009c], sp
    jr nz, jr_070_615c

jr_070_615c:
    ld e, h
    jr nz, @-$32

    jr nc, jr_070_60ee

    ld [hl], b
    rst $08
    jr nc, jr_070_60f5

    ccf
    rst $38
    rra
    dec hl
    dec e
    jr c, jr_070_6179

    dec b
    ld [$002e], sp
    xor d
    inc b
    cp c
    inc b
    ld hl, sp+$04
    db $d3
    ld l, h
    add c

jr_070_6179:
    ld l, [hl]
    adc b
    ld h, [hl]
    ld a, [c]
    ld h, $b7
    ld h, b
    db $fd
    jr nz, jr_070_61dc

    and b
    dec e

jr_070_6185:
    ldh [$09], a
    ldh a, [rTAC]
    ld hl, sp+$31
    adc $0e
    rst $38
    ld a, [bc]

jr_070_618f:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, jr_070_6185

    jr z, jr_070_618f

    inc c
    di
    ld b, h
    ei
    nop
    rst $38
    jp hl


    ld a, $ac
    ld e, a
    or l
    ld c, [hl]
    cp [hl]
    ld b, a
    ei
    rlca
    dec bc
    rst $30
    ld c, l
    di
    dec c
    di
    ld c, $f1
    dec a
    jp $e11e


    ld b, [hl]
    cp c
    db $10
    rst $38
    add b
    rst $38
    and e
    rst $18
    dec hl
    rst $18
    ld c, $ff
    ld c, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld c, $ff
    ld c, $ff
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    jp nz, $c2ff

    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    add b
    rst $38
    db $10
    rst $38
    dec b
    rst $38

jr_070_61dc:
    dec l
    rst $38
    dec l
    rst $38
    ld sp, hl
    rst $38
    add hl, bc
    rst $38
    ld b, c
    cp a
    jp $833f


    ld a, a
    inc bc
    rst $38
    ld b, c
    cp a
    ld a, b
    add a
    cp b
    ld b, a
    ld hl, sp+$07
    ld b, $ff
    ld hl, sp-$01
    nop
    rst $38
    ld b, $f9
    ld [bc], a
    db $fd
    ld h, c
    sbc a
    inc bc
    rst $38
    ld e, [hl]
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
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    call nz, $c0fb
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
    pop bc
    rst $38
    nop
    rst $38
    inc b
    ei
    jr nz, @+$01

    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld a, l
    rst $38
    ld a, b
    rst $38
    ret nc

    rst $28
    or [hl]
    ret nz

    ld a, a
    add b
    db $76
    ld bc, $01de
    cp d
    ld bc, $9160
    ld h, [hl]
    sbc c
    rra
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld c, e
    rra
    ld b, c
    rra
    ld e, h
    inc bc
    jr nc, @+$05

    ld a, [hl-]
    ld bc, $013a
    ld a, e
    nop
    ld a, [hl+]
    nop
    reti


    jr nz, jr_070_6284

    jr nz, jr_070_62c6

    and b
    adc a
    and b
    xor $81
    and [hl]
    reti


    ld h, b
    rst $18
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld a, e
    rst $00
    rst $38
    ld b, e
    di
    ld b, e
    ld a, c
    ld b, e
    rrca
    ld b, c
    ccf
    ld b, c
    sub d
    ld l, l
    ld [bc], a

jr_070_6283:
    ld a, l

jr_070_6284:
    adc h
    ld a, a
    adc b
    ld l, a
    sub d
    ld l, l
    sub e
    ld l, h
    db $eb
    inc b
    ld c, e
    and h
    ld c, $e4
    ld de, $bbe6

jr_070_6295:
    add $1a
    rst $20
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    ld h, b
    sbc a
    jr nz, jr_070_6283

    nop
    rst $38
    add b
    rst $38
    call nz, $04fb
    ei
    inc b
    ei
    inc b
    ei
    add b
    ld a, a
    ld b, b
    cp a
    nop
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
    ld d, b
    xor a
    db $10
    rst $28
    jr nc, jr_070_6295

jr_070_62c6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    sbc c
    rst $38
    sbc b
    rst $38
    ld e, b
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    or c
    rst $38
    or e
    rst $38
    or e
    rst $38
    and e
    rst $38
    rst $20
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    db $d3
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, $ff
    or $ff
    ld [c], a
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $e1ff
    rst $38
    pop hl
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    inc sp
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec e
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$6f]
    db $10
    ld [hl], a
    ld [$1ce3], sp
    ld d, d
    xor a
    inc b
    rst $38
    add h
    rst $38
    ret


    rst $30
    ld a, e
    add a
    rst $38
    inc bc
    ei
    rlca
    ld [hl], d
    adc a
    ld a, d
    add a
    ld h, h
    sbc e
    and $99
    and $99
    or h
    set 7, h
    jp $e758


    ld c, b
    rst $30
    xor b
    ld [hl], a
    xor h

jr_070_6365:
    ld [hl], e
    and h

jr_070_6367:
    ld a, e
    and h
    ld a, e
    dec l
    di
    jr z, jr_070_6365

    jr z, jr_070_6367

    ld h, [hl]
    rst $38
    ld a, $e7
    ld a, [$fee7]
    db $e3
    add sp, -$09
    add sp, -$09
    ld h, h
    ei
    ld [hl], l
    ld a, [$f976]
    ld [hl], a
    ld hl, sp+$77
    ld hl, sp+$7f
    ld hl, sp+$31
    cp $70
    sbc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld l, b
    sbc a
    ld h, d
    sbc l
    xor h
    ld e, e
    xor h
    ld e, e
    add sp, $1f
    jp nc, $f22d

    dec c
    ei
    inc b
    inc d
    rst $28
    db $10
    rst $28
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld h, $ff
    ld sp, $00ff
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
    ld bc, $21ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $61ff
    rst $38
    ld b, e
    rst $38
    jp nz, $82ff

    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    ld [$50ff], sp
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    jp $c3ff


    rst $38
    jp $c7ff


    rst $38

Jump_070_63fc:
    rst $08
    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld d, [hl]
    rst $38
    or [hl]
    rst $38
    and d
    rst $38
    and d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    adc [hl]
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    inc e
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    ccf
    db $10
    rst $38
    jr @+$01

    ld c, b
    rst $38
    rrca
    rst $38
    ccf
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
    rla
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
    ld hl, $42df
    cp a
    jr nc, @+$01

    ld a, e
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rla
    rst $38
    rst $20
    rra
    inc hl
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld c, c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    or b
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    cp h
    rst $38
    ld a, $ff
    ld e, [hl]
    rst $38
    ld a, $ff
    ld e, $ff
    ld b, $ff
    add e
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$feff]
    rst $38
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld a, b
    rst $38
    cp h
    rst $38
    add sp, -$01
    ld l, h
    rst $38
    db $e4
    rst $38
    call nz, $e7ff
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    jp $c3ff


    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    add d
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    rra
    rst $38
    ld e, $ff
    ld c, $ff
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    di
    rst $38
    ld de, $18ff
    rst $38
    jr @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    or a
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
    rst $38
    rst $38
    rst $08
    rst $38
    jp $c1ff


    rst $38
    ret nz

    rst $38
    jp $e3ff


    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    ld sp, $13ff
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ld a, d
    rst $38
    add hl, sp
    rst $38
    ld hl, $24ff
    rst $38
    ld [hl-], a
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    inc a
    rst $38
    inc l
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld l, $ff
    ld l, [hl]
    rst $38
    ld c, d
    rst $38
    ld c, b
    rst $38
    call z, $dfff
    rst $38
    rst $18
    rst $38
    sub a
    rst $38
    cp e
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec a
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    cp e
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    add a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld b, e
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld h, [hl]
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    cp $ff
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    inc bc
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    jp $e3ff


    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    db $ec
    rst $38
    call nz, $c6ff
    rst $38
    rst $00
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    jp $83ff


    rst $38
    add e
    rst $38
    jp $e6ff


    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    xor h
    rst $38
    ld a, [bc]
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ei
    rst $38
    or l
    rst $38
    push af
    rst $38
    push af
    rst $38
    call $ecff
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld d, c
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    call c, $fcff
    rst $38
    ld hl, sp-$01
    call nc, $80ff
    rst $38
    ld [bc], a
    rst $38
    and b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    jr nc, @+$01

    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    ld [hl], c
    rst $38
    ld b, c
    rst $38
    add hl, de
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    sbc c
    rst $38
    ld a, e
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    ld a, a
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
    cp $ff
    or $ff
    rst $30
    rst $38
    cp a
    rst $38
    rla
    rst $38
    ld [hl], a
    rst $38
    ld a, [hl]
    rst $38
    scf
    rst $38
    rlca
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp l
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $08
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, c
    rst $38
    adc [hl]
    rst $38
    rrca
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp b
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ei
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    sbc b
    rst $38
    adc h
    rst $38
    inc c
    rst $38
    ld e, $ff
    rra
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    rra

Jump_070_67ff:
    rst $38
    rra
    rst $38
    ld a, $ff
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    push af
    rst $38
    rst $30
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
    db $fd
    rst $38
    dec sp
    rst $38
    inc bc
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
    rrca
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    adc $ff
    adc b
    rst $38
    adc h
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    add a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    and c
    rst $38
    ld bc, $81ff
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    pop af
    rst $38
    ld [hl], h
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    call z, Call_070_48ff
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    inc d
    rst $38
    jr @+$01

    nop
    rst $38
    call nc, $feff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    db $e3
    rst $38
    ld [hl], l
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ld h, d
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    pop af
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
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_070_6954

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_070_6964

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_070_6974

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_070_6984

    ld [hl-], a

jr_070_6954:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_070_6994

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_070_6964:
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

jr_070_6974:
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

jr_070_6984:
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

jr_070_6994:
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
    jr jr_070_6a54

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
    jr nc, jr_070_6a84

    ld [hl-], a

jr_070_6a54:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec l
    dec sp
    dec l
    inc a
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

jr_070_6a84:
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
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
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
    ld bc, $0909
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    inc a
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ld [$18ff], sp
    rst $38
    jp nc, Jump_070_56ff

    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld c, l
    rst $38
    sbc a
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    jp nz, $84ff

    rst $38
    ret nz

    rst $38
    pop de
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    db $ec
    rst $38
    call z, $ccff
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    cp $ff
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    sbc $ff
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
    cp [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f6ff]
    rst $38
    and $ff
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    or $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    sbc $ff
    sbc $ff
    sbc $ff
    adc $ff
    call z, $f9ff
    rst $38
    ldh a, [rIE]
    call nz, $c4ff
    rst $38
    pop de
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    or b
    rst $38
    pop hl
    rst $38
    db $eb
    rst $38
    rst $30
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
    db $fd
    rst $38
    db $f4
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, [$f9ff]
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
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    add b
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec h
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    and d
    rst $38
    add d
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    dec b
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

Call_070_6cff:
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld a, [$f1ff]
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    jp $c1ff


    rst $38
    add d
    rst $38
    add b
    rst $38
    add c
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld e, $ff
    inc sp
    rst $38
    ld [hl], $ff
    rrca
    rst $38
    rra
    rst $38
    add a
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
    rrca
    rst $38
    dec sp
    rst $38
    ld a, c
    rst $38
    ld [hl], h
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ldh [rIE], a
    add sp, -$01
    ret z

    rst $38
    adc b
    rst $38
    jr @+$01

    db $10
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
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $28
    sub b
    rst $28
    ret z

    rst $30
    ret z

    rst $30
    adc $f3
    add $fb
    sub h
    ei
    nop
    rst $38
    inc bc
    db $fd
    ld b, d
    db $fd
    ld a, [c]
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rra
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld b, $ff
    add $ff
    sub $ff
    call nz, $8cff
    rst $38
    and h
    rst $38
    inc sp
    db $fc
    and e
    db $fc
    db $76
    db $fc
    ld a, $fc
    ld a, [hl]
    db $fc
    db $fd
    cp $ac
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    jp hl


    rst $38
    add e
    rst $38
    sbc e
    rst $38
    inc sp
    rst $38
    cp e
    rst $38
    or e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    and $ff
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    ld c, $ff
    ld bc, $01ff
    rst $38
    ld bc, $45ff
    rst $38
    ld l, [hl]
    rst $38
    ld e, $ff
    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    sbc $ff
    sbc [hl]
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    call z, $9cff
    rst $38
    ld d, c
    cp $91
    cp $0d
    cp $90
    rst $38
    adc b
    rst $38
    sub h
    rst $38
    and b
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    jp c, $feff

    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    db $d3
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    add b
    rst $38
    call z, $c7ff
    rst $38
    set 7, a
    rst $30
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
    cp $ff
    db $fd
    rst $38
    db $f4
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    dec h
    rst $38
    add hl, bc
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    and d
    rst $38
    jp Jump_070_43ff


    rst $38
    db $e3
    rst $38
    ld b, e
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    ei
    rst $38
    db $db
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc c
    rst $38
    add hl, de
    rst $38
    ld sp, $10df
    rst $38
    rra
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    inc a
    rst $38
    jr c, @+$01

    jr @+$01

    sbc c
    ld a, a
    xor c
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    nop
    rst $38
    inc d
    rst $38
    ld bc, $01ff
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld l, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    set 7, a
    set 7, a
    set 7, a
    adc e
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    inc [hl]
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    jp $c3ff


    rst $38
    jp $f3ff


    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    db $e4
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    ld a, a
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
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    adc $ff
    call z, $9eff
    rst $38
    sbc h
    rst $38
    or h
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    cp a
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
    or e
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc c
    rst $38
    sbc a
    rst $38
    sbc e
    rst $38
    cp l
    rst $38

Call_070_7000:
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    xor $ff
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld c, d
    rst $38
    rst $08
    rst $38
    adc $ff
    call c, $70ff
    rst $38
    ld [hl], e
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    di
    rst $38
    di
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    ld a, [hl-]
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    push de
    rst $38
    jp nc, $f3ff

    rst $38
    db $db
    rst $38
    set 7, a
    set 7, a
    xor $ff
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    db $db
    rst $38
    adc l
    rst $38
    call nz, $e5ff
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add $ff
    and $ff
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$fbff]
    rst $38
    ld hl, sp-$01
    db $ed
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    dec b
    cp $0d
    cp $09
    cp $38
    cp $18
    cp $21
    cp $21
    cp $61
    cp $22
    rst $38
    add d
    rst $38
    ret nz

    rst $38
    ld e, a
    db $fc
    ld a, a
    db $fc
    cp $fd
    db $e3
    db $fd
    ld [c], a
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    jp nz, $c0fd

    rst $38
    ret nz

    rst $38
    sub d
    rst $38
    db $d3
    rst $38
    add a
    rst $38
    jp $e3ff


    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    jp nc, $92ff

    rst $38
    or d
    rst $38
    xor b
    rst $30
    and c
    cp $a3
    db $fc
    inc hl
    db $fc
    and e
    db $fc
    ld [c], a
    db $fd
    db $eb
    db $fd
    ld a, [$7ffd]
    db $fd
    ld a, e
    db $fd
    ld sp, hl
    rst $38
    cp c
    rst $38
    ldh a, [rIE]
    ld a, [$f8ff]
    rst $38
    ldh a, [rIE]
    or $ff
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld h, a
    rst $38
    db $e3
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    adc $ff
    rst $28
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, $ff
    ld e, $ff
    ld a, [de]
    rst $38
    ld a, [hl-]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld hl, $06ff
    rst $38
    ld b, a
    rst $38
    ld b, [hl]
    rst $38
    and $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $76
    rst $38
    ld a, [$7aff]
    rst $38
    ld a, e
    rst $38
    ld a, d
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$e2ff]
    rst $38
    and $ff
    sub $ff
    sbc $ff
    sbc $ff
    cp [hl]
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld h, e
    rst $38
    jr c, @+$01

    inc [hl]
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    di
    cp $b0

jr_070_7185:
    rst $38
    or b
    rst $38
    or b
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $38
    ld bc, $ddff
    rst $38
    cp $ff
    rlca
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    jr nz, jr_070_7185

    scf
    rst $08
    sbc b
    ld a, a
    sbc b
    ld a, a
    call z, Call_070_7c7f
    rst $38
    ld a, $ff
    add [hl]
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, $ff
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, $ff
    ld h, $ff
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    cp $ff
    cp $ff
    xor $ff
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    inc d
    rst $38
    ld [$86ff], sp
    rst $38
    add [hl]
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    inc c
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc hl
    rst $38
    dec sp
    rst $38
    cp a
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    sbc b
    rst $38
    jr @+$01

    inc e
    rst $38
    sbc b
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    ld l, $ff
    jr nz, @+$01

    jr nz, @+$01

    ld [bc], a
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    ld [$b0ff], sp
    rst $38
    jr nc, @+$01

    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $10
    rst $38
    ld de, $83ff
    rst $38
    nop
    rst $38
    add d
    rst $38
    add [hl]
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
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $e3
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    rst $28
    rst $38
    di
    rst $38
    inc a
    jp $df23


    rlca
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$01
    ld hl, sp-$01
    jr @+$01

    jr @+$01

    jr @+$01

    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    dec hl
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    sbc [hl]
    rst $38
    inc c
    rst $38
    ld [hl], e
    cp a
    dec sp
    rst $38
    ld e, e
    rst $38
    rrca
    rst $38
    ld b, $ff
    nop
    rst $38
    dec b
    ld a, [$f708]
    inc bc
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    cp [hl]
    rst $38
    add sp, -$01
    jp hl


    rst $38
    add b
    rst $38
    add b
    rst $38
    dec c
    rst $38
    rst $20
    rst $38
    db $d3
    rst $38
    nop
    rst $38
    and [hl]
    ld a, c
    ld [de], a
    db $fd
    ccf
    rst $38
    ld a, $ff
    jr nc, @+$01

    cpl
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    cp $0e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$14ff], sp
    rst $28
    db $10
    rst $38
    ld a, $ff
    rra
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld e, $ff
    ld c, $ff
    ld [$1bff], sp
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $10
    rst $38
    ld c, b
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, c
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    sub e
    rst $28
    ld de, $00ef
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $3cff
    rst $38
    ld b, b
    cp a
    ret nc

    rst $38
    ld bc, $01fe
    cp $02
    rst $38
    ld [de], a
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    and e
    rst $38
    ld h, e
    rst $38
    add b
    ld a, a
    adc c
    db $76
    add c
    ld a, [hl]
    ld bc, $87fe
    cp $fe
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $4b
    db $fc
    ld b, d
    db $fc
    ld b, c
    db $fc
    ld b, [hl]
    ld sp, hl
    inc e
    rst $38
    ld e, $ff
    inc e
    rst $38
    jr c, @+$01

    add hl, sp
    cp $17
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rNR50]
    rst $18
    ld e, h
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    cp $ff
    rst $18
    rst $38
    dec e
    cp $10
    rst $38
    add b
    ld a, a
    ld bc, $18fe
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, $ff
    add hl, bc
    rst $38
    ld bc, $5fff
    rst $38
    rlca
    rst $38
    ld bc, $06ff
    ld sp, hl
    adc a

jr_070_7411:
    ldh a, [$8f]
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    ld [$98ff], sp
    ld h, a
    inc a
    pop bc
    ld a, a
    ret nz

    ccf
    jp $07fb


    adc l
    ld [hl], e
    rst $18
    ld hl, $33cc
    db $76
    cp c
    scf
    ld hl, sp-$79
    ld a, b
    ld hl, $a1fe
    cp $e0
    rst $38
    db $e4
    rst $38
    ld hl, $07fe
    ld hl, sp+$01
    cp $00
    rst $38
    jr nc, jr_070_7411

    inc b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    adc b
    rst $30
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, [hl-]
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $41ff
    rst $38
    nop
    rst $38
    ld b, c
    cp a
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
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld [hl], e
    db $fc
    db $76
    ld sp, hl
    pop hl
    rst $38
    jp $bfff


    rst $38
    db $d3
    rst $38
    add d
    db $fd
    nop
    rst $38
    ld a, b
    rst $38
    ld b, c
    cp $84
    ld a, e
    nop
    rst $38
    inc [hl]
    rst $08
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    jr nc, @+$01

    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    add a
    ld a, a
    ld b, b
    ccf
    ld a, [hl-]
    dec b
    cp a
    nop
    push af
    ld a, [bc]
    db $e4
    sbc a
    ld b, a
    rst $38
    xor a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    jr nz, @+$01

    ld hl, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $84
    ld a, e
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $30

jr_070_74e6:
    sbc d
    push hl
    xor [hl]
    pop af
    and [hl]
    ld sp, hl
    xor a
    ldh a, [$74]
    ei
    ld d, $f9
    sub [hl]
    ld a, c
    ld bc, $99fe
    ld a, [hl]
    jr c, @+$01

    inc e
    rst $38
    rst $18
    rst $38
    rst $18

jr_070_74ff:
    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    cp a
    rst $18
    rst $18
    cp a
    rst $10
    rst $38
    rst $18
    rst $38
    xor [hl]
    pop af
    ld c, $f1
    ld bc, $81ff
    ld a, a
    ld hl, $2aff
    db $f4
    ld a, b
    add b
    sbc a
    ld bc, $0739
    or a
    ld c, c
    ret c

    add e
    ld a, [bc]
    add c
    ld l, l
    add e
    ldh a, [rIF]
    db $fc
    inc bc
    inc bc
    rst $38
    add c
    ld a, a
    call nz, $d23b
    dec l
    call $9d33
    ld h, e
    jr c, jr_070_74ff

    add d
    ld a, l
    rst $08
    jr nc, jr_070_74e6

    db $76
    ld h, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    inc c
    rst $38
    ld e, $ff
    cp [hl]
    rst $38
    daa
    rst $38
    scf
    rst $08
    rlca
    rst $38
    add $ff
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $28
    add h
    rst $38
    add c
    cp $c0
    rst $38
    rst $00
    rst $38
    jp Jump_070_67ff


    rst $38
    ld a, b
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    db $dd
    rst $38
    adc $ff
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$19
    db $ec
    di
    ld h, b
    rst $38
    ld a, a
    rst $38
    call c, Call_000_08ff
    rst $38
    adc b
    ld a, a
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc b
    ei
    rra
    ldh [$1f], a
    ldh [$0a], a
    push af
    jr nz, @+$01

    jr c, @+$01

    rst $20
    ld hl, sp-$1d
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    and $f9
    ld h, a
    ld hl, sp+$43
    db $fc
    ld b, c
    cp $c1
    rst $38
    ret nz

    rst $38
    sbc h
    db $e3
    add b
    rst $38
    sub [hl]
    ld sp, hl
    rst $10
    ld hl, sp-$10
    rst $38
    ldh a, [rIE]
    ld bc, $c5ff
    ei
    add l
    ei
    dec b
    ei
    dec b
    ei
    ld b, c
    rst $38
    ld b, c
    rst $38
    jp Jump_070_40ff


    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld hl, $05fe
    cp $f5
    adc $f1
    adc $31
    adc $1b
    db $e4
    dec e
    ld [c], a
    dec b
    ld a, [c]
    ld [$6911], a
    cp a
    ld c, a
    rst $38
    scf
    rst $08
    inc bc
    rst $08
    dec sp
    rst $00
    inc de
    rst $00
    adc e
    rst $00
    ccf
    jp $e71b


    dec de
    rst $20
    ld a, [bc]
    rst $30
    nop
    rst $38
    ld de, $b0ec
    ld b, b
    jr z, jr_070_7658

    dec bc
    ldh [$9b], a
    ldh [$9b], a
    db $e4
    and h
    db $db
    ld [hl-], a
    adc a
    pop bc
    ld a, $0e
    ldh a, [rNR33]
    ld [c], a
    ldh a, [$fc]
    ret c

    ldh [$9e], a
    pop bc
    di
    adc a
    xor a
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [$4c]
    ld a, [c]
    add e
    ld a, h
    ld [hl+], a
    db $fd
    ld l, h
    di
    ld bc, $0efe
    rst $30
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    db $10
    rst $28
    ret nz

    rst $38
    ldh [rIE], a
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_070_7658:
    nop
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld d, c
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    call nz, $e0ff
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [hl], d
    rst $38
    cp h
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld l, $ff
    add b
    rst $38
    ld e, d
    push hl
    ld l, $f1
    inc c
    di
    add hl, de
    rst $20
    inc [hl]
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop

jr_070_7695:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld b, b
    rst $38
    add h
    rst $38
    inc c
    rst $38
    or h
    ld c, e
    ld a, a
    add b
    ld a, a
    add b
    or $09
    rst $38
    nop
    ld [bc], a
    ld hl, sp+$00
    db $fd
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$01
    ld a, [$f803]
    ld bc, $9bf2
    ldh [$bf], a
    ret nz

    scf
    ret nz

    ld a, e
    add h
    rst $30
    ld [$04fb], sp
    jr c, jr_070_7695

    inc b
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ld c, $ff
    call c, $f8ff
    rst $38
    ldh a, [rIE]
    push af
    ld a, [$ffc0]
    db $f4
    rlca
    db $76
    add a
    jp c, $e207

    rlca
    sub a
    ld b, [hl]
    jr nz, @-$1f

    ld a, a
    add b
    ld c, h
    and b
    ld d, $e8
    jr z, @-$3a

    ld sp, $f0ce
    adc a
    and d
    call $e40b
    rra
    ldh [rNR33], a
    ldh [$0a], a
    push af
    adc d
    ld [hl], l
    add $39
    ld b, $f9
    rra
    ldh [$1f], a
    ldh [rNR21], a
    jp hl


    ld d, l
    xor e
    ld d, h
    cpl
    ld sp, $480e
    rlca
    add e
    nop
    db $dd
    nop
    ldh a, [rP1]
    ret c

    nop
    ld h, h
    sbc b
    db $e4
    ld bc, $07e8
    xor l
    db $10
    ld hl, sp+$00
    inc de
    nop
    ld h, c
    ld c, $23
    ret nz

    call nz, $0ec3
    ldh a, [$59]
    ldh [$a5], a
    ld b, b
    db $e4
    rra
    and c
    ld e, [hl]
    dec bc
    db $fc
    ld [hl+], a
    db $dd
    rst $30
    rrca
    push de
    ld a, $75
    cp $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld h, e
    rst $38
    cp [hl]
    rst $38
    ld a, [$f8ff]
    rst $38
    ld a, b
    rst $38
    jr z, @+$01

    ld [hl-], a
    rst $38
    ld e, $ff
    ld c, $ff
    jr @+$01

    ld de, $2fff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sub c
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add sp, -$01
    add a
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
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
    ccf
    rst $38
    ld hl, $00ff
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $18
    ccf
    ld a, a
    rra
    ei
    rlca
    cp a
    nop
    ld b, b
    sbc a
    ld b, b
    adc a
    ret nz

    rrca
    nop
    rlca
    inc a
    dec sp

jr_070_77ba:
    ld a, b
    ld a, e
    ld a, h
    ld a, a
    cp h
    ccf
    cp d
    add hl, sp
    adc e
    ld [$00c3], sp
    rst $10
    nop
    cp $01
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    ld [$60ff], sp
    sbc a
    ret nz

    ccf
    pop hl
    rra
    adc b
    ld [hl], a
    add l
    ld d, d
    add h
    ld b, e
    adc h
    ld b, e
    jp nz, $8805

    ld b, l
    add hl, sp
    call nz, Call_000_0074
    ret z

    inc b
    ld hl, sp+$02
    adc e
    ld [hl], b
    inc [hl]
    ei
    add hl, sp
    rst $38
    inc a
    rst $38
    adc h
    ld a, a
    xor [hl]
    ld a, l
    sub e
    ld a, h
    sbc e
    ld a, h
    ld hl, sp-$01
    ld a, [$3bfd]
    call c, $5eb1
    inc de
    db $fc
    sbc l
    ld a, [c]
    adc b
    rst $30
    xor d
    ld de, $0049
    nop
    nop
    ld e, c
    add b
    reti


    ld b, $ac
    rlca
    inc hl
    rlca
    db $10
    inc hl
    xor b
    ld de, $0009
    nop
    nop
    ld a, h
    nop
    ret z

    jr nc, jr_070_785e

    jr jr_070_77ba

    ld [hl], b
    ld l, c
    db $f4
    ld [c], a
    inc a
    ld b, h
    jr c, jr_070_7873

    ret nz

    cp $00
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
    add hl, de
    and $0c
    di
    ld h, h
    sbc e
    add [hl]
    ld a, e
    inc [hl]
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    or b
    rst $38
    inc e
    rst $38
    inc l
    rst $18
    ld c, h
    cp a
    db $e4
    rst $38
    call nz, Call_000_00ff
    rst $38

jr_070_785e:
    ld [$07ff], sp
    rst $38
    rlca
    rst $38
    ld bc, $81ff
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38

jr_070_7873:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ret nz

    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    xor h
    rst $38
    rst $38
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
    ld de, $ffff

jr_070_789f:
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
    db $fc

jr_070_78ab:
    rst $38
    ld hl, sp-$01
    ret nz

jr_070_78af:
    rst $38
    ret nz

jr_070_78b1:
    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    pop af
    ld a, a
    pop af
    ld a, a
    add sp, $7f
    ld a, l
    rst $38
    db $fd
    ld a, a
    rst $30
    ccf
    rst $30
    ccf
    rst $38
    ld a, a
    cpl
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    add e
    rst $38
    add b
    rst $38
    nop

jr_070_78dd:
    rst $38
    jr nc, jr_070_78af

    jr nz, jr_070_78b1

    jr c, jr_070_78ab

    jr nz, @-$37

    add a
    db $e3
    dec h

Jump_070_78e9:
    jp $a351


    ld c, c
    or e
    ld c, c
    cp a
    pop de
    cpl
    sbc l
    ld h, e
    ld d, e
    pop hl
    db $db
    pop hl
    pop de
    db $e3
    pop bc
    db $e3
    ld d, l
    db $e3
    rst $00
    ei
    ld a, [c]
    rst $08
    sbc $e7
    xor [hl]
    rst $00
    ld a, [de]
    rst $20
    sub [hl]
    rst $28
    db $76
    rst $08
    db $76
    rst $08
    db $76
    rst $08
    ld h, [hl]
    sbc a
    dec de
    rlca
    ld e, [hl]
    rlca
    jr nz, jr_070_789f

    jr nz, jr_070_78dd

    dec b
    jp $ef11


    adc [hl]
    ld bc, $00af
    ccf
    add b
    xor h
    ld d, e
    ld a, a
    ld a, a
    rlca
    ld a, c
    or e
    ld b, b
    add hl, de
    nop
    rra
    ld b, b
    db $ec
    nop
    and a
    nop
    inc d
    add e
    ld [hl], b
    inc bc
    push bc
    dec sp
    xor [hl]
    ld e, a
    xor $1f
    add hl, sp
    rst $00
    cp a
    pop bc
    ld a, l
    db $e3
    add hl, bc
    rst $30
    inc bc
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld bc, $00ff
    rst $38
    ld c, $f1
    ccf
    ret nz

    ld a, d
    add l
    ld [$80f7], sp
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    ld [c], a
    db $fd
    ld h, c
    cp $f0
    rst $38
    ld hl, sp-$01
    cp $ff
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    jr c, @+$01

    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rst $18
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
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
    rst $00
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    dec a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld l, l
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    ld e, b
    rst $38
    ld e, b
    rst $38
    ret z

    rst $38
    call z, Call_070_6cff
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    set 7, a
    adc [hl]
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    ret


    rst $38
    call $4fff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    add l
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ret z

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$181f], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [$00f7], sp
    rst $38
    db $10
    rst $38
    ld bc, $0fff
    rst $38
    ld a, $ff
    db $fd
    rst $38
    ld a, [$e1ff]
    cp $40
    rst $38
    ld hl, $03ff
    rst $38
    nop
    rst $38
    rra
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
    rlca
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    ld b, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $81ff
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    call nc, $7dff
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    jr @+$01

    ld [$09ff], sp
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    ld c, $ff
    inc b
    rst $38
    inc c
    rst $38
    ld a, [hl+]
    rst $38
    dec e
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, $ff
    nop
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    di
    rst $38
    db $e3
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, d
    rst $38
    ld [c], a
    rst $38
    or $ff
    or $ff
    ld a, [c]
    rst $38
    ld a, [$f6ff]
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
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
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    ld d, c
    rst $38
    ld h, e
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    adc $ff
    adc $ff
    inc l
    rst $38
    inc a
    rst $38
    sbc h
    rst $38
    ld e, $ff
    inc c
    rst $38
    sbc h
    rst $38
    ret nz

    rst $38
    db $10
    rst $28
    ld a, h
    add e
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $fd
    cp $f3
    db $fc
    jr z, @+$01

    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    jp nc, $daff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    add b
    rst $38
    jp nz, $f8ff

    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    ld [hl], a
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld hl, $a1ff
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    or h
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    dec d
    rst $38
    ld d, d
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    adc h
    rst $38
    add l
    rst $38
    add l
    rst $38
    add a
    rst $38
    jp $83ff


    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf

Call_070_7c7f:
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    rla
    ei
    pop bc
    ccf
    push af
    rrca
    rra
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    db $fc
    rst $38
    cp $ff
    add $ff
    ld b, d
    rst $38
    inc de
    rst $38
    ld d, a
    rst $38
    ld l, e
    rst $38
    cp $ff
    cp $ff
    or $ff
    db $e4
    rst $38
    db $fc
    rst $38
    or $ff
    sub $ff
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    and $ff
    sub $ff
    sbc $ff
    ret nc

    rst $38
    ldh a, [rIE]
    cp b
    rst $38
    call z, $70ff
    rst $38
    ld a, [hl-]
    rst $38
    ld b, $ff
    ld b, $ff
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add b
    rst $38
    pop bc
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
    rst $30
    rst $38
    cp $ff
    db $fc

Call_070_7cff:
    rst $38
    db $fc
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld e, $ff
    jp nz, $e1ff

    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$28ff], sp
    rst $38
    jr nz, @+$01

    add hl, hl
    rst $38
    ld l, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    call nz, Call_070_46ff
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    db $e4
    rst $38
    ld l, l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, l
    rst $38
    cp h
    rst $38
    cp l
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, $ff
    inc c
    rst $38
    ld c, $ff
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    set 7, a
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld h, c
    rst $38
    and c
    rst $38
    adc $ff
    rst $38
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
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    inc l
    rst $38
    inc [hl]
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    dec a
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc d
    rst $38
    sub [hl]
    rst $38
    sub d
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ld e, b
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    di
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld a, h
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
    adc a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld b, $ff
    rst $30
    rst $38
    add $ff
    and $ff
    cp $ff
    ld a, $ff
    rst $18
    rst $38
    rst $18
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld c, e
    rst $38
    ld [$00ff], sp
    rst $38
    rlca
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    scf
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
    rst $28
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    xor a
    rst $38
    adc $ff
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    adc $ff
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp a
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    nop
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    scf
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
    ld a, e
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $03ff


    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $00
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
    ld a, h
    rst $38
    db $fc
    rst $38
    call c, Call_070_7cff
    rst $38
    ld c, b
    rst $38
    ld l, b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp b
    rst $38
    cp a
    rst $38
    inc de
    rst $38
    ld de, $91ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    sbc a
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
    add a
    rst $38
    add b
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr jr_070_7fa3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_070_7fb3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_070_7fc3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_070_7fd3

    ld [hl-], a

jr_070_7fa3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_070_7fe3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_070_7fb3:
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

jr_070_7fc3:
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

jr_070_7fd3:
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

jr_070_7fe3:
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
