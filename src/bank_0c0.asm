SECTION "ROM Bank $0c0", ROMX[$4000], BANK[$c0]

    cp $ff
    ldh a, [rIE]
    ld hl, sp-$01
    add b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $0380
    nop
    rlca
    nop
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
    add hl, bc
    or $12
    db $ed
    daa
    ret c

    rrca
    ldh a, [$57]
    xor b
    adc a
    ld [hl], b
    rrca
    ldh a, [$3e]
    pop bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $18
    db $20, $bf
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld bc, $007f
    ld e, l
    ld [bc], a
    or [hl]
    inc b
    ld l, [hl]
    nop
    add hl, de
    ld [$1099], sp
    jr nc, jr_0c0_4056

jr_0c0_4056:
    ld h, b
    jr nz, jr_0c0_4079

    ld b, b
    pop bc
    nop
    ld [bc], a
    add b
    add c
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
    nop
    rra
    nop
    db $fd
    cp $e0
    rst $38
    nop
    nop
    ld a, h
    cp $00
    rst $38
    add b

jr_0c0_4079:
    rst $28
    nop
    jr c, jr_0c0_407d

jr_0c0_407d:
    jp nz, $8000

    add b
    cp $88
    rst $38
    sub b
    ei
    add h
    rst $38
    adc b
    rst $38
    jr z, @+$01

    ld hl, sp-$01
    add sp, -$01
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    ld [hl], a
    rst $30
    rlca
    rst $20
    rla
    rra
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $0320
    ld b, b

jr_0c0_40a4:
    rlca
    add b
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
    sub b
    ld l, a
    db $10
    rst $28
    ld b, b
    cp a
    add c
    ld a, [hl]
    inc b
    ei
    ld a, [bc]
    push af
    sub l
    ld l, d

jr_0c0_40be:
    dec bc
    db $f4
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_0c0_40a4

    inc h
    sub b
    ld l, a
    ld c, $f1
    db $db
    dec h
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $f7
    inc c
    rst $38
    ld [$18e7], sp
    rst $38
    db $10
    rst $18
    jr nz, jr_0c0_40be

jr_0c0_40df:
    jr nz, jr_0c0_40df

    ld b, c
    ld a, a
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
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38

Jump_0c0_40ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0c0_410a

jr_0c0_410a:
    ret nz

    nop
    ld sp, hl
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    pop hl
    nop
    rlca
    ld h, [hl]
    ld a, [$970f]
    rrca
    ld [hl], a
    rrca
    rst $30
    rrca

jr_0c0_411f:
    ld [hl], a
    rrca
    nop
    dec bc
    dec b
    inc c
    inc bc
    rrca
    ld bc, $050b
    ld a, [bc]
    rlca
    dec c
    rlca
    dec c
    ld b, a
    rrca
    ld d, $0f
    nop
    rlca
    ldh [$ef], a
    ldh a, [$9f]
    pop hl
    dec a
    jp nz, $807f

    rst $38
    nop
    pop bc
    ld a, $84
    ld a, e
    ld bc, $04ff
    ei
    nop
    rst $38
    inc e
    rst $20
    dec sp
    call z, $9966
    and $19
    add $39
    xor d
    ld d, l
    jr c, jr_0c0_411f

    inc e
    db $e3
    cp c
    ld b, [hl]
    push af
    ld c, $d3
    inc l
    and a
    ld e, b
    cp $11
    adc $31
    sbc l
    ld h, d
    db $fd
    ld b, d
    ld a, b
    add a
    ld a, l
    add [hl]
    di
    inc c
    db $76
    adc c
    db $fc
    inc bc
    db $e3
    inc e
    ei
    inc c
    or [hl]
    ld c, c
    or $09
    ld a, h
    add e
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    sbc $21
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld [$0000], sp
    nop

jr_0c0_41ac:
    ld b, b
    nop
    rst $30
    ld [$fc00], sp
    nop
    rst $08
    nop
    ld bc, $1f1f
    inc bc
    rst $38
    nop
    call nz, $f800
    inc bc
    rst $30
    nop
    nop
    ld bc, $0702
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    rst $38

jr_0c0_41cf:
    nop
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [$01ff], sp
    rst $38
    add d
    ld a, a
    add c
    ld a, a
    ld h, e
    rst $38
    ld b, b
    rst $38
    adc d
    rst $30
    inc d
    rst $28
    nop
    rst $38
    ld [$4aff], sp
    or l
    ld h, $f9
    ld c, a
    ldh a, [$66]
    reti


    add [hl]
    ld sp, hl
    inc d
    db $eb
    jr z, jr_0c0_41cf

    ld [hl+], a
    db $dd
    call z, $eb33
    inc d
    pop hl
    ld e, $e6
    add hl, de
    ld [c], a
    dec e
    pop bc
    ld a, $a3
    ld e, h
    ld b, d
    cp l
    add l
    ld a, d
    ld [$0ff7], sp
    di
    sbc [hl]
    ld h, e
    ld a, [hl+]
    rst $10
    ld [hl], h
    adc a
    ld [hl], c
    adc [hl]
    pop af
    ld c, $f7
    inc c
    and d
    ld e, l
    xor c
    ld e, [hl]
    db $e3
    inc e
    ld e, e
    or h
    rst $00
    jr c, jr_0c0_41ac

    ld a, d
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, $f9
    add h
    ld a, e
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $07ff
    ld sp, hl
    dec b
    ei
    nop
    nop
    nop
    nop
    nop
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

jr_0c0_4250:
    nop
    nop
    nop
    rst $38
    nop
    db $fc
    ldh [$e7], a
    db $fc
    db $fc
    nop
    rrca
    rrca
    ccf
    jr nz, jr_0c0_4250

    nop
    nop
    nop
    nop
    ld a, a
    add b
    ld a, [$ff15]
    ld [bc], a
    rst $38
    inc b
    cp a
    ld b, b
    rst $30
    adc b
    nop
    nop
    db $10
    db $10
    ld [$0028], sp
    nop
    nop
    nop
    ld [bc], a

jr_0c0_427b:
    and d
    nop
    nop
    nop
    nop
    ld b, h
    ei
    jr jr_0c0_427b

    nop
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld b, h
    cp e
    db $10
    rst $28
    ld d, b
    xor a
    ld bc, $31fe
    adc $77
    adc b
    db $e3
    inc e
    and b
    ld e, a
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    sub e
    ld l, h
    dec b
    ld a, [$fe01]
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, d
    cp l
    inc h
    db $db
    adc a
    ld [hl], d
    rrca
    ld a, [c]
    adc c
    db $76
    adc a
    ld [hl], h
    cp $05
    cp $05
    cp d
    ld c, l
    cp h
    ld c, e
    add sp, $1f
    ldh [$1f], a
    ldh a, [$1f]
    add b
    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
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
    ld b, b
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rra
    nop
    pop hl
    nop
    rrca
    rra
    rra
    rst $38

jr_0c0_42fd:
    rst $38
    rst $38
    rst $38
    nop
    ld e, $00
    rlca
    add b
    ld bc, $20ff
    rst $38
    ld b, c
    db $fd
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    ld b, b
    rst $38
    sub b
    rst $28
    add b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $30
    ld [$04f7], sp
    rst $38
    dec c
    or $10
    rst $28
    ld [hl], h

jr_0c0_432b:
    rst $08
    jr c, jr_0c0_42fd

    add sp, $1f
    add b

jr_0c0_4331:
    ld a, a
    ldh [$1f], a
    ret nc

    ccf
    ret nz

    ccf
    ld l, d
    or l
    jr nc, jr_0c0_432b

    add b
    ld a, a
    ret nz

    ld a, a
    ld c, b
    rst $30
    ld [$80f7], sp
    rst $38
    add b
    rst $38
    ld bc, $61ff
    sbc a
    and c
    ld e, a
    add b
    ld a, a
    ld b, d
    cp a
    inc bc
    cp $c3
    ld a, $80
    ld a, a
    ld [$04f7], sp
    rst $38
    dec b
    cp $04
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop

jr_0c0_4369:
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr jr_0c0_4369

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    cp a
    and b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld hl, sp+$1f
    rst $18
    db $fc
    rst $38
    add b
    ldh [rP1], a
    ldh [rP1], a
    rlca
    nop
    ld a, b
    nop
    ldh a, [$f0]
    rrca
    rst $38
    ld [hl+], a
    ld a, [c]
    cpl
    ei
    ld d, [hl]
    rst $38
    jr z, jr_0c0_4331

    add h
    add b
    add h
    nop

jr_0c0_43b5:
    ld b, h
    ld b, h
    ld b, h
    ld [$0888], sp
    ld [$0800], sp
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $00fe
    rst $38
    nop
    rst $38
    jr nz, jr_0c0_43b5

    ldh [$5f], a
    nop
    rst $38
    add b
    rst $38
    ld de, $81ef
    rst $38
    adc c
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    ei
    dec b
    ei
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld de, $0fef
    di
    ld c, a
    or e
    ld c, a
    or e
    adc e
    ld [hl], a
    nop
    rst $38
    add l
    ld a, [hl]
    add l
    ld a, [hl]
    rlca
    db $fd
    rla
    db $fd
    ld bc, $05ff
    rst $38
    add [hl]
    ld a, l
    add h
    ld a, a
    rlca
    db $fd
    dec b
    rst $38
    ld [$2bff], sp
    db $dd
    dec hl
    db $dd
    cpl
    ret c

    ld a, a
    adc b
    ld l, l
    sbc d
    ld l, l
    sbc d
    add a
    nop
    add e
    nop
    di
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, d
    dec b
    inc [hl]
    dec bc
    add b
    ccf
    nop
    nop
    nop
    nop
    nop
    db $fc
    add hl, de
    ld a, a
    ldh [$f1], a
    nop
    cp $00
    rlca
    ld [bc], a
    ld c, $00
    ld a, b
    nop
    ld bc, $0000
    nop
    nop
    ret nz

    add b
    ret nz

    ld bc, $00c0
    add sp, $28
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, $42
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    jr nc, @+$80

    ld l, b
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    add b
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    ld bc, $00fb
    ld sp, hl
    nop
    pop af
    ld bc, $00f3
    di
    ld bc, $00fb
    di
    ld [bc], a
    rst $28
    ld b, $f7
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [$e8ff], sp
    rst $38
    ret nz

jr_0c0_4491:
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    ld a, a
    jr nz, jr_0c0_44e7

    nop
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    jr nz, jr_0c0_4531

    ret nz

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
    ld sp, hl
    ld b, $f4
    dec bc
    ld hl, sp+$07
    sub b
    ld l, a
    jr c, jr_0c0_4491

    ld b, b
    cp a
    ld [$00f7], sp
    rst $38
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    sbc a
    rst $38
    ld hl, $10ff
    rra
    ld c, d
    cp $00
    inc bc
    nop
    nop
    xor $ff
    nop
    inc [hl]
    nop

jr_0c0_44e7:
    ccf
    nop
    ret nz

    add b
    rst $18
    ld l, [hl]
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    db $fc
    ret nz

    ld a, $c0
    ccf
    adc e
    ld a, a
    rst $08
    ccf
    or $3f
    rst $38
    ccf
    db $fc
    inc a
    rst $38
    ccf
    ld a, a
    cp a
    cpl
    rst $38
    rrca
    rst $38
    nop
    ldh a, [$0c]
    db $fc
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fc

