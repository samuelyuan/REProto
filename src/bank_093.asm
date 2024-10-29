SECTION "ROM Bank $093", ROMX[$4000], BANK[$93]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    sub a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    cp b
    ld b, a
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    add sp, $17
    cp d
    ld b, l
    sub $29
    ld e, l
    and d
    and e
    ld e, h
    jp c, Jump_093_7325

    adc h
    db $ed
    ld [de], a
    ld l, c
    sub [hl]
    rst $30
    ld [$04fb], sp
    xor $11
    ld a, [$fa05]
    dec b
    push af
    ld a, [bc]
    cp $01
    ld hl, sp+$07
    rst $30
    ld [$057a], sp
    db $fd
    ld [bc], a
    ei
    inc b
    ld a, [$f405]
    dec bc
    ei
    inc b
    rst $38
    nop
    di
    inc c
    di
    inc b
    db $dd
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld a, [hl]
    ld bc, $015e
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    dec a
    ld [bc], a
    ld a, a
    nop
    cp $01
    ld a, [$fe05]
    ld bc, $bf40
    cp a
    rst $38
    rrca
    rst $38
    halt
    dec a
    ld [bc], a
    ld a, h
    inc bc
    jp hl


    ld d, $c4
    dec sp
    ret nz

    ccf
    ret nz

    ccf
    ld [c], a
    dec e
    cp [hl]
    ld b, c
    ld a, [$f405]
    dec bc
    db $ec
    inc de
    jp hl


    ld d, $a0
    ld e, a
    ret nz

    ccf
    xor b
    ld d, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    db $10
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
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
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
    inc bc
    rst $38
    sbc a
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
    ld [hl], h
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    or l
    rst $38
    cp $ff
    rst $38

Call_093_40ff:
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
    rst $38
    ret nc

    cpl
    ldh [$1f], a
    ld d, b
    xor a
    inc b
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    add b

jr_093_412b:
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    sbc b
    ld h, a
    inc h
    db $db
    db $10
    rst $28
    xor d
    ld d, l
    adc b
    ld [hl], a
    ret c

    daa
    jp Jump_093_683c


    sub a
    ld [$dc15], a
    inc hl
    and c

jr_093_4145:
    ld e, [hl]
    ld c, [hl]
    or c
    ld l, c
    sub [hl]
    jr nz, jr_093_412b

    ret nz

    ccf
    and b
    ld e, a
    db $fc
    inc bc
    sbc h
    ld h, e
    cp b
    ld b, a
    cp c
    ld b, [hl]
    xor d
    ld d, l
    inc d
    db $eb
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    and h
    ld e, e
    add h
    ld a, e
    nop
    rst $38
    and b
    ld e, a
    db $10
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    ld a, b
    add a
    jr nc, jr_093_4145

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc de
    rst $38
    ld bc, $1fff
    rst $38
    nop
    rst $38
    nop
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
    nop
    ld a, [hl]
    nop
    ld [$0000], sp
    nop
    nop
    ld c, $10
    rra
    jr c, jr_093_41ea

    ld a, b
    ccf
    ld a, h
    ld a, e
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
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
    ldh [$d0], a
    ldh a, [$c0]
    pop af
    ret nz

    ldh [$d1], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ld d, d
    rst $38

jr_093_41ea:
    adc [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    dec [hl]
    nop
    dec l
    nop
    ld d, $00
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
    rst $38
    ret nz

    ccf
    add h
    ld a, a
    ld [$00f7], sp
    rst $38
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_093_4233:
    rst $38
    ld bc, $00ff

jr_093_4237:
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld hl, $00ff
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    dec b
    nop
    inc de
    nop
    rst $38
    nop
    ld a, a
    jr jr_093_4237

    nop
    rst $38
    jr nz, jr_093_4233

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
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
    cp e
    nop
    inc bc
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    or b
    ret nz

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
    ret nz

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
    ldh [$80], a
    ldh [$c0], a
    and b
    nop
    ldh [$c0], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc b
    rst $38
    xor c
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    set 7, a
    rla
    rst $38
    nop
    jp nz, $8000

    nop
    ret nz

    cp l
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    xor a
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
    rrca
    rst $38
    rrca
    rst $38
    scf
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    jr z, jr_093_4313

jr_093_4313:
    nop
    nop
    ld hl, $0701
    ld bc, $0047
    rrca
    nop
    rla
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    nop
    rlca
    nop
    inc de
    nop
    rst $10
    nop
    ld d, a
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rlca
    nop
    inc hl
    nop
    ld h, e
    nop
    ld h, e
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_093_43d1

    jr nz, @+$01

    inc b
    rst $38
    ld a, [bc]
    rst $38
    add [hl]
    rst $38
    add $ff
    adc e
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    sub d
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $60fe
    sbc a
    inc l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    inc b
    ld a, a
    nop
    ccf
    dec b
    cp a
    ld b, $ff
    inc b
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

jr_093_43d1:
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
    db $dd
    nop
    ld a, [hl-]
    nop
    ld a, [hl]
    nop
    inc [hl]
    nop
    or [hl]
    inc bc
    ld h, a
    rrca
    ccf
    rra
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38

Call_093_4433:
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
    rst $38
    nop
    rst $38
    nop
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
    ld c, $ff
    inc e
    rst $38
    inc e
    rst $38
    db $10
    cp h
    nop
    cp $00
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7fff
    rst $38
    ldh a, [$fe]
    add b
    ld hl, sp+$00
    pop af
    nop
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    xor $00
    rst $20
    nop
    xor d
    nop
    rst $00
    rrca
    sbc a
    rrca
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    ld [$13ff], sp
    db $fc
    daa
    ld hl, sp-$39
    ld hl, sp+$73
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
    ld a, [$01ff]
    rst $38
    ld b, b
    add b
    ldh [rP1], a
    jr nz, @-$3e

    ld e, c
    and b
    rrca
    ldh a, [rP1]
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
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    add $ff

jr_093_44fe:
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_093_4508:
    cpl
    rst $38
    inc bc
    rst $38

jr_093_450c:
    ld bc, $00ff
    rst $38
    ld [$10f7], sp
    rst $28
    inc b
    ei
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
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
    rra
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_093_4533

jr_093_4533:
    ld b, c
    nop
    ld de, $ff08
    ld [$087f], sp
    rst $38

jr_093_453c:
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    cp $10
    ei
    db $10
    dec e
    db $10
    rla
    db $10
    dec sp
    db $10
    jr c, @+$12

    ld hl, sp+$20
    or $20
    ld hl, sp+$20
    ld a, [c]
    jr nz, jr_093_4508

    jr nz, jr_093_450c

    jr nz, jr_093_453c

    jr nz, jr_093_44fe

    jr nz, jr_093_45c0

    jr nz, jr_093_45c2

    jr nz, @-$1e

    ld b, b
    ret nz

    ld b, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ldh a, [$f0]
    ld hl, sp-$70
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    ld a, a
    ret z

    ccf
    call nz, Call_000_033f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_093_4585:
    rst $38
    rst $38
    rst $38
    rst $38

jr_093_4589:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_093_45af

    jr c, jr_093_4599

    inc [hl]
    dec bc
    ld hl, sp+$07
    ret nz

    ccf
    sbc b

jr_093_4599:
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_093_4585

    nop
    rst $38
    jr nz, jr_093_4589

    ld b, b
    cp a
    inc b
    ei
    ld [bc], a

jr_093_45af:
    db $fd
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    cp $ff

jr_093_45c0:
    nop
    rst $38

jr_093_45c2:
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
    and b
    ld e, a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    inc l
    db $d3
    ld [hl], $c1
    ld l, a
    add b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec bc
    inc c
    dec c
    ld bc, $0f0e
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $1101
    ld [de], a
    inc de
    ld bc, $0101
    inc d
    dec d
    ld bc, $0101
    ld bc, $1601
    ld bc, $1701
    jr @+$1b

    ld a, [de]
    ld bc, $0101
    dec de
    inc e
    dec e
    ld bc, $1e01
    rra
    jr nz, jr_093_466c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld bc, $2801
    add hl, hl
    ld bc, $2a01
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_093_4690

    ld [hl-], a
    inc sp
    ld bc, $0101
    inc [hl]
    ld bc, $3635
    scf
    jr c, jr_093_46a4

    ld a, [hl-]

jr_093_466c:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, $01
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld bc, $0101
    ld bc, $4c4b
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_093_4690:
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
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_093_46a4:
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
    sub h
    jr nz, @-$69

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
    jp nz, Jump_000_01af

    ld bc, $c4c3
    ld bc, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $ceaf
    ld bc, $cf01
    ret nc

    ld bc, $d2d1
    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $01db

    ld bc, $dddc
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld bc, $ebea
    ld bc, $edec
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    inc b
    inc b
    inc b
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
    dec b
    dec b
    inc bc
    inc b
    inc b
    inc b
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
    nop
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld b, l
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    nop
    dec b
    dec b
    dec b
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
    rlca
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    rlca
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    rlca
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    dec b
    dec b
    nop
    dec b
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    daa
    ld b, $05
    dec b
    dec b
    nop
    nop
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    rlca
    rlca
    inc b
    rlca
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld b, d
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
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
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    dec b
    dec b
    dec b
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
    ld [bc], a
    rlca
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    dec bc
    nop
    inc e
    nop
    jr nz, jr_093_488c

jr_093_488c:
    nop
    nop

jr_093_488e:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    ld b, b
    nop
    inc b
    nop
    call nz, $f000
    nop
    db $dd
    nop
    cp l
    nop
    jp nc, $ec00

    nop
    db $e4
    nop
    add sp, $00
    pop af
    nop
    rst $30
    nop
    db $fd
    ld [bc], a
    db $ec
    db $10
    jr nz, jr_093_488e

    add b
    nop
    nop
    nop
    ld b, [hl]
    ld bc, $0ff0
    and b
    ld e, a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, [hl]
    cp c
    dec bc
    db $f4
    nop
    add $00
    inc d
    nop
    ld b, c
    nop
    nop
    nop
    ld b, b
    nop
    ld b, e
    nop
    nop
    nop
    nop
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

Call_093_48fb:
    inc c
    nop
    jr jr_093_491f

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp e
    nop
    rst $18
    nop
    dec h
    nop
    dec hl
    nop
    dec a
    nop
    adc d
    nop
    add b
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_093_491f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_093_492e

jr_093_492e:
    ld b, b
    nop
    nop
    nop
    ld bc, $1f00
    nop
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    dec c
    ld [bc], a
    nop
    rra
    dec b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ld [hl], c
    nop
    dec c
    nop
    and h
    nop
    ld b, c
    nop
    jr nz, jr_093_4955

jr_093_4955:
    dec l
    nop
    jr c, jr_093_4959

jr_093_4959:
    ld [hl], b
    nop
    ld h, b
    nop
    add b
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
    ld c, e
    nop
    ld c, l
    nop
    dec bc
    nop
    ld bc, $0b00
    nop
    ld bc, $0400
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
    nop
    inc e
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    jr c, jr_093_49b3

    add b
    ld a, a
    nop
    rst $38
    ld b, b
    db $fd
    nop

jr_093_49b3:
    rst $38
    ld [bc], a
    db $fd
    nop
    cp $00
    db $fc
    nop
    xor b
    nop
    add b
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
    rst $18
    nop
    ld e, e
    nop
    ld e, a
    nop
    sbc [hl]
    nop
    dec hl
    nop
    ld h, $00
    dec d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    dec c
    nop
    jr nz, jr_093_49e6

jr_093_49e6:
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
    ld bc, $0f00
    nop
    ld a, [hl]
    nop
    add b
    nop
    nop
    nop
    rrca
    nop
    ld [$e807], sp
    rla
    nop
    rst $38
    nop
    rst $38
    ld [$50f7], sp
    xor a
    ld [$91f7], sp
    ld l, [hl]
    ld [hl+], a
    db $dd
    rlca
    ld hl, sp-$49
    ld c, b
    rra
    nop
    db $fd
    ld [bc], a
    sub a
    nop
    rlca
    nop
    inc e
    nop
    ld bc, $0700
    nop
    inc a
    nop
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
    ld a, a
    nop
    ld e, a
    nop
    scf
    nop
    dec c
    nop
    dec de
    nop
    dec l
    nop
    scf
    nop
    dec bc
    nop
    ld bc, $2000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $00
    ld a, [$7800]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0300
    nop
    ld [$0e00], sp
    ld bc, $0c33
    rst $18
    jr nz, @+$01

    nop
    rra
    nop
    db $fc
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld de, $32ee
    call $e21d
    ccf
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
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
    ld bc, $0000
    nop
    inc b
    nop
    stop
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
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld d, a
    nop
    ld a, [de]
    nop
    dec l
    nop
    adc l
    nop
    ld d, e
    nop
    ld d, $00
    inc de
    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, e
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
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0100
    nop
    dec d
    nop
    ld e, e
    nop
    dec hl
    nop
    dec d
    nop
    xor e
    nop
    dec [hl]
    nop
    ld l, b
    nop
    xor b
    nop
    ld b, b
    nop
    ret nc

    nop
    ld [hl], l
    nop
    ld e, [hl]
    ld bc, $1ae5
    ccf
    ret nz

    rst $38
    nop
    cp $01
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $00ef
    rst $38
    add d
    ld a, l
    inc h
    db $db
    cp $01
    ld a, $c1
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
    nop
    nop
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
    ccf
    nop
    rra
    nop
    inc b
    nop
    nop
    nop
    ld hl, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    db $fd
    nop
    call nc, Call_093_5200
    nop
    ld a, [bc]
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
    ld bc, $0700
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    ld a, [bc]
    nop
    dec b
    nop
    dec bc
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, a
    nop
    xor $01
    or [hl]
    add hl, bc
    or c
    ld c, [hl]
    nop
    and e
    nop
    dec a
    ld bc, $0fbf
    rst $38
    scf
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld l, h
    rst $38
    ret z

    rst $30
    ld b, h
    cp a
    nop
    rst $38
    adc [hl]
    ld a, a
    or b
    ld a, a
    db $ec
    di
    rst $38
    nop
    rst $38
    nop
    jp Jump_000_003c


    rst $18
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
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld bc, $01f8
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$07
    add b
    nop
    nop
    nop
    ld c, b
    nop
    inc b
    nop
    ld [de], a
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [$eb00]
    nop
    and a
    nop
    ld c, e
    nop
    rrca
    nop
    rlca
    nop
    dec b
    nop
    dec b
    nop
    dec bc
    nop
    inc bc

jr_093_4c95:
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
    nop
    or b
    nop
    ldh a, [rSC]
    ldh a, [rSC]
    ldh a, [rIF]
    nop
    rla
    nop
    rst $38
    nop
    rst $38
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
    inc b
    ld [$0039], sp
    push af
    nop
    ccf
    ld bc, $003f
    rlca
    nop
    ccf
    inc bc
    db $fc
    ld [bc], a
    db $fd
    dec bc
    ldh a, [$d9]
    jr nz, jr_093_4d58

    nop
    and d
    ld b, b
    add b
    rst $38
    nop
    rst $38
    ld bc, $a0ff
    ld e, a
    db $10
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
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e1], a
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f3]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    add b
    ld a, b
    ret nz

    jr c, jr_093_4c95

    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rLCDC]
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
    ld b, b
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
    ld b, b
    jr nz, jr_093_4d7d

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
    rst $38
    ccf
    ei
    inc a
    ei
    inc b
    ei
    inc b