jr_0c0_4531:
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
    add e
    di
    pop bc
    ld sp, hl
    ld hl, sp-$02
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
    dec b
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
    inc b
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    nop
    nop
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    ccf
    ld bc, $00c3
    cp h
    ld [$80fb], sp
    add a
    jr jr_0c0_45c7

    jr nc, jr_0c0_4609

    ld a, c
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    nop
    jr nc, jr_0c0_4593

jr_0c0_4593:
    jr nz, @+$06

    ld a, a
    nop
    ld a, a
    ld hl, $a8bd
    rst $38
    ldh a, [rIE]
    ldh [$e0], a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    ret nz

    push af
    push af
    inc bc
    inc bc
    rrca
    rrca
    ld bc, $4081
    ldh [$1f], a
    rst $38
    ld a, $fe
    dec sp
    rst $38
    inc de
    rst $38
    ld [$081d], sp
    rst $38
    nop
    rra
    nop
    ld h, c
    add b
    db $fc
    ldh [rIE], a
    rst $38

jr_0c0_45c7:
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
    db $10
    rst $38
    nop
    ld hl, sp-$20
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
    ccf
    add b
    add b
    rlca
    rst $38
    add c
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    add b
    ld hl, sp+$00
    pop af
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca

jr_0c0_4609:
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    nop
    ld a, $00
    ld a, a
    nop
    ld a, [hl]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, l
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    add b
    ldh [$e0], a
    db $fc
    ld b, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp h
    cp $fc
    cp $00
    ld a, h
    nop
    rrca
    nop
    ccf
    add b
    add b
    ret nz

    db $fc
    add b
    rst $08
    ld h, b
    rst $38

jr_0c0_465e:
    jr nz, jr_0c0_465e

    rst $38
    rst $38
    rrca
    ccf
    nop
    add e
    add b
    pop hl
    ldh [$f0], a
    db $fc
    rst $38
    add d
    cp $f3
    rst $38
    ld hl, sp-$08
    nop
    ldh a, [rP1]
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
    db $fc
    rst $38
    nop
    rra
    pop hl
    pop hl
    rst $00
    rst $20
    rra
    rra
    rrca
    rrca
    ccf
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
    add d
    db $fd
    ld [bc], a
    db $fd
    ld bc, $09fe
    or $01
    cp $87
    ld hl, sp+$02
    db $fd
    add d
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    ldh [$30], a
    ldh a, [$38]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $fe
    cp $fe
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $08
    nop
    rra
    ld bc, $0707
    ccf
    inc bc
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld bc, $0f1f
    rra
    rrca
    ccf
    ld h, e
    rst $38
    cp h
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    ld bc, $0507
    rst $30
    dec c
    rrca
    adc a
    sbc a
    inc bc
    rrca
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld e, l
    ld [hl-], a
    db $fc
    ld [hl], d
    db $fc
    ld [hl-], a
    db $fc
    ld [hl-], a
    db $fc

jr_0c0_471a:
    jr c, jr_0c0_471a

jr_0c0_471c:
    jr nc, jr_0c0_471c

    jr @+$01

    inc e
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c0_4777

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c0_478e

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c0_4777:
    dec h
    ld h, $27
    jr z, jr_0c0_47a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c0_47bc

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c0_478e:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_0c0_47d3

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

jr_0c0_47a5:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0c0_47bc:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop

jr_0c0_47d3:
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    ld bc, $0704
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    ld bc, $0701
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0207
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    rlca
    rlca

jr_0c0_4962:
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca

jr_0c0_49b0:
    nop
    rst $38

jr_0c0_49b2:
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp [hl]
    ld b, c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_0c0_49b2

    jr @-$4b

    ld c, h
    rst $08
    jr nc, jr_0c0_49b0

    jr nz, jr_0c0_4962

    ld [hl], b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    or a
    ld c, b
    rst $38
    nop
    or $09
    ei
    inc b
    ld d, a
    xor b
    cp $01
    rst $30
    ld [$22dd], sp
    cp e
    inc b
    ei
    inc b
    ei
    inc b
    cp $01
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    pop af
    inc c
    ei
    inc b
    ld a, [$ff04]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fc
    inc bc
    rst $38
    ld bc, $03fd
    db $db
    dec h
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    dec sp
    rst $00
    ei
    rlca
    ei
    rlca
    ld a, [c]
    rrca
    rst $38
    rlca
    and $1f
    cp $07
    and $1f
    add $3f
    add $3f
    adc a
    ld a, a
    adc a
    ld a, a
    ld l, h
    sbc a
    ret z

    ccf
    rra
    rst $38
    sbc $3f
    sbc $3f
    sbc h
    ld a, a
    and e
    ld a, a
    cp l
    ld a, a
    cp [hl]
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    ld hl, sp-$05
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ldh a, [$f6]
    ldh a, [$f4]
    ld h, b
    rst $30
    ld h, b
    db $e4
    db $e4
    ld a, a
    add h
    ld a, a
    call nz, $c83f
    ccf
    ret z

    ccf
    adc b
    ld a, a
    ret z

    ccf
    adc b
    ld a, a
    nop
    add hl, bc
    ld bc, $010b
    dec de
    ld bc, $070f
    rra
    ld bc, $0b1f
    rra
    ld bc, $071f
    rra
    ld bc, $0f1f
    rra
    rlca
    rra
    dec e
    rra
    rrca
    cpl
    ld bc, $012f
    ccf
    ld bc, $003f
    dec a
    ld bc, $004f
    ld h, b
    nop
    ld [hl], b
    nop
    ld b, b
    add b
    ld [hl], b
    ld bc, $00bf
    db $fc
    ld bc, $00bf
    rst $18
    nop
    ret c

    ld b, $fe
    rrca
    cp a
    ld b, $7e
    ld a, c
    ld a, a
    inc bc
    ld a, a
    add d
    rst $38
    cp $ff
    inc a
    rst $38
    db $10
    jr nc, jr_0c0_4abb

jr_0c0_4abb:
    jr nc, jr_0c0_4b1d

    ldh [$1f], a
    rra
    ld a, [de]
    rra
    nop
    rrca
    ld h, d
    rst $38
    adc b
    adc [hl]
    nop
    ld a, a
    ld [c], a
    rst $38
    ld [bc], a
    rra
    ld b, d
    ld a, a
    inc b
    ccf
    ld hl, $073f
    rst $38
    rla
    rst $38
    ld [hl], a

jr_0c0_4ad9:
    rst $38
    inc c
    rrca
    nop
    nop
    db $fc
    cp $60
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld d, e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $0707
    ld a, b
    rst $38
    ld b, $06
    nop
    nop
    nop
    ccf
    nop
    ldh a, [rP1]
    inc e
    add b
    ld a, a
    ld a, [hl]
    rst $38
    ld sp, hl
    ld c, $7f
    pop af
    jr nc, jr_0c0_4ad9

    add b
    ld a, h
    nop
    ld hl, sp+$00
    add sp, -$80
    ret nz

    add b
    ld hl, sp-$58
    cp $b0
    rst $38
    db $fc
    db $fc
    pop hl
    pop hl
    rst $38

jr_0c0_4b1d:
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld bc, $9fff
    rst $38
    ccf
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    rrca
    rrca
    rst $08
    jr nz, jr_0c0_4b52

    ld b, $07
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    ccf
    ccf
    pop bc
    pop bc
    cp $fe
    cp a
    rst $38
    db $fc
    db $fc
    add b
    add b
    ld [bc], a
    inc bc
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    ld [hl], b
    rst $38

jr_0c0_4b52:
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    rlca
    rst $28
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    db $ed
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$25
    jp c, $dd23

    inc bc
    db $fc
    rst $38
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    inc c
    db $fd
    db $fc
    rst $38
    nop
    ld hl, sp+$03
    inc bc
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    cp h
    cp h
    nop
    nop
    rlca
    db $fc
    ld a, $cb
    ld a, $ff
    ld a, [c]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl]
    ld bc, $0007
    ld a, [bc]
    rrca
    inc bc
    inc bc
    inc e
    rra
    ld c, $7f
    ld c, $ff
    nop
    rlca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    db $fc
    cp $e3
    rst $38
    ld a, [hl]
    ld a, a
    nop
    db $fd
    nop
    nop
    or b
    or b
    nop
    ld a, h
    ld a, e
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    jr c, jr_0c0_4c02

    nop
    ld [bc], a
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    add a
    add a
    ld e, $1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld bc, $0bff
    rst $38
    push bc
    db $fd
    rst $30
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    ei
    ei
    ld a, a
    ld a, a
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld [bc], a

jr_0c0_4c02:
    ld [c], a
    inc bc
    jp hl


    ld bc, $83c3
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    inc e
    call c, $f8f0
    add c
    db $fd
    ccf
    ccf
    rst $38
    rst $38
    rra
    rra
    add b
    sub b
    add b
    xor h
    add b
    add b
    add e
    ei
    add d
    cp a
    add e
    rst $38
    adc a
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    cp $80
    add b
    add b
    sub [hl]
    add b
    ldh [$80], a
    ret z

    add b
    add b
    ret nz

    rst $08
    db $fc
    cp $03
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    ccf
    ccf
    nop
    nop
    cp $fe
    cp h
    db $fc
    ld bc, $0001
    ccf
    rst $38
    rst $38
    nop
    ccf
    ld e, $7f
    ldh [rIE], a
    nop
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld b, $ff
    ld l, h
    rst $38
    ld a, [hl-]
    rst $38
    nop
    cp $00
    cp $98
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $ff
    rst $38
    db $fd
    rst $38
    cp a
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
    ld sp, $e3a9
    ld d, c
    add e
    ld h, c
    add a
    ld b, e
    cp $ff
    sbc b
    rst $38
    add b
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld a, [hl]
    ld a, [hl]
    db $fd
    db $fd
    nop
    ld hl, sp-$20
    db $fc
    rst $38
    rst $38
    nop
    ccf
    nop
    jr nz, jr_0c0_4cf8

    ld h, b
    rst $18
    pop de
    rra
    or b
    sbc a
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    rst $38
    rlca
    rrca
    rlca
    rrca
    inc bc
    rlca
    dec b
    rlca
    ld [bc], a
    rlca
    ld bc, $041f
    ld a, a
    ld bc, $003f
    rst $38
    dec b
    rst $38
    add h
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
    db $fd
    rst $38
    ld a, [hl]
    ld a, a
    ld b, $7f
    di
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    dec b
    rst $38
    push bc
    rst $38
    ld b, $ff
    dec b
    rst $38
    nop
    rst $38

jr_0c0_4cf8:
    ld b, b
    rst $38

jr_0c0_4cfa:
    adc d
    rst $38
    jr nz, jr_0c0_4cfa

    pop bc
    ret


    ld h, [hl]
    or $ef
    rst $38
    rst $38
    rst $38
    cp $ff
    adc $cf
    jp c, $e4fb

    db $e4
    ret z

    ld hl, sp-$06
    ei
    ld l, d
    rst $38
    push hl
    rst $38
    db $fd
    rst $38
    sbc $ff
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    dec hl
    xor b
    rst $20
    ld h, c
    push bc
    ld b, e
    rst $38
    rst $38
    add d
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ldh [$e8], a
    ccf
    ld a, a
    ld e, $3f
    nop
    add c
    nop
    rst $38
    nop
    cp $00
    ldh a, [rSB]
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
    ld b, b
    rst $38
    ld bc, $ff01
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ldh a, [rIE]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    ld a, h
    inc a
    ld a, h
    inc a
    ld a, h
    inc a
    inc a
    ccf
    cp [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ccf
    nop
    jr nz, jr_0c0_4d8f

jr_0c0_4d8f:
    jr jr_0c0_4d94

    inc bc
    rrca
    ld a, a

jr_0c0_4d94:
    rrca
    sbc a
    dec bc
    rra
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    inc bc
    inc bc
    nop
    ld a, h
    ld b, b
    ldh [$7c], a
    db $fc
    cpl
    rst $38
    adc d
    sbc $f3
    rst $38
    sub a
    rst $38
    rrca
    rst $38
    rst $18
    or [hl]
    ld a, $16
    ld a, a
    rra
    di
    rst $38
    ld d, $ff
    rla
    rst $38
    ld hl, sp-$01
    rst $08
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
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
    ld l, [hl]
    sbc c
    cp c
    add $00
    rst $38
    ret nc

    cpl
    ld [$0ef7], sp
    ld sp, hl
    ld bc, $8bfe
    or $41
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$3f]
    ld a, b
    rra
    jr jr_0c0_4e2c

    inc d
    ld a, a
    ld d, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc hl
    nop
    nop
    nop
    ld l, [hl]
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp $81eb


    rst $00
    add d
    rst $20

jr_0c0_4e2c:
    jp $81c7


    jp $ffc0


    nop
    ccf
    nop
    nop
    ret nz

    or $80
    add e
    ret nz

    ldh [$e0], a
    db $fc
    ldh [rIE], a
    ld a, h
    inc hl
    ret nc

    ccf
    rst $38
    rst $38
    call z, Call_0c0_7fff
    rst $38
    rst $08
    rst $38
    pop bc
    rst $38
    rst $08
    rst $38
    nop
    ld hl, sp+$07
    rlca
    or b
    ldh a, [$08]

jr_0c0_4e57:
    ld [$8000], sp
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    or h
    ld c, e
    ld h, [hl]
    sbc c
    sub a
    ld l, b
    ld b, l
    cp d
    inc sp
    call z, $e619
    inc c
    di
    jr z, jr_0c0_4e57

    or $09
    cp c
    add $58
    rst $20
    inc h
    ei
    ld b, $f9
    ld d, $f9
    inc bc
    db $fc
    dec b
    cp $82
    rst $38
    ld b, e
    db $fd
    ld b, e
    db $fc
    inc sp
    db $ec
    inc sp
    db $fc
    dec e
    ld a, [$fc0b]
    dec b
    cp $03
    cp $01
    rst $38
    add d
    db $fd
    add e
    db $fc
    ld b, c
    cp $f1
    xor $e0
    rst $38
    ld hl, sp-$09
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    rst $30
    cp $37
    cp $a7
    rst $38
    db $db
    rst $38
    ld a, e
    ei
    ld a, e
    rst $38
    ld a, c
    rst $38
    jr c, @+$41

    ret nc

    db $d3
    ld b, h
    rst $00
    nop
    rlca
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rrca
    rrca
    nop
    ld l, a
    cp $ff
    rst $38
    rst $38
    nop
    ei
    add b
    add b
    ld h, b
    ld h, b
    ld [bc], a
    ld b, $03
    rrca
    rlca
    rrca
    ld b, $3f
    inc b
    db $fd
    inc b

jr_0c0_4eed:
    db $fc
    ld b, $fe
    rrca
    rst $38
    inc c
    ld a, a
    inc c
    rra
    dec b
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld d, b
    xor a
    ldh [$1f], a
    jr jr_0c0_4eed

    sbc b
    ld h, a
    call z, $c333
    inc a
    ld sp, $b1ce
    ld c, a
    ld e, [hl]
    and c
    rra
    ldh [$57], a
    xor b
    ld [hl], b
    adc a
    inc a
    jp $e01f


    dec de
    db $e4
    rst $38
    nop
    db $eb
    inc d

jr_0c0_4f22:
    ld e, a
    and b
    cp a
    ret nz

jr_0c0_4f26:
    ld a, a
    ret nz

    sbc a
    ld h, b
    rst $18
    jr nc, @-$17

    jr jr_0c0_4f22

    inc c
    ld sp, hl
    ld b, $fc
    inc bc
    cp $81
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld h, b
    rst $18
    jr nc, jr_0c0_4f26

    jr @+$01

    ld [$04ff], sp
    ld a, a
    add d
    ld a, a
    add c
    cp $01
    cpl
    ret nc

    jp $a1bc


    sbc $ff
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    ld a, b
    ccf
    inc a
    rra
    inc a
    rra
    ld e, $00
    rrca
    nop
    db $fd
    adc a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $fe
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $807f
    sbc a
    add c

jr_0c0_4f77:
    cp c
    db $d3
    rst $18
    sbc $de
    sbc $de

jr_0c0_4f7e:
    rst $18
    rst $18
    adc e
    db $f4
    ldh [$9f], a
    add b
    rst $38
    sub b
    rst $28
    ldh [$9f], a

jr_0c0_4f8a:
    ret nz

    rst $38
    nop
    ccf
    nop
    rra
    ld a, b
    add b
    cp h
    ld b, b
    rst $18
    jr nz, jr_0c0_4f7e

    jr jr_0c0_4f8a

    ld c, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    xor c
    sub $a0
    ld e, a
    ld d, b
    xor a
    jr nc, jr_0c0_4f77

    sbc h
    ld h, e
    ld c, d
    or l
    pop bc
    ld a, $e5
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    xor c
    nop
    db $db
    nop
    and h
    nop
    ldh [rP1], a
    ldh a, [rP1]
    pop hl
    nop
    ldh a, [rP1]
    ld b, b
    add b
    ldh [rLCDC], a
    ldh a, [rNR41]
    or b
    db $10
    ldh a, [$08]
    cp b
    inc b
    cp h
    ld [bc], a
    sbc [hl]
    ld bc, $0082
    ld b, b
    add b
    ld b, b
    add b
    db $ec
    ld b, b
    cp $20
    di
    db $10
    ld l, e
    sub b
    ld a, l
    adc b
    ld l, [hl]
    add h
    daa
    jp nz, $c32c

    ld [hl-], a
    pop bc
    dec de
    ldh [rNR10], a
    cp $38
    rst $38
    cp $ff
    rst $38
    rst $38
    inc a
    db $fc
    ld [bc], a
    inc bc
    ccf
    ccf

jr_0c0_4ffe:
    ld b, $07
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    ldh a, [$f7]
    ccf
    ccf
    pop hl
    pop hl
    sbc c
    sbc a
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld hl, sp-$01
    rst $18
    rst $38
    ld a, a
    rst $38
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld a, a
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    jr nc, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    cp [hl]
    ld b, l
    sbc l
    ld h, d
    ld l, [hl]
    ld de, $00af
    sub a
    nop
    dec c
    ld [bc], a
    rlca
    nop
    cpl
    nop
    inc b
    nop
    inc bc
    nop
    ld h, e
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc de
    nop
    adc c
    nop
    call Call_0c0_6600
    nop
    dec de
    jr nz, jr_0c0_4ffe

    db $10
    ld h, a
    ld [$04bf], sp
    rst $38
    ld [bc], a
    rst $28
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ccf
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    rra
    nop
    rlca
    nop
    cp a
    sbc a
    sbc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, $fe
    adc l
    cp a
    ld hl, sp-$01
    call c, Call_0c0_7ffd
    ld a, a
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    nop
    ldh a, [$c0]
    rst $38
    rst $38
    rst $38
    nop
    nop

jr_0c0_50b0:
    ldh a, [$f0]
    nop
    ldh a, [rIE]

jr_0c0_50b5:
    rst $38
    cp $ff
    ld a, c
    ei
    ld b, $fe
    nop
    cp $00
    db $fd
    add b
    inc bc
    ldh [rIF], a
    ldh a, [rTAC]
    ld a, h
    add c
    sbc a
    ld h, b
    rst $28
    db $10
    di
    inc c
    db $fd
    ld [bc], a
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_0c0_50b5

    db $10
    rst $28
    dec c
    di
    or [hl]
    ld c, c
    db $db
    inc h