jr_093_4d58:
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    inc bc
    inc b
    rlca
    nop
    rlca
    nop
    rlca
    inc b

jr_093_4d7d:
    rlca
    ld [bc], a
    rlca
    nop
    inc bc
    inc bc
    rra
    db $10
    rra
    nop
    dec bc
    nop
    rst $38
    inc hl
    rst $18
    rra
    rst $38
    rst $38
    rst $38
    add a
    ld hl, sp+$7f
    add b
    push hl
    dec de
    jp nz, $f73d

    ld [$007f], sp
    ld b, a
    nop
    rlca
    nop
    ld c, e
    ld bc, $0307
    dec bc
    rlca
    rrca
    rlca
    dec e
    rrca
    jr nz, @+$21

    ld b, b
    ccf
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh [$fe], a
    inc d
    rst $38
    ld e, h
    rst $38
    cp $fd
    ld hl, sp-$01
    ld hl, sp-$05
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ldh a, [$f0]
    pop af
    pop af
    rst $30
    rst $30
    rst $38
    cp a
    rst $38
    ld a, e
    rst $38
    rst $18
    rst $38
    xor $ef
    rst $30
    db $fd
    nop
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00ff
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    xor $00
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
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    cp $c1
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $8101
    ld bc, $8181
    add c
    add c
    add e
    ld bc, $1f8f
    cp a
    adc c
    ld h, b
    pop bc
    nop
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
    ld sp, $73ff
    cp a
    db $e3
    ld a, a
    ei
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    call nc, $bdfb
    ld b, b
    ei
    nop
    or a
    ld b, b
    or c
    ld b, b
    call nz, $80ff
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    ld b, a
    nop
    ld l, $00
    ld a, a
    ld bc, $23f7
    rst $18
    daa
    rst $10
    rlca
    rst $28
    rlca
    rrca
    rrca
    rrca
    rra
    ld e, a
    dec de
    rra
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
    ld bc, $0f00
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
    db $fd
    ld [bc], a
    rst $30
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    or $08
    cp $00
    ldh [rP1], a
    add b
    nop
    ld b, b
    nop
    and d
    nop
    nop
    rst $38
    ccf
    ret nz

    ld e, a
    and b
    ld a, b
    add b
    or b
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ldh [$1f], a
    rst $28
    stop
    nop
    nop
    nop
    nop
    nop
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
    nop
    sub d
    nop
    ld b, l
    nop
    stop
    ld d, c
    nop
    dec bc
    nop
    add d
    nop
    ld c, c

jr_093_4f30:
    nop
    rla
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
    jr nz, jr_093_4f30

    nop
    nop
    nop
    dec sp
    nop
    cp a
    nop
    ld b, d
    ld [hl], b
    ldh a, [$e0]
    ldh a, [rP1]
    ld bc, $0000
    nop
    rst $38
    ld bc, $21ff
    rst $38
    daa
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    nop
    inc b
    nop
    rlca
    nop
    rra
    ld bc, $031f
    rra
    rlca
    rst $38
    ld a, a
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
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
    rst $38
    rst $38
    cp $ff
    rla
    rst $38
    add hl, de
    rst $38
    rst $18
    ccf
    cp a
    ld c, a
    rst $28
    rra
    db $e3
    rra
    inc bc
    cp a
    nop
    ccf
    nop
    ccf
    ld [$0037], sp
    ld a, a
    inc b
    ld a, e
    inc b
    ld a, [$f40a]
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f3fd]
    db $fc
    jp hl


    ld a, [c]
    ldh [$f9], a
    pop bc
    db $e3
    rst $00
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rla
    add sp, -$01
    nop
    ei
    nop
    ld bc, $0600
    nop
    rrca
    nop
    ldh a, [rIF]
    rlca
    ld hl, sp-$01
    nop
    nop
    nop
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
    inc d
    nop
    or d
    nop
    adc l
    nop
    xor e
    nop
    ld b, a
    nop
    sbc a
    nop
    ld a, a
    inc b
    ld a, a
    nop
    rst $38
    jr nz, @+$01

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
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ld c, a
    rst $38
    cp a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rra
    rlca
    ccf
    rlca
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, c
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
    db $fd
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    ld [bc], a
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
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
    ld e, a
    db $fd
    rst $00
    rst $38
    db $dd
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    and $ff
    call z, $80ff
    cp $80
    ld hl, sp+$00
    add b
    nop
    and c
    nop
    ld b, $00
    inc e
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    rla
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    jr z, jr_093_5103

    nop
    rst $38
    add b
    ld a, a
    nop
    cp a
    nop