jr_0c0_50de:
    db $fc
    inc de
    ei
    inc c
    db $fd
    ld b, $fc
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_0c0_50de

    jr nc, jr_0c0_50b0

    ld h, b
    rst $30
    ld [$d12e], sp
    rst $08
    ldh a, [$bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rrca

jr_0c0_5123:
    rst $38
    ld a, [$00ff]
    nop
    ldh [$f0], a
    ld b, b
    di
    ret nz

    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    cp [hl]
    cp $3f
    ccf
    rst $38
    rst $38
    rra
    rra
    ld l, b
    rst $38
    ld hl, sp-$01
    ld bc, $003f
    ld bc, $7f00
    add b
    add b
    nop
    ldh [$fe], a
    cp $3f
    ccf
    ld bc, $0ec1
    cp $00
    rst $38
    jr nc, jr_0c0_5123

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    db $fc
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, jr_0c0_5185

    ei
    call nz, $f83f
    rlca
    adc b
    rst $30
    jr nz, @+$01

    ret nc

    ccf
    xor b
    ld e, a
    sub h
    ld l, a
    db $e3
    rra
    ldh a, [rIF]
    db $fc

jr_0c0_5185:
    inc bc
    ld h, h
    sbc e
    ret nc

    cpl
    call c, $e223
    dec e
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld sp, hl
    ld b, $f8
    rlca
    call nz, $c03b
    ccf
    ldh [$1f], a
    ret nz

    ccf
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $db
    db $e4
    db $fc
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $0701
    rlca
    add b
    rst $38
    nop
    rlca
    inc b
    rra
    nop
    add b
    nop
    nop
    add b
    add b
    db $eb
    db $eb
    rst $38
    rst $38
    db $fd
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    jr nz, jr_0c0_51d7

jr_0c0_51d7:
    nop
    nop
    nop
    ldh a, [$f8]
    ret nz

    ret nz

    jr nc, jr_0c0_521f

    ret nz

    ret nz

    db $fc
    rst $38
    rrca
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    ret z

    ret


    add b
    rst $00
    nop
    ld a, b
    nop
    rlca
    nop
    rra
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld [hl+], a

jr_0c0_5209:
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    jp z, Jump_0c0_40ff

    rst $38
    ld h, b
    cp a
    ld e, b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    nop

jr_0c0_521f:
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_0c0_5209

    db $10
    rst $28
    nop
    rst $38
    ld [$30ff], sp
    nop
    adc a
    nop
    db $ec
    nop
    and $00
    db $ec
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $08
    ldh a, [rP1]
    db $fc
    ret nz

    rst $38
    add b
    ret c

    ldh a, [$fa]
    rst $38
    rst $38
    rrca
    rst $38
    inc b
    db $fc
    ld h, b
    rst $38
    nop
    ld [hl], a
    ld de, $0011
    inc bc
    nop
    nop
    rst $38
    rst $38
    pop bc
    rst $08
    di
    di
    ret nz

    db $fd
    ccf
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    db $10
    jr nc, jr_0c0_526d

jr_0c0_526d:
    rrca
    nop
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    ld l, l
    nop
    db $db
    nop
    ld b, c
    rlca
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld bc, $00e0
    pop hl
    nop
    pop bc
    ld bc, $81e7
    ld a, a
    pop hl
    rra
    ld sp, hl
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
    inc b
    rst $38
    nop
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    ld b, h
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    add h
    rst $38
    jp nz, Jump_0c0_71ff

    rst $38
    ld a, [bc]
    rst $38
    ld d, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld sp, hl
    nop
    pop bc
    nop
    cpl
    nop
    call $e500
    nop
    db $fd
    nop
    cp l
    nop
    ld c, b
    nop
    call c, $df00
    ret nz

    cp a
    db $fc
    ld e, e
    rst $38
    pop de
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld sp, hl
    rlca
    rrca
    nop
    pop bc
    db $10
    ccf
    add b
    add l
    ldh [$e3], a
    rst $38
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ld [hl], a
    rst $30
    nop
    rst $38
    nop
    ccf
    nop
    ld [hl-], a
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    rrca
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, b
    db $fc
    ld a, b
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ld hl, sp-$10
    ld a, b
    ldh a, [$d8]
    ld [hl], b
    ld a, [c]
    inc e
    ld hl, sp+$0f
    cp $03
    add b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    ld [$54ff], sp
    rst $38
    ld [hl+], a
    rst $38
    ld b, $ff
    jp z, $e5ff

    rst $38
    db $76
    rst $38
    xor d
    nop
    ld a, [$ee00]
    nop
    call c, $fe00
    nop
    inc bc
    nop
    ld bc, $8100
    nop
    ld bc, $4300
    nop
    pop hl
    nop
    ret nc

    ret nz

    ccf
    db $fc
    inc bc
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    cp $fe
    ld d, a
    rst $38
    inc bc
    dec sp
    nop
    cp l
    nop
    rst $38
    ret nz

    cp $04
    push hl
    nop
    ldh [$fc], a
    db $fc
    rst $38
    rst $38
    ld bc, $0081
    ld hl, sp-$01
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    add b
    ldh a, [$80]
    db $ed
    ld a, [c]
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    dec a
    rra
    ld e, $ef
    inc c
    rst $38
    inc c
    rst $30
    ld c, $07
    ld c, $07
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    cp $0e
    ld hl, sp+$04
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_0c0_53e9

    rst $38
    inc b
    rst $38
    ld hl, $04ff
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    ld [$00ff], sp
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    sub c

jr_0c0_53e9:
    nop
    jp z, Jump_0c0_6400

    nop
    reti


    nop
    ld e, b
    nop
    ret nz

    nop
    nop
    nop
    jr nz, jr_0c0_53f8

jr_0c0_53f8:
    ld b, b
    nop
    db $ed
    ret nc

    rst $38
    db $fc
    ld a, e
    rst $38
    nop
    inc bc
    ld a, b
    ld a, e
    sbc a
    sbc a
    rst $38
    rst $38
    nop
    add b
    nop
    sub b
    nop
    jr nz, jr_0c0_540f

jr_0c0_540f:
    ld b, b
    nop
    add sp, $3f
    ccf
    cp e
    cp e
    ld sp, hl
    ld sp, hl
    ld a, $3e
    ld bc, $fe01
    cp $ff
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    add sp, $60
    ld [c], a
    ld h, b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

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
    cp $80
    db $fc
    add b
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
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    jr @+$01

    add [hl]
    rst $38
    ld d, e
    nop
    nop
    nop
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
    ret nz

    nop
    jr nc, jr_0c0_5484

jr_0c0_5484:
    jr nc, jr_0c0_5486

jr_0c0_5486:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld l, $90
    db $eb
    ret nc

    nop
    db $fc
    nop
    di
    ret nz

    db $dd
    ldh [$e0], a
    nop
    jr nz, jr_0c0_549b

jr_0c0_549b:
    stop
    nop
    add b
    sub b
    nop
    inc b
    add b
    sub b
    ld hl, sp-$04
    add b
    xor l
    nop
    ld h, $fe
    cp $ff
    rst $38
    cp $fe
    db $fc
    rst $38
    cp b
    ei
    ld hl, sp-$01
    ld a, h
    ld a, a
    ld c, $8f
    ldh [$e3], a
    db $fc
    db $fc
    ldh a, [$fb]
    nop
    cp [hl]
    ld b, b
    cp $e8
    rst $38
    add hl, sp
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rrca
    ld bc, $c39f
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add sp, -$01
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $40
    rst $38
    add b
    nop
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c0_5531

jr_0c0_5531:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c0_5541

jr_0c0_5541:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_0c0_5551

jr_0c0_5551:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c0_5561

jr_0c0_5561:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c0_5571

jr_0c0_5571:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    nop
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
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ei
    rlca
    db $ec
    rrca
    or b
    ccf
    ld d, h
    rst $38
    pop de
    rst $38
    ld b, b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add hl, bc
    db $fc
    inc de
    ld hl, sp+$07
    ldh a, [$1f]
    ldh [$3f], a
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
    cp e
    ld b, h
    add hl, sp
    add $b9
    ld b, [hl]
    cp h
    ld b, e
    ld e, $e1
    ld e, $e1
    ld e, $e1
    dec b
    ld a, [$fe01]
    ld bc, $02ff
    rst $30
    dec b
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    nop
    ccf
    nop
    cpl
    nop
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    ld [hl], a
    rst $30
    rrca
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    ld c, $f1
    sub $29
    ld [hl], c
    adc [hl]
    rst $28
    db $10
    and $19
    sbc h
    ld h, e
    ld a, $c1
    ld a, [hl]
    add c
    db $ed
    inc de
    rst $30
    dec bc
    push hl
    rra
    rst $20
    rra
    rst $18
    cpl
    sbc a
    ld a, a
    ld a, a
    cp a
    ld bc, $0f77
    rst $38
    rra
    rst $38
    inc e
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    ldh [rP1], a
    db $fc
    ld b, b
    db $fd
    nop
    db $fd
    inc b
    rst $38
    nop
    scf
    nop
    add c
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    cp $ff
    nop
    stop
    ldh [rP1], a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld bc, $01ff
    rst $38
    nop

jr_0c0_5889:
    rst $38
    ld bc, $0007
    add b
    ld bc, $81ff
    ld a, a
    inc bc
    rst $38
    add l
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    add b
    ld a, a
    ld [hl+], a
    rst $18
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0c0_5889

    add d
    ld a, a
    ld b, b
    cp a
    ld bc, $01ff
    ld bc, $0302
    inc b
    rlca
    ld [$110f], sp
    rra
    nop
    cpl
    jr nz, @+$41

    ld c, a
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    ld [hl], b
    db $fc
    pop hl
    rst $38
    add b
    cp $80
    ldh [rNR42], a
    rst $38
    nop
    ld hl, sp+$03
    rlca
    inc hl
    cp a
    inc bc
    ld a, a
    ld b, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    inc bc
    dec de
    rlca
    add a
    rrca
    ld a, a
    sbc [hl]
    rst $38
    adc a
    rst $38
    dec b
    rst $38
    inc bc
    rlca
    rrca
    rst $38
    ld e, a
    rst $38
    or $f7
    ld [hl], $ff
    inc l
    rst $38
    ld c, b
    ret z

    ld d, b
    ldh a, [$d9]
    rst $38
    or e
    rst $38
    or b
    db $fc
    jr nz, jr_0c0_594d

    nop
    nop
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
    inc bc
    ccf
    rlca
    ccf
    rrca
    ccf
    rrca
    ccf
    ld e, $7f
    ld l, $7f
    cpl
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
    rst $38
    rst $38
    ccf
    rst $38
    db $fc
    db $fc
    sbc $fe
    ccf
    rst $38
    rst $38
    rst $38
    or b
    ldh a, [$a7]
    rst $20
    or e
    di
    daa
    rst $20
    rra

jr_0c0_594d:
    rra
    ld a, a
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    cp a
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld hl, sp+$00
    ld h, e
    nop
    rst $20
    rst $08
    rst $38
    rst $00
    rst $38
    cp b
    rst $38
    rst $38
    rst $38
    and e
    cp a
    ld a, b
    rst $38
    ld a, $bf
    ld hl, sp-$08
    ret nz

    rst $38
    nop
    nop
    ld bc, $fe01
    rst $38
    sbc a
    rst $38
    nop
    ccf
    ld bc, $fcf3
    db $fc
    ldh [rIE], a
    di
    rst $38
    pop af
    rst $38
    ld a, [$fdff]
    cp $fe
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld c, a
    rst $08
    add b
    pop hl
    add b
    add c
    rst $38
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $28
    rst $38
    and b
    db $fc
    rst $00
    rst $00
    add b
    rst $00
    ret nz

    rst $20
    rra
    rra
    nop
    rra
    ret nz

    xor $00
    rrca
    ret nz

    rst $38
    ret nz

    db $fd
    db $e3
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld a, h
    db $fc
    rra
    sbc a
    inc bc
    add e
    db $fc
    db $fc
    ldh [$e0], a
    rlca
    add a
    rst $38
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    nop
    rst $28
    nop
    db $e3
    nop
    ret nz

    nop
    nop
    nop
    rst $38
    ld hl, sp-$08
    add b
    add b
    rla
    rst $38
    ldh [rIE], a
    add b
    cp a
    ld b, $ff
    inc c
    db $fc
    inc bc
    inc bc
    ldh [rIE], a
    ld a, b
    ld a, a
    db $fc
    db $fc
    rrca
    rst $38
    add b
    ei
    ldh [rIE], a
    rst $28
    rst $28
    rrca
    rrca
    or b
    rst $08
    ld h, b
    sbc a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc l
    rst $30
    ret nz

    rst $20
    nop
    ei
    nop
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ld a, $ff
    pop hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    rra
    rra
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rra
    rrca
    ccf
    ccf
    rst $38
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c73f
    rst $38
    rst $38
    rst $38
    ld c, $3f
    daa
    ccf
    db $fd
    rst $38
    push bc
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, $ff
    ld hl, sp-$01
    nop
    rrca
    add c
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $28
    rst $28
    rlca
    rra
    rra
    rst $38
    ld a, b
    ei
    cp a
    cp a
    rst $38
    rst $38
    ld e, $e3
    inc a
    rst $10
    or h
    ld e, a
    inc a
    rst $08
    inc a
    rst $08
    inc e
    rst $20
    inc e
    rst $20
    ld c, h
    or a
    nop
    ld h, h
    nop
    inc b
    nop
    db $fc
    nop
    inc b
    nop
    db $e4
    nop
    db $fc
    add b
    ld hl, sp-$20
    db $fc

jr_0c0_5ab0:
    jr nz, jr_0c0_5ab0

    inc e
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    add a
    inc bc
    inc bc
    rst $00
    rst $38
    rst $00
    rst $38
    ld l, a
    rst $38
    ld a, [hl]
    cp $74
    db $fc
    ld l, h
    db $fd
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    db $f4
    ld b, c
    ret


    rst $20
    rst $30
    rlca
    rst $00
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    jp nc, Jump_000_00ff

    ret nz

    nop
    nop
    rlca
    nop
    rrca
    add h
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld [$f807], sp
    rrca
    ld [$100f], sp
    rrca
    jr nc, @+$11

    jr nc, @+$11

    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    jr nz, jr_0c0_5b2e

    ldh [$72], a
    add e
    ld h, l
    add c
    ld a, a
    add c
    db $fd
    ld bc, $01fb
    ei
    inc bc
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    add hl, de
    ld sp, hl
    rlca
    ld a, [c]
    ccf
    jp z, $f43f

    ccf
    push hl
    ld a, $0b
    db $fc

jr_0c0_5b2e:
    rla
    ld hl, sp+$00
    ld b, b
    nop
    add c
    add c
    add e
    ld a, h
    rst $38
    nop
    sbc $00
    dec l
    ccf
    ccf
    db $10
    ld e, a
    ld sp, hl
    rst $38
    dec bc
    cp a
    rrca
    cp a
    dec a
    ld a, a
    ld a, a
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    jp nz, $fee2

    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    nop
    nop
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $28
    db $10
    inc de
    db $fc
    ld d, b
    cp a
    db $10
    rst $38
    ld de, $10fe
    rst $38
    db $10
    rst $38
    inc d
    ei
    add b
    ld a, a
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
    ld [$6df7], sp
    sbc b
    ld h, c
    sbc b
    ld [hl], c
    adc b
    ld sp, $31c8
    ret z

    ld sp, $33c8
    ret z

    inc sp
    call z, $8e71
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    ld e, $c3
    ld a, $ce
    dec a
    sbc [hl]
    ld a, l
    ccf
    db $fd
    jr nc, @+$7b

    ld a, b
    ld sp, hl

jr_0c0_5bb4:
    ldh a, [$f2]
    jr c, jr_0c0_5bb4

    rrca
    rra
    ld a, c
    ei
    ld hl, sp-$01
    ld bc, $80ff
    rst $38
    add b
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld b, $fe
    ccf
    rst $38
    ldh a, [$fe]
    sbc h
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec d
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $41fe
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0c0_5bef:
    nop
    nop

jr_0c0_5bf1:
    rst $38
    nop
    rst $38
    nop

jr_0c0_5bf5:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    jr nc, jr_0c0_5bef

    jr nc, jr_0c0_5bf1

    jr nz, @+$01

    jr nc, jr_0c0_5bf5

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld d, a
    db $e3
    ld d, a
    db $e3
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld e, a
    pop hl

Call_0c0_5c1c:
    ld e, a
    db $e3
    ld d, a
    db $eb
    ld e, a
    and $5d
    and $5f
    db $ec
    ld e, a
    db $ec
    cp a
    jp z, $cabd

    cp b
    rst $10
    ld a, [hl]
    sub a
    nop
    cpl
    nop
    cpl
    ld bc, $065f
    ld e, a
    adc h
    rst $18
    pop af
    rst $38
    nop
    rst $38
    ldh a, [$fe]
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    ld a, [c]
    ld hl, sp-$04
    db $fc
    db $fc
    rst $38
    rst $38
    rlca
    ld h, a
    rst $38
    rst $38
    rra
    rra
    push af
    rst $38
    cp $ff
    db $fc
    rst $38
    nop
    ld bc, $ff03
    sbc h
    rst $38
    nop
    rst $38
    add sp, $17
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

jr_0c0_5c75:
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld b, [hl]
    ld sp, hl
    ld [hl], c
    adc $11
    xor $10
    rst $28
    db $10
    rst $28
    inc b
    ei
    inc b
    ei
    inc d
    db $eb
    jr jr_0c0_5c75

    inc c
    di
    dec sp
    ld b, [hl]
    db $db
    ld h, [hl]
    bit 6, [hl]
    db $fd
    ld [hl], e
    push hl
    db $eb
    db $e4
    res 2, [hl]
    jp hl


    or d
    db $fd
    ld a, [c]
    db $fd
    set 7, h
    ei
    call c, $bcdf
    db $db
    cp h
    jp c, $8fbd

    ld a, c
    ld [hl], l
    ei
    nop
    ld a, [c]
    nop
    ld [c], a
    add b
    push hl
    nop
    push bc
    nop
    call $d2c0
    ld a, b
    ld a, d
    rrca
    ld c, a
    ret nz

    ret


    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    rra
    nop
    ldh a, [rP1]
    nop
    rra
    nop
    sub b
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    ld c, $f9
    ld c, $f9
    dec bc
    db $fc
    dec h
    sbc $a4
    ld e, a
    inc [hl]
    rst $08
    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld d, [hl]
    xor e
    rrca
    pop af
    ld e, a
    and c
    ld a, $c1
    ld l, a
    sub b
    ccf
    ret nz

    inc hl
    call c, $f807
    rla
    add sp, $1f
    ldh [$1f], a
    ldh [$3b], a
    call nz, $d02f
    dec c
    inc de
    dec c
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    db $dd
    inc bc
    db $fd
    add e
    adc l
    di
    db $fd
    or e
    ld e, c
    rst $30
    ld l, c
    rst $10
    ld [hl], d
    rst $08
    ld [hl], d
    rst $08
    ld h, e
    sbc $e2
    cp a
    ld h, d
    rst $38
    ld [c], a
    ld a, a
    nop
    ld [c], a
    nop
    ld [c], a
    nop
    ldh [rP1], a
    ld [c], a
    nop
    ld [c], a
    ld a, a
    rst $38
    add hl, de
    ei
    ldh a, [$f2]
    rlca
    ld a, a
    cp $ff
    ld hl, sp-$07
    ret nc

    call c, Call_0c0_5c1c
    inc e
    inc a
    sbc [hl]
    cp [hl]
    add e
    di
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld a, h
    nop
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    nop
    ld b, b
    rst $38
    add h

jr_0c0_5d63:
    ld a, e
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr jr_0c0_5d63

    sbc h
    ld [hl], e
    ld bc, $0cfe
    ei
    or b
    ld c, a
    dec [hl]
    adc $bd
    ld b, [hl]
    db $eb
    ld d, $03
    cp $c0
    cp a
    add $b9
    add h
    ei
    rlca
    ld hl, sp+$6b
    call nc, $64db
    and e
    ld a, h
    and c
    ld a, [hl]
    ret nz

    ccf
    ret nc

    ccf
    jp hl


    rst $30
    db $ed
    di
    db $ed
    di
    reti


    rst $20
    reti


    rst $20
    db $d3
    xor $f4
    rst $08
    xor a
    rst $18
    nop
    sbc [hl]
    nop
    ld a, [de]
    nop
    scf
    rrca
    ccf
    rra
    ld a, a
    rrca
    ld a, a
    ccf
    ld a, a
    rlca
    cp a
    inc bc
    rra
    inc bc
    adc a
    nop
    jp $e000


    ld a, h
    db $fc
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    add b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    inc de
    cp a
    ccf
    cp a
    rrca
    ld c, a
    nop
    jr nz, @+$01

    rst $38
    ld bc, $0781

jr_0c0_5dd3:
    rst $30
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ret nz

    jr c, jr_0c0_5dd3

    inc c
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ei
    ld b, [hl]
    cp c
    ld b, d
    cp l
    ld hl, $27de
    call c, Call_0c0_7e81
    add d
    ld a, a
    add b
    ld a, a
    ld d, c
    xor a
    jp nz, $9ebd

    ld h, c
    sbc [hl]
    ld h, c
    adc a
    ld [hl], b
    rst $28
    jr nc, jr_0c0_5e6e

    cp [hl]
    add hl, sp
    sub $2c
    inc de
    ld l, h
    inc de
    db $ec
    inc de
    jp hl


    rla
    jp hl


    rla
    ld e, d
    and a
    sub e
    xor $17
    db $ed
    nop
    ld b, h
    nop
    dec b
    nop
    ld c, e
    add b
    res 0, b
    res 0, b
    rlc b
    push hl
    ret nz

    push hl
    ret nz

jr_0c0_5e31:
    ld a, [c]
    add b
    ldh a, [$e0]
    ld sp, hl
    jr nc, jr_0c0_5e31

    rrca
    ccf
    ret nz

    call z, $fe00
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rla
    rlca
    rla
    add d
    rst $20
    sub b
    sbc a
    add c
    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_0c0_5e6e:
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rSB], a
    ldh a, [$03]
    ldh a, [rTMA]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    inc l
    db $d3
    ld c, $f1
    rra
    ldh [rNR24], a
    and $18
    rst $20
    inc c
    di
    sbc h
    ld h, e
    adc [hl]
    ld [hl], c
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
    rrca
    ld e, a
    nop
    ccf
    nop
    sbc a
    nop
    jp $ff00


    ld a, a
    rst $38
    nop
    rst $38
    nop
    ldh [$3f], a
    rst $38
    inc bc
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    nop
    rst $38
    rlca
    ld a, a
    jr c, @+$41

    ld [c], a
    rst $38
    inc bc
    ld h, a
    nop
    jr jr_0c0_5ebf

jr_0c0_5ebf:
    rlca
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
    ld a, a
    nop
    rrca
    ld c, $90
    rra
    jr c, jr_0c0_5f1a

    ld a, b
    ccf
    ld a, h
    ld a, e
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    xor $73
    ret c

    ld l, c
    ld e, b
    pop af
    ld a, c
    ret nz

    ld [hl], b
    ret nc

    ldh a, [$d0]
    ldh [$d1], a
    ldh a, [$cf]
    pop af
    call z, $d9e0
    ldh [$d1], a
    add b
    pop af
    pop hl
    pop de
    or e
    pop bc
    db $e3
    db $d3
    ei
    jp $ebd7


    rst $20
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    nop
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    dec b
    inc bc
    inc de

jr_0c0_5f1a:
    db $fc
    rst $38
    nop
    ld a, a
    rlca
    rst $38

jr_0c0_5f20:
    jr jr_0c0_5f20

jr_0c0_5f22:
    jr nc, jr_0c0_5f22

    nop
    add hl, sp
    rra
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    jr c, jr_0c0_5fbd

    nop
    ld hl, sp+$03
    inc bc
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
    cp e
    rst $38
    nop
    inc bc
    nop
    ld h, c
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, $00
    rra
    add b
    ld a, a
    ldh [rTMA], a
    ldh a, [$81]
    ldh a, [$83]
    ldh a, [$86]
    or b
    ret


    or b
    ret nz

    ldh a, [$c0]
    or b
    ret nz

    or b
    ret nz

    sbc b
    ldh [$b8], a
    ret nz

    cp b
    ret nz

    cp b
    pop bc
    ld hl, sp-$40
    ldh [$d0], a
    or b
    ret nz

    or b
    ret nz

    sub b
    ldh [$30], a
    ret nz

    or b
    ret nz

    add b
    db $e3
    add b
    ldh [$c0], a
    and b
    nop
    ldh [$c0], a
    ret nz

    nop
    rlca
    nop
    inc de