jr_093_5103:
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    inc bc
    nop
    inc bc
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    cp h
    ld b, e
    db $ec
    inc de
    ret nz

    ccf
    ret z

    scf
    ld [$00f7], sp
    rst $30
    nop
    di
    ld [$08ff], sp
    ld a, a
    ld [$2cff], sp
    rst $38
    ld l, $ff
    daa
    cp $00
    ld l, [hl]
    nop
    xor $00
    ld l, [hl]
    ld [bc], a
    xor $02
    xor $06
    ld c, $06
    cp $04
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $28
    inc c
    rst $08
    inc c
    rst $18
    dec c
    rst $18
    inc c
    rst $18
    nop
    dec e
    nop
    dec e
    nop
    ld e, l
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    db $10
    ld sp, hl
    or b
    ld hl, sp-$50
    ld hl, sp-$10
    ld hl, sp-$10
    ld a, [$fbf0]
    ldh a, [$fb]
    ldh [$fb], a
    ldh [$fb], a
    ldh a, [$fb]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $28
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
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ld [hl], d
    rst $38
    ld h, [hl]
    ld sp, hl
    and $f9
    db $e4
    ei
    db $e4
    ei
    or l
    ld a, [$b946]
    ld a, [hl]
    add c
    db $dd
    ld [bc], a
    cp h
    inc bc
    dec e
    ld [bc], a
    ld a, $01
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
    jr z, jr_093_51d1

    jr nc, jr_093_51db

    add b
    ld a, a
    add b
    ld a, a
    rra

jr_093_51d1:
    nop
    ccf
    nop
    ld a, [$4d05]
    ld [hl-], a
    dec [hl]
    ld a, [hl-]
    scf

jr_093_51db:
    jr c, jr_093_5211

    dec de
    ld [hl-], a
    dec a
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ld a, a
    nop
    inc hl
    ret nc

    daa
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    ld b, a
    add b
    ld b, a
    add b
    ld b, a
    add b
    ld c, a
    add b
    ld c, [hl]
    add c
    ld c, [hl]
    add c
    ld c, h
    add e

Call_093_5200:
    ld c, h
    add e
    ld c, h
    add e
    call c, Call_093_7803
    add a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    nop

jr_093_5211:
    rra
    ld bc, $031f
    rra
    dec bc
    rra
    rrca
    rra
    rla
    ccf
    rra
    ccf
    rrca
    cp a
    sbc a
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $030f
    rrca
    inc bc
    sbc a
    ld bc, $011f
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ccf
    rlca
    ccf
    inc bc
    ccf
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    rrca
    ccf
    add hl, sp
    rst $38
    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_093_5277:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    dec b
    ld a, a
    nop
    cpl
    nop
    rlca
    nop
    rrca
    ld [$10df], sp
    jp c, $e600

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_093_5277

    or b
    ld c, a
    add b
    ld a, a
    nop
    rst $38
    dec b
    ld a, [$e718]
    add sp, $17
    add sp, $17
    ld [hl], h
    adc e
    add sp, $17
    ld c, e
    or h
    add $38
    ld e, e
    and b
    ld a, b
    add a
    ret nz

    ccf
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
    rrca
    ldh a, [$3b]
    call nz, $ca35
    sbc b
    ld h, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    sbc b
    ld h, a
    call nc, Call_093_682b
    sub a
    ld e, b
    and a
    sub b
    ld l, a
    ld [$20f7], sp
    sbc a
    ldh a, [rIF]
    inc [hl]
    dec bc
    jr c, @+$09

    ld h, b
    rra
    jr nc, jr_093_52f9

    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ld [bc], a
    nop
    dec b
    nop
    inc de
    nop
    rlca
    nop
    ld a, [bc]

jr_093_52f9:
    ld bc, $0708
    ld [$0807], sp
    rla
    db $10
    cpl
    jr nz, jr_093_5323

    nop
    ccf
    ld de, $602e
    ld e, $e0
    ld e, $e0
    ld e, $80
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fc
    cp $fc
    cp $fc
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop

Call_093_5323:
jr_093_5323:
    db $fc

jr_093_5324:
    nop
    db $fc
    jr jr_093_5324

    ld [$10fc], sp
    db $fc
    ld a, b
    cp $f8
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$40
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fd
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
    ldh a, [rIE]
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    or b
    rst $38
    ret z

    rst $38
    call nz, $e0fe
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38

jr_093_536e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    inc b
    rst $38
    nop
    ei
    nop
    jp $1100


    ld de, $0aff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_093_5398:
    nop
    rst $38

jr_093_539a:
    nop
    rst $38
    nop
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
    add sp, $3f
    ret nz

    db $e3
    inc e
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
    rst $38
    ret nz

    ccf
    ld [$00f0], sp
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_093_5398

    jr nz, jr_093_539a

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b

jr_093_53e2:
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, d
    add b
    jr nz, jr_093_536e

    ret nc

    nop
    ret c

    nop
    ret nc

    nop
    ld a, [$ef00]
    nop
    cp $00
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
    ld h, b
    nop
    ldh a, [rP1]
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
    jr nz, jr_093_53e2

    db $10
    ldh [rDIV], a
    ld hl, sp+$01
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
    nop
    nop
    nop
    add h
    add b
    add b
    add b
    ret nz

    add b
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    call nz, $c4ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $18
    nop
    sbc h
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10fe
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38

jr_093_54ac:
    nop
    rst $38
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1400
    nop
    dec bc
    nop
    rst $28
    nop
    ld e, [hl]
    nop
    cp $00
    cp $00
    pop af
    nop
    push hl
    nop
    rst $38
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

    nop
    jr nc, jr_093_54ac

    ld e, h
    and b
    ld [hl+], a
    call c, $fa05
    ld [bc], a
    db $fd
    ld b, l
    ld a, [$fd22]
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    add b
    rst $38
    add b
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
    nop
    add [hl]
    nop
    add $00
    ld [hl], l
    nop
    ld a, $00
    inc c
    nop
    add h
    add b
    jp $e1c0


    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
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
    nop
    rst $38
    nop
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
    ld [bc], a

jr_093_556b:
    db $fd
    rlca
    ld hl, sp+$03
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
    ld b, b
    nop
    add b
    nop
    jr nc, jr_093_5582

jr_093_5582:
    cp b
    nop
    dec b
    nop
    ld [hl+], a
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    dec d
    nop
    add hl, sp
    nop
    jr c, jr_093_5596

jr_093_5596:
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

    nop
    ret nc

    jr nz, jr_093_556b

    ld c, b
    dec de
    db $e4
    ld c, $f1
    rrca
    ldh a, [$1f]
    ldh [$5f], a
    and b
    ccf
    ret nz

    ld de, $00ee
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$27
    ld hl, sp-$1c
    ld hl, sp-$1a
    ld hl, sp-$1d
    db $fc
    ldh [rIE], a
    call nz, $ccfb
    di
    call nz, Call_000_0cf3
    di
    nop
    ei
    ld [hl], b
    adc a
    ld b, b
    or a
    ld b, a
    cp b
    add b
    rst $38
    nop
    ld b, b
    nop
    jr nc, jr_093_55f5

jr_093_55f5:
    jr jr_093_55f7

jr_093_55f7:
    nop
    nop
    add d
    add b
    add c
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    rst $38
    cp h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    inc bc
    rst $38
    add e
    rst $38
    ld bc, $01bf
    scf
    ld bc, $0103
    rlca
    inc bc
    rrca
    ld c, $0f
    ld c, $0f
    ld [$000f], sp
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ldh a, [rIF]
    nop
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
    nop
    inc sp
    nop
    ld a, a
    nop
    scf
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
    nop
    nop
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
    nop
    xor e
    nop
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
    dec d
    ld [$7f80], a
    ld c, b
    or a
    ld h, d
    sbc l
    inc d
    db $eb
    add c
    cp $e4
    ei
    ldh a, [rIE]
    db $fc
    nop
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cpl
    ret nc

    ld b, e
    cp h
    pop hl
    ld e, $e9
    ld d, $fd
    ld [bc], a
    call nz, $ac03
    inc bc
    ld a, [de]
    ld bc, $00d3
    ld b, b
    add b
    ld hl, $11c0
    ldh [$0d], a
    ldh a, [$03]
    db $fc
    ld b, $f8
    ld b, $f8
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    rst $38
    ret nz

    rst $38
    pop de
    xor $ba
    push bc
    db $fd
    add d
    ld hl, sp-$79
    cp $c1
    cp $e1
    db $10
    ld [hl], b
    ld [$0098], sp
    ld c, [hl]
    nop
    db $d3
    add b
    pop af
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    ret nz

    db $fc
    ldh a, [$fe]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ccf
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld a, [bc]
    nop
    ld de, $0b00
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0d00], sp
    nop
    daa
    nop
    rst $28
    nop
    rst $38
    nop
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
    add b
    ld a, a
    add d
    db $fd
    push hl
    ld a, [$fff8]
    cp $fd
    db $fc
    rst $38
    xor c
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    add h
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld e, c
    cp $0d
    ld a, [c]
    ld [hl], a
    adc b
    ld c, d
    or l
    ld e, a
    and b
    ld d, a
    xor b
    ccf
    ret nz

    rst $18
    jr nz, @+$81

    add b
    ld [hl], a
    adc b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    ld a, $c0
    ld a, $c0
    ld a, $c0
    xor [hl]
    ret nc

    rst $38
    ldh [$2e], a
    ldh a, [rNR33]
    ld hl, sp+$00
    inc b
    nop
    ld [bc], a
    nop
    add c
    add b
    ret nz

    ret nz

    ldh [$f0], a
    ldh a, [$f8]
    db $fc
    db $fc
    cp $e2
    cp $db
    rst $38
    ret z

    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    ld a, [hl]
    rst $38
    ld c, a
    rst $38
    ret nz

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
    jr jr_093_5833

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_093_5843

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_093_5853

    ld a, [hl+]
    ld d, $2b
    inc l
    dec l
    ld l, $2f
    jr nc, jr_093_5864