jr_0c0_5f94:
    nop
    rst $10
    nop
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $0701
    rst $38
    inc hl
    rst $38
    ld h, d
    cp $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    jr nz, @+$01

    jr nz, jr_0c0_5f94

    inc b
    rst $38
    ld a, [bc]
    rst $38
    add [hl]
    rst $38
    ld b, $3f
    dec bc

jr_0c0_5fbd:
    ccf
    dec bc
    rst $38
    ccf
    rst $38
    ld l, [hl]
    cp $80
    add b
    nop
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
    ld [de], a
    rst $38
    db $10
    rst $38
    nop
    ccf
    nop
    ld bc, $fc00
    add b
    rst $38
    nop
    rst $38
    add c
    rst $38
    add e
    rst $38
    rra
    rst $38
    db $fc
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
    db $e3
    inc bc
    rst $08
    nop
    rst $38
    ld [$01ff], sp
    rst $38
    rlca
    rst $38
    cp a
    rst $38
    ld [$00ff], sp
    rst $38
    inc hl
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh a, [$1f]
    ccf
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
    jr c, jr_0c0_605d

    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    nop
    nop
    db $fc
    rst $38
    ld hl, sp-$08
    rst $30
    rst $30
    add l
    add a
    jr nz, jr_0c0_606f

    ld e, $ff
    ccf
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
    add b
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop

jr_0c0_605d:
    nop
    nop
    cp $f3
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
    ld hl, sp+$00
    add c
    nop

jr_0c0_606f:
    ccf
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    ldh a, [rNR10]
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
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    cp $0f
    rrca
    rst $38
    rst $38
    add b
    rst $38
    add h
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
    db $e4
    rst $38
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, a
    nop
    cp a
    nop
    ld a, a
    ld hl, sp-$01
    add e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8eff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    add e
    rst $38
    inc bc
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    ld bc, $003f
    inc bc
    ret nz

    ret nz

    add b
    db $fc
    add b
    ld hl, sp+$00
    db $fd
    nop
    db $e3
    nop
    inc bc
    ld bc, $feff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c0_60f5:
    rst $38
    nop
    nop
    ld a, a

jr_0c0_60f9:
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add a
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$0f
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0c0_60f5

    nop
    rst $38
    jr nz, jr_0c0_60f9

    ld b, b
    cp a
    inc b
    ei
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $f0
    rst $38
    db $fc
    cp $78
    rst $38
    ld [$f8ff], sp
    rst $38
    nop
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
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld e, b
    rst $38
    ld a, [$7fff]
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
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
    ld hl, sp-$01
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [$1f]
    sbc a
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
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c0_61d9

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c0_61f1

    nop
    nop
    nop
    nop
    nop
    ld bc, $2201
    inc hl

jr_0c0_61d9:
    inc h
    dec h
    ld h, $27
    jr z, jr_0c0_6208

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    ld bc, $2b01
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c0_621f

    ld [hl-], a
    inc sp
    nop

jr_0c0_61f1:
    nop
    nop
    nop
    nop
    ld bc, $3534
    ld [hl], $37
    jr c, jr_0c0_6235

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    ld b, b

jr_0c0_6208:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
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

jr_0c0_621f:
    ld d, e
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop

jr_0c0_6235:
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
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

Jump_0c0_6400:
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    inc a
    rst $38
    jr @+$01

    ld e, $ff
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc bc
    inc bc
    ccf
    ccf
    db $fc
    db $fc
    nop
    nop
    rst $00
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
    ld a, a
    nop
    ccf
    nop
    nop
    ccf
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    ei
    ei
    cp a
    cp a
    rst $28
    rst $28
    ccf
    ccf
    inc bc
    inc bc
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    ld bc, $0000
    add b
    add b
    ldh a, [$f0]
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
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0c0_64c1:
    nop
    nop
    rrca
    nop
    nop
    ld bc, $1f01
    rst $18
    ld bc, $00c1
    jr c, @+$1a

    jr jr_0c0_64c1

    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    rlca
    ret nz

    jp $f0f0


    ldh a, [$f0]
    call nz, Call_000_00c4
    nop
    add b
    adc a
    add b
    add e
    ldh [$e0], a
    ldh [$e0], a
    nop
    ld bc, $3f00
    nop
    ldh a, [rP1]
    add b
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add b
    nop
    ei
    nop
    ld a, a
    nop
    ld a, $00
    nop
    ld a, $3e
    rst $38
    rst $38
    cp $fe
    ld e, a
    ld e, a
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    nop
    rra
    nop
    ld bc, $0000
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rlca
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
    nop
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
    ld bc, $1f01
    rra
    rrca
    rrca
    inc bc
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    ret nz

    ld [$00ff], sp
    ld a, a
    nop
    nop
    inc bc
    di
    nop
    ret nz

    nop
    rrca
    nop
    nop
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fe
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rrca
    nop
    inc bc
    jr nc, jr_0c0_65ba

    cp $fe
    ld a, h
    ld a, h
    di
    di
    rst $38
    rst $38
    ld [c], a
    ld [c], a
    adc $ce
    ld [hl], b
    ld [hl], b
    add b
    add c
    nop
    ld a, $00
    stop
    ld hl, sp+$03
    inc bc
    rrca
    rrca
    inc bc
    jp $8000


    nop
    cp $00
    ccf
    nop
    rra
    ldh [$ef], a
    nop
    ld bc, $3f00
    jr nz, @-$1f

    add b
    ld a, a
    nop
    rst $38

jr_0c0_65ba:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    ld bc, $7f7f
    rst $38
    rst $38
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    rlca
    rlca
    ccf
    ccf
    ldh a, [$f0]
    nop
    nop
    nop
    add b
    ldh [$e0], a
    rst $38
    rst $38
    nop
    nop
    rrca
    rrca
    ld a, a
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ld [hl], b
    ld [hl], e
    nop
    rst $38
    nop
    rra
    ldh a, [$f0]
    add b
    add b
    ld e, $1e
    inc bc
    rst $38
    ld bc, $00f1
    nop
    nop
    nop

Call_0c0_6600:
    nop
    nop
    nop
    pop bc
    nop
    push af
    nop
    cp $07
    ld a, a
    ld [$000f], sp
    rlca
    ret nz

    ret nz

    add b
    add e
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    add a
    rrca
    rrca
    ld a, $3f
    ld a, h
    ld a, a
    ld hl, sp-$08
    ld hl, sp-$05
    ret nz

    rst $00
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
    nop
    nop
    nop
    nop
    nop
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
    ld e, $ff
    ld a, [$78ff]
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, $fe
    db $fc
    db $fc
    nop
    di
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld bc, $7f01
    ld hl, sp-$01
    ret nz

    ret nz

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
    ret nz

    ret nz

    ldh a, [$f0]
    add b
    rst $38
    nop
    ccf
    nop
    ld [$f303], sp
    ld bc, $1fe1
    rra
    db $fc
    db $fc
    nop
    ld bc, $bf00
    nop
    ld a, [hl]
    nop
    ldh a, [rP1]
    ld bc, $1e00
    nop
    inc a
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    ld c, $00
    nop
    nop
    ld bc, $1f00
    nop
    cp $00
    ldh [rP1], a
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ccf
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0007], sp
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$f1], a
    add b
    rst $00
    nop
    dec [hl]
    nop
    inc bc
    inc bc
    rst $38
    nop
    dec c
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    rlca
    rlca
    nop
    inc bc
    ld bc, $03ff
    ld a, a
    ld bc, $00ff
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    db $fc
    db $fd
    ldh [$e6], a
    nop
    inc c
    nop
    rst $38
    nop
    ldh [rTAC], a
    rlca
    rra
    rra
    ld a, a
    ld a, a
    jr c, jr_0c0_674e

    nop
    nop
    ld [bc], a
    ld [de], a
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    nop
    ld a, a
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    db $fc
    add b
    ld a, b
    add b
    nop
    ret nz

    nop

jr_0c0_674e:
    ldh [rP1], a
    nop
    rlca
    nop
    inc b
    nop
    dec b
    nop
    dec b
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0400
    inc bc
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    ld [bc], a
    ld a, [c]
    nop
    ld hl, sp+$03
    di
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $18
    nop
    rst $38
    rra
    ld e, a
    ld a, [hl]
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nz

    ret nz

    ld hl, sp-$04
    nop
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    or [hl]
    nop
    or e
    nop
    ld [bc], a
    nop
    ld a, h
    nop
    pop bc
    nop

jr_0c0_67a7:
    rrca
    nop
    scf
    nop
    add b
    nop
    nop
    ldh a, [$f1]
    nop
    rrca
    nop
    ld l, h
    nop
    ret nz

    ld bc, $b005
    or b
    nop
    rrca
    ret nz

    db $fc
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc a
    jr nz, jr_0c0_67a7

    ld hl, sp+$07
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
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    ldh a, [$03]
    ret nz

    inc bc
    ldh [rSC], a
    ld bc, $0106
    inc b
    inc bc
    inc b
    inc bc
    nop
    rlca
    dec b
    nop
    dec bc
    nop
    inc bc
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
    ld [hl], b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    inc bc
    or b
    rlca
    ldh a, [rTAC]
    ldh a, [rIF]
    ldh a, [rP1]
    nop
    nop
    ld bc, $1f00
    ld bc, $07ff
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
    ld a, a
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    db $fc
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    inc bc
    nop
    dec bc
    nop
    di
    nop
    rst $38
    ld hl, sp-$01
    ldh a, [$fb]
    nop
    add $00
    ld [de], a
    nop
    db $10
    ld bc, $00e0
    rlca
    nop
    ccf
    nop
    db $fc
    nop
    db $fd
    nop
    ldh a, [rSB]
    ld hl, $0707
    rra
    ld e, a
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ldh [$e6], a
    nop
    jr jr_0c0_686b

jr_0c0_686b:
    ldh [$e6], a
    and $00
    rrca
    nop
    jr c, jr_0c0_6873

jr_0c0_6873:
    ret nz

    ld [bc], a
    ld a, [$ff80]
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [$fd], a
    ldh a, [$f9]
    ld a, [c]
    ei
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    add b
    ld a, b
    ret nz

    jr c, @-$7e

    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
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
    ld b, b
    jr nz, jr_0c0_68ed

    inc bc
    ret nz

    dec bc
    ld b, b
    dec bc
    ret nz

    dec hl
    ld b, b
    cpl
    ld h, b
    ccf
    ld b, h
    ccf
    ld l, d
    ccf
    db $f4
    ccf
    ld [hl], b
    ccf
    ccf
    ccf
    ld a, [hl-]
    dec sp
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    nop
    db $fc
    ld bc, $01c1
    ld de, $f404
    nop
    ld [$7800], sp
    inc b

jr_0c0_68ed:
    db $fc
    ld [bc], a
    ld a, [$fc04]
    rlca
    rst $20
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    add b
    ld hl, sp+$00
    add b
    ld bc, $001b
    dec a
    nop
    ld [$e0e0], sp
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    pop af
    add $c2
    dec bc
    rlca
    rrca
    rlca
    cp l
    cp a
    ld h, a
    ld a, a
    nop
    ld a, b
    nop
    rst $38
    ld [bc], a
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld e, $fe
    nop
    ldh [rP1], a
    inc d
    inc bc
    ld e, a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld b, d
    ld a, [c]
    nop
    ld hl, sp-$02
    rst $38
    ld sp, hl
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
    rst $28
    rst $38
    sbc $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, $01
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld [hl], c
    rst $08
    ld c, a
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    ld a, b
    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ld bc, $008f
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [hl]
    ld bc, $01ff
    ld a, a
    ld bc, $817f
    rst $38
    add c
    db $fd
    ld bc, $1f71
    ld e, a
    adc c
    ldh [$c1], a
    add b
    ld d, a
    ld bc, $1fe7
    sbc a
    ld a, a
    ld bc, $05ff
    rst $38
    ld l, a
    sbc a
    cp a
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    db $10
    db $10
    add b
    add b
    cp l
    ld b, b
    rst $38
    cp $7f
    ld a, a
    rra
    rra
    ld bc, $00c5
    add b
    ld bc, $3f01
    ccf
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ccf
    ccf
    cp $ff
    ret nz

    rst $38
    nop
    cp $00
    pop hl
    nop
    adc a
    nop
    sbc a
    ld bc, $001b
    ccf
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ld a, a
    nop
    rst $38
    nop

jr_0c0_6a00:
    nop
    rla

jr_0c0_6a02:
    nop
    cp a
    nop
    rst $38
    ld hl, $20fb
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0c0_6a00

    nop
    nop
    nop
    dec sp
    nop
    cp a
    inc bc
    ld b, e
    ld a, h
    rst $38
    ldh a, [rIE]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $27ff
    rst $38
    cpl
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
    ccf
    rst $08
    rst $08
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    cp $ff
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
    cp $e5
    rst $38
    ldh [rIE], a
    add e
    rst $38
    ld bc, $27ff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rla
    rra
    nop
    nop
    add b
    jr nz, jr_0c0_6a02

    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $28
    rst $38
    di
    rst $30
    ld bc, $0f7f
    ld a, a
    ld a, [hl]
    cp $80
    db $f4
    nop
    db $fc
    nop
    ldh a, [rP1]
    ld [$f000], sp
    rlca
    rst $20
    jr c, @-$06

    ret nz

    pop bc
    ret nz

    rst $00
    nop
    nop
    ld bc, $0f00
    nop
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
    rst $38
    nop
    ld a, a
    nop
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    db $10
    cp $00
    pop hl
    ld c, $1f
    nop
    db $fc
    ld bc, $3ff1
    rst $38
    rst $08
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
    ld e, a
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [$f0]
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    dec b
    db $fd
    rlca
    ccf
    rrca
    ccf
    rra
    rst $18
    ld a, $ff
    ld a, c
    rst $38
    rrca
    rst $38
    ccf
    ccf
    nop
    rra
    nop
    add e
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $fe
    rst $38
    rst $38
    ei
    ei
    inc hl
    rst $38
    ld [bc], a
    rst $28
    ld [hl], b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh [rP1], a
    inc bc
    rlca
    rst $38
    ccf
    rst $38
    db $eb
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    ld hl, sp-$01
    call nz, $aeff
    db $fd
    ld b, b
    ldh [$03], a
    inc bc
    dec c
    rrca
    rst $30
    rst $38
    db $fd
    rst $38
    and $ff
    cp $ff
    rst $38
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [$f6]
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8f80
    nop
    inc a
    nop
    ld hl, sp+$00
    ld sp, hl
    inc a
    nop
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
    nop
    ld l, [hl]
    nop
    xor $00
    ld l, [hl]
    ld [bc], a
    xor $02
    xor $06
    ld c, $06
    cp $06
    rst $38
    dec e
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    call z, $dcff
    rst $38
    db $dd
    rst $38
    call c, $f8ff
    rst $38
    ldh a, [rIE]
    inc b
    db $fc
    db $10
    ldh a, [rSB]
    ld bc, $fff9
    ld sp, hl
    rst $38
    ld hl, sp-$01
    and b
    add sp, -$10
    ld hl, sp-$10
    ld a, [$fbf0]
    ldh a, [$fb]
    ret nz

    jp $fbe0


    ldh a, [$fb]
    rst $38
    rst $38
    db $fc
    rst $38
    ld bc, $0fff
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rlca
    rlca
    add b
    add b
    ldh [$e0], a
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
    cp $ff
    cp $ff
    cp $ff
    rst $18
    rst $38
    rla
    rst $38
    ld b, a
    cp a
    rst $18
    ccf
    inc a
    db $fc
    ld h, d
    db $e3
    ld b, $99
    rlca
    rra
    push hl
    ei
    db $e4
    ei
    or l
    ld a, [$b946]
    ld a, a
    add a
    rst $18
    rrca
    rst $38
    jp $839d


    cp [hl]
    add c
    cp $01
    ld c, e
    nop
    ld c, $01
    dec a
    nop
    rla
    nop
    ld c, a
    nop
    ccf
    nop
    and b
    rlca
    dec hl
    rlca
    pop af
    rst $08
    rst $38
    ld a, a
    adc a
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
    add b
    nop
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
    ld a, a
    nop
    sbc a
    nop
    ld h, a
    nop
    rlca
    nop
    rlca
    ld bc, $030f
    rrca
    inc bc
    sbc a
    ld bc, $0013
    ldh a, [rTAC]
    add a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ld a, $7f
    rra
    ccf
    rra
    rst $18
    nop
    ldh [$3f], a
    rst $38
    cp $ff
    pop hl
    rst $38
    inc bc
    jp Jump_000_1f1f


    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rst $38
    dec b
    ld a, a
    nop
    jr z, jr_0c0_6c77

jr_0c0_6c77:
    rlca
    nop
    rrca
    ld [$10df], sp
    ld e, d
    nop
    and $07
    rst $38
    adc a
    ld a, a
    rst $28
    rst $38
    pop af
    rst $38
    cp a
    ld c, a
    cp a
    ld a, a
    nop
    rst $38
    push af
    ld a, [$f7f9]
    db $eb
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $17
    ld c, e
    or h
    rst $00
    ld a, c
    ld e, a
    and h
    ld a, b
    add a
    ret nz

    ccf
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $08
    sbc b
    ld h, a
    ld b, c
    cp a
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $ff
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    ld b, b
    pop af
    ld [hl], b
    pop af
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$08
    sbc b
    sbc b
    ld a, b
    ld a, l
    ld hl, sp-$01
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
    db $fc
    rst $38
    nop
    db $fc
    ld bc, $80e3
    ei
    ret nz

    jp Jump_000_1f1e


    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp h
    cp $e1
    ld sp, hl
    rlca
    rst $20
    rlca
    rlca
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, $fe
    ld bc, $f8ff
    ld hl, sp-$04
    db $fc
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    ei
    rst $38
    jp $11ff


    rst $38
    ld de, $caff
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    nop
    rst $38
    ld c, $ff
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    rla
    add sp, $01
    ret nz

    ldh [rNR10], a
    ret nz

    ccf
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ldh a, [$f0]
    nop
    ld a, b
    add b
    ld hl, sp+$00
    ld a, h
    add b
    dec a
    ret nz

    ld d, a
    xor b
    cpl
    ret nc

    sub e
    db $ec
    ldh [$c0], a
    ldh a, [$f0]
    db $fc
    ld hl, sp-$01
    cp $7f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    add h
    rst $38
    add b
    rst $30
    add b
    adc a
    nop
    rra
    ret nc

    rst $18
    cp a
    cp a
    ccf
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $18
    rst $38
    sbc h
    rst $38
    nop
    inc c
    nop
    sbc [hl]
    add b
    sbc a
    nop
    db $fd
    jr nz, @+$01

    nop
    db $fd
    nop
    xor a
    add b
    rst $10
    ret nz

    pop hl
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$02
    db $fc
    db $fc
    ldh [$e1], a
    ld e, b
    ld e, a
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    inc e
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
    ld hl, sp+$07
    or b
    ld c, a
    ret nz

    ccf
    nop
    rra
    nop
    add a
    nop
    ld hl, sp+$00
    rst $38
    inc c
    cp $f0
    rst $38
    nop
    rst $20
    db $10
    db $fc
    nop
    rst $38
    add b
    rst $38
    nop
    cp $00
    rst $38
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
    ld e, $fe
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    nop
    sbc h
    nop
    rst $38
    nop
    ld a, a
    add b
    dec hl
    call nc, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ldh a, [$e0]
    db $fc
    or b
    cp $dc
    rst $38
    ei
    rst $38
    db $fd
    ld c, a
    ld a, [$ff27]
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$3bff], sp
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    add b
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    adc l
    rst $38
    rrca
    rst $38
    add [hl]
    rst $38
    add $ff
    ld [hl], c
    di
    ld c, $cf
    rrca
    rrca
    db $fc
    db $fc
    nop
    nop
    ld bc, $000f
    rrca
    jr c, jr_0c0_6ec3

    db $f4
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
    adc a
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    rrca
    rrca
    rst $38
    inc a
    rst $38
    ld de, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    add b
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nc, @+$01

    add b
    rst $38
    nop

jr_0c0_6ec3:
    nop
    ld b, $ff
    nop
    nop
    ret nz

    rst $28
    cp $ff
    nop
    nop
    nop
    ld a, a
    dec d
    nop
    add hl, sp
    nop
    jr c, jr_0c0_6ed6

jr_0c0_6ed6:
    adc b
    nop
    sbc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    ret


    ld [hl], $40
    cp a
    db $10
    rst $28
    db $10
    rst $28
    dec bc
    db $f4
    inc b
    ei
    add hl, de
    and $00
    nop
    ret nz

    ret nz

    ldh a, [rNR41]
    db $fc
    ret c

    ld a, a

jr_0c0_6ef9:
    cp $3f
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $00
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ei
    rst $38
    adc e
    rst $38
    pop bc
    rst $38
    add b
    ld hl, sp+$00
    nop
    nop
    sbc a
    jr nz, jr_0c0_6ef9

    ldh [$fc], a
    ldh [$f8], a
    ldh [$fc], a
    ldh [rIE], a
    ret nz

    cp $c0
    rst $38
    ret nz

    rst $30
    nop
    rst $38
    ld a, l
    rst $38
    add a
    add a
    ld a, $3f
    nop
    ccf
    add b
    rst $38
    nop
    ld b, b
    nop
    jr nc, jr_0c0_6f35

jr_0c0_6f35:
    jr jr_0c0_6f37