jr_093_5833:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_093_5874

    ld d, $3a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_093_5843:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, $16
    ld d, $47
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_093_5853:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, $52
    ld d, $16
    ld d, $53
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_093_5864:
    ld b, c
    ld e, e
    ld e, h
    ld d, $5d
    ld d, $16
    ld d, $5e
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_093_5874:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld d, $6b
    ld d, $16
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld d, $78
    ld a, c
    ld a, d
    ld a, e
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
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
    ld [hl], b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld [hl], b
    xor b
    xor c
    xor d
    xor e
    xor h
    ld [hl], b
    xor l
    xor [hl]
    xor a
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    ld [hl], b
    or [hl]
    or a
    cp b
    cp c
    ld [hl], b
    xor a
    cp d
    cp e
    cp h
    cp l
    ld [hl], b
    cp [hl]
    ld [hl], b
    ld [hl], b
    cp a
    ret nz

    ld [hl], b
    pop bc
    jp nz, Jump_093_70c3

    call nz, Call_093_7070
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld [hl], b
    ld [hl], b
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    ld [hl], b
    reti


    ld [hl], b
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld b, $00
    ld b, $05
    dec b
    ld b, $07
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    ld b, $05
    ld b, $05
    dec b
    ld b, $05
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $06
    ld b, $05
    dec b
    ld b, $04
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $05
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
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    rlca
    ld [bc], a
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
    ld b, $06
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
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
    dec b
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
    ld b, $05
    dec b
    dec b
    dec b
    dec b
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
    ld b, $05
    ld [bc], a
    rlca
    inc b
    nop
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
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    nop
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
    rlca
    ld bc, $0202
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
    ld [bc], a
    rlca
    ld bc, $0202
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0402
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    rlca
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
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    call z, $d0ff
    rst $38
    call nz, $d4ff
    rst $38
    db $e4
    rst $38
    and $ff
    and $ff
    db $e3
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    ld [hl], d
    rst $38
    jr c, @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $18
    inc b
    rra
    ld b, $f7
    ld [bc], a
    ld e, a
    ld [bc], a
    rst $28
    ld [bc], a
    dec hl
    ld [bc], a
    adc a
    ld bc, $01e3
    ld a, e
    nop
    ld [hl], l
    nop
    ld d, l
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp b
    nop
    ld d, b
    nop
    nop
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
    and b
    nop
    ei
    nop
    rst $38
    nop
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    sub e
    ld l, h
    ldh a, [rIF]
    db $fd
    ld [bc], a
    ld b, e
    nop
    nop
    nop
    nop
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
    db $eb
    inc d
    pop af
    ld c, $7c
    inc bc
    ccf
    nop
    add a
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [hl], b
    nop
    ld d, h
    nop
    ld a, a
    nop
    ld [hl], l
    nop
    inc de
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    dec a
    nop
    nop
    nop
    sbc b
    ldh [$7f], a
    rst $38
    dec e
    inc bc
    ld bc, $a100
    nop
    rst $38
    nop
    rst $38
    ldh a, [$f8]
    db $fc
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld sp, $11ff
    rst $38
    nop
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
    ld e, $e1
    ld a, $c1
    cp [hl]
    ld b, c
    xor $11
    ldh [$1f], a
    rst $38
    jr @+$01

    inc c
    rst $38
    dec c
    rst $38
    ld b, $ff
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld hl, $19ff
    rst $38
    ld c, h
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
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
    xor a
    nop
    ld [hl], a
    nop
    ld l, e
    nop
    ld a, [hl]
    nop
    ld [hl], l
    nop
    db $eb
    nop
    db $ed
    nop
    sub $00
    ret z

    nop
    ld d, h
    nop
    ld l, d
    sub l
    sbc a
    ld h, b
    ld l, a
    sub b
    ei
    inc b
    rst $38
    nop
    rst $20
    nop
    xor d
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp [hl]
    ld b, c
    ld a, d
    add l
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
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    cp e
    ld b, h
    ld e, e
    and h
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    pop hl
    nop
    add b
    nop
    and b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    ld a, h
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    sub b
    ldh [rIE], a
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$fc03], sp
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
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    ld sp, $01ff
    rst $38
    ld hl, $23df
    rst $18
    ld b, c
    cp a
    ld h, c
    sbc a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld b, a
    rst $38
    ld d, [hl]
    rst $38
    ld de, $29ff
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld e, a
    rst $38
    ld d, d
    rst $38
    jr nc, @+$01

    or b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
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
    cpl
    nop
    xor $00
    ret c

    nop
    rst $38
    nop
    rst $30
    nop
    ld [$b500], a
    nop
    ld c, c
    nop
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    halt
    ld a, [hl-]
    nop
    ld h, [hl]
    nop
    nop
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
    adc b
    nop

jr_093_5cf8:
    ret nz

    nop
    jp nc, Jump_000_3800

    ret nz

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
    ld h, b
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $8100
    nop
    db $e3
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
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_093_5cf8

    rst $38
    rst $38
    ld [hl], h
    adc e
    di
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    jp $bffc


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
    db $fc
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp l
    cp $6b
    db $fc
    db $d3
    db $fc
    rst $20
    ld hl, sp-$11
    ldh a, [rIE]
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
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    or b
    rst $38
    jr z, @+$01

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
    ld b, b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld d, b
    rst $38
    nop
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
    ld a, [hl]
    nop
    ld a, [hl-]
    nop
    dec de
    nop
    db $f4
    nop
    ld a, l
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld c, b
    or a
    ld h, l
    sbc d
    db $fd
    ld [bc], a
    ld [hl], a
    adc b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    ldh a, [rP1]
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    sbc a
    nop
    rrca
    nop
    add c
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
    rst $38
    add sp, $17
    cp $00
    cp $00
    rst $38
    nop
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $83ff


    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $18
    adc $3f
    sbc $3f
    sbc $3f
    sbc h
    ld a, a
    cp h
    ld a, a
    rst $38
    jr nz, @+$01

    nop
    rst $38

Jump_093_5e65:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    ld [$02ff], sp
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    or a
    nop
    rst $10
    nop
    xor e
    nop
    ld a, [hl+]
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, l
    nop
    add hl, bc
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
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, [bc]
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    pop bc
    nop
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ret nz

    ccf
    rst $38
    ld a, b
    rlca
    inc a
    nop
    dec a
    nop
    rst $30
    nop
    rra
    ldh [$f0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_093_5f0f:
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
    di
    db $e3
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$20f7], sp
    rst $18
    jr nz, jr_093_5f0f

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld c, l
    rst $38
    db $10
    rst $38
    add d
    rst $38
    dec l
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    add hl, sp
    rst $38
    nop
    rst $38

jr_093_5f69:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    jr jr_093_5f69

    or [hl]
    ld c, c
    cp d
    ld b, l
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ccf
    nop
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    cp $00
    ld a, [$fc00]
    nop
    ld a, b
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ret nz

    rst $38
    rst $38
    ld a, b
    rlca
    ret z

    nop
    rst $38
    nop
    cp a
    nop
    rra
    ldh [$e8], a
    rst $38
    rst $38
    rst $38
    rst $38

jr_093_5fcf:
    rst $38
    jr @+$01

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
    rst $28
    nop
    db $e4
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
    jr nz, jr_093_5fcf

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
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    ld [$11ff], sp
    rst $38
    inc d
    rst $38
    add d
    rst $38
    rst $00
    rst $38
    inc de
    rst $38
    dec e
    rst $38
    push de
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    xor [hl]
    rst $38
    ret z

    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    ld d, $ff
    xor a
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cpl
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    xor e
    nop
    rrca
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
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    ldh [rIE], a
    rst $38
    add sp, $17
    rst $38
    nop
    sbc a
    nop
    rst $18
    nop
    scf
    ret z

    ldh [rIE], a
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    nop
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rlca
    rst $38
    rla
    rst $38
    dec b
    rst $38
    ld c, $ff
    ld c, e
    rst $38
    ccf
    rst $38
    ld d, a
    rst $38
    sub a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    cp l
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
    ccf
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    dec a
    inc bc
    di
    inc c
    ei
    inc b
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp a
    nop
    dec e
    ld [bc], a
    ld bc, $0b02
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
    nop
    ld a, $00
    ccf
    nop
    ccf
    nop
    nop
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
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    adc h
    ldh a, [$7f]
    rst $38
    and b
    ld e, a
    ei
    inc b
    add hl, de
    and $63
    sbc h
    nop
    rst $38
    ldh a, [rIE]
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec bc
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
    rst $38
    cp a
    rst $38
    ld a, e
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    rst $38
    rst $38
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld sp, $5d00
    nop
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
    nop
    rst $30
    nop
    ld a, a
    nop
    ld c, $00
    dec bc
    nop
    dec e
    nop
    rrca
    nop
    ld sp, $1000
    nop
    ld [$1400], sp
    nop
    inc e
    nop
    ld c, $00
    rlca
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    sub a
    nop
    ld a, a
    nop
    rst $38
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
    sub [hl]
    add sp, $7f
    rst $38
    ld h, b
    sbc a
    or $09
    ld [$b8f7], sp
    ld b, a
    inc c
    di
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
    rst $38
    rst $38
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
    sbc a
    ld a, a
    adc a
    ld a, a
    add a
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
    ld a, a
    add b
    ld a, a
    add b
    ld c, a
    add b
    ld c, a
    add b
    jp RST_00


    nop
    nop
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, $01
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    di
    nop
    add e
    nop
    jp $e300


    nop
    pop af
    nop
    sub b
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld b, $00
    ld de, $0100