jr_0c0_6f37:
    nop
    nop
    add d
    add b
    add c
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$70
    db $fc
    ld [$80fe], sp
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    ld a, h
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
    ld hl, sp-$08
    add b
    add b
    ld bc, $1701
    rra
    inc bc
    rst $38
    inc b
    db $fc
    nop
    add b
    rrca
    rst $38
    nop
    nop
    nop
    ldh [rTMA], a
    cp $00
    pop bc
    nop
    ccf
    ld bc, $00ff
    nop
    nop
    db $fc
    nop
    cp $00
    nop
    nop
    rst $38
    ld [hl], a
    nop
    rst $38
    nop
    ld a, a
    nop
    db $fc
    inc bc
    rst $38
    nop
    sbc $21
    pop hl
    ld e, $00
    rst $38
    xor e
    ld d, h
    jp nz, $d43d

    dec hl
    ld l, c
    sub [hl]
    and [hl]
    ld e, c
    and b
    ld e, a
    inc hl
    call c, $fd02
    nop
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
    ldh [$c0], a
    ldh a, [$f0]
    db $fc
    db $fc
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
    rst $28
    rst $38
    ld bc, $0301
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    ldh [rIF], a
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ret nz

    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    ldh a, [$f0]
    ld h, b
    rst $38
    ld a, h
    ld a, a
    ld [$06bf], sp
    rst $28
    inc b
    rst $38
    add e
    di
    rst $20
    rst $30
    pop af
    ld sp, hl
    ld hl, sp-$04
    db $fc
    rst $38
    cp $ff
    ld hl, sp-$08
    ldh [$e0], a
    rst $00
    rst $00
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rra
    rra
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld b, $3f
    nop
    rst $38
    nop
    rst $38
    cp $01
    ld sp, hl
    ld b, $05
    ld a, [$32cd]
    ldh a, [rIF]
    ldh a, [rIF]
    ld b, b
    cp a
    db $10
    rst $28
    ld [$10f7], sp
    rst $28
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ldh [$1f], a
    inc d
    db $eb
    ld b, b
    cp a
    ld bc, $60fe
    sbc a
    ld [hl+], a
    db $dd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    nop
    nop
    add b
    nop
    ldh [$80], a
    ld hl, sp-$20
    db $fc
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    nop
    add b
    nop
    add b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld a, $3e
    ld hl, sp-$08
    ldh [$f8], a
    nop
    db $fc
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr c, @+$01

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    cp $ff
    nop
    ldh a, [rP1]
    and b
    nop
    ldh [rP1], a
    nop
    add b
    add b
    nop
    ldh [$f0], a
    ldh a, [$7c]
    ld a, h
    inc b
    inc b
    rlca
    rlca
    nop
    ld bc, $c080
    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    db $fc
    db $ec
    xor $e2
    cp $1b
    ccf
    ret z

    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    ld a, [hl]
    rst $38
    ld c, a
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rra
    nop
    rlca
    jr nz, @+$01

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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c0_7127

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c0_713e

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c0_7127:
    dec h
    ld h, $27
    jr z, jr_0c0_7155

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c0_716c

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c0_713e:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $37
    jr c, jr_0c0_7184

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop

jr_0c0_7155:
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_0c0_716c:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop

jr_0c0_7184:
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], h
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h

Jump_0c0_71ff:
    sbc l
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    inc b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    inc b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    inc b
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
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
    rlca
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
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
    inc b
    rlca
    rlca
    inc b
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $fe
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    ldh [rIE], a
    inc e
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    nop
    db $f4
    nop
    nop
    inc e
    cp $07
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld b, c
    rst $38
    jr nc, @+$01

    ld c, $ff
    ld [$07ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $f0ff
    rst $38
    ld hl, sp-$04
    rst $38
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, l
    nop
    ld sp, $1100
    ld a, b
    ld a, b
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0001
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld b, b
    nop
    ld h, b
    nop
    ld h, c
    nop
    rla
    nop
    db $db
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rrca
    nop
    ld bc, $3c00
    nop
    add d
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    inc bc
    inc a
    dec a
    ret nz

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
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    rra
    nop
    ccf
    ldh a, [$fd]
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    add b
    nop
    adc b
    nop
    ret nz

    nop
    jp nc, $0800

    ldh a, [rP1]
    rst $38
    nop
    rrca
    nop
    rst $38
    ld bc, $ffff
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
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00df
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc e
    rra
    ldh [rIE], a
    inc bc
    rst $38
    inc bc
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
    cp $ff
    nop
    db $fc
    rra
    rst $38
    ldh a, [$f0]
    nop
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld hl, sp-$80
    ld hl, sp+$00
    ldh [rP1], a
    nop
    ret nz

    db $fc
    cp a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    cp $ff
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
    db $fc
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
    ld [$8400], sp
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
    ccf
    rst $38
    add b
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
    nop
    ld bc, $0f00
    nop
    ccf
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$f8]
    ret nz

    db $fc
    add b
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    ldh [rIE], a
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
    nop
    rst $38
    nop
    inc bc
    nop
    add e
    nop
    jp $ff00


    nop
    rst $38
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
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
    nop
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
    inc bc
    rst $38
    ld bc, $ffff
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
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$08
    inc e
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
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rst $28
    rlca
    rlca
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr c, jr_0c0_760f

jr_0c0_760f:
    ld c, $00
    ld a, $00
    ld bc, $0700
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
    ccf
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld hl, sp-$05
    ldh a, [rIE]
    nop
    di
    nop
    di
    nop
    ldh [rP1], a
    rst $38
    nop
    jp nz, Boot

    nop
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
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
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
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
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
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ret nz

    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    db $e4
    add b
    rst $38
    add b
    rst $38
    ld c, $ff
    inc a
    rst $38
    nop
    rst $38
    ld c, $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    nop
    ld e, $01
    ld bc, $0707
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    inc bc
    nop
    rrca
    nop
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    rra
    nop
    ldh [rSC], a
    inc bc
    ld b, e
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
    and $ff
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    dec bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rlca
    ld bc, $ff3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    db $f4
    ld hl, sp-$08
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    ld hl, sp+$00
    rst $38
    nop
    nop
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
    adc e
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ccf
    rst $38
    rla
    rst $38
    push de
    ld a, [hl+]
    ld [$ce15], a
    ld sp, $55aa
    nop
    rst $38
    sub $29
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
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
    add b
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $fd
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
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
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    add b
    nop
    ld a, a
    nop
    rst $38
    ccf
    ccf
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    ret nz

    ret nz

    ldh [$f0], a
    di
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld c, a
    rst $38
    ld c, $ff
    ld b, $ff
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld c, e
    add h
    ld b, d
    adc l
    jp nz, Jump_000_0025

    cpl
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jp Jump_000_1cff


    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    jp nz, $f1ff

    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add b
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    cp $fe
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
    ld b, $ff
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    nop
    ccf
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ret c

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
    ld a, l
    rst $38
    dec e
    rst $38
    dec bc
    rst $38
    ld bc, $00ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rst $38
    rlca
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    ld l, l
    sub d
    ld c, l
    or d
    dec b
    ld a, [$37c8]
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
    ld a, [hl]
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    inc e
    rst $38
    jr nc, @+$01

    ld c, $ff
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld bc, $0001
    ld a, h
    nop
    add b
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$fc]
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f00
    nop
    ld a, a
    nop
    rst $38
    adc a
    rst $38
    add e
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    cp a
    cp a
    ld a, a
    ccf
    rst $18
    sbc a
    ld l, a
    ld c, a
    or a
    rrca
    rst $30
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
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
    rra
    rst $38
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $08
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    inc bc
    nop
    pop af
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    ld c, $0e
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
    rst $38
    nop
    ccf
    nop
    nop
    ld a, h
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld bc, $00aa
    rla
    nop
    dec hl
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    add b
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec bc
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
    ccf
    add b
    add a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld hl, sp-$08
    ccf
    ccf
    rst $38
    rst $38
    nop
    nop
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $00
    rst $38
    rst $38
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    nop
    xor a
    nop
    rla
    nop
    cpl
    nop
    dec d
    nop
    ld a, [bc]
    nop
    db $fd
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld bc, $3fff
    rst $38
    db $ec
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    nop
    ldh a, [rP1]
    pop af
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $18
    rst $38
    ld a, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add c
    nop
    nop
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    db $fc
    rst $38
    ld sp, $deff
    rst $38
    ldh [rIE], a
    rra
    rst $38
    db $fd
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
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rra
    inc bc
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    ldh a, [rP1]
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    inc bc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    cp $c0
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rlca
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
    ldh [rIE], a
    ld e, $ff
    ldh a, [rIE]
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld e, $ff
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

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
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    ld b, b
    rst $38
    ld de, $11ff
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
    rst $38
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
    rst $38
    jr @+$01

    rlca
    rlca
    nop
    ei
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    adc a
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld b, b
    cp $00
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
    ld a, a
    nop
    rrca
    nop
    sbc a
    ld b, $ff
    ld a, $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    call nc, $ffff
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $ff00
    ld b, b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
    add sp, -$04
    ldh a, [$f0]
    nop
    nop
    ld [bc], a
    inc bc
    ld c, $0f
    nop
    ccf
    inc a
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    ld bc, $0fff
    rst $38
    nop
    ld e, a
    nop
    adc [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rra
    ld bc, $0303
    rrca
    inc bc
    rra
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld c, $7e
    nop
    nop
    nop
    ldh [$5e], a
    cp $1f
    rst $38
    ld e, $ff
    jr @-$06

    ld a, [de]
    ld a, [$fc14]
    sub h
    cp $d8
    rst $38
    ret c

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0fff
    rst $38
    nop
    rst $38
    rlca
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [$04ff], sp
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld a, [$ffff]
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
    rst $20
    rst $38
    add l
    rst $38
    add a
    rst $38
    push hl
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
    rst $18
    rst $38
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
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
    ld a, [$80fb]
    add b
    nop
    nop
    rlca
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0fff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ldh a, [rIE]
    add b
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    cp $ff
    dec b
    rst $38
    ld d, c
    rst $38
    sub b
    rst $38
    ld [bc], a
    rst $38
    inc [hl]
    rst $38
    inc e
    rst $38
    ld b, b
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    db $e4
    rst $38
    ld b, [hl]
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ret nz

    cp $c0
    ldh a, [$80]
    add c
    nop
    ld b, $00
    jr jr_0c0_7e19

jr_0c0_7e19:
    jr nc, jr_0c0_7e1b

jr_0c0_7e1b:
    ld [$0000], sp
    add b
    add b
    ldh a, [$f0]
    ldh [$f8], a
    ret nz

    ret nz

    ret nz

    ldh [rP1], a
    ld hl, sp+$00
    nop
    nop
    ld [$f000], sp
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    jr nz, @+$01

    ldh [rIE], a
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
    jr nc, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    db $fc
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

Call_0c0_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c0_7ee0

jr_0c0_7ee0:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c0_7f0d

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0c0_7f21

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c0_7f00

jr_0c0_7f00:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c0_7f0c

jr_0c0_7f0c:
    add hl, sp

jr_0c0_7f0d:
    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
    inc a
    ld [hl+], a
    dec a
    nop
    ld a, $3f
    ld [hl+], a
    ld b, b
    nop
    ld b, c
    ld b, d
    ld b, e
    nop
    nop

jr_0c0_7f21:
    nop
    nop
    ld b, h
    ld [hl+], a
    ld b, l
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld c, e
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
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, e
    ld c, e
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
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld c, e
    ld c, e
    ld [hl], c
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, l
    ld l, l
    ld l, l
    ld [hl], l
    db $76
    ld c, e
    ld c, e
    ld [hl], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0c0_7ffd:
    nop
    nop

Call_0c0_7fff:
    nop