jr_093_62af:
    nop
    inc bc
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $fdc2
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_093_62af

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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    ei
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
    ccf
    nop
    rra
    nop
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    sbc a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    rla
    nop
    rrca
    nop
    dec bc
    nop
    dec d
    nop
    ld d, l
    nop
    ld e, e
    nop
    ld [hl], l
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld a, [$ff05]
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
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld h, b
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    pop bc
    ld a, a
    ld a, a
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$36
    rst $38
    adc b
    rst $38
    sbc c
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rrca
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
    ld bc, $02ff
    rst $38
    rrca
    rst $38
    ld c, $ff
    dec b
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
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $04ff
    rst $38
    ld bc, $0aff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $22ff
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    dec a
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
    rst $28
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
    rst $30
    ld [$047b], sp
    cp a
    nop
    ccf
    nop
    ld e, a
    nop
    dec de
    nop
    dec hl
    nop
    dec b
    nop
    rla
    nop
    dec [hl]
    nop
    ld b, $00
    dec b
    nop
    dec b
    ret nz

    rrca
    ldh [$08], a
    rst $20
    nop
    rrca
    nop
    rrca
    nop
    rst $00
    nop
    rst $30
    ldh [rIE], a
    ccf
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
    ldh a, [$f3]
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    sbc e
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    nop
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
    inc b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl], l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    db $eb
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
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
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld [bc], a
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $09ef
    rst $38
    dec bc
    ld a, a
    ld a, a
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ccf
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
    add b
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
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
    xor a
    rst $38
    rla
    rst $38
    cpl
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    or $4b
    db $e4
    db $db
    ret z

    scf
    ret z

    scf
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    db $f4
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ccf
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld bc, $01bf
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
    ld [bc], a
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
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
    nop
    rrca
    nop
    rst $38
    nop
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
    inc bc
    ccf
    nop
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

    db $fd
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
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
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $10
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    xor b
    db $fc
    ld [bc], a
    rst $38
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
    call nc, Call_000_00ff
    rst $38
    nop
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
    ld bc, $09ff
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    sbc b
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld hl, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
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
    ld [$40ff], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
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

Call_093_682b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld b, a
    rst $38

Jump_093_683c:
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rlca
    push de
    rst $38
    rrca
    rst $38
    nop
    ld e, a
    nop
    adc a
    nop
    rst $38
    nop
    cp a
    nop
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
    ld b, $ff
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
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add e
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    db $10
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
    ld b, $ff
    inc b
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
    inc b
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
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
    rlca
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, [hl-]
    rst $38
    inc [hl]
    rst $38
    or h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc [hl]
    rst $38
    add [hl]
    rst $38
    add $ff
    add $ff
    jp Jump_000_04ff


    rst $38
    ld b, $ff
    ld h, h
    rst $38
    jr nc, @+$01

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
    ld bc, $80ff
    rst $38
    add d
    rst $38
    inc b
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
    nop
    rst $38
    ld c, $ff
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec de
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
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
    db $76
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    cp $ff
    db $fd
    rst $38
    cp $ff
    push de
    rst $38
    ld [$d5ff], a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, b
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $00ff
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
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    ld [$00ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld [$40ff], sp
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
    jr nz, @+$01

    jr nz, @+$01

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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    or [hl]
    rst $38
    ld b, $ff
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
    add sp, -$01
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
    pop bc
    rst $38
    call nz, $84ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld a, [$f8ff]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    push af
    rst $38
    ld a, [$ddff]
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_093_6b74

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_093_6b86

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_093_6b96

    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_093_6b74:
    ld l, $2f
    jr nc, jr_093_6ba9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    jr c, jr_093_6bbb

    ld a, [hl-]
    dec sp
    inc a
    dec sp

jr_093_6b86:
    dec a
    ld a, $3f
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

jr_093_6b96:
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
    ld e, [hl]

jr_093_6ba9:
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
    ld l, l
    ld l, [hl]
    ld e, b
    ld l, a

jr_093_6bbb:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld e, b
    ld [hl], e
    ld e, b
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
    ld e, b
    add d
    add e
    add h
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    rrca
    adc e
    adc h
    adc l
    adc [hl]
    ld e, b
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

    call $5858
    adc $cf
    nop
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $db58

    call c, $dedd
    rst $18
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
    jr jr_093_6c88

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_093_6c98

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_093_6ca8

    ld a, [hl+]
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_093_6c88:
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_093_6c98:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc

jr_093_6ca8:
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0305
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, e
    ld bc, $0202
    ld bc, $0200
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld bc, $0301
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    nop
    nop
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    ld [$0b0b], sp
    ld [$0b0b], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld e, l
    rst $38
    ld c, e
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    reti


    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    inc de
    rst $38
    ld c, d
    rst $38
    jp hl


    rst $38
    pop hl

jr_093_6df5:
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jp nc, $3b7f

    rst $18
    ld c, e
    rst $38
    db $10
    rst $38
    ld b, [hl]
    rst $38
    and l
    ld e, a
    inc b
    rst $38
    db $10
    rst $38
    sub e
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    jr z, jr_093_6df5

    ld h, d
    sbc l
    ld [hl], h
    cp e
    db $ec
    dec sp
    cp e
    ld l, a
    ld b, e
    cp h
    dec bc
    db $fc
    xor l
    ld e, [hl]
    xor a
    ld e, h
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    ld a, [bc]
    db $fd
    add hl, sp
    cp $44
    ei
    rla
    ld sp, hl
    adc [hl]
    ld a, c
    ret nz

    ccf
    call $5933
    and a
    jp c, $dd25

    daa
    inc e
    rst $20
    ld e, [hl]
    and c
    db $d3
    dec l
    db $e3
    dec e
    and $19
    ld e, e
    and h
    ld e, a
    and b
    db $fd
    ld [bc], a
    ld d, c
    rst $38
    add l
    rst $38
    add c
    rst $38
    ld h, b
    rst $38
    inc d
    rst $38
    or b
    rst $38
    ret nc

    rst $38
    ld d, d
    rst $38
    ld e, $e1
    ld a, [bc]
    push af
    inc c
    di
    ld hl, $82de
    ld a, l
    inc d
    db $eb
    ld b, b
    cp a
    pop bc
    ccf
    ld [hl+], a
    rst $18
    inc l
    db $d3
    ld c, [hl]
    pop af
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    ld [$0cf7], sp
    rst $30
    db $10
    rst $38
    and b
    rst $38
    jr c, @+$01

    cp b
    rst $38
    db $10
    rst $38
    sbc b
    rst $38
    ld a, [hl-]
    rst $38
    inc sp
    rst $38
    ld [bc], a
    rst $38
    res 7, a
    rlca
    rst $38
    rrca
    rst $38
    daa
    rst $38
    ld [hl], a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    rst $10
    rst $38
    rst $28
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
    rst $38
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
    rst $38
    rst $38
    xor $ff
    xor $ff
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    or d
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$5cff]
    rst $38
    cp h
    rst $38
    db $ec
    rst $38
    or h
    rst $38
    jp c, $d6ff

    rst $38
    ld a, [c]
    rst $38
    cp b
    rst $38
    ret nc

    rst $38
    and [hl]
    rst $38
    ld [hl], c
    rst $38
    or e
    rst $38
    ld a, [c]
    rst $38
    ld h, l
    rst $38
    jr nz, @+$01

    xor [hl]
    db $fd
    db $e4
    rst $38
    jr nz, @+$01

    sub h
    rst $28
    or b
    rst $08
    dec a
    xor $94
    rst $28
    add h
    rst $38
    call nc, $f4ef
    rst $38
    ld c, h
    rst $30
    ld b, h
    rst $38
    ld c, h
    rst $30
    ld d, a
    xor $a2
    ld e, a
    ld [de], a
    rst $28
    ld d, h
    xor a
    add e
    ld a, h
    ld d, a
    db $ec

jr_093_6f1e:
    ld d, c
    xor $0f
    ldh a, [$0d]
    ld a, [c]
    ld c, $f1
    rrca
    ldh a, [$3b]
    db $e4
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, d
    cp l
    ld e, a
    and c
    ld sp, $96cf
    ld l, e
    dec c
    ld a, [$bc43]
    rst $00
    cp b
    add a
    ld hl, sp+$43
    db $fc
    and [hl]
    db $fd
    and h
    ld a, a
    inc [hl]
    rst $38
    ld l, l
    cp d
    sub $39
    sub $39
    rst $08
    jr nc, jr_093_6f1e

    jr nc, @-$75

    db $76
    sbc b
    ld [hl], a
    sub [hl]
    ld a, l
    inc e
    rst $30
    inc e
    rst $38
    adc b
    ld a, a
    add l
    ld a, a
    add b
    rst $38
    and b
    rst $38
    dec d
    rst $38
    daa
    rst $38
    ld h, $ff
    ld h, $ff
    ld [hl], $ff
    daa
    rst $38
    or d
    rst $38
    or c
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld a, d
    cp a
    dec de
    rst $38
    ccf
    rst $38
    ld e, a
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
    db $fd
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
    db $dd
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld d, [hl]
    rst $38
    or $ff
    sub $ff
    ld a, [$33ff]
    rst $38
    sub c
    rst $38
    push bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    jp $e1ff


    rst $18
    pop bc
    rst $38
    sbc e
    rst $38
    cpl
    db $db
    ld b, b
    rst $38
    ld c, h
    rst $30
    and h
    rst $38
    inc b
    rst $38
    dec b
    cp $56
    db $fd
    ld b, l
    cp $4c
    rst $38
    ld c, e
    db $fc
    ld b, c
    cp [hl]

jr_093_6fda:
    inc sp
    db $ec
    ld a, [de]
    push hl
    adc [hl]
    ld [hl], c
    call nc, $81ff
    rst $38
    set 7, a
    ld c, [hl]
    rst $38
    push bc
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    jr nz, @+$01

    ld l, a
    sub b
    ld l, l
    sub b
    ld e, [hl]
    and b
    db $ec
    db $10
    ld l, h
    sub b
    push af
    ld [$30cc], sp
    sbc [hl]
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    ei
    inc b
    ccf
    call nz, $c03f
    rst $10
    ld l, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    call $9732
    ld l, [hl]
    cp e
    ld h, h
    ld a, a
    and b
    rst $18
    jr nz, jr_093_6fda

    ld h, b
    cp a
    ld h, b
    rra
    ldh [rP1], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    call nz, $c0ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    cp a
    ld b, b
    cp l
    ld c, d
    rst $38
    nop
    or l
    ld c, d
    push af
    ld a, [bc]
    ld [hl], $c9
    dec l
    jp nc, $f18e

    ld e, e
    or h
    ld a, l
    sub e
    ld h, c
    sbc a
    and l
    jp c, $fa85

    and b
    rst $18
    sub [hl]
    db $fd
    add b
    rst $38
    add sp, -$21
    ld b, b
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38

Call_093_7070:
    db $fc
    rst $38
    or $ff
    inc a
    rst $38
    cp [hl]
    rst $38
    ld a, [$0bff]
    rst $38
    ld h, e
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    pop de
    cp $90
    rst $38
    add b

jr_093_708d:
    rst $38
    or b
    rst $18
    inc bc
    cp $84
    rst $38
    pop bc
    cp $fd
    jp nz, $e699

    db $dd
    ld [c], a
    dec e
    ld [c], a
    inc hl
    db $fc
    sub e
    ld l, h
    adc a
    ld [hl], b
    ld [c], a
    jr @-$2c

    jr nz, jr_093_708d

    nop
    ld d, b
    and b
    ret nz

    nop
    sub d
    ld bc, $02c8
    adc c
    nop
    ld d, b
    nop
    ld l, b
    nop
    ld b, b
    add b
    ld d, l
    nop
    nop
    nop
    add b
    nop
    ld c, h
    nop
    ld h, b

Jump_093_70c3:
    nop
    push de
    nop
    ld b, c
    nop
    jp nz, $8000

    nop
    add b
    nop
    add d
    nop
    add b
    nop
    ret nc

    nop
    sub h
    nop
    sub d
    nop
    ret nz

    nop
    add d
    nop
    sub b
    nop
    ret nz

    nop
    and [hl]
    nop
    sub b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    pop de
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add sp, $00
    ldh [rP1], a
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    ld a, [$7c00]
    add b
    db $fd
    nop
    rst $38
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    db $76
    adc c
    ld a, e
    add h
    rra
    add sp, $17
    add sp, $5b
    and h
    rrca
    ldh a, [rHDMA5]
    ld [$f44b], a
    ld c, e
    db $f4
    ld b, a
    ld hl, sp-$6a
    db $fd
    db $eb
    db $fc
    cp d
    rst $38
    jp c, $edff

    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    rst $38
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
    ccf
    sbc a
    rrca
    db $eb
    rst $00
    rst $20
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec hl
    rst $38
    dec de
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    jp Jump_000_13ff


    rst $38
    ei
    db $fc
    di
    db $fc
    and e
    db $fc
    di
    db $fc
    ei
    db $fc
    set 7, h
    xor e
    db $fc
    dec bc
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
    db $fd
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
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
    cp $01
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $81
    ld bc, $0181
    ld bc, $8101
    ld bc, $01e1
    pop bc
    ld bc, $01e1
    push af
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $25ff
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld h, l
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
    cp $ff
    db $fc
    rst $38
    ei
    rst $38
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    pop bc
    rst $38
    jp $87ff


    db $fd
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
    rst $18
    rst $38
    cp a
    rst $08
    ld a, e
    add a
    cp l
    jp $c0bf


    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    daa
    ret nz

    ccf
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    ld a, $c0
    ccf
    ret nz

    ld a, [hl]
    ret nz

    daa
    ret nz

    ld a, $c0
    inc a
    ret nz

    dec a
    ret nz

    ld a, $c0
    ccf
    ret nz

    dec sp
    ret nz

    ld [de], a
    ret nz

    rlca
    ret nz

    inc c
    ret nz

    ld a, c
    add b
    ld [hl+], a
    ret nz

    and d
    ret nz

    ld a, $c0
    ld l, $c0
    sbc l
    ldh [$98], a
    ldh [$2a], a
    ret nz

    xor l
    ret nz

    adc d
    ldh [$88], a
    ldh [$90], a
    ldh [$90], a
    ldh [rNR23], a
    ldh [$93], a
    ldh [$da], a
    ldh [$df], a
    ldh [rHDMA1], a
    ldh [$36], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$9f], a
    ldh [$df], a
    ldh [$97], a
    ldh [$0b], a
    ldh [$b7], a
    ldh [rTAC], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$df], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [rIE]
    ldh [$eb], a
    db $f4
    rst $38
    ldh [$eb], a
    db $f4
    db $eb
    db $f4
    db $eb
    db $f4
    db $ed
    or $e5
    cp $ea
    push af
    pop hl
    cp $eb
    db $f4
    ld [$e8f5], a
    rst $30
    add sp, -$09
    ldh a, [rIE]
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    ld a, a
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    add c
    adc a
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $38
    ld e, c
    rst $38
    rst $30
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

Jump_093_7325:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    ei
    rlca
    rst $38
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
    rst $38
    nop
    rst $38
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
    di
    nop
    rst $38
    nop
    sub $00
    ld sp, hl
    nop
    sub h
    nop
    rra
    nop
    inc d
    nop
    cp h
    nop
    adc b
    nop
    sbc [hl]
    nop
    jr z, jr_093_7376

jr_093_7376:
    call z, $8c00
    nop
    ld e, d
    nop
    sbc h
    nop
    inc c
    nop
    ld a, h
    nop
    ld b, $00
    stop
    nop
    nop
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [c], a
    nop
    ld a, [bc]
    nop
    adc h
    nop
    jr nz, jr_093_73a0

jr_093_73a0:
    or b
    nop
    jr nc, jr_093_73a4

jr_093_73a4:
    stop
    jr nz, jr_093_73a8

jr_093_73a8:
    ldh a, [rP1]
    add hl, sp
    nop
    ret nc

    nop
    jp z, $c000

    nop
    ret nz

    nop
    nop
    nop
    ret nc

jr_093_73b7:
    nop
    ld [hl-], a
    nop
    xor b
    nop
    pop af
    nop
    xor $00
    cp $00
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    nop
    ld [hl], $c9
    call z, Call_093_4433
    cp e
    jr nc, jr_093_73b7

    and d
    db $dd
    inc d
    db $eb
    nop
    rst $38
    ld hl, $03df
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp $ff
    push af
    cp $eb
    db $fc
    rst $10
    ld hl, sp+$2f
    ldh a, [$5f]
    ldh [$8f], a
    ldh a, [rNR31]
    db $e4
    rra
    ldh [$df], a
    ldh [$9f], a
    ldh [$d7], a
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$df], a
    ldh [$bf], a
    ret nz

    dec sp
    call nz, $e01f
    ld c, $f1
    ld hl, sp+$00
    ldh [rP1], a
    ret z

    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$fb]
    db $fc
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    call c, $e53f
    rra
    ei
    rlca
    db $fc
    inc bc
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
    ld a, a
    nop
    rst $38
    nop
    sbc a
    nop
    rst $18
    nop
    or a
    nop
    rst $18
    nop
    cp a
    nop
    or a
    nop
    or a
    nop
    scf
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
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0500
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
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_093_749a

jr_093_749a:
    jr nz, jr_093_749c

jr_093_749c:
    jr nz, jr_093_749e

jr_093_749e:
    jr nz, jr_093_74a0

jr_093_74a0:
    ld [bc], a
    nop
    ld h, d
    nop
    nop
    nop
    nop
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
    ld sp, $8900
    nop
    rla
    nop
    cp e
    nop
    rra
    nop
    cp a
    nop
    cp a
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
    ei
    inc b
    ld [$7615], a
    adc c
    pop hl
    rra
    sub e
    ld l, a
    inc hl
    rst $18
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    pop af
    cp $e7
    ld hl, sp-$61
    ldh [$7f], a
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
    nop
    nop
    stop
    jr nz, jr_093_74fa

jr_093_74fa:
    nop
    nop
    jr nz, jr_093_74fe

jr_093_74fe:
    nop
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    ldh a, [rP1]
    db $fd
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    rst $28
    rra
    rst $20
    rra
    rst $30
    rrca
    ei
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    rst $38
    inc bc
    db $fd
    inc bc
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    ld a, h
    inc bc
    db $fc
    inc bc
    ld a, a
    nop
    ld a, $01
    cp a
    nop
    ld a, a
    nop
    ld e, [hl]
    ld bc, $015e
    ld a, [hl]
    ld bc, $005f
    rra
    nop
    ld e, a
    nop
    ld c, [hl]
    ld bc, $005f
    rrca
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cpl
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld l, $01
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $18
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld bc, $007f
    rst $38
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
    rlca
    rst $38
    rrca
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp $fc
    ld hl, sp-$08
    ldh a, [$e0]
    ldh [$c7], a
    ld hl, sp-$21
    ldh [$1f], a
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    and $00
    db $fc
    nop
    ldh a, [rP1]
    xor b
    nop
    ldh a, [rP1]
    ld b, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fd
    ld bc, $00fe
    cp $00
    cp $01
    cp $01
    cp $2b
    call nc, $ec13
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
    nop
    rst $38
    ld bc, $e0fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ld a, $ff
    dec a
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    and l
    ld a, a
    xor l
    ld a, a
    adc l
    ld a, a
    add a
    ld a, l
    and c
    ld a, a
    and b
    ld a, a
    ldh [$3f], a
    ld b, l
    cp a
    ld b, c
    cp a
    jp $d83d


    scf
    sub c
    ld a, a
    reti


    ccf
    and e
    ld e, l
    and b
    ld e, a
    pop bc
    ccf
    ret nz

    ccf
    jp hl


    rra
    push hl
    rra
    pop bc
    ccf
    call z, $dd3f
    ccf
    rst $18
    ccf
    db $dd
    ccf
    sbc h
    rst $38
    sbc l
    ld a, a
    cp h
    ld a, a
    db $fd
    ld a, a
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
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
    inc a
    rst $38
    dec e
    cp $c3
    inc a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rra
    ldh [$af], a
    ld d, b
    inc a
    jp Jump_000_00ff


    cp $00
    db $fc
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
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
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld hl, sp+$00
    adc $ff
    cp $63
    ld [hl], c
    inc hl
    ld sp, $1831
    ld de, $0898
    adc h
    ld [$04c6], sp
    and $02
    db $e3
    ld [bc], a
    pop af
    ld bc, $01f9
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    xor $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $76
    adc c
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$fff7], sp
    rst $38
    xor a
    ret nc

    sbc a
    ldh [$df], a
    and b
    add l
    ld a, [$fd8a]
    ld d, e
    xor h
    db $db
    and h
    ei
    and h
    ld sp, hl
    and [hl]
    call $f5b2
    xor d
    adc $b1
    or $a9
    ld a, [c]
    xor l
    ld a, a
    and b
    rst $38
    and b
    ld a, a
    and b
    db $dd
    and d
    ccf
    ldh [$fe], a
    and c
    adc [hl]
    pop af
    rst $08
    or b
    sbc $a1
    or $a9
    sub $a9
    db $fd
    and d
    dec a
    ld [c], a
    cp l
    ld [c], a
    dec sp
    db $e4
    sbc e
    db $e4
    or d
    db $ed
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    inc h
    ei
    xor e
    or $a0
    rst $38
    xor c
    or $a5
    cp $a8
    rst $38
    xor h
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $fffe
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

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
    inc b
    nop
    ld [bc], a
    nop
    ret nz

    nop
    ret nz

    nop
    pop hl
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$07f8], sp
    db $fc
    inc bc
    cp $01
    call c, Call_093_5323
    nop
    db $ed
    nop
    push af
    nop
    db $dd
    nop
    cp l
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
    ld [bc], a
    db $fd
    adc b
    rst $30
    and e
    call c, Call_093_40ff
    ld e, a
    ld h, b
    ld a, a
    jr nz, jr_093_7802

    jr nz, jr_093_77e4

    db $10
    sub a
    jr @-$2f

    adc b
    rst $08
    adc b
    ld a, a
    nop
    rst $38
    nop
    inc bc
    nop
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38

jr_093_77e4:
    ld a, [$3fff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38

jr_093_7802:
    rst $38

Call_093_7803:
    nop
    rst $38
    nop
    rst $38
    nop
    sub h
    ld l, e
    add hl, sp
    add $fd
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    inc b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    db $10
    rst $38
    add d
    rst $38
    ld e, e
    and h
    ld e, a
    and b
    or a
    ld c, b
    or a
    ld c, b
    rst $30
    ld [$11ee], sp
    ld l, l
    sub d
    cp $00
    ld [de], a
    rst $38
    ld de, $08ff
    rst $38
    ld c, b
    rst $38
    call z, $a4ff
    rst $38
    and [hl]
    rst $38
    sub [hl]
    rst $38
    db $ed
    ld [de], a
    rst $28
    ld [de], a
    db $f4
    dec bc
    or $09
    or $09
    ei
    inc b
    ei
    inc b
    ei
    inc b
    dec e
    ld [c], a
    nop
    rst $38
    db $dd
    ld [hl+], a
    dec bc
    db $f4
    ld bc, $c0fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld c, b
    nop
    nop
    nop
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
    db $10
    rst $28
    push de
    ld a, [hl+]
    ccf
    ret nz

    rst $38
    nop
    rrca
    nop
    rrca
    nop
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
    ld b, b
    nop
    ld [bc], a
    nop
    nop
    nop
    pop bc
    nop
    ei
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
    ld b, a
    cp b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$7ff7], sp
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, b
    dec b
    rst $38
    jr nc, @-$1f

    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld l, b
    sub a
    db $eb
    inc d
    xor e
    ld d, h
    rst $28
    inc d
    sub $ff
    sub h
    rst $38
    call nc, Call_000_14ff
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    rst $28
    db $10
    db $eb
    inc d
    rst $28
    db $10
    swap h
    add e
    ld a, h
    ld [hl], b
    cp a
    or $19
    ld b, b
    add hl, sp
    ret c

    ld sp, $ff08
    add e
    ld a, h
    add e
    ld a, h
    swap h
    adc e
    ld [hl], h
    ld c, e
    or h
    and e
    ld e, h
    ld b, d
    cp l
    ld d, d
    xor l
    adc d
    ld [hl], l
    push bc
    ld a, [hl-]
    ld d, c
    xor [hl]
    ld b, c
    cp [hl]
    rst $00
    cp h
    ld d, e
    xor h
    add hl, sp
    rst $38
    or a
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00e0
    cp $00
    rla
    nop
    pop af
    nop
    jr nc, jr_093_7968

jr_093_7968:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    dec b
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
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
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
    inc b
    nop
    inc bc
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rla
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    ld b, $00
    add hl, bc
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    or a
    rst $38
    rst $28
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
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
    db $dd
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
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    sub c
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld [$0cff], sp
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    ld bc, $11ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $21ff
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld a, [de]
    rst $38
    sub b
    rst $38
    ld [de], a
    rst $38
    ld hl, $21ff
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    add sp, -$01
    rst $38
    rst $38
    rra
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $18
    nop
    rrca
    nop
    dec b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cpl
    nop
    rrca
    nop
    ld hl, $0600
    nop
    cp $01
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add hl, bc
    nop
    cp c
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
    db $fd
    ld [bc], a
    ldh [$1f], a
    nop
    rst $38
    add [hl]
    ld a, a
    rrca
    rst $38
    rrca
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
    rst $38
    rst $38
    add b
    rst $38
    ld a, [$f505]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$02ff]
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    add h
    rst $38
    sub h
    rst $38
    dec d
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    ld bc, $44ff
    rst $38
    ld b, l
    rst $38
    add l
    rst $38
    add l
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    ld a, [$fa05]
    dec b
    ld a, [$7a05]
    add l
    ld a, d
    add l
    ld a, d
    add l
    cp d
    ld b, l
    cp e
    ld b, l
    sbc e
    ld h, l
    db $db
    dec h
    db $db
    dec h
    jp c, $6f25

    sub c
    ld l, e
    sub l
    or e
    ld c, l
    or a
    ld c, c
    or e
    ld c, l
    rst $10
    add hl, hl
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld bc, $03fd
    dec e
    db $e3
    add hl, bc
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld a, [$fe05]
    ld bc, $01fe
    rst $38
    nop
    cp $01
    cp [hl]
    ld bc, $00bf
    cpl
    nop
    inc b
    ld bc, $010a
    nop
    ld bc, $0100
    ld bc, $0300
    nop

jr_093_7b60:
    ld bc, $0300
    nop

jr_093_7b64:
    or l
    nop
    ei
    nop
    rst $38
    nop

jr_093_7b6a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $ff
    xor a
    ld e, [hl]
    rst $38
    ld e, $fd
    ld e, $fd
    ld e, $ff
    inc e
    rst $18
    inc a
    db $db
    inc a
    db $db
    inc a
    rst $38
    jr c, jr_093_7b64

    jr c, @+$01

    jr c, jr_093_7b60

    jr c, jr_093_7b6a

    jr nc, @+$11

    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fd]
    ldh a, [$fc]
    pop af
    cp $f1
    db $fd
    ldh a, [$fd]
    ldh a, [$f9]
    ldh a, [$fd]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f5]
    ldh a, [$f1]
    ldh a, [$f7]
    ldh a, [$f1]
    ldh a, [$f4]
    pop af
    or $f1
    db $f4
    pop af
    ld a, [c]
    pop af
    or $f1
    ldh a, [$e1]
    or $e1
    db $f4
    pop hl
    ld a, [c]
    pop hl
    or $e1
    or $e1
    or $e1
    di
    pop hl
    ld a, [c]
    pop hl
    ld [$f1e1], a
    pop hl
    db $eb
    pop hl
    db $e3
    pop hl
    db $e3
    pop hl
    ld a, [c]
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ldh [$e3], a
    and $e1
    ld [c], a
    pop hl
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$c3], a
    db $e4
    jp $c3e8


    db $e4
    jp $c3e1


    db $ec
    jp $c3e4


    rst $00
    jp $c3ee


    or $c3
    db $e4
    jp $c3c6


    rst $38
    jp $c3ef


    rst $38
    jp $c3ff


    rst $18
    jp $c7eb


    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ld hl, sp-$39
    ld a, [$fbc7]
    rst $00
    ld a, e
    rst $00
    ld a, a
    rst $00
    ld a, a
    rst $00
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ccf
    rst $00
    cp a
    rst $00
    rst $38
    rst $00
    rst $28
    rst $10
    rst $00
    rst $38
    rst $10
    rst $28
    rst $00
    rst $38
    rst $10
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rla
    db $fc
    rra
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    dec bc
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc de
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$17
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$69
    ld hl, sp+$27
    ld hl, sp+$07
    ld hl, sp+$67
    ld hl, sp-$59
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$17
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$2f]
    ldh a, [$6f]
    ldh a, [rVBK]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$2f]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$7f], a
    or $e1
    and $e1
    xor $e1
    rst $28
    ldh [$ef], a
    ldh [$fe], a
    pop hl
    cp $e1
    xor $e1
    rst $38
    ldh [$df], a
    ldh [$fe], a
    pop hl
    db $fc
    jp $c3fc


    call c, $dce3
    db $e3
    db $fd
    ld [c], a
    db $fc
    db $e3
    ld a, [c]
    rst $08
    ld a, [$d0e7]
    rst $28
    push af
    set 6, h
    rst $28
    push hl
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $30
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
    cp a
    rst $38
    sbc a
    rst $38
    ld b, l
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    rst $00
    ld a, a
    inc sp
    rst $28
    ld sp, $a5ef
    ld a, a
    ld [hl], e
    rst $28
    db $eb
    ld a, a
    db $eb
    ld e, a
    ld l, e
    rst $38
    pop hl
    ccf
    or $3f
    ld b, l
    cp a
    ld l, l
    rst $10
    or l
    ld c, a
    ei
    rlca
    ld [hl], c
    xor a
    db $ec
    scf
    ld [hl], h
    xor a
    pop de
    cpl
    ld l, c
    cp a
    ei
    ccf
    ld a, l
    xor a
    push af
    rrca
    pop af
    rrca
    ldh a, [rIF]
    db $e4
    rra
    or c
    ld c, a
    ldh a, [rIF]
    db $fc
    rla
    ldh a, [rIF]
    ldh [$1f], a
    db $fc
    rlca
    cp $07
    ld hl, sp+$07
    or e
    ld c, l
    ld a, [$f305]
    dec c
    cp $07
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld [c], a
    rra
    ld hl, sp+$0f
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    dec c
    ldh a, [rIF]
    db $fd
    ld b, $fc
    inc bc
    cp h
    inc bc
    inc a
    inc bc
    ld l, h
    inc de
    xor $11
    ld a, [$b805]
    ld b, a
    ld hl, sp+$07
    cp b
    ld b, a
    db $ec
    inc de
    db $dd
    inc hl
    ret


    scf
    ld a, [$ce05]
    dec [hl]
    db $db
    dec h
    add $39
    add a
    ld a, b
    add b
    ld a, a
    ldh a, [$2f]
    ldh a, [$2f]
    ld sp, hl
    ld b, $d6
    add hl, hl
    ret nc

    cpl
    db $dd
    ld [hl+], a
    pop de
    ld l, $f9
    ld b, $f3
    ld c, $e8
    rra
    pop hl
    ld e, $f7
    inc c
    rst $30
    inc c
    db $eb
    inc d
    swap h
    rst $30
    ld [$0cf3], sp
    db $e3
    inc e
    ei
    inc b
    cp e
    ld b, h
    ld a, [c]
    dec c
    db $e3
    inc e
    ld d, l
    xor [hl]
    ld [c], a
    dec e
    ld [c], a
    dec e
    adc $3d
    db $db
    inc l
    add a
    ld a, b
    inc bc
    db $fc
    and e
    ld a, h
    adc e
    ld [hl], h
    db $e3
    inc e
    push bc
    ld a, $50
    cp a
    ldh a, [$3f]
    db $76
    cp l
    inc bc
    db $fc
    add b
    ld a, a
    ld c, c
    cp [hl]
    adc c
    cp $2b
    db $fc
    ld [hl+], a
    db $fd
    ret


    cp $6e
    ld sp, hl
    ldh [rIE], a
    jp hl


    rst $38
    jr z, @+$01

    call c, $a9fb
    rst $38
    db $fd
    ei
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], c
    rst $38
    pop hl
    rst $38
    ld d, c
    rst $38
    ld e, e
    rst $38
    ld e, l
    rst $38
    ld e, e
    rst $38
    add $ff
    sbc e
    rst $38
    db $d3
    rst $38
    xor [hl]

jr_093_7e83:
    rst $38
    ld c, d
    rst $38
    ld a, [de]
    rst $38
    sbc a
    ei
    cp d
    rst $18
    ld a, [hl-]
    rst $18
    sub d
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    cp [hl]
    rst $30
    inc d
    rst $38
    ld e, h
    rst $30
    jr z, @+$01

    adc d
    rst $38
    add h
    ei
    inc b
    ei
    jr nz, jr_093_7e83

    ld d, c
    rst $28
    call nc, $9deb
    db $e3
    add a
    ei
    dec l
    di
    add hl, bc
    rst $30
    ld c, $f3
    add $fb
    ld d, $eb
    add hl, de
    rst $20
    rla
    db $eb
    dec sp
    rst $08
    ld [bc], a
    rst $38
    ld [hl], e
    xor a
    nop
    rst $38
    adc b
    rst $30
    ld a, [bc]
    rst $30
    rrca
    rst $30
    sbc d
    ld h, a
    and c
    ld a, a
    add [hl]
    ld a, a
    ld d, d
    rst $28
    di
    ld c, a
    sub c
    ld l, a
    adc b
    ld a, a
    add d
    ld a, a
    ld de, $1cef
    ei
    inc h
    ei
    add [hl]
    ld a, c
    inc c
    ei
    call nz, Call_093_48fb
    rst $30
    adc c
    db $76
    reti


    ld h, [hl]
    sub h
    ld l, e
    jp c, Jump_093_5e65

    and c
    ld h, [hl]
    rst $38
    adc [hl]
    rst $38
    and d
    rst $38
    ld h, $ff
    add [hl]
    rst $38
    xor d
    rst $38
    or [hl]
    rst $38
    jr c, @+$01

    ld [$e8ff], sp
    rst $38
    cp b
    rst $38
    ld e, b
    rst $38
    ld [$98ff], sp
    rst $38
    nop
    rst $38

jr_093_7f0e:
    jr nz, @+$01

    nop
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    rst $30
    ld [$18e7], sp
    rst $20
    jr jr_093_7f0e

    jr @-$28

    add hl, hl
    rst $20
    jr c, @-$47

    ld c, b
    or e
    ld c, h
    ld [hl], b
    rst $38
    ld l, d
    rst $38
    ld a, [c]
    rst $38
    ld [hl], $ff
    and a
    rst $38
    push hl
    rst $38
    ld l, l
    rst $38
    adc c
    rst $38
    rla
    add sp, $75
    adc d
    ret nz

    ccf
    ld l, h
    sub e
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ret nz

    ccf
    db $fd
    ld h, $8d
    db $76
    jp nc, $822f

    ld a, l
    ld d, l
    xor d
    ld d, h
    xor e
    ld c, $f3
    inc [hl]
    bit 3, l
    and d
    inc c
    di
    and c
    rst $18
    add b
    rst $38
    and h
    ei
    and c
    rst $38
    and b
    rst $38
    add b
    rst $38
    add l
    ld a, [$ff7f]
    ld a, d
    rst $38
    rst $30
    rst $38
    cp $ff
    sbc $ff
    adc [hl]
    rst $38
    ld e, $ff
    inc e
    rst $38
    xor d
    db $fd
    cp a
    db $fd
    sbc c
    rst $38
    ld c, c
    rst $38
    ld b, e
    db $fd
    ld d, d
    cp l
    ld [hl], b
    cp a
    ld [hl+], a
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [c], a
    rst $38
    call nc, $d0ff
    rst $38
    push bc
    cp $c1
    rst $38
    or b
    rst $28
    set 7, l
    db $e3
    db $fd
    jp nz, $c2fd

    db $fd
    ld c, b
    rst $30
    ld l, d
    db $fd
    ld c, d
    db $fd
    ld b, d
    db $fd
    and $79
    ld c, h
    ei
    ld b, d
    db $fd
    ld h, b
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    dec b
    ld a, [$fa05]
    call nz, Call_000_14fb
    db $eb
    db $10
    rst $28
    add hl, bc
    cp $0f
    ld hl, sp+$05
    ld a, [$c93e]
    add [hl]
    ld sp, hl
    ld [de], a
    db $fd
    ld b, e
    cp h
    adc e
    db $f4
    dec b
    ld a, [$f30c]
    add l
    ld a, [$fe41]
    rlca
    ld hl, sp-$23
    rst $38
    or h
    rst $38
    add hl, sp
    rst $38
    ld [hl], c
    rst $38
    ld l, b
    rst $38
    ld [hl], c
    rst $38
    xor e
    rst $38
    and d
    rst $38
    ld [hl], b
    adc a
    and b
    ld e, a
    ld sp, hl
    ld b, $74
    adc e
    ld b, h
    xor e
    jp $f32c


    inc c
    di
    inc c
