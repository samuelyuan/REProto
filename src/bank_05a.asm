SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

Call_05a_4000:
    rst $38
    nop
    ld a, $00
    rst $20
    nop
    db $ed
    ld [bc], a
    ld sp, hl
    ld b, $c9
    ld b, $eb
    inc b
    db $ec
    nop
    rst $18
    nop
    ldh a, [rP1]
    ret nc

    nop
    jr nc, jr_05a_4018

jr_05a_4018:
    jr nc, jr_05a_401a

jr_05a_401a:
    ld h, c
    nop
    ret nz

    nop
    ld b, b
    add b
    nop
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld e, a
    db $20, $b9
    nop
    cp c
    nop
    inc bc
    nop
    rst $20
    sbc a
    ld b, a
    cp d
    ld [hl], a
    rst $08
    rst $38
    ld c, a
    rst $10
    dec a
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    ld a, a
    or l
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    ld e, [hl]
    rst $38
    rla
    rst $08
    ccf
    rst $08
    push af
    db $e3
    ld e, [hl]
    db $eb
    rst $10
    db $e3
    rst $38
    rst $00
    cp c
    ld [$3db5], a
    ld [c], a
    pop hl
    cp [hl]
    ld sp, hl
    rst $30
    ld a, c
    rst $10
    ld de, $73fe
    sbc l
    ld h, c
    cp [hl]
    ld e, l
    cp d
    jp hl


    cp a
    rst $08
    jr nc, jr_05a_40e1

    adc c
    inc e
    nop
    sbc a
    nop
    ld c, [hl]
    nop

jr_05a_4076:
    dec bc
    inc b
    xor l
    ld [bc], a
    rst $10
    nop
    ret nz

    ccf
    db $fd
    rst $38
    ld l, [hl]
    rst $38
    ret nc

    rst $38
    ld [hl], $ff
    jp nz, $80ff

    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    adc $31
    adc $31

jr_05a_409a:
    adc e
    db $f4
    dec hl
    call nc, Call_05a_46b9
    cp $01
    cp $01
    rst $20
    jr jr_05a_4076

    jr nc, @-$1f

    jr nz, jr_05a_409a

    db $10
    rst $38
    nop
    ld sp, hl
    ld b, $7c
    add e
    db $fc
    inc bc
    ld a, [$f905]
    ld b, $cd
    ld [hl-], a
    cp $01
    ei
    nop
    rst $18
    nop
    sbc [hl]
    ld bc, $008f
    ld hl, sp+$00
    ld hl, sp+$00
    ret z

    db $10
    xor b
    db $10
    ld h, [hl]
    jr @-$08

    add hl, bc
    adc a
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    ld a, $c0
    ld a, h
    add b
    db $e4
    nop
    db $ec
    nop
    ld [c], a

jr_05a_40e1:
    nop
    dec b
    nop
    inc bc
    nop
    rst $38
    nop
    or d
    nop
    ret nz

    nop
    ccf
    nop
    jr nz, jr_05a_410f

    ei
    nop
    ei
    inc b
    dec hl
    inc c
    rst $30
    ld [$00bf], sp
    db $fc
    inc bc

jr_05a_40fc:
    xor $11
    rst $30
    nop
    ld sp, hl
    ld b, $47
    jr c, jr_05a_40fc

    ld [$18ed], sp
    rst $30
    ld [$008f], sp
    adc e
    inc b
    ld a, d

jr_05a_410f:
    inc b
    ld b, $00
    rrca
    nop
    dec e
    ld [bc], a
    dec a
    ld [bc], a
    ld a, a
    nop
    db $dd
    ld [bc], a
    ld h, $00
    ld l, $01
    ld de, $320e
    inc c
    ld [hl], b
    nop
    add c
    nop
    add b
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    xor $ee
    rst $28
    rst $28
    ld l, a
    rst $28
    ld a, a
    rst $38
    xor a
    xor a
    rst $28
    rst $20
    rst $38
    rst $30
    ld l, a
    ld h, a
    push hl
    rst $20
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    db $ed
    ld a, e
    ld a, c
    rst $18
    ld e, [hl]
    ld a, [hl]
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    db $dd
    ld [hl], a
    ld a, e
    rst $38
    ld a, a
    or h
    cp l
    ld a, a
    cp $ff
    rst $38
    cp d
    ld [$e7b7], a
    rst $18
    ld [c], a
    cp a
    and a

jr_05a_4169:
    ld a, a
    rst $20
    ld a, $81
    db $76
    adc d
    ld [hl], l
    ld a, [bc]
    ld bc, $0815
    dec l
    nop
    or a
    ld [$0cc3], sp
    jr jr_05a_4183

    ld l, [hl]
    sbc a
    rst $28
    rst $38
    rst $08
    rst $38
    adc a

jr_05a_4183:
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    jr @+$01

    jr @+$01

    inc c
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld hl, $18df
    rst $20
    jr nc, jr_05a_4169

    rst $28
    db $10
    xor $11
    db $fc
    inc bc
    ldh [$1f], a
    push af
    ld a, [de]
    jp hl


    ld d, $f9
    ld c, $e8
    rra
    ld sp, hl
    ld b, $f3
    inc c
    dec hl
    db $f4
    ld a, [$ff07]
    nop
    ld a, [hl]
    add c
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01

Call_05a_41be:
    rst $38
    nop
    ei
    inc b
    rst $08
    nop
    rrca
    nop
    sbc a
    nop
    dec e
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    add b
    rra
    nop
    ld e, l
    ld [bc], a
    rst $20
    jr jr_05a_420e

    ld [$0837], sp
    ld [hl], a
    ld [$009f], sp
    dec a
    ld b, $7d
    ld b, $bb
    inc c
    rst $30
    ld [$01e2], sp
    rst $00
    nop
    rst $20
    nop
    rst $38
    nop
    sub a

jr_05a_41ef:
    xor $9f
    ld h, b
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    cp [hl]
    nop
    jp c, $ee00

    nop
    push bc
    nop
    rst $08
    nop

jr_05a_420e:
    rst $28
    nop
    db $d3
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $30
    nop
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld [hl-], a
    ld bc, $0041
    inc bc
    nop
    add d
    nop
    ld b, $00
    ld b, $00
    ld c, $04
    nop
    inc c
    rlca
    rrca
    rrca
    rrca
    ld d, [hl]
    rrca
    ld d, a
    rrca
    rra
    rrca
    rst $18
    rrca
    ld c, a
    rrca
    rlca
    inc c
    ld [hl], d
    di
    ld [hl], d
    di
    ld a, [c]
    di
    or b
    rst $38
    ldh a, [$df]
    ld a, b
    rst $28
    ld hl, sp-$01
    add sp, -$11
    ld [c], a
    ld h, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    db $fd
    db $ed
    push hl
    push hl
    push af
    push hl
    cp $ee
    rst $28
    ldh a, [rIE]
    add sp, -$12
    ld sp, hl
    ld a, d
    push hl
    ld a, h
    rlc a
    ld hl, sp-$40
    jr nc, jr_05a_41ef

    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    ld h, [hl]
    jr nz, jr_05a_42eb

    ld b, b
    sub d
    nop
    jr nc, jr_05a_4286

jr_05a_4286:
    ld h, b
    nop
    ld [$8800], sp
    add b
    or e
    nop
    cp c
    nop
    ld b, $ff
    nop
    rst $38
    jr @+$01

    ld l, b
    cp a
    jp nz, Jump_000_097f

    or $f8
    rra
    ldh a, [$1f]
    ld h, c
    sbc [hl]
    xor a
    ld d, b
    add a
    ld a, c
    and [hl]
    ld a, c
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld a, [de]
    rst $20
    rst $38
    nop
    ccf
    ret nz

    ld e, $e1
    dec c
    di
    inc d
    db $eb
    ld a, l
    add e
    ld sp, hl
    ld b, $71
    adc [hl]
    rst $30
    ld [$08f7], sp
    and a
    jr jr_05a_4345

    ld bc, $41b6
    ld h, e
    add c
    cp [hl]
    ld b, c
    sub a
    ld l, b

jr_05a_42d0:
    sbc c
    ld h, b
    ld a, a
    add c
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [$1c07]
    db $e3
    ld a, $c1
    cp $01

jr_05a_42e6:
    db $fc
    inc bc
    rst $38
    nop
    sbc [hl]

jr_05a_42eb:
    ld b, c
    ld a, [$7107]
    ld c, $00
    rst $38
    rra
    ldh [$1f], a
    ldh [rVBK], a
    or b
    xor a
    db $10
    inc hl
    inc e
    daa
    ld a, [de]
    jp $8a3c


    ld [hl], l
    scf
    ld hl, sp-$1a
    add hl, de
    db $ec
    rlca
    ld l, e
    inc b
    rst $10
    ld [$08ff], sp
    rst $20
    jr @-$0f

    db $10
    rst $08
    jr nc, @+$01

    jr nz, jr_05a_42e6

    jr nc, jr_05a_42d0

    ld [$0c73], sp
    cp a
    ld b, b
    cpl
    ret nz

    ld e, e
    add b
    cp c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ldh a, [rP1]
    ld a, h
    add b
    jp hl


    nop
    push hl
    nop
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38

jr_05a_4345:
    ld a, a
    ccf
    rra
    ld e, $1f
    dec e
    ccf
    ccf
    ccf
    ld d, $3f
    rlca
    ccf
    cpl
    ccf
    sub a
    ccf
    sbc a
    ccf
    or a
    ccf
    add b
    ccf
    ld b, b
    cp a
    rst $18
    ccf
    dec e
    ld [$001f], sp
    rra
    nop
    ccf
    nop
    rra
    ld [bc], a
    ccf
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
    rst $38
    rst $38
    add sp, -$0f
    ld b, b
    jr nz, jr_05a_4380

jr_05a_4380:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38

jr_05a_4388:
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ld bc, $40ff
    rst $38
    ld b, b
    rst $38

jr_05a_4394:
    ld b, d
    rst $38
    ld b, h
    rst $38
    ld d, b
    rst $28
    call nz, $8e3f
    ld [hl], c
    cpl
    pop de
    sbc [hl]
    ld h, c
    ld h, $d9
    ld a, b
    add a
    ld a, b
    add a
    ld b, b
    cp a
    ret nz

    ccf
    ld d, [hl]
    xor c
    jp nz, $cd3d

    ld [hl], d
    or h
    res 7, l
    jp $df63


    ld l, b
    sub a
    ld a, e
    add l
    xor a
    pop de
    ld de, $c0ef
    ccf

jr_05a_43c2:
    rst $28
    jr nc, jr_05a_4394

    jr nc, @-$0f

    db $10
    rrca
    ldh a, [$27]
    ld hl, sp-$63
    ld [c], a
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    ld hl, sp+$07
    ld sp, hl
    ld b, $fc
    inc bc
    rlca
    ld hl, sp+$2e
    pop af
    db $eb
    inc [hl]
    rst $20
    jr c, jr_05a_4388

    ld h, b
    ldh a, [$8f]
    rst $38
    nop
    di
    inc c
    ld e, a
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05a_43f8:
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01ff

Call_05a_4402:
    db $fd
    inc bc
    inc e
    db $e3

jr_05a_4406:
    reti


    ld [hl], $ee
    inc de
    db $f4
    dec bc
    cp l
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    push af
    ld c, $ff
    nop
    rst $30
    ld [$3f48], sp
    srl h
    rst $20
    jr jr_05a_4406

    jr @+$01

    nop
    rst $28
    db $10
    and a
    jr jr_05a_4476

    jr nc, jr_05a_43f8

    jr nc, jr_05a_43c2

    ld l, b
    dec sp
    call nz, $8176
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    nop
    rst $38
    adc $ff
    xor [hl]
    rst $38
    xor d
    rst $38
    adc d
    rst $38
    adc e
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    ld [hl+], a
    rst $38
    db $fd
    rst $38
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    cp a
    rst $38
    rst $38
    rst $38
    or $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38

jr_05a_4476:
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
    ld b, $ff
    nop
    rst $38
    ld [de], a
    db $ed
    ld [bc], a
    db $fc
    ld bc, $08fe
    and a
    ld [bc], a
    pop hl
    add b
    cp a
    nop
    nop
    nop
    jr nc, jr_05a_4495

jr_05a_4495:
    cpl
    nop
    nop
    nop
    ld [$0400], sp
    nop
    add a
    nop
    add a
    ld a, [bc]
    dec c
    ld b, $09
    ld [bc], a
    ld bc, $0201
    ld bc, $0106
    adc $00
    adc b
    nop
    adc h
    ei
    adc h
    ld d, e
    xor h
    rst $18
    inc h
    cp a
    ld b, b
    ld a, a
    add b
    db $fd
    nop
    ei
    nop
    sbc a
    ld h, b
    ld a, a
    add b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    cp $01
    rst $38
    nop
    ei
    nop
    ld sp, hl
    ld b, $c7
    jr c, @-$2b

    inc l
    xor $11
    and $19
    pop hl
    ld e, $7b
    add h
    rst $38
    nop
    db $fc
    inc bc
    di
    rra
    db $fd
    ld e, $8f
    ld [hl], b
    rst $18
    ld h, b
    ld e, l
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret nz

    cp a

jr_05a_44ef:
    ret nz

    sbc a
    ldh [rIF], a
    ldh a, [$9e]
    pop hl
    jr z, jr_05a_44ef

    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rra
    ldh [$5e], a
    pop hl
    adc a
    ld [hl], b
    sub b
    ld a, a
    inc h
    rst $18
    ei
    inc b
    ld sp, hl
    rlca
    jp c, $fa07

    rlca
    ei
    ld b, $fb
    ld b, $fa
    rlca
    ld a, [$f807]
    rlca
    db $fc
    inc bc
    ld a, l
    add e
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [$feff], a
    rst $38
    ld hl, sp-$01
    ld a, [$fcff]
    db $fc
    inc a
    inc bc
    inc b
    inc bc
    ld e, $03
    db $10
    rra
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ld de, $030f
    rrca
    ld de, $170f
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    dec c
    rla
    ld e, $1f
    add hl, de
    rra
    jr @+$20

    add hl, de
    dec e
    ld a, [de]
    rra
    db $10
    inc d
    ld [$0000], sp
    nop
    nop
    rst $38
    db $fd
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $df
    rra
    jr c, jr_05a_456e

jr_05a_456e:
    ld h, $00
    ld b, c
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    dec b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld h, b
    rst $38
    inc b
    ld a, b
    ld [hl+], a
    inc c
    pop bc
    ld a, $20
    db $dd
    ld b, b
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    jr nz, @+$01

    add b
    ld a, a
    ld c, c
    cp a
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld bc, $007f
    rlca
    ld a, [$0107]
    rst $38
    add c
    ld a, a
    sub c
    ld l, a
    ld hl, sp+$07
    rst $38
    nop
    sbc a
    ld h, b
    add e
    ld a, h

jr_05a_45b0:
    ret nz

    ccf
    db $10
    ld l, a
    ld [hl], d
    dec c
    ld a, $01
    ccf
    ret nz

    ccf
    ret nz

    inc de
    db $ec

jr_05a_45be:
    ld [hl], $49
    ld b, d
    ld a, l
    ld c, a
    ld [hl], b
    ld b, a
    ld [hl], b
    rlca
    ldh a, [$03]
    sbc b
    nop
    ld [hl], b
    nop
    inc e
    nop
    inc b
    ld a, d
    add l
    ld a, [$d205]
    cpl
    ld h, e
    sbc h
    sbc a
    ld h, b

jr_05a_45da:
    cp a
    ld b, b
    rst $08
    jr nc, jr_05a_45be

    jr nz, jr_05a_4617

    rst $08
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_05a_45da

    db $10
    rst $28
    db $10
    rst $20
    jr jr_05a_45b0

    ld a, b
    ld c, e
    db $fc
    add a
    ld hl, sp+$57
    add sp, -$6d
    ld l, h
    jp hl


    ld e, $70
    adc a
    ld a, [$390f]
    adc $f5
    ld c, $f5
    ld c, $b7
    ld c, [hl]
    dec hl
    or $2a
    rst $30
    inc de
    rst $38
    dec sp
    rst $00
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38

jr_05a_4617:
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
    ld [$349b], sp
    ld e, b
    ccf
    call c, $393b
    ld c, $5c
    dec hl
    sbc l
    ld a, [hl-]
    dec de
    and h
    sbc a
    sbc a
    dec a
    inc a
    cp a
    db $10
    rla
    db $e3
    dec hl
    ld [c], a
    pop bc
    ret nz

    rst $28
    jp z, $c8de

    db $e4
    db $db
    reti


    or $e0
    rst $18
    call nc, $b49b
    ld e, e
    db $fc
    sub e
    or l
    ld e, d
    dec d
    ld a, [$0068]
    ld b, b
    nop
    ld c, l
    nop
    and [hl]
    ld b, b
    db $76
    add b
    ld [hl], c
    add [hl]
    adc c
    or $b9
    add $83
    db $fc
    ld c, [hl]
    or c
    ld c, b
    or a
    ld b, h
    cp e
    ld [hl+], a
    db $dd
    ei
    rst $38
    xor a
    rst $38
    ld a, [bc]
    rst $38
    ld h, $00
    dec b
    nop
    inc c
    nop
    inc b
    inc b
    ld a, [bc]
    nop
    xor e
    nop
    ld a, [bc]
    nop
    dec sp
    nop
    jr nc, @+$01

    nop
    rst $38
    dec [hl]
    ld a, [bc]
    sub b
    ld l, a
    ld b, b
    ccf
    add b
    ld a, a
    ld [$06ff], sp
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld bc, $09ff
    rst $38
    rlca
    rst $38
    ld [$dbff], sp
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    and c
    rst $38
    jr nz, @+$01

    add hl, sp
    rst $38
    ld a, [$3fff]
    rst $38
    ld a, $ff
    ld e, $ff
    sbc [hl]
    ld a, a
    rrca

Call_05a_46b9:
    rra
    rrca
    rrca
    rlca
    rrca
    inc bc
    rst $20
    add c
    ld a, a
    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    sub e
    ld l, h
    ld [de], a
    rst $28
    nop
    rrca
    nop
    add e
    cp h
    ld [hl], e
    cp $f1
    ld e, $e1
    ei
    inc b
    rst $38
    nop
    ld hl, sp+$07
    ld [hl], b
    adc a
    ret


    ccf
    ld hl, $00bf
    dec sp
    nop
    ccf
    jr nz, jr_05a_4726

    nop
    ld sp, $0101
    ld hl, $0003
    nop
    rst $38
    nop
    sbc $21
    cp $03

jr_05a_46f6:
    rst $38
    inc bc
    ld a, [$f807]
    rlca
    ldh a, [rIF]
    ld a, [c]
    dec c
    ld a, e
    inc b
    ld sp, hl
    ld b, $fb
    inc b
    ld sp, hl
    ld b, $fd
    ld [bc], a
    ld hl, sp+$07
    ld a, [$7a07]
    add a
    ld a, a
    add a
    ld h, l
    sbc e
    db $76
    adc c

jr_05a_4716:
    rst $30
    jr z, jr_05a_46f6

    ld [hl+], a
    rst $28
    db $10
    rst $00

jr_05a_471d:
    jr c, jr_05a_4716

    jr c, jr_05a_471d

    nop
    inc a
    ret nz

    ld l, d
    sub h

jr_05a_4726:
    ld a, a
    ldh [rVBK], a
    and b
    ld c, b
    db $e4
    ld a, e
    add h
    dec hl
    call nz, $dc23
    inc hl
    call c, $807f
    ld c, c
    or [hl]
    dec c
    ld a, [c]
    ld d, $e0
    inc d
    ld [c], a
    and e
    ld d, b
    sub b

jr_05a_4741:
    ld h, d
    ld b, l
    or d
    sub b
    ld h, d
    ret z

    jr nz, jr_05a_4741

    nop
    or c
    ld b, b
    rst $00
    jr nc, jr_05a_47b2

    sub b
    ld d, d
    nop
    cp $00
    and $00
    or b
    nop
    ld a, [$0000]
    nop
    add b
    nop
    nop
    nop
    add h
    ld a, e
    adc b
    ld [hl], a
    jr nz, @+$01

    inc d
    ei
    nop

jr_05a_4769:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    ld h, a
    nop
    rra
    nop
    dec a
    db $10
    sbc l
    nop
    rst $20
    nop
    ccf
    ld [$003f], sp
    jr c, @+$01

    ld [bc], a

jr_05a_4783:
    db $fd
    ld a, b
    rlca
    and b
    ld e, a
    jr nz, jr_05a_4769

    ld bc, $9dff
    rst $38
    dec de
    rst $38
    ccf
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
    ld a, a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05a_47b2:
    rst $38
    rst $38
    ccf
    rst $38
    rst $10

jr_05a_47b7:
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rst $18
    rst $38
    or c
    rst $38
    inc e
    db $e3
    call c, $ec23

jr_05a_47c7:
    inc de
    ld d, c
    xor [hl]
    dec h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [de], a
    db $fd
    add b
    ld a, a
    ld b, b
    rst $38
    jr nz, jr_05a_47b7

    ld hl, $1cdf
    db $e3
    rst $00
    cp c
    dec d
    rst $38
    db $10
    sbc a
    jr jr_05a_4783

    ld [$06ff], sp
    rra
    ld c, $8f
    inc c
    adc a
    ld h, b
    sbc a
    add d
    ld a, l
    ld b, c
    ld a, $66
    add hl, de
    ld e, [hl]
    ld hl, $1827
    ld de, $040e
    dec bc
    dec c
    add d
    rlca
    ret z

    rlca
    ld b, b
    rlca
    nop
    inc bc
    add b
    ld bc, $0102
    add b
    nop
    ld b, c
    nop
    add c
    nop
    inc bc
    ld [$0000], sp
    add b
    nop
    add b
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ldh [rP1], a
    ret nz

    nop
    ret nz

    jr nz, jr_05a_47c7

    ld b, b
    ld b, b
    nop
    ld [c], a
    nop
    call nz, $8800
    nop
    call z, $c800
    nop
    nop
    nop
    call nc, $c500
    nop
    add c
    nop
    and e
    nop
    nop
    nop
    and c
    nop
    add b
    nop
    ld [bc], a
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    rst $38
    ld [hl], b
    adc a
    db $10
    rst $28
    add h
    ld a, e
    ret z

    scf
    ld [$04f7], sp
    di
    ld c, h
    di
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    ret nz

    cp $66
    rst $38
    nop
    rst $38
    ld c, $ff
    call nz, Call_000_32ff
    rst $38
    xor c
    rst $38
    ld d, c
    rst $38
    ld b, d
    db $fc
    inc d
    ld e, b
    rst $38
    ld [bc], a

jr_05a_4883:
    rst $38
    inc d
    db $eb
    nop
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$d7ff]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld bc, $7eff

jr_05a_489b:
    rst $38
    cp $ff
    cp $ff
    inc b
    ei
    rst $30
    ld [$00ff], sp
    or e
    ld c, h
    nop
    rst $38
    sub d
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    inc e
    db $e3
    jr nc, jr_05a_4883

    db $10
    rst $28
    ld e, h
    db $e3
    ld c, $f1
    jr nz, jr_05a_489b

    add hl, hl
    sub $a0
    rst $18
    nop
    rst $38
    nop
    cp [hl]
    nop
    rst $18
    nop
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc b
    ld a, a
    ld a, [bc]
    push af
    nop
    ld b, $04
    dec hl
    ld [bc], a
    inc a
    nop
    inc d
    nop
    ldh [rP1], a
    ld l, b
    ld [bc], a
    ld a, b
    nop
    cp $00
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
    dec a
    nop
    sbc b
    nop
    ld bc, $ff00
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    jr c, jr_05a_4901

    inc l
    inc de
    inc bc
    inc e
    nop
    rrca
    ld [hl], b

jr_05a_4901:
    adc a
    nop
    rst $38
    ld [$86ff], sp
    ld a, c
    ld b, [hl]
    cp c
    ld b, $f9
    rla
    add sp, $03
    db $fc
    dec h
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc c
    ld a, [c]
    dec b
    ld a, [$609f]
    dec de
    ldh [$0b], a
    ldh a, [$e3]
    nop
    inc l
    nop
    jr nz, jr_05a_4926

jr_05a_4926:
    stop
    ld [$0000], sp
    nop
    ld bc, $0700
    nop
    inc hl
    inc b
    ld h, d
    nop
    inc e
    jr nz, jr_05a_4953

    jr nz, jr_05a_4991

    nop
    ld a, b
    nop
    db $76
    ld [$006e], sp
    ld [hl], c
    adc [hl]
    ld sp, $13ce
    db $ec
    add hl, bc
    cp $00
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ret z

    scf
    add b
    nop
    ret nz

jr_05a_4953:
    nop
    ldh a, [rLCDC]
    db $fc
    ld b, b
    rst $38
    ld h, d
    rst $38
    set 7, a
    add e
    ld e, [hl]
    ld [$005c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $62ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05a_497d:
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
    rst $30
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    nop

jr_05a_4991:
    rst $38
    ld l, c
    rst $38
    ret z

    rst $38
    add c
    rst $38
    nop
    rst $38
    or l
    rst $38
    ld a, d
    rst $38
    sub b
    rst $38
    ld sp, $ffce
    nop
    ccf
    ret nz

    nop
    rst $38
    ld [bc], a
    db $fd
    jr z, jr_05a_497d

    nop
    jp nz, $c7c0

jr_05a_49b0:
    jr nz, jr_05a_49b0

    nop
    db $eb
    nop
    ld e, [hl]
    nop
    sbc b
    nop
    ld c, h
    nop
    inc [hl]
    ld [bc], a
    adc h
    nop
    cp $00

jr_05a_49c1:
    ld a, [$ee00]
    nop
    ld hl, sp+$00
    rst $38
    ld b, $7f
    add hl, bc
    cp $e1
    ld e, $cf
    jr nc, jr_05a_49c1

    rrca
    and b
    ld e, a
    nop
    rst $38
    inc hl
    call c, $ef10
    nop
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld e, $3f
    inc e
    rra
    rrca
    rra
    rrca
    rst $38
    rlca
    cp a
    rst $30
    rrca
    inc sp
    rst $08
    inc bc
    rst $38
    nop
    rst $38
    ld [$0ff7], sp
    ldh a, [rTIMA]
    ld a, [$35ca]
    ld e, $00
    inc e
    nop
    nop
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ret nz

    nop
    ret nz

    nop
    ld c, a
    add b
    rst $08
    nop
    rrca
    nop
    ld a, l
    add b
    ld a, [c]
    dec c
    jp nc, $9d0c

    nop
    jp nz, $0400

    inc bc
    inc b
    ld hl, sp+$0a
    db $fc
    nop
    rst $38
    rla
    add sp, $0a
    db $f4
    ld b, c
    ld a, $fb
    nop
    ld e, [hl]
    and b
    rlca
    ld hl, sp+$20
    rst $18
    dec b
    ld a, [$7bc4]
    ld b, h

jr_05a_4a39:
    cp e
    ld a, [c]
    dec c
    ld sp, $40ce
    ccf
    sbc b
    rrca
    ret c

    daa
    sub b
    ld l, a
    cp b
    rlca
    add b
    rlca
    ld b, b
    add a
    ld [$20e7], sp
    rst $18
    jr jr_05a_4a39

    dec e
    db $e3
    inc b
    ei
    db $10
    rst $28
    db $10
    rst $08
    sub e
    call nz, $f0e9
    ld a, $fc
    ld [de], a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, $00
    rst $38
    and d
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
    db $fd
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld sp, $a5ff
    rst $38
    ld a, [bc]
    push af
    rst $38
    nop
    rst $28
    db $10
    ldh [$1f], a
    ld b, d
    cp l
    nop
    add l
    nop
    jp nz, $e000

    nop
    ret nz

    rst $38
    nop
    and h
    ld e, e
    adc [hl]
    ld [hl], c
    rst $28
    db $10
    push de
    ld a, [hl+]
    or $09
    adc a
    ld [hl], b
    ld b, e
    cp h
    nop
    jr jr_05a_4ac3

jr_05a_4ac3:
    ld b, $00
    daa
    nop
    and e
    nop
    xor $1e
    pop hl
    rst $28
    db $10
    cp h
    ld b, e
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
    ld e, a
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    ld h, b
    add b
    nop
    nop
    nop
    add b
    nop

jr_05a_4aea:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ccf
    ld hl, sp+$07
    ldh a, [rIF]
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld hl, $08de
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$48ff], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, b
    ccf
    ld b, c
    add b
    ld c, c
    add b
    adc c
    nop
    ld h, b
    add b
    jr nc, jr_05a_4aea

    db $ec
    nop
    add b
    nop
    ld h, c
    nop
    rlca
    nop
    dec bc
    nop
    nop
    nop
    jr nc, jr_05a_4b38

jr_05a_4b38:
    ld a, $00
    adc [hl]
    nop
    rst $18
    nop
    dec a
    nop
    ld a, d
    add c
    ld a, $c0
    sub a
    ldh [rTAC], a
    ld hl, sp+$62
    sbc l
    ld l, $d0
    ld c, e
    or b
    ld l, $d0
    scf
    ld [$0e31], sp
    rla
    ld [$0026], sp
    jr z, jr_05a_4b5a

jr_05a_4b5a:
    ld c, [hl]
    nop
    db $ec
    nop
    ld a, [c]
    nop
    ld a, h
    inc bc
    ld e, l
    nop
    ld a, [bc]
    nop
    inc bc
    nop
    nop
    add b
    inc b
    ret nz

    add b
    ld hl, sp-$23
    ldh a, [$f8]
    rst $38
    ld c, d
    rst $38
    ret z

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
    call z, $eeff
    rst $38
    push af
    rst $38
    db $ec
    rst $38
    xor [hl]
    rst $38
    ret z

    rst $38
    ld h, b
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
    jr nz, @+$01

    nop
    rst $38
    rst $30
    ld [$10ef], sp
    cp [hl]
    ld b, c
    ld [bc], a
    db $fd
    nop
    ld hl, sp+$00
    ret nc

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [$97]
    ld a, b
    rlca
    ld hl, sp-$72
    ld [hl], c
    dec hl
    call nc, $bc43
    nop
    rst $38
    adc a
    ld [hl], b
    call c, Call_000_0023
    cpl
    nop
    or a
    nop
    ld sp, hl
    ld b, b
    xor $0a
    push hl
    rra
    ldh [$7f], a
    add b
    db $f4
    dec bc
    nop
    nop
    nop
    nop
    ld sp, $1000
    nop
    stop
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    adc e
    rst $38
    rst $38
    add b
    rst $38
    ld a, [bc]
    push af
    dec b
    ld a, [$f609]
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ret nc

    ld b, e
    cp h

jr_05a_4c04:
    add b
    rst $38
    ccf
    ret nz

    ld a, $c0
    sbc l
    ld h, b
    ld de, $19ee
    and $75
    ld a, [bc]
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld sp, hl
    ld b, $17
    nop
    ld hl, sp+$00
    rst $18
    jr nz, jr_05a_4c04

    jr nz, @-$07

    ld [$001d], sp
    ld e, [hl]
    nop
    cp h
    nop
    jr c, jr_05a_4c30

jr_05a_4c30:
    jr z, @-$27

    ld a, b
    add a
    ld [hl], l
    add b
    ld c, l
    or b
    adc a
    ldh a, [$ed]
    db $10
    ld hl, sp+$07
    ld a, b
    rlca
    ld l, c
    nop
    ldh [rP1], a
    and h
    ld c, b
    ld sp, hl
    ld b, $fc
    inc bc
    call Call_05a_4402
    and e
    rst $30
    ld [$0ff0], sp
    db $10
    rrca
    ld l, d
    dec b

jr_05a_4c56:
    ld h, d
    nop
    ld h, b
    nop
    ld b, c
    nop
    ld [bc], a
    ld bc, $0102
    ld b, c
    nop
    ld a, e
    nop
    cp a
    ld b, b
    sub d
    ld h, c
    adc d
    ld [hl], b
    dec bc
    db $f4
    rrca
    ldh a, [$83]
    ld a, h
    ld b, h
    nop
    and b
    ld b, b
    jr jr_05a_4c56

    ld [bc], a
    db $fc
    add b
    cp $c9
    cp $f8
    rst $38
    pop de
    rst $38
    ld d, b
    rst $38
    xor $ff
    sub l
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_05a_4c8f:
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
    db $10
    xor $00
    nop
    db $fd
    ld [bc], a
    jr nz, @-$1f

    nop
    rst $38
    jr jr_05a_4c8f

    nop
    ld h, a
    nop
    ld h, b
    ld [$0060], sp
    pop de
    nop
    rlca
    nop
    jr jr_05a_4cb5

jr_05a_4cb5:
    and b
    nop
    and h
    nop
    ld h, e
    nop
    and e
    db $10
    jp $e100


    nop
    ldh [rP1], a
    jr nz, jr_05a_4cc5

jr_05a_4cc5:
    ld h, b
    nop
    ld d, h
    ld hl, sp+$02
    ld a, a
    add b
    cp $00
    ld sp, hl
    rlca
    ld bc, $8100
    nop
    ld [$4500], sp
    nop
    ld a, a
    ld l, a
    rst $38
    db $fd
    rst $38
    cp b
    rst $38
    ld h, h
    ld b, b
    rst $38
    rlca
    ld hl, sp-$53
    ld d, d
    rst $18
    jr nz, jr_05a_4d18

    ret nc

    sub a
    ld l, b
    ld a, [hl+]
    push de
    add hl, bc
    or $00
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $8600
    nop
    dec b
    nop
    dec bc
    nop
    cp a
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

jr_05a_4d18:
    jr jr_05a_4d33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05a_4d43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05a_4d53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05a_4d63

    ld [hl-], a

jr_05a_4d33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05a_4d73

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05a_4d43:
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

jr_05a_4d53:
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

jr_05a_4d63:
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

jr_05a_4d73:
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
    jr jr_05a_4e33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05a_4e43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05a_4e53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05a_4e63

    ld [hl-], a

jr_05a_4e33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05a_4e73

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    inc b
    inc b

jr_05a_4e43:
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b

jr_05a_4e53:
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop

jr_05a_4e63:
    inc b
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0203
    ld [bc], a

jr_05a_4e73:
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    inc b
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    inc b
    inc b
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    nop
    ld b, $01

Call_05a_4f07:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $02
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld b, $06
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e0a
    ld c, $08
    ld c, $0e
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0f0d], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    ld [$0e0e], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$080c], sp
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
    add hl, bc
    add hl, bc
    ld a, e
    ei
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    cp $6b
    ld h, e
    cp h
    rst $38
    cp $ff
    rst $28
    rst $38
    cp a
    cp a
    rst $38
    rst $28
    rst $38
    adc a
    rst $30
    rst $38
    rst $28
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $30
    push af
    db $fd
    db $fd
    db $fd
    rst $10
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    ld sp, hl
    and c
    cp $cb
    ccf
    db $fd
    ld e, [hl]
    adc $5f
    rst $08
    rst $38
    rst $30
    or a
    and e
    sbc $c7
    rst $38
    ld [hl], a
    rst $30
    ld h, a
    adc a
    ld c, $fd
    db $fc
    db $f4
    rst $30
    db $f4
    cp a
    db $fc
    rst $38
    xor h
    xor a
    cp [hl]
    cp a
    rst $18
    rst $18
    rst $30
    rst $30
    rst $38
    sbc a
    dec hl
    dec bc
    rst $18
    rst $18
    di
    rst $38
    adc $cf
    cp b
    xor a
    ld d, a
    ld e, a
    adc a
    rst $38
    ld c, $ff
    sbc a
    rst $38
    sbc e
    ei
    xor $ef
    db $db
    sbc a
    ld a, e
    ld a, a
    rst $38
    rst $28
    db $eb
    db $e3
    ld sp, hl
    xor a
    db $fd
    sbc a
    rst $30
    ccf
    rst $38
    rst $38
    rst $38
    sbc a
    cp a
    cp e
    db $fd
    pop hl
    ld a, [$beca]
    rst $38
    db $fc
    cp $90
    add sp, -$40
    ld hl, sp-$28
    ldh [$c4], a

jr_05a_500b:
    pop hl
    ret z

    ld de, $03c0
    dec bc
    db $fc
    jr z, @+$01

    dec d
    ei
    pop bc
    ld a, $2f
    ret nc

    rst $18
    jr nz, jr_05a_500b

    ld de, $c33d
    or $79

jr_05a_5022:
    ld a, [hl]
    pop hl
    rst $08
    ld [hl], b
    rst $18
    ldh [rHDMA3], a
    db $ec
    ld a, e
    call z, $c779
    ld hl, sp-$19
    rra
    db $fc
    rst $20
    jr jr_05a_5022

    db $10
    rst $00
    jr c, @-$08

    rrca
    ld sp, hl
    rlca
    ld e, l
    ld [bc], a
    ld b, $00
    push bc
    nop
    rrca
    nop
    adc [hl]
    nop
    jp c, $fc04

    nop
    ldh a, [rP1]
    ld b, b
    nop
    ld b, b
    nop
    nop
    add b
    or h
    jp nz, $f24d

    inc e
    db $e3
    ld a, [bc]
    rst $30
    or $09
    rst $38
    nop
    inc a
    nop
    ld a, [$f905]
    ld b, $fe
    nop
    ei
    nop
    di
    nop
    db $fd
    nop
    xor $00
    and e
    nop
    ld hl, $0100
    nop
    inc bc
    nop
    rla
    nop
    inc b
    nop
    ld de, $4000
    nop
    db $ed
    ret nz

    xor l
    xor l
    db $dd
    sbc l
    rst $18
    rst $18
    sub [hl]
    sub [hl]
    ld e, e
    ld e, d
    ld a, a
    rst $38
    rst $30
    rst $30
    cp $fe
    jp c, $f4da

    db $e4
    ld a, e
    ld a, e
    adc $f8
    rst $08
    ld hl, sp-$31
    db $fc
    add $fc
    ld l, [hl]
    ld l, h
    xor a
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    rst $18
    ld e, b
    ld l, a
    ld b, b
    ld e, $1e
    ld a, $fe
    rst $30
    or $33
    di
    ld l, h
    db $ec
    ld a, a
    ld a, [hl]
    call z, $decc
    call z, $e6ff
    or $e0
    rst $38
    cp $8b
    ld sp, hl
    ld a, $fe
    dec a
    db $fd
    dec a
    db $fd
    ld a, $ff
    ld [hl], a
    rst $38
    sbc a
    rst $38
    ld c, l
    rst $38
    and a
    cp $6f
    xor $ff
    adc $fc
    db $fc
    ld a, h
    ld hl, sp-$08
    ld hl, sp-$45
    ld hl, sp-$47
    add sp, -$16
    ldh [$6e], a
    db $e4
    db $fd
    ld hl, sp-$05
    ei
    rst $30
    db $fd
    rst $38
    db $fc
    xor a
    db $ec
    rst $18
    push bc
    rst $28
    di
    rst $28
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    cp $f9
    ld hl, sp-$50
    add b
    ret nz

    inc b
    ei
    rrca
    ldh a, [$bc]
    jp $f32d


    ret nc

    ccf
    pop hl
    rra
    ld a, $c1
    ld l, $d1
    cp l
    ld b, d
    db $fd
    ld [bc], a
    add hl, bc
    or $53
    xor h
    add a
    ld a, b
    ld a, a
    ldh [$3e], a
    pop bc
    push af
    inc bc
    ld sp, hl
    rlca
    ret


    ld [hl], $e3
    inc e
    rst $30
    ld [$00ff], sp
    rst $08
    jr c, jr_05a_51ac

    ld hl, sp-$0d
    inc c
    or $08
    ld [hl], l
    ld [$00f3], sp
    ld [hl], a
    nop
    rst $18
    jr nz, jr_05a_5162

    ret nz

    add e
    ld h, b
    rra
    ld h, b
    rst $38
    nop
    rst $20
    jr jr_05a_51a1

    ld [$1008], sp
    jr nc, jr_05a_514a

jr_05a_514a:
    jr nz, jr_05a_514c

jr_05a_514c:
    stop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $f800
    nop
    jr @-$1e

    ld b, b
    add b
    call c, Call_05a_4000
    ret nz

    add b
    ret nz

jr_05a_5162:
    db $ec
    db $10
    ldh a, [$0e]
    sbc b
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [$aa01]
    ld bc, $00d8
    ret nc

    jr nz, jr_05a_51db

    add b
    ret nz

    nop
    nop
    nop
    pop bc
    call nz, Call_05a_56e9
    push hl
    ld e, d
    jp hl


    sub [hl]
    ld h, $d8
    rst $38
    and [hl]
    cp $37
    rst $38
    ld [hl], d
    sbc [hl]
    db $e3
    dec l
    jp nc, $f1ff

    or $e9
    ld a, e
    db $e4
    ld [hl], b
    rst $38
    ldh a, [$2f]
    ld a, e
    db $ed
    ld a, c

jr_05a_51a1:
    and a
    ld a, e
    db $f4
    dec sp
    db $e4
    rst $38
    rra
    rst $38
    rst $38
    rra
    rst $38

jr_05a_51ac:
    sbc a
    ld a, c
    sub e
    ld h, l
    ccf
    rrca
    cp a
    rrca
    cp l
    dec e
    db $fd
    dec e
    rst $38
    rra
    cp e
    rra
    ld e, a
    rra
    rra
    rra
    cp [hl]
    ld l, e
    dec sp
    push bc
    rst $38
    rra
    rst $38
    cp [hl]
    cp $e7

jr_05a_51ca:
    rst $08
    rst $38
    sbc a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    db $fd
    or $fe
    ld a, c
    db $ed
    jp c, Jump_05a_6f94

    dec de

jr_05a_51db:
    db $ec
    db $e4
    dec sp
    ld [hl], c
    and $f9
    inc c
    ld sp, hl
    inc [hl]
    pop hl
    db $fc
    di
    sbc h
    res 6, h
    add c
    call c, $f08f
    call nc, $04c8
    rlca
    inc hl
    rrca
    ld h, $1f
    ld a, $7d
    ld a, $ff
    add c
    rst $38
    add c
    rst $38
    add c
    db $db
    adc b
    ld a, a
    db $e4
    dec de
    sub $39
    sub [hl]
    jp hl


    ld e, a
    pop hl
    sbc a
    db $e3
    rst $38
    add c
    ld a, a
    add b
    db $fc
    inc bc
    rst $30
    ld [$20df], sp
    rst $38
    nop
    cp a

jr_05a_5219:
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ret nc

    rst $28
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    ei
    nop
    jp c, $fb01

    nop
    or d
    nop
    pop hl
    ld [hl], b
    rst $10
    jr c, jr_05a_5219

    rra
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld a, [$fd05]
    ld [bc], a
    db $fd
    nop
    ret z

    nop
    sub b
    ld [$0018], sp
    add c
    jr jr_05a_51ca

    jr jr_05a_5252

    jr jr_05a_52cc

    nop
    cpl
    nop
    rst $18
    nop

jr_05a_5252:
    ld [hl], $c1
    sub a
    ld a, a
    ccf
    nop
    rrca
    nop
    adc a
    nop
    inc bc
    nop
    ld b, b
    nop
    ld b, $00
    ld b, $00
    ld [bc], a
    nop
    adc b
    nop
    or b
    ret nz

    jr nz, @-$3e

    and h
    ld b, b
    cp h
    ld h, b
    ld [de], a
    ldh [$28], a
    ldh a, [$6c]
    sbc b

jr_05a_5276:
    ld [de], a
    inc c
    dec c
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    xor $00
    rst $18
    db $dd
    rst $38
    jr nc, jr_05a_5276

    ld [$c0ef], sp
    rst $08
    ld [$10ef], sp
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $30
    ld [hl], a
    di
    scf
    and c
    ld l, c
    pop af
    dec [hl]
    db $e3
    inc hl
    db $e3
    inc hl
    pop de
    ld sp, $21c1
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld de, $b21f
    dec e
    ld [bc], a
    dec e
    dec hl
    inc c
    ld l, a
    ld [$080e], sp
    ld l, [hl]
    ld [$0c80], sp
    ld a, [hl+]
    inc b
    ld b, b
    inc b
    inc h
    inc b
    sub [hl]
    inc b
    db $10
    ld b, $05
    ld [bc], a

jr_05a_52cc:
    or h
    ld [bc], a
    dec bc
    inc sp
    jp $8323


    inc hl
    sbc e
    inc hl
    ld h, c

jr_05a_52d7:
    ld bc, $0145
    ld b, e
    ld bc, $0175
    ld d, c
    ld bc, $21c8
    xor a
    nop
    inc b
    inc bc
    sub b
    rrca
    add e
    rrca
    add e
    ld a, a
    inc bc
    ld a, a
    nop
    rst $38
    dec [hl]
    ei
    pop af
    rst $38
    dec b
    ei
    jr nz, jr_05a_52d7

    ld [$c0ff], sp
    cp a
    add d
    db $fd
    add b
    rst $38
    pop de
    ccf
    ld b, b
    rst $38
    inc b
    ei
    adc b
    rst $30
    sbc d
    push hl
    db $fc
    add e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    jp z, $f33d

    rrca
    rst $38
    ld [bc], a

jr_05a_5318:
    ld hl, sp+$06
    cp e
    inc b
    rst $10
    ld [$00fd], sp
    ld a, a
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    ld a, [hl]
    add b
    xor a
    ret nc

    rrca
    ldh a, [$a3]
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    dec sp
    ret nz

    adc e
    db $f4
    rrca
    ldh a, [rNR34]
    ldh [$7d], a
    ret nz

    swap [hl]
    ld e, $01
    ld bc, $0300
    nop
    ld b, $01
    rra
    nop
    ld a, e
    inc b
    ld e, [hl]
    ccf
    ccf
    nop
    adc b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr c, jr_05a_5318

    rst $38
    nop
    cp $01
    rst $38
    nop
    ld c, a
    nop
    ccf
    nop
    ld a, $00
    rlc b
    dec de
    nop
    ld de, $0000
    nop
    ld b, $00
    dec b
    nop
    add hl, bc
    nop
    add hl, de
    nop
    ccf
    nop
    ld [hl], e
    nop
    add d
    nop
    ret nz

    nop
    ld bc, $2130
    inc e

jr_05a_5380:
    rst $18
    nop

jr_05a_5382:
    ld e, a

jr_05a_5383:
    ld e, a
    cp a
    xor a
    cp a
    ld c, a
    ld e, a
    adc a
    cp a
    xor a

jr_05a_538c:
    sbc a
    add a

jr_05a_538e:
    xor a
    ld b, a
    rst $38
    sub a
    rst $18
    and a
    rst $18
    rst $28
    rst $08
    ld e, a
    adc a
    ei
    adc a
    rst $38
    add a
    ei
    add e
    rst $38
    rst $00
    add a
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    jp $83c7


    rst $08
    jp $c3db


    rst $18
    jp $e3ff


    rst $38
    db $e3
    db $fd
    pop hl
    db $fd
    pop hl
    ld l, l
    pop hl
    ld l, [hl]
    ld h, b
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld h, b
    xor $70
    cp [hl]
    jr nc, jr_05a_5383

    jr nc, @-$48

    jr nc, jr_05a_5380

    jr nc, jr_05a_5382

    jr nc, jr_05a_538c

    jr c, jr_05a_538e

    jr c, jr_05a_5449

    jr c, @+$1d

    jr @+$3a

    jr c, jr_05a_5413

    inc a
    sbc [hl]
    sbc a
    inc c
    rst $18
    dec bc
    ld [hl], a
    add h
    rst $38
    inc b
    rst $38
    ld [hl], d
    adc l
    add l
    ld a, a
    ld h, a
    sbc a
    nop
    rst $38
    ld b, b
    rst $38
    jp z, Jump_000_1cff

    rst $38
    sub [hl]
    ld sp, hl
    xor e
    rst $18
    db $e4
    db $db
    sub l
    rst $38
    ld hl, sp-$01
    rla
    ld hl, sp+$04
    rst $38
    ld a, h
    add e
    ld a, a
    add b
    ld a, l
    add d
    ccf
    ldh [$37], a
    ld hl, sp-$72
    ld a, a
    db $f4
    dec bc
    cp $01
    rst $28
    nop
    xor a
    nop
    rst $18

jr_05a_5413:
    nop
    rra
    nop
    ld a, b
    rlca
    di
    inc c
    adc d
    ld [hl], b
    ret nz

    ld h, b
    ld h, b
    nop
    ldh [rP1], a
    ld sp, hl
    ld b, $ff
    nop
    rst $10
    nop
    dec de
    add b
    ld b, c
    add b
    ret nz

    jr nz, jr_05a_5476

    jr nc, jr_05a_547a

jr_05a_5431:
    jr nc, jr_05a_5431

    ld bc, $01e7
    cp $01
    rlca
    nop
    rlca
    nop
    add sp, $07
    and a
    ret c

    inc h
    ret c

    ld l, h
    sub b
    ccf
    ret nz

    ld h, e
    add h
    push af

jr_05a_5449:
    nop
    cp l
    ret nz

    inc h
    ei
    db $10
    ccf
    rrca
    jr nc, jr_05a_5484

    nop
    jr nz, jr_05a_5456

jr_05a_5456:
    inc b
    nop
    add e
    nop
    inc bc
    add b
    ld b, d
    add b
    add b
    ld b, b
    call nz, $a060
    ld [hl], b
    ld e, b
    jr nc, @-$13

    inc e
    rst $08
    rlca
    dec h
    inc bc
    ld b, e
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    adc h
    nop

jr_05a_5476:
    call c, Call_000_1900
    nop

jr_05a_547a:
    sub [hl]
    nop
    adc $00
    ld b, [hl]
    add b
    add sp, $00
    ldh [$c0], a

jr_05a_5484:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$30
    ld hl, sp+$38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $ff
    db $fc

jr_05a_54d2:
    ld a, a
    ld [hl], b
    db $76
    ld b, d
    nop
    nop
    add hl, de
    nop
    ld de, $c700
    nop
    ld sp, $9700
    rst $38
    set 7, a
    inc c
    rst $38
    adc b
    rst $38
    ld b, l
    cp d
    add b
    ld a, a
    sbc l
    ld h, d
    ld c, a
    ldh a, [$c0]
    rst $38
    xor b
    rst $38
    ld a, [hl]
    add c
    sbc $a1
    sub a
    db $ec
    ld h, h
    sbc a
    ld [hl], d
    adc l
    ld a, d
    add l
    rst $00
    jr c, jr_05a_54d2

    jr nc, @+$01

    nop
    rst $38
    nop
    ld a, $c1
    ld c, a
    ldh a, [$3f]
    ret nc

    inc [hl]
    bit 7, e
    add h
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    sbc a
    ld h, b
    dec h
    ld [bc], a
    db $10
    inc bc
    sub d
    inc bc
    dec d
    ld [bc], a
    rlca
    nop
    rst $08
    nop
    ld a, l
    nop
    xor a
    db $10
    adc h
    inc de
    xor a

jr_05a_552d:
    db $10
    rst $28
    nop
    rst $18

jr_05a_5531:
    nop
    ld a, $c0
    ld b, e
    add b
    rst $18
    jr nz, jr_05a_55a8

    jr nc, jr_05a_552d

    dec a
    or c
    adc $e8
    rlca
    nop
    rlca
    ld e, $01
    dec e
    nop
    ld e, $00
    xor a
    db $10
    push bc
    jr c, jr_05a_5591

    jr c, jr_05a_5531

    inc e
    pop hl
    inc a
    ld [hl], c
    ld c, $62
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
    jr nz, jr_05a_5562

jr_05a_5562:
    ld a, [bc]
    ld b, $4d
    ld [bc], a
    ld b, [hl]
    ld bc, $048b
    cp a
    nop
    ld a, a
    add b
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $0065
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld c, l
    ld [hl-], a
    ld [hl], c
    ld a, [bc]
    inc e
    inc bc
    ld l, d
    dec b
    cp b
    ld b, a
    cp d
    ld b, l
    inc e
    inc bc
    ld c, a

jr_05a_5591:
    dec [hl]
    inc a
    ld c, a
    inc e
    ccf
    jr jr_05a_55ff

    ld e, l
    cpl
    sbc a
    ld l, e
    cp a
    ld c, h
    rst $38
    ld e, l
    rst $38
    rst $18
    ld l, d
    ld c, d
    ld a, a
    ld a, a
    db $dd
    ld e, a

jr_05a_55a8:
    call nc, Call_05a_7057
    ld a, a
    ldh a, [$7f]
    ld d, b
    ld e, a
    rst $28
    rrca
    call c, $fc9f
    cp a
    call nc, Call_05a_7c97
    rra
    db $ec
    rrca
    cp a
    rlca
    adc a
    add hl, bc
    ld [hl-], a
    ret nz

    nop
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSB], a
    rst $38
    ld bc, $00f0
    db $fc
    ret nz

    db $fd
    ld hl, sp+$00
    adc b
    nop
    add b

jr_05a_55d5:
    nop
    jr nc, jr_05a_55d8

jr_05a_55d8:
    and e
    nop

jr_05a_55da:
    add $80
    ld a, e
    nop
    ld e, c
    nop
    ret nc

    rst $28
    ld bc, $5cfe
    rst $38
    db $10
    rst $28
    rst $18
    jr nz, jr_05a_55da

    ldh a, [$3e]
    pop hl
    or c
    ld l, [hl]
    cp e
    ld b, h
    adc c
    or $8f
    ldh a, [$59]
    and $bf
    ld b, c
    db $eb
    db $f4
    rst $30
    ld hl, sp+$10

jr_05a_55ff:
    rst $28
    cp $01
    ei
    add l
    jr nc, jr_05a_55d5

    rst $28
    db $10
    rla
    ld hl, sp-$0c
    dec bc
    rst $38
    nop
    rst $38
    nop
    ld e, a
    ldh [$af], a
    ld [hl], b
    rst $30
    ld [$009f], sp
    ld a, l
    nop
    ei
    nop
    ei
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    and $00
    rst $38
    nop
    ld sp, hl
    nop
    db $db
    nop
    daa
    pop bc
    cp a
    ld h, e

jr_05a_5630:
    rst $28
    jr jr_05a_56b2

    nop
    rst $28
    db $10
    rra
    ldh [$a7], a
    ld b, b
    ld a, a
    add b
    ld h, c
    ret nz

    jr c, jr_05a_5630

    ld e, a
    cp h
    db $76
    adc a
    db $fd
    inc bc
    ld a, a
    nop
    ei
    nop
    ei
    nop
    ccf
    nop
    rst $38
    nop
    di
    nop
    rst $38
    nop
    ei
    inc b
    add hl, bc
    inc b
    ld e, $00
    ld a, [de]
    inc b
    ld a, $04
    add hl, sp
    inc b
    dec [hl]
    ld [$0813], sp
    dec de
    nop
    ei
    add b
    rst $18
    jr nc, @-$07

    db $10
    or $10
    ld a, [$f800]
    inc b
    inc [hl]
    ret z

    inc a
    ret nz

    inc a
    ret nz

    cp l
    ld b, b
    ldh a, [rP1]
    ld a, h
    nop
    jr nz, jr_05a_5698

    dec hl
    dec b
    rst $28
    rra
    ccf
    call Call_05a_6f9f
    ld e, a
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    sub a
    ld a, a
    ld a, a
    rst $20
    ld a, a
    db $e3
    ld a, a
    di
    rst $38

jr_05a_5698:
    db $f4
    rst $38
    ld a, [$ffff]
    rst $38
    jp nz, $c0ff

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $08

jr_05a_56b2:
    ld e, $d5
    ld d, d
    rst $18
    ld c, b
    call $c11f
    ccf
    rst $38
    push bc
    rst $38
    jp z, $f7eb

    cp c
    and e
    ld [hl], l
    ld h, e
    sbc c
    and l
    ld d, e
    ld hl, $8103
    ld b, b
    ld d, c
    and c
    ld de, $a020
    rst $18
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    rrca
    ld a, a
    rrca
    db $f4
    sub b
    ld l, a
    ld a, b
    add a
    ld c, a
    ldh a, [rSB]

Call_05a_56e9:
    cp $30
    rst $08
    dec a
    jp nz, Jump_000_02fd

    db $fc
    inc bc
    rst $38
    nop
    di
    inc c
    ld a, [$7e05]
    add c
    ld c, a
    cp b
    add sp, $17
    ld d, b
    cp a
    sbc a
    ldh [$2e], a
    pop de
    ld sp, hl
    rst $30
    jp nz, $ff3d

    nop
    cp a
    ld b, b
    rra
    ldh [$ef], a
    jr @-$01

    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05a_5717:
    nop
    adc $39
    rst $18
    jr z, @-$2c

    dec l
    add sp, $3d
    di
    inc c
    or $09
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    dec h
    jp $c123


    ld b, a
    cp b
    dec sp
    ret nz

    ldh [rP1], a
    ret c

    nop
    dec bc
    nop
    dec bc
    nop
    ld b, h
    inc bc
    ld d, $07
    daa
    ld c, $52
    inc c
    ld c, [hl]
    add b
    rra
    ret nz

    ld a, [$7f40]
    ldh [$79], a
    ret nz

    ld a, c
    ret nz

    ld a, c
    rst $00
    jr nz, jr_05a_5717

    pop bc
    ld bc, $01e0
    rst $38
    nop
    ei
    inc b
    ld l, $00
    rra
    ld [bc], a
    sub a
    ld [bc], a
    sub e
    ld b, $45
    ld [bc], a
    push bc
    ld [bc], a
    inc e
    inc bc
    dec b
    inc bc
    rlca
    inc bc
    dec bc
    rlca
    ld c, $07
    dec bc
    rlca
    ld c, $07
    ld hl, sp+$07
    jp Boot


    nop
    ld bc, $0000
    nop
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    sbc $ff
    add $ff
    add [hl]
    rst $38
    adc a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05a_57ad:
    rst $38

jr_05a_57ae:
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld l, h
    rst $38
    db $ed
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    xor $ee
    ld a, b
    ld l, b
    scf
    inc sp
    ld a, a
    ld a, a
    rst $30

jr_05a_57cf:
    scf
    jr nc, @+$09

    db $10
    rst $38

jr_05a_57d4:
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    inc b
    rst $00
    sub d
    ld a, l
    sub b
    ld a, a

jr_05a_57e4:
    jr c, jr_05a_57ad

    inc hl
    call c, $0ff0
    sbc a
    ldh [$fe], a
    ld bc, $03fc
    ld d, $e9
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    add $e2
    ccf
    call z, $ff33
    jr nz, jr_05a_57ae

    ldh a, [$ac]
    rst $38
    db $fc
    inc bc
    ld a, [$b785]
    ret z

    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    rst $08
    jr nc, jr_05a_57d4

    ld a, $c1
    ld a, $fc
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    ld a, [hl]
    add c
    ld a, [bc]
    db $fd
    cp $01
    ei
    rlca
    rst $30
    ld c, $f9
    ld b, $ff
    inc b
    ld e, a
    and h
    db $d3
    ldh [$3e], a
    pop bc
    cp b
    ld b, b
    ld a, [$d360]
    cp b
    ld a, [hl]
    sbc c
    dec c
    jr jr_05a_57cf

    inc c
    xor $07
    sub $29
    ld e, a
    jr nz, jr_05a_57e4

    ld h, b
    ld a, a
    add b
    rst $28
    nop
    pop bc
    nop
    ld sp, $6f80
    or b
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
    cp $00
    rst $30
    nop
    rst $38
    nop
    db $ed
    nop
    ld sp, hl
    nop
    ei
    nop
    ld e, a
    nop
    rst $38
    nop
    pop af
    nop
    and h
    jr jr_05a_58e6

    add b
    ret nz

    add b
    add b
    add b
    sub b
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    rst $38
    cp l
    rst $38
    rst $20
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    xor a
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
    ld h, e
    rst $38
    ld a, a
    rst $38
    ld c, $ff
    ld b, $ff
    ld a, [bc]
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, c
    rst $38
    ld h, b
    rst $38
    and a
    rst $38
    inc hl
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld a, [hl-]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    ld a, l
    db $fc
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp [hl]
    cp [hl]
    rst $38
    cp $4d
    ld c, b
    db $eb
    ret nz

    rst $00
    add b
    ld a, [bc]
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    ld b, $ff
    inc bc
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [hl], c
    cp $f1
    ld c, a
    db $10
    rst $28

jr_05a_58e6:
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    jp nz, Jump_05a_7e3f

    add c
    ld a, a
    add b
    adc e
    db $f4
    ld c, $f1
    db $fc
    inc bc
    call nz, $cb3b
    inc a
    pop af
    ld c, $fe
    inc bc
    rst $38
    ld de, $37c8
    ld a, e

jr_05a_5903:
    add h
    cp e
    call nz, $cdb2
    ld a, a
    add h
    rst $20
    jr jr_05a_5903

    add hl, bc
    ld [hl], c
    adc [hl]
    db $fd
    ld b, $f7
    ld c, $ff
    ld b, $ff
    nop
    rst $38
    nop
    ccf
    nop
    db $fd
    ld [bc], a
    ld l, d
    add b
    ld l, a
    add b
    rst $18
    nop
    db $db
    inc b
    rst $38
    inc b
    rrca
    inc b
    adc c
    ld b, $92
    rrca
    sbc h
    ld h, e
    db $ed
    ld [de], a
    cp e
    ld b, $8d
    ld [bc], a
    add a
    nop
    rst $38
    nop
    ld l, e
    sub a
    ld b, b
    ccf
    rst $30
    jr z, jr_05a_596c

    ldh a, [$f0]
    nop
    ldh [rNR10], a
    db $ec
    db $10
    db $e3
    inc e
    db $fc
    inc bc
    rst $20
    nop
    ret nz

    nop
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    ld b, b
    add b
    pop bc
    nop
    ld a, [hl]
    nop
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld a, [$fa01]
    ld bc, $01fe
    cp $01

jr_05a_596c:
    reti


    nop
    sub b
    nop
    or b
    nop
    ldh [rNR34], a
    sbc l
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop af
    rst $38
    jr c, @+$01

    ld a, [hl-]
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf

jr_05a_599f:
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc $fe
    ld b, a
    rst $38
    rst $00
    rst $38
    adc l
    rst $38
    inc bc
    rst $38
    ld bc, $71ff
    rst $38
    db $e3
    rst $38
    jp nz, $dfff

    rst $38
    db $fd
    rst $38
    and c

jr_05a_59bb:
    rst $38
    pop af
    rst $38
    sbc [hl]
    ld e, $5e
    xor l
    add hl, bc
    or $40
    cp a
    db $e4
    ei
    ld h, b
    rst $38
    rrca
    ldh a, [$ac]
    ld a, e
    ret nc

    ccf
    jr nc, jr_05a_599f

    ld a, a
    rst $38
    ld a, c
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    push bc
    ld a, a
    jr z, jr_05a_59bb

    ld d, b
    cp a
    ld b, b
    cp a
    push af
    ld a, [de]
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld [$0cf7], sp
    ld h, h
    sbc a
    ei
    inc b
    cp c
    ld b, [hl]
    jr @+$01

    ld c, a

jr_05a_5a01:
    or b
    rst $20
    jr jr_05a_5a01

    inc bc

jr_05a_5a06:
    sbc a
    ld h, b
    ld e, a
    and b
    rst $18
    jr nz, jr_05a_5a06

    ld b, $e7
    add hl, de
    db $d3
    dec l
    ld l, a
    sub b
    cp $01
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    ldh a, [rIF]
    cp a
    ld bc, $00ff
    rst $18
    nop
    xor e
    nop
    ld a, [c]
    nop

jr_05a_5a28:
    db $e4
    nop
    rst $10
    nop
    db $fc
    inc bc
    rst $38
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    db $fd
    nop
    ld b, c
    nop
    cp [hl]
    nop
    db $ec
    add b
    inc [hl]
    ret z

    db $fc
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld a, c
    nop
    stop
    ld a, [de]
    nop
    pop hl
    sbc b
    db $10
    add sp, -$4e
    ld c, h
    ld h, l
    ld [bc], a
    rlca
    nop
    dec h
    nop
    dec a
    nop
    ld [$1c00], sp
    nop
    ld [de], a
    inc b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr c, jr_05a_5a28

    inc b
    ld hl, sp+$01
    cp $a0
    rst $18
    or d
    dec c
    cp a
    nop
    ccf
    nop
    ld d, $00
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
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ret nc

    rst $18
    cp $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ei
    rst $38
    db $f4
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], h
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    cp a
    ld a, d
    cp $fb
    ld e, e
    or a
    sbc a
    ld [hl], l
    dec sp
    rst $08
    db $e4
    rra
    ld a, c
    add [hl]
    jp z, $a615

    nop
    cp $ff
    rst $10
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    add c
    rst $38
    jp hl


    rst $38
    nop
    rst $38
    ld b, d
    cp a
    ld d, $e9
    ld a, [c]
    dec c

jr_05a_5ae6:
    rst $38
    nop

jr_05a_5ae8:
    rlca
    ld hl, sp-$50
    ld c, a
    rst $38
    nop
    rst $38
    nop
    sub a
    ld a, h
    rst $28
    inc d
    ld sp, hl
    ld b, $ff
    nop
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, a
    add b
    or a
    ld c, h
    db $fc
    inc bc
    rra
    ldh [$ef], a
    db $10
    db $fd
    ld [bc], a
    rst $18
    ld hl, $00ff
    ld a, a
    add b
    and a
    ld hl, sp-$3c
    ccf
    ld a, [$7f05]
    nop
    inc bc
    nop
    pop de
    nop
    add sp, $00
    ld d, e
    ldh [$f0], a
    jr nz, jr_05a_5ae6

    jr nc, jr_05a_5ae8

    jr nc, @+$81

    db $10
    dec hl
    db $10
    ldh a, [rP1]
    ld l, a
    sub b
    adc a
    ld [hl], b
    rst $28
    db $10
    rst $28
    db $10
    cpl
    db $10
    rra
    ld [$1f20], sp
    cp $01
    adc [hl]
    ld b, c
    db $e3
    nop
    pop bc
    ldh [$8d], a
    ld [hl], b
    db $f4
    rrca
    db $fd
    inc bc
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    adc $30
    inc b
    jr jr_05a_5baf

    ld [$0818], sp
    db $10
    ld [$0008], sp
    ld bc, $0000
    nop
    nop
    nop
    stop
    ld l, b
    db $10
    ld a, b
    call nz, $c23c
    ld a, [de]
    rst $20
    add b
    ld a, a
    ld a, a
    nop
    cpl
    nop
    rst $08
    nop
    ccf
    nop
    cpl
    nop
    rlca
    nop
    jp z, $07fe

    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $fe
    cp $ff
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    ld a, a

jr_05a_5baf:
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, $fe
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    ld a, $7f
    ccf
    rst $28
    ld l, a
    ld a, [hl]
    xor c
    adc $f5
    add sp, -$29
    ret nc

    rst $38
    ldh a, [rIE]
    inc bc
    db $fc
    db $e3
    inc e
    cp b
    ld [hl], a
    daa
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    scf
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    inc e
    db $e3
    inc a
    rst $38
    nop
    rst $38
    ld [hl], e
    adc h
    ldh a, [rIF]

jr_05a_5bea:
    inc d
    db $eb
    ld b, $f9
    jp hl


    rla
    adc $31
    ldh [$3f], a
    sbc a
    ld h, b
    rst $18
    jr nz, jr_05a_5c67

    sub c
    rst $38
    nop
    inc hl
    call c, Call_05a_41be

jr_05a_5c00:
    cp $01
    ld a, b
    rst $38
    cp l
    ld a, [hl]
    ld c, [hl]
    or c
    rst $28
    db $10
    rst $30
    ld [$06f9], sp
    rst $38
    nop
    ld hl, sp+$07
    adc a
    ldh a, [rIF]
    ldh a, [$1f]
    add sp, -$33
    ld [hl-], a
    cp $01
    rst $38
    nop
    rst $18
    jr nz, jr_05a_5c00

    jr nz, @-$7b

    ld a, h
    rst $28
    ld d, b
    ld [hl], b

jr_05a_5c27:
    ret nz

    jr nz, jr_05a_5bea

    and b
    ld b, b
    ldh a, [rP1]
    rst $28
    db $10
    cp $01
    rst $38
    nop
    call c, $f500
    ld [$cc32], sp
    rst $38
    nop
    add $00
    ret nz

    nop
    add b
    nop
    ld hl, sp+$00
    db $e3
    db $fc
    jr nz, jr_05a_5c27

    add e
    db $fc
    inc de
    db $fc
    jp hl


    ld d, $e1
    rra
    ld a, b
    nop
    ldh [rP1], a
    or b
    nop
    ld [$1010], sp
    ld [$0c40], sp
    ld c, d
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0106
    rlca
    nop
    inc b

jr_05a_5c67:
    nop
    rlca
    nop
    ld b, $01
    ld bc, $e800
    nop
    ld c, b
    ldh a, [$30]
    ret nz

    ldh a, [rP1]
    ei
    nop
    call c, $d808
    inc c
    xor a
    ld e, b
    db $db
    jr nc, @-$11

    ld a, [c]
    db $f4
    db $eb
    db $eb
    db $f4
    ei

jr_05a_5c87:
    db $e4
    ld a, [$f8b5]
    rst $30
    ld hl, sp-$01
    ld sp, hl
    and $fe
    pop af
    db $fd
    di
    ei
    db $dd
    ei
    rst $30
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $28
    ld a, [c]
    db $ed
    db $fd
    ld a, [c]
    ld sp, hl
    cp $e3
    db $fd
    db $fc
    rst $30
    cp $e9
    db $f4
    rst $38
    and d
    ld e, h
    call $c2a2
    ld [hl], l
    call z, $8833
    ld [hl], a
    rra
    rst $20
    scf
    rst $08
    ld d, $e9
    xor $01
    rst $10
    jr nz, jr_05a_5c87

    ccf
    adc $31
    push bc
    ld a, [hl-]
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    cp a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    rst $38
    ld a, $ff
    ld a, [hl+]
    rst $38
    scf
    rst $38
    dec e
    rst $38
    dec [hl]
    rst $38
    jr nc, @+$01

    add e
    rst $38
    ld c, b
    rst $30
    add $3f
    inc c
    di
    db $10
    rst $38
    sbc d
    ld h, l
    db $ed
    ld [de], a
    jp hl


    ld e, $f0
    rrca
    ld [c], a
    dec e
    ld hl, sp+$07
    add sp, $17
    ld d, $ed
    db $f4
    rrca
    db $fc
    inc bc
    inc bc
    rst $38
    ei
    ld e, $ed
    ld e, $9a
    ld a, a
    cp a
    ld b, b
    ccf
    ldh [$c1], a
    ld a, $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    sub e
    ld a, h
    ld [hl], c
    adc [hl]
    ei
    rlca
    rst $20

jr_05a_5d21:
    jr jr_05a_5d21

    nop
    rst $30
    ld [$0067], sp
    jr nc, @+$05

    ld c, e
    ld bc, $002d
    add e
    nop
    and b
    ret nz

    cp h
    nop
    ld a, d
    ld bc, $00df
    cpl
    nop
    pop bc
    nop

jr_05a_5d3c:
    and a
    ld b, b
    add a
    ld [hl], b
    ld h, a
    jr jr_05a_5d3c

    ld b, $7d
    add b
    rst $38
    nop
    db $fd
    nop
    jp hl


    nop
    ld hl, sp+$00
    rst $08
    or b
    rst $28
    rra
    ld c, $01
    nop
    ld bc, $0003
    inc bc
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld a, l
    inc bc
    db $fd
    inc bc
    ld a, l
    add b
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, h
    ld [bc], a
    daa
    jp nz, Jump_05a_7fbf

    inc a
    inc bc
    sub a
    nop
    inc sp
    nop
    add hl, hl
    nop
    add sp, $00
    ld c, [hl]
    nop
    stop
    nop
    nop

jr_05a_5d7e:
    or b
    ld b, b
    cp h
    inc bc
    pop de
    ld a, $30
    ld e, [hl]
    ld h, b
    ld e, $ed
    ld [hl-], a
    ld a, h
    cp a

jr_05a_5d8c:
    ld e, h
    rst $28
    ld e, a
    xor h
    rst $20
    ld e, b
    xor $f1
    db $fd
    ld [c], a
    sub a
    ldh [$71], a
    add b
    sbc b
    ld h, b
    jr jr_05a_5d7e

    ld a, h
    add b
    pop bc
    ld a, [hl]
    ld [de], a
    db $ec
    jr jr_05a_5d8c

    and $01
    add h
    ld h, e
    ld h, $c1
    ld c, c
    add b
    add hl, de
    ldh [$93], a
    inc c
    ld d, e
    inc l
    dec d
    ld [$001c], sp
    xor c
    ld d, $74
    rrca
    ld [hl], c
    ld c, $7d
    ld c, $1c
    rst $38
    inc e
    rst $38
    jr @+$01

    ld a, l
    rst $38
    db $10
    rst $28
    nop
    rst $38
    inc b
    rst $38
    ld b, c
    rst $38
    ld c, h
    di
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05a_5ddb:
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    ld hl, $08ff
    rst $38
    xor h
    ld e, a
    ld c, [hl]
    cp a
    pop hl
    rra
    ld hl, sp+$07
    jr c, @-$37

    inc hl
    rst $38
    inc c
    rst $38

jr_05a_5e02:
    ld h, h
    sbc a
    db $ed
    cp $0f
    rst $38
    rst $30
    rrca

jr_05a_5e0a:
    jr nc, jr_05a_5ddb

    ld h, $df
    ld a, e
    rst $38
    call nc, $be2b
    ld b, c
    rst $08
    ld [hl], b
    add e
    ld a, h
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop

jr_05a_5e1e:
    cp e
    call nz, Call_000_28d7
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    add b
    ld b, l
    cp d
    cp a
    ld b, b

jr_05a_5e30:
    cp a
    ld b, b
    rst $38
    nop
    ccf

jr_05a_5e35:
    ret nz

    ccf
    ret nz

    jp hl


    ld b, $54
    dec hl
    rst $18
    jr nz, jr_05a_5e1e

    jr nz, jr_05a_5e30

    nop
    rst $28
    jr nc, jr_05a_5e02

    ld [hl], b
    rst $18
    jr nc, jr_05a_5e35

    inc de
    xor $11
    ld a, [hl]
    ld bc, $1f07
    ld h, b
    sbc a
    or $98
    inc [hl]
    ret z

    scf
    ret z

    rst $28
    jr nc, jr_05a_5e0a

    ld [hl], b
    ld a, [hl]
    add b
    or a
    ret z

    cp $ff
    di
    rrca
    db $eb
    nop
    ld [$0000], sp
    nop
    add h
    nop
    add b
    ret nz

    inc e
    ldh [$fd], a
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ld a, $00
    inc e

jr_05a_5e7d:
    nop
    inc c
    nop
    inc bc
    ld a, h
    add d
    ld a, h
    add c
    ld a, [hl]
    ld b, d
    cp h
    ld d, h
    xor b
    and a
    ld e, b
    rla
    add sp, -$45
    ld b, h
    adc [hl]
    ld [hl], b
    add e
    ld a, h
    rlca
    ld hl, sp-$7e
    ld a, b
    db $dd
    jr nz, @+$01

    nop
    sub e
    inc b
    inc b
    nop
    ld a, [hl]
    add c
    ld l, b
    sub a
    inc c
    di
    nop
    rst $38
    ld c, b
    scf
    cp c
    ld b, a
    jr nc, jr_05a_5e7d

    sbc d
    dec b
    sub b
    rrca
    add b
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    inc h
    rst $18
    ldh a, [rIF]
    ld b, l
    cp [hl]
    inc h
    cp $21
    cp $05
    ld hl, sp+$41
    db $fc
    ld b, $f9
    ld d, a
    ld hl, sp-$70
    rst $38
    inc e
    rst $38
    jp z, Jump_000_003d

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
    rst $18
    rst $38
    rst $18
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    inc e
    rst $38
    nop
    rst $38
    and $ff
    ld l, c
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    xor $9f
    pop hl
    rst $38
    add hl, hl
    rst $10
    inc d
    db $eb
    rla
    jp hl


    di
    db $fd
    rra
    cp $31
    rst $18
    ld b, b
    cp a
    adc b
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    dec a
    di
    ldh a, [rIF]
    ld a, [hl]
    add c
    rst $30
    ld [$13ec], sp
    or [hl]
    ld a, c
    ld [c], a
    dec e
    ld hl, sp+$07
    ei
    rrca
    xor l
    ld d, e
    rst $38
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
    cp $01
    rst $18
    ld h, c
    rst $00
    add hl, sp
    ld a, [$f807]
    rlca
    rst $18
    ld bc, $0779
    di
    rrca
    ld e, a
    and c
    db $e3
    rst $38
    dec bc
    db $fc
    ld [hl], a
    adc [hl]
    xor $03
    ld a, l
    inc bc
    cp $01
    xor $01
    ld [hl], d
    add c
    xor e
    ld d, b
    rst $38
    nop
    db $fd
    inc bc
    db $d3
    db $ec
    add e
    ld a, [hl]
    inc [hl]
    ld a, e
    daa
    jr @+$0d

    db $10
    sbc e
    nop
    inc hl
    nop
    rst $30
    nop
    db $fd
    nop
    call nz, $f838
    ld b, $7e
    ld bc, $10ef
    rst $10
    jr z, jr_05a_5ffe

    nop
    ldh a, [rIF]
    ld b, b
    cp a
    add b
    ld a, a
    sbc b
    ld a, a
    nop
    rst $38
    dec bc
    db $f4
    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    adc b
    ld [hl], a
    inc b
    db $e3
    dec b
    ld [c], a
    inc e
    db $e3
    ldh [$1f], a
    ld l, h
    inc de
    db $e4
    dec de
    pop de
    cp $7b
    add [hl]
    ld c, d
    or b
    ccf
    ret nz

    jr nz, @+$01

    inc b
    ei
    ld [bc], a
    ld sp, hl
    add d
    ld sp, hl
    rlca
    ld hl, sp+$00
    ld a, [bc]
    ld [$0906], sp
    ld b, $a2
    inc b
    ld h, $00
    inc l
    nop
    ld c, d
    add h
    inc bc
    call nz, Call_000_324c
    sub h
    ld h, e
    or h
    ld h, c
    inc h
    ldh a, [$84]
    ld a, b
    nop
    ld a, h
    and b
    ld a, [hl-]
    add $39
    ld b, [hl]
    cp c
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    db $fd
    ret nz

    cp $c0
    cp $e0
    cp $f1
    cp $f1
    cp $f8
    cp $f8
    rst $38
    db $fd
    cp $c0

jr_05a_5feb:
    rst $38
    cp $ff
    rst $38
    rst $38
    db $ed
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    add [hl]
    rst $38

jr_05a_5ffe:
    and a
    rst $38
    ld bc, $c0ff
    rst $38
    inc [hl]
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    jr c, jr_05a_5feb

    inc b
    ei
    add [hl]
    rst $38
    call nc, $4eef
    or e
    ld h, b
    rst $18
    ld c, [hl]
    pop af
    ld d, l
    xor d
    ld h, d
    db $fd
    dec d
    ld a, [$fe1d]
    ld l, c
    sbc [hl]
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    cp a
    ld b, b
    rst $10
    jr z, jr_05a_606d

    cp a
    dec bc
    db $fd
    daa
    ret c

    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp h
    jp $e0fb


    rst $10
    ld hl, sp-$7f
    ld a, a
    pop bc
    ld a, $c3
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ret nz

    db $ed
    ldh a, [$dd]
    cp $07
    rst $38
    sub h
    ld l, e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ccf
    ldh [$27], a
    ld hl, sp-$7d
    ld a, h
    sbc a
    ld a, h
    rst $18
    ld a, $f0
    rrca
    rst $38

jr_05a_606d:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    sub h
    nop
    push hl
    add b
    ld [hl], a
    ldh [$b0], a
    ld a, b
    ld d, h
    add hl, hl
    ld [hl], d
    ld bc, $0378
    inc a
    inc bc
    inc c
    inc bc
    di
    rrca
    and $19
    ldh [$1f], a
    jr c, jr_05a_6099

    sub d
    ld c, l
    ld e, l
    adc [hl]
    ld c, c
    sbc [hl]
    inc c

jr_05a_6099:
    sbc a
    ld [$a217], sp
    inc e
    jp z, Jump_000_1f35

    jr nz, @+$1b

    rlca
    dec h
    ld [bc], a
    rrca
    jr nc, jr_05a_60d6

    ld d, $27
    dec e
    dec d
    ld l, $59
    ld h, $41
    ld a, $44
    ld l, $20
    rrca
    ld de, $180e
    daa
    ld e, c
    ld l, $1f
    ld l, [hl]
    rst $08
    ccf
    ld l, a
    call c, $af5f
    db $dd
    ld a, a
    cp $3d
    sbc [hl]
    ld a, a
    adc [hl]
    ld a, a
    cp h
    ld b, a
    ld l, a
    rla
    rrca
    dec sp
    ld c, $3f
    ld c, $1e

jr_05a_60d6:
    add hl, bc
    add hl, bc
    dec b
    dec c
    ld bc, $2115
    and e
    ld a, $3e
    ld l, $3e
    ld b, $4f
    inc d
    dec e
    inc b
    sub l
    inc b
    rst $08
    ld b, [hl]
    sub $46
    ld b, [hl]
    ld h, a
    rst $20
    dec c
    sub b
    ld b, c
    or [hl]
    add hl, bc
    or $e4
    ei
    ld bc, $05fa
    ld a, [$fd02]
    db $fc
    rst $38
    cp c
    cp $40
    rst $38
    ld [hl], b
    rst $38
    db $eb
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    rla
    rst $38
    nop
    push af
    rla
    ld hl, sp-$75
    db $fc
    inc bc
    db $fc
    add b
    rst $38
    ld b, d
    db $fd
    and b
    ld a, a
    ldh a, [$3f]
    cp $1f
    add e
    ld a, [hl]
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    cp h
    ld b, e
    rst $08
    jr nc, @+$31

    ret c

    cp a
    ret z

    di
    inc c
    db $fd
    ld e, $fd
    ld e, $73
    adc [hl]
    ei
    ld b, $7a
    add a
    ld a, [$7bfd]
    db $fc
    rrca
    db $fc
    ld sp, hl
    ld b, $ff
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fc

jr_05a_614b:
    inc bc
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $817f
    cp $e1
    or e
    ld a, h
    rst $20
    ld e, $f8
    rlca
    sbc $21
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $38

jr_05a_6165:
    nop
    rst $38
    nop
    ld a, a
    add b
    jr nz, jr_05a_614b

    ld a, [c]
    dec c
    db $fd
    nop
    cp c
    nop
    db $fc
    nop
    db $ec
    nop
    ld c, b
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [$9f01]
    inc bc
    inc e
    rst $38
    sbc h
    ld a, a
    jr c, jr_05a_6165

    ld a, h
    xor d
    ret nc

    cpl
    ld e, l
    xor a
    inc d
    db $eb
    ld c, [hl]
    pop af
    rrca
    ldh a, [$fd]
    ld [de], a
    ret nc

    or a
    sub e
    ld a, a
    inc sp
    rst $38
    scf
    ei
    rst $18
    or a
    ld d, e
    cp a
    or l
    db $db
    rst $18
    ld a, $7f
    cp e
    cp a
    ld e, a
    rst $38
    dec hl
    ld l, a
    di
    cp a
    ld l, c
    rst $38
    rrca
    sbc a
    ld l, a
    sbc a
    ld a, a
    sbc a
    ld e, a
    ld a, a
    sbc e
    rra
    db $ec
    ld e, $fd
    cp a
    ld l, [hl]
    or [hl]
    cp a
    ld hl, sp+$1f
    ld sp, hl
    rla
    cp a
    ld a, e
    ccf
    rst $18
    rst $38
    ld a, a
    cp a
    ld a, a
    rra
    ccf
    ld e, a
    xor a
    or l
    ld hl, $39bf
    cp a
    ccf
    cp h
    xor a
    rst $38
    rst $18
    call c, $9fdf
    sbc a
    rst $18
    sbc a
    ld a, a
    ld a, a
    dec e
    rra
    sub h
    rla
    sbc h
    rrca
    sbc $07
    call z, Call_05a_4f07
    rlca
    sbc l
    dec b
    sub l
    adc d
    ld b, c
    xor $74
    ld h, e
    sbc a
    ldh a, [rOBP1]
    ld e, [hl]
    sub [hl]
    jp hl


    add e
    sbc $d5
    rrc d
    db $10
    dec e
    nop
    dec b
    and b
    inc de
    add b
    ld [$0fe2], sp
    ret nz

    ld b, c
    and b
    ei
    jr nz, @+$1f

    nop
    ld b, $19
    dec b
    ret z

jr_05a_6216:
    jr nz, jr_05a_6216

    inc c
    rst $38
    ld c, $ff
    ld [bc], a
    ld a, e
    ld b, $7f
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    inc c
    di
    nop
    rst $38
    cp [hl]
    ld b, c
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$0cf7], sp
    ld sp, hl
    ld b, $ff
    inc bc
    cp a
    ld b, e
    inc a
    jp Jump_000_1fe6


    sub [hl]
    ld a, c
    rst $38
    add b
    ld a, a
    add b
    sbc a
    ldh [$fc], a
    ld [hl], e
    rst $18
    add hl, sp
    rst $38
    inc c
    ld a, e

jr_05a_624f:
    add [hl]
    cp l
    jp $fdc3


    db $db
    db $e4
    cp a
    jp nz, Jump_000_03fe

    cp $03
    rst $38
    ld bc, $c0bf
    rst $38
    ldh [rIE], a
    ldh [$6f], a
    ldh a, [$b8]
    ld a, a
    reti


    ld a, $5e
    cp b
    ld c, a
    ldh a, [$df]
    jr nz, jr_05a_624f

    ld hl, $18e7
    ld sp, hl
    inc c
    db $76
    inc c
    ld a, [hl]
    ld b, $3b
    ld b, $9c
    inc bc
    adc l
    jp $699f


    rra
    ld l, b
    sbc [hl]
    ld [hl], e
    ld d, [hl]
    xor c
    push hl
    ld a, [de]
    cp a
    ld a, c
    rst $38
    cp l
    rst $38
    dec sp
    cp d
    xor e
    cp e
    cp e
    ld e, e
    dec de
    pop hl
    pop bc
    sbc $df
    ei
    db $db
    rst $38
    reti


    ei
    ei
    db $fc
    or e
    ld a, a
    add e
    db $f4
    jp Jump_05a_77e8


    ld [$e0d7], a
    rst $18
    ldh a, [$cf]
    jp nz, $27fd

    pop bc
    add sp, -$20
    cp a
    cp $fb
    jp $c0f7


    db $fd
    ret nz

    rst $18
    add b
    rst $28
    pop hl
    ld hl, sp-$10
    rst $38
    rst $38
    ld a, e
    di
    cp $fe
    rst $38
    sbc a
    ld e, l
    sbc l
    cp $ea
    cp a
    di
    pop af
    pop af
    rst $38
    di
    cp a
    push af
    ld hl, sp-$08
    ld l, e
    ret z

    rst $28
    rst $28
    ld [$f5fa], a
    db $fd
    ld e, [hl]
    ld a, [hl]
    rst $30
    rst $30
    call Call_000_3f8d
    adc a
    ld h, [hl]
    rst $00
    cp [hl]
    or a
    ld [$f98b], a
    dec h
    ld [hl], c
    scf
    jr jr_05a_6313

    or b
    rlca
    and h
    rlca
    db $ec
    push hl
    or h
    or a
    ld a, [$5c7b]
    ld e, l
    db $db
    sbc e
    jp c, $f79b

    ld d, a
    db $eb
    ld [hl+], a
    ld l, a
    daa
    dec sp
    dec sp
    ld a, e
    add hl, sp
    db $fd
    ld e, l
    inc a
    ccf
    ld a, h

jr_05a_6313:
    ld a, a
    db $fc
    rst $38
    call c, $f7ff
    rst $30
    ei
    ei
    ld l, a
    ld h, e
    db $ed
    ld l, l
    ld e, l
    ld e, h
    ccf
    ld a, $0d
    rrca
    inc e
    rra
    inc c
    rrca
    ld b, $07
    nop
    inc bc
    ld [bc], a
    inc bc
    pop bc
    ld a, $e0
    rra
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp a
    ret nz

    ld a, l
    rst $38
    inc a
    rst $38
    ld [hl+], a
    rst $38
    sub [hl]
    ld a, c
    db $eb
    inc e
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [hl-]
    push bc
    rla
    rst $28
    db $ed
    rra
    or a
    rst $08
    cp $ff
    add a
    rst $38
    ld c, $f1
    xor e
    ld d, h
    ld sp, hl
    ld b, $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    ld b, b
    db $ec
    ccf
    ld hl, $7dfe
    ld a, [c]
    ld e, a
    jr c, @-$03

    inc c
    adc h
    rlca
    ld e, h
    and e
    and a
    ld e, h
    ld sp, hl
    ld b, $fe
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    nop
    ld a, a
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05a_63b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05a_63c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05a_63d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05a_63e3

    ld [hl-], a

jr_05a_63b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05a_63f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05a_63c3:
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

jr_05a_63d3:
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

jr_05a_63e3:
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

jr_05a_63f3:
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
    sub b
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
    xor a
    xor a
    xor a
    or b

Jump_05a_6435:
    xor a
    or c
    xor a
    xor a
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    xor a
    xor a
    xor a
    xor a
    cp c
    xor a
    xor a
    xor a
    xor a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    xor a
    xor a
    xor a
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
    ld bc, $af02
    xor a
    xor a
    xor a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    xor a
    xor a
    xor a
    xor a
    xor a
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05a_64ce

    ld a, [de]
    xor a
    xor a
    xor a
    xor a
    xor a
    dec de
    inc e
    dec e
    ld e, $1f
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
    ld bc, $0101

jr_05a_64ce:
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0400
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    nop
    inc b
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld b, $01
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    ld [bc], a
    ld b, $05
    ld bc, $0101
    nop
    ld b, $00
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
    rlca
    ld bc, $0001
    nop
    ld [$0808], sp
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0d08], sp
    add hl, bc
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0c08], sp
    ld [$0308], sp
    rst $38
    add c
    rst $38
    ld bc, $40ff
    rst $38
    ld c, a
    rst $38
    cp [hl]
    cp $3a
    rst $38
    or $ff
    ei
    rst $38
    rst $38
    rst $38
    sub $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    or [hl]
    or $bf
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    ei
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
    ccf
    rst $38
    cp a
    rst $38
    rst $28
    rst $20
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
    push af
    push af
    ld a, l
    ld a, l
    db $dd
    rst $18
    dec l
    dec l
    or a
    or a
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rla
    rst $10
    xor a
    rst $28
    push af
    push af
    rrca
    rst $38
    dec h
    db $fd
    ld h, a
    rst $38
    rst $20
    rst $38
    db $fc
    db $fc
    db $fd
    db $fd
    or e
    or e
    sbc $ff
    sub b
    rst $38
    and b
    rst $38
    and d
    rst $38
    or a
    rst $38
    ccf
    ld a, a
    ld a, e
    ld [hl], b
    or l
    or l
    rst $38
    rst $08
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $38
    ccf
    rst $30
    ld e, a
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
    db $dd
    or $df
    and l
    rst $38
    sbc $ff
    push hl
    and a
    and a
    ld [$0001], sp
    inc c
    nop
    cp a
    ld bc, $83ff
    rst $38
    sbc $ff
    rst $38
    rst $38
    rla
    rst $38
    ccf
    rst $38
    rst $38
    cp $7b
    db $fc
    cp h
    ld a, e
    sbc a
    ld a, a
    ld e, a
    cp a
    ld a, $ff
    cp [hl]
    rst $38
    dec hl
    rst $10
    sub l
    rst $28
    ld e, b
    rst $28
    ld b, c
    cp $c7
    ld hl, sp+$7f
    ldh [$eb], a
    db $f4
    sbc a
    rst $38
    adc $ff
    db $fc
    rst $38
    ldh [rIE], a
    ei
    db $e4
    call $eef2
    pop de
    ld e, a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    adc a
    ldh a, [$af]
    ret nc

    cp a
    ret nz

    rst $38
    add b
    call c, $cf23
    ccf
    inc de
    db $fc
    cp $01
    cp $01
    rst $38
    ld bc, $03fd
    ld sp, hl
    rrca
    reti


    ccf
    cp a
    ld a, a
    cp $ff
    rst $38
    rst $38
    sbc l
    rst $38
    ei
    rst $38
    ld e, a
    rst $38
    ei
    ei
    xor h
    xor h
    ld b, c
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    db $db
    rst $38
    and a
    or a
    db $eb
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    or a
    rst $38
    cp $ff
    di
    rst $38
    di
    rst $38
    db $fd
    db $fd
    jr nz, @+$01

    ei
    rst $38
    rst $38
    rst $38
    db $e3
    rst $28
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    sbc a
    rra
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    xor c
    cp a
    ldh [rIE], a
    and b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    add $ef
    cp a
    rst $38
    rst $28
    rst $28
    call c, $fedc
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    rst $38
    rst $38
    ei
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    db $fc
    db $fc
    ld a, a
    ld a, a
    cp a
    cp a
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [$fb04]
    rst $38
    rst $28
    cp $fd
    cp $f9
    cp $f9
    cp $e9
    db $fd
    db $f4
    xor d
    ld d, l
    ei
    cp h
    cp l
    jp z, $ae55

    dec a
    jp z, $0049

    and d
    ld e, l
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jp $80ef


    rst $38
    ret nz

    ccf
    inc b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    jp $e23c


    dec e
    db $ec
    inc de
    ret z

    scf
    inc a
    rst $38
    add a
    ld hl, sp-$33
    ld [hl-], a
    cpl
    ret nc

    ccf
    ret nz

    ld hl, sp+$07
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    cp $01
    ldh [$1f], a
    ldh [$1f], a
    ret z

    scf
    and e
    ld e, a
    rra
    rst $38
    ei
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, a

Call_05a_67f3:
    add b
    cp a
    ret nz

    ld e, a
    and b
    swap h
    add b
    ld a, a
    rst $38
    rst $38
    db $fc
    di
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor $ee
    cp a
    cp a
    add l
    add l
    xor a
    rst $28
    ei
    ei
    rst $28
    rst $28
    rst $30
    rst $30
    ld a, [$fbfa]
    ei
    rst $30
    rst $30
    cp l
    db $fd
    inc h
    inc h
    ld e, [hl]
    ld e, [hl]
    pop af
    pop af
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, d
    ld a, [$fefe]
    ld l, e
    db $eb
    ld [hl], h
    db $f4
    ret c

    ret c

    inc c
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    dec sp
    ei
    ld a, c
    ld sp, hl
    xor c
    xor c
    ld [hl], a
    ld [hl], a
    ld hl, sp-$01
    add b
    rst $38
    and b
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    reti


    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ei
    add hl, de
    ld sp, hl
    rst $38
    rst $38
    ld c, a
    rst $38
    ei
    ei
    add e
    rst $38
    rst $00
    rst $38
    ld h, e
    rst $38
    ld [c], a
    rst $38
    and $ff

jr_05a_6878:
    rst $38
    rst $38
    xor [hl]
    nop
    ld b, [hl]
    ld b, [hl]
    adc e
    add c
    db $f4
    rst $38
    ei
    ld a, a
    ccf
    rst $38
    ld [hl+], a
    db $fd
    ld a, a
    rst $38
    db $fd
    ld a, [$ff00]
    dec bc
    or $72
    xor l
    jr jr_05a_6878

    ld [hl], d
    ld c, $cd
    dec a
    ld l, $df
    sbc a
    ld l, a
    ld e, a
    xor a
    ld c, b
    or h
    add sp, $07
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, h
    db $fd
    inc sp
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    inc bc
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    dec b
    ei
    ld d, h
    xor e
    jp nz, Jump_000_003d

    rst $38
    add d
    ld a, l
    db $dd
    ld [hl+], a
    ld l, a
    sub b
    cp [hl]
    ld b, c
    ld e, c
    and a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    ld c, a
    cp a
    sbc [hl]
    ld a, a
    ld a, $fd
    ld [$3dff], sp
    cp $7b
    db $fc
    rst $38
    ldh a, [$3f]
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
    ld a, [c]
    dec c
    rst $38
    nop
    nop
    rst $38
    ld [hl], d
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $61
    rst $38
    sbc $ff
    xor l
    ld a, e
    ld a, e
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    ld a, h
    ld a, l
    ld d, d
    ld d, c
    rla
    ld de, $d7d7
    sbc e
    sbc e
    inc [hl]
    dec a
    rla
    rra
    ld a, [hl]
    ld a, a
    xor a
    xor a
    cp e
    cp e
    ld a, a
    ld a, a
    add hl, hl
    add hl, hl
    add a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld a, $fe
    rst $38
    rst $38
    adc [hl]
    cp $7d
    db $fc
    inc c
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    rst $18
    cp $fc
    db $fc
    ccf
    cp $7f
    cp $ff
    rst $38
    dec c
    rst $38
    ccf
    rst $38
    ei
    ei
    rst $38
    rst $38
    db $db
    ei
    rst $38
    rst $38
    and h
    and b
    ld c, a
    ld c, l
    rst $38
    jp hl


    rst $38
    cp $ff
    cp $fe
    db $fd
    cp $ef
    cp $e1
    rst $38
    or a
    rst $38
    di
    rst $38
    or [hl]
    ei
    db $f4
    ei
    db $e4
    ldh a, [$ef]
    push hl
    ld hl, sp-$7f
    ld a, [hl]
    ld [hl], b
    rst $28
    ld [hl], b
    xor a
    sub d
    ld l, l
    ld [hl], c
    sbc $07
    ld hl, sp-$7f
    cp $ff
    rst $38
    rlca

jr_05a_698b:
    ei
    dec bc
    rst $30
    rrca
    ei
    ld c, d
    or c
    nop
    nop
    push de
    rst $30
    db $ed
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ret nz

    jp nc, $e000

    nop
    nop
    ld bc, $0200
    ld [bc], a
    rrca
    nop
    sbc [hl]
    nop
    ldh [rP1], a
    adc $00
    add h
    nop
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $2bff
    rst $18
    ld b, b
    rst $38
    ld [hl-], a
    call $e619
    or h
    ld c, e
    jr c, jr_05a_698b

    ld a, [$ccc5]
    di
    add l
    ld a, [$edf2]
    ld d, d
    db $ed
    ld a, h
    jp $c0bf


    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp h
    jp $daa5


    ld e, a
    and b
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
    cp $01
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    rra
    rst $28
    ld a, e
    add a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    ccf
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
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
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
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add a
    rlca
    sbc a
    rlca
    add e
    rlca
    ld b, a
    inc bc
    add e
    rlca
    rra
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    add l
    ld d, e
    inc de
    add c
    cp $fe
    cp $7e
    cp $fe
    cp $fe
    cp $fe
    cp $be
    ld e, $f3
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ei
    ei
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld a, l
    ld a, l
    db $fd
    ld a, l
    cp [hl]
    cp a
    ld l, l
    cpl
    cp a
    rst $38
    rst $38
    ccf
    cp a
    ld a, e
    ld a, a
    xor l
    dec h
    db $db
    ld a, a
    rst $10
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld [hl], a
    cp a
    ld a, a
    ld sp, hl
    ld [hl], $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ei
    ld a, [$a3f5]
    and e
    ei
    ei
    sub l
    sub a
    push bc
    push hl
    add b
    add b
    nop
    add b
    nop

jr_05a_6a9f:
    nop
    or h
    rst $38
    jr nz, @+$01

    jr nz, jr_05a_6a9f

    dec b
    di
    ld [bc], a
    rst $38
    ld [bc], a
    rst $18
    dec l

jr_05a_6aad:
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld a, [bc]
    push af
    ld e, $e1
    ld d, b
    rst $28
    ld c, a
    rst $38
    ccf
    rst $38
    ld a, [$f27f]
    rst $38
    ld c, h
    cp a
    inc hl
    db $dd
    add b
    ld a, a
    jr z, jr_05a_6aad

    ld [$e8ff], sp
    rra
    ld a, [$db1d]
    inc a
    cp l
    ld a, e
    ret nz

    ccf
    pop af
    rrca
    db $e3
    rra
    rst $20
    rra
    db $e3
    rra
    db $d3
    ccf
    rst $10
    cpl
    cp a
    ld c, a
    adc a
    ld a, a
    ld c, l
    cp a
    rst $08
    ccf
    rra
    rst $38
    sbc $ff
    xor [hl]
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    sub $3f
    sub a
    ld l, e
    db $dd
    ld [c], a
    rst $38
    add b
    rst $38
    ld bc, $04ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    xor b
    rst $38
    jr nz, @+$01

    or $ff
    rst $38
    rst $38
    rst $00
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
    sbc l
    rst $38
    rlca
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    dec h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    rst $20
    rst $38
    ccf
    cp [hl]
    and h
    or d
    ld [hl+], a
    xor $26
    rst $38
    ld a, $ff
    rra
    rla
    inc bc
    cp a
    rla
    db $fd
    db $10
    ld h, b
    ld h, b
    jr z, jr_05a_6b56

jr_05a_6b56:
    ld h, l
    nop
    rst $28
    inc b
    db $fc
    add h
    call z, $9f84
    ld b, $9f
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    or $6f
    daa
    rst $38
    rlca
    ld a, a
    ld b, a
    ld a, a
    ld b, [hl]
    ccf
    ld b, $7f
    ld b, h
    ccf
    ld b, a
    ccf
    ld b, a
    ccf
    daa
    ccf
    ld [hl+], a
    ccf
    inc bc
    ccf
    rrca
    ccf
    rrca
    ccf
    inc hl
    rra
    dec bc
    rra
    rlca
    rra
    rla
    rra
    inc bc
    rra
    inc bc
    rra
    ldh [rNR23], a
    ld h, b
    sbc h
    ldh [rNR32], a
    ldh a, [$0e]
    ldh [$1f], a
    nop
    rst $38
    inc bc
    db $fc
    ld b, $f9
    ld l, b
    rst $30
    db $ec
    db $d3
    sub h
    db $eb
    sub e
    db $ec
    ld a, [bc]
    push af
    ccf
    ldh a, [$d8]
    rst $20
    db $e3
    rst $18
    sbc $ff
    add b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld bc, $0eff
    rst $38
    ld a, d
    rst $38
    ld a, [c]
    rst $38
    ld d, d
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    db $76
    rst $38
    ld a, l
    rst $38
    db $d3
    rst $38
    rst $00
    rst $38
    ld a, l
    cp $fe
    db $fd
    cp $f9
    di
    db $fc
    ld a, [c]
    db $fd
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp [hl]
    pop bc
    cp $01
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    nop
    ld [hl], d
    adc l
    jp $c63c


    add hl, sp
    rst $38
    adc a
    rst $38
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
    rst $30
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    ld de, $11ff
    rst $38
    ld bc, $d7ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl+], a
    rst $38
    ldh [rIE], a
    or $ff
    rst $30
    db $ed
    ld bc, $01fb
    rst $28
    inc bc
    cp $14
    db $fc
    ld a, b
    db $fc
    add h
    rst $38
    nop
    rst $30
    rlca
    cp $82
    ldh a, [rIE]
    ld sp, $2eff
    rst $38
    dec hl
    db $fc
    ei
    db $fc
    cp $f9
    cp $fd
    rst $08
    ldh a, [$af]
    ret nc

    ld e, a
    ldh [rVBK], a
    ld a, [c]
    ld sp, hl
    cp $80
    rst $38
    ld a, [hl-]
    rst $00
    nop
    rst $38
    rst $10
    ld hl, sp-$22
    pop af
    call nz, $d2fb
    rst $38
    add b
    rst $38
    add [hl]
    ei
    ld [$98f7], sp
    rst $38
    cp a
    ld hl, sp+$00
    nop
    ld [$2f00], sp
    dec c
    ld hl, sp+$10
    ldh a, [rNR10]
    pop af
    db $10
    cp $5c
    ld sp, hl
    ldh a, [$f0]
    sub a
    ldh [$d8], a
    ldh [$de], a
    db $fc
    rst $38
    ld a, a
    ld b, a
    cp $80
    rst $38
    sub b
    rst $38
    db $10
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add c
    add c
    ld b, $87
    rra
    db $fc
    add sp, $1f
    ld l, e
    sbc a
    ld e, [hl]
    cp a
    ld e, h
    cp a
    pop de
    ld a, $11
    cp $d0
    ccf
    ld d, h

jr_05a_6cab:
    cp e
    ld sp, $9fff
    rst $38
    add [hl]
    ld a, a
    ld c, d
    rst $30
    ld e, d

jr_05a_6cb5:
    rst $20
    rst $10
    rst $28
    call c, $35ff
    rst $38
    ld [hl], $ff
    adc [hl]
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    cp b
    rst $38
    inc l
    di
    add hl, sp
    add $7c
    jp $de61


    rst $20
    ret c

    ld l, a
    sub b
    jr z, jr_05a_6cab

    jr nz, jr_05a_6cb5

    ld a, [bc]
    rst $38
    inc c
    di
    and b
    ld a, a
    cp $01
    ei
    dec b
    push af
    dec bc
    ei
    rlca
    sbc a
    ld a, a
    sbc h
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f7
    ld [$00ff], sp
    rst $38
    inc bc
    rst $30
    rrca
    ld a, a
    adc [hl]
    ld e, e
    cp h
    scf
    ld hl, sp+$6f
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
    db $fc
    rst $38
    rst $38
    rst $38

jr_05a_6d13:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    ld [hl], $ff
    ld h, [hl]
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld bc, $5fff
    rst $38
    cp $ff
    ld a, b
    rst $38

jr_05a_6d2b:
    ei
    rst $38
    pop af
    ei
    pop hl
    rst $38
    and e
    ld a, a
    cpl
    cp a
    rla
    ld a, l
    inc a
    db $fc
    ld [$20fc], sp
    ret z

    ld b, b
    ret c

    nop
    ld [c], a
    db $fd
    or h
    db $eb
    dec b
    cp $7e
    sbc l
    rst $28
    jr @-$0f

    jr jr_05a_6d13

    add hl, sp
    rst $10
    jr z, jr_05a_6d2b

    nop
    rst $18
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, $00
    cp [hl]
    nop
    rst $30
    ld [$e01f], sp
    ld a, [hl]
    add c
    di
    inc c
    di
    inc c
    inc sp
    db $fc
    ccf
    ldh a, [$b3]
    ld l, h
    ld a, [c]
    ld l, l
    ld l, e
    rst $38
    and b
    rst $18
    ret nz

    cp a
    dec bc
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld b, b
    ret nz

    nop
    db $fc
    ccf
    nop
    ld a, a
    adc b
    nop
    ldh a, [rP1]
    rst $38
    ldh [rIE], a
    add b
    ccf
    rlca
    db $fd
    jr jr_05a_6db1

    ld h, $3f
    jp nz, $c0ff

    rst $38
    rrca
    ldh a, [$7f]
    add b
    db $f4
    dec bc
    pop de
    xor [hl]
    dec [hl]
    jp z, $07f8

    add hl, de
    and $11
    xor $0b
    db $fc
    rla
    ld hl, sp-$14
    di
    call nz, Call_000_12fb

jr_05a_6db1:
    db $ed
    ld bc, $02fe
    rst $38
    add b
    rst $38
    ret nc

    rst $28
    ldh [$df], a
    add l
    rst $38
    add sp, -$21
    sub b
    rst $38
    adc a
    rst $38
    db $e3
    rra
    rst $00
    ccf
    and a
    ld e, a
    xor $1f
    rst $18
    ld a, $9e
    ld a, a
    rra
    rst $38
    ccf
    rst $18
    ld a, [$7f1d]
    ld hl, sp-$13
    ld [hl], d
    add h
    ei
    ret nz

    rst $38
    add b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    inc h
    rst $38
    sub d
    ld a, l
    ld [$89f7], sp
    ld a, a
    ei
    rrca
    ei
    rrca
    cp l
    ld [hl], e
    ld e, a
    pop hl
    cp l
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld h, e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $d3
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld sp, hl
    rst $38
    rst $20
    rst $38
    rst $00
    rst $08
    rst $08
    sbc a
    sub a
    xor a
    adc a
    rst $38
    cp l
    inc a
    jr c, @+$1e

    jr @+$1d

    jr jr_05a_6e50

    rst $38
    add e
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    rst $08
    ccf
    sbc a
    ld a, a
    rst $18
    ccf
    sbc d
    ld a, a

jr_05a_6e50:
    jp z, $cc3f

    ccf
    add sp, $1f
    ld hl, sp+$1f
    jp nc, $823f

    ld a, l
    cp [hl]
    ld b, c
    db $fd
    inc bc
    pop af
    rra
    db $fc
    inc bc
    ld h, l
    sbc e
    inc bc
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    ld l, $f7
    add e
    ld a, a
    ccf
    rst $38
    rst $10
    rst $28
    xor [hl]
    rst $38
    ld e, h
    rst $38
    ret


    rst $38
    dec c
    rst $38
    cpl
    cp a
    inc bc
    inc bc
    rra
    rlca
    db $e3
    dec e
    ld b, $3c
    inc c
    ldh a, [rNR41]
    ldh [rP1], a
    ldh [rSB], a
    ld hl, sp+$00
    rst $38
    nop
    ldh [rDIV], a
    db $fc
    nop
    rst $38
    rrca
    ldh a, [$3e]
    pop bc
    xor $11
    ldh [$1f], a
    ld a, [$f805]
    rlca
    cp $01
    ei
    inc b
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    rrca
    ldh a, [rHDMA4]
    ei
    add hl, de
    rst $20
    dec de
    rst $20
    adc [hl]
    rst $38
    ld a, $fd
    sbc c
    rst $38
    cp c
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    ld h, c
    sbc a
    ld c, d
    or a
    jp Jump_000_233f


    rst $18
    inc bc
    rst $38
    add a
    ld a, a
    ld e, $ff
    cp [hl]
    pop bc
    ld a, h
    add e
    dec bc
    rst $38
    ld hl, $03df
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, l
    rst $38
    ld d, b
    rst $28
    ld h, h
    ei
    ret nz

    rst $38
    ld e, c
    or $8f
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
    adc a
    rst $38
    adc a
    rst $30
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
    adc a
    rst $30
    adc a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $18
    add a
    rst $18
    add a
    rst $28
    add a
    rst $08
    add a
    rst $28
    add a
    rst $08
    add a
    xor a
    add a
    rst $08
    add a
    rst $18
    add a
    rst $18
    add a
    rst $18
    add a
    rst $28
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    ld a, a
    rlca
    ld a, a
    rst $00
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $08
    ld a, a
    rlca
    ld a, a
    rra
    ccf
    cpl
    ccf
    ld e, a
    ccf
    ld l, a
    ccf
    ccf
    rrca
    add hl, bc
    add hl, sp
    nop
    inc b
    nop
    rst $18
    inc h
    ei
    ld d, [hl]
    jp hl


    ld a, h
    jp $ffc0


    ld a, l
    cp $78
    rst $38
    or [hl]
    ld sp, hl

Jump_05a_6f94:
    dec a
    di
    sbc e
    ld a, a
    rst $18
    ccf
    adc a
    ld a, a
    rst $38
    rst $38
    pop af

Call_05a_6f9f:
    cp $c0
    rst $38
    or e
    rst $08
    ld [bc], a
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld bc, $83ff
    rst $38
    jp $e2ff


    rst $38
    cp $f9
    ldh a, [rIE]
    ret nz

    rst $38
    ldh [$df], a
    ret nz

    rst $38
    ld h, c
    cp $50
    rst $38
    inc h
    db $db
    cp d
    call $ffcc
    ldh [rIE], a
    sbc e
    rst $20
    ld [hl], l
    adc a
    ld h, d
    sbc a
    rst $28
    rla
    rst $20
    rra
    ld [de], a
    rst $38
    inc bc
    rst $38
    rst $08
    ldh a, [$df]
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    rst $18
    ldh [$ef], a
    ldh a, [$7f]
    ld hl, sp+$06
    rst $38
    ld [de], a
    rst $28
    ld sp, $87cf
    rst $38
    adc a
    rst $30
    adc a
    rst $30
    adc a
    rst $38
    adc a
    rst $30
    rst $08
    rst $30
    rst $08
    rst $30
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $30
    rst $08
    rst $38
    rst $08
    rst $30
    rst $08
    rst $30
    rst $08
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
    rst $30
    adc a
    ld sp, hl
    add l
    ld sp, hl
    adc a
    ei
    adc a
    ld sp, hl
    adc a
    rst $30
    adc a
    pop af
    adc a
    pop af
    adc a
    pop af
    adc a
    di
    adc a
    pop af
    adc a
    pop af
    adc a
    pop af
    adc a
    di
    adc a
    pop af
    adc a
    pop af
    rrca
    pop af
    rrca
    pop af
    dec bc

Jump_05a_703d:
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    cpl
    di
    cpl
    di
    rra
    di
    cpl
    pop af
    rrca
    pop af
    rrca
    pop af
    cpl
    di
    rrca
    di
    rrca
    di
    cpl

Call_05a_7057:
    di
    rrca
    push af
    rrca
    di
    rrca
    di
    rra
    di
    rra
    db $e3
    rra
    db $e3
    rra
    db $eb
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $28
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
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc c
    nop
    inc b
    nop
    ld b, $00
    inc bc
    nop
    ld bc, $4f00
    nop
    rlca
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    ld c, $ff
    ld e, a
    rst $38
    rst $38
    rst $38
    sub h
    ei
    ld c, [hl]
    pop af
    rst $38
    ret nz

    rst $18
    ldh [$cd], a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    call c, Call_000_3cff
    rst $38
    ccf
    cp $db
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    db $10
    rst $38
    ld c, b
    cp a
    nop
    rst $38
    ld b, c
    cp a
    ld b, c
    cp a
    dec bc
    rst $38
    inc a
    rst $38
    di
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    ei
    db $fc
    ei
    cp d
    ld a, l
    db $dd
    ld a, $ce
    ccf
    rst $08
    ccf
    adc [hl]
    ld a, a
    adc l
    ld a, [hl]
    rst $08
    inc a
    rst $08

jr_05a_70e3:
    jr c, jr_05a_70e3

    add hl, de
    rra
    ld hl, sp-$29
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
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
    call nz, RST_00
    nop
    rst $38
    ld [hl], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ei
    add hl, bc
    ld a, e
    nop
    ld a, $00
    cp h
    nop
    pop hl
    nop
    jr nc, jr_05a_7130

jr_05a_7130:
    jr nz, @+$01

    ret nz

    rst $38
    call z, Call_05a_67f3
    ld hl, sp+$34
    ei
    ld [bc], a
    rst $38
    rst $38
    cp $86
    ld sp, hl
    ld a, a
    add b
    ld l, [hl]
    sub c
    ld l, b
    sub a
    scf
    ld hl, sp-$71
    ldh a, [$df]
    jr nz, jr_05a_716c

    ldh [$7f], a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    add b
    sbc a
    ldh [$df], a
    ldh [rIE], a
    ldh [$7f], a
    ldh [rOCPD], a
    rst $30
    rst $30
    ld hl, sp-$61
    ldh a, [$c7]
    ld hl, sp+$27
    ld hl, sp+$03
    db $fc

jr_05a_716c:
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld de, $41ef
    cp a
    and [hl]
    ld e, a
    adc d
    ld a, l
    db $10
    rst $38
    ld a, [$f70d]
    rrca
    rst $38
    inc bc
    inc e
    db $e3
    db $ed
    ld [de], a
    db $eb
    inc d
    ld h, $dd
    push af
    ld c, $d7
    inc l
    add a
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld de, $ff00
    rst $38
    rst $38
    cp $ff
    inc b
    db $fd
    inc b
    db $ec
    nop
    adc h
    nop
    call z, $8700
    nop
    rrca
    nop
    inc c
    rst $38
    ld a, $cf
    xor a
    ld e, a
    ret z

    ccf
    dec b
    ld a, [$01fe]
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld [hl], a
    sbc b
    sub c
    ld l, [hl]
    ei
    ld b, $fc
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    db $fd
    ld [bc], a
    db $fc
    inc bc
    push af
    dec bc
    adc l
    ld [hl], d
    sub $29
    pop af
    rrca
    rst $08
    ccf
    ld a, e
    db $fc
    adc a
    ldh a, [$ef]
    db $10
    di
    inc c
    pop af
    ld c, $e1
    ld e, $d9
    ld a, $ff
    ccf
    or l
    ld a, d
    db $dd
    ld h, d
    ld a, a
    add b
    ld a, a
    add b
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

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, $c1
    ld a, $c1
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fc
    db $fd
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fd
    ei
    ei
    ld sp, hl
    ld sp, hl
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, [$faf0]
    ldh a, [$fe]
    nop
    nop
    nop
    ld a, d
    nop
    ld a, [c]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e8], a
    add sp, -$20
    ldh [$e8], a
    add sp, -$18
    add sp, -$08
    ldh a, [$f8]
    ret nc

    ld hl, sp-$30
    add sp, -$38
    ld hl, sp-$40
    ld hl, sp-$20
    ldh a, [$c0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    db $f4
    db $f4
    or $f2
    di
    pop hl
    ldh a, [$e0]
    ldh a, [$e0]
    rst $38
    db $fc
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $20
    ldh [$e7], a
    ld b, d
    rst $28
    db $ec
    rst $38
    ret nz

    rst $38
    add c
    cp $7e
    add c
    rst $38
    nop
    ld a, l
    add e
    sbc a
    ld a, a
    db $fc
    ccf
    or d
    ld a, l
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
    ld a, a
    add b
    cp a
    ret nz

    ld a, a
    ret nz

    rst $18
    ldh [$bf], a
    ret nz

    rst $38
    ret nz

    rst $08
    ldh a, [$9f]
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
    rst $38
    nop
    rst $38
    nop
    sub a
    ld l, b
    ret nz

    rst $38
    add a
    ld a, b
    jp $e13c


    ld e, $e3
    ld e, $f9
    ld b, $fc
    inc bc
    db $fd
    inc bc
    db $f4
    dec bc
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$20df], sp
    ld e, a
    ldh [$7d], a
    add e
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$20
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    ldh a, [$c0]
    ld hl, sp-$40
    ldh [$c0], a
    rst $38
    ret nz

    rst $38
    add b
    ei
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ldh a, [$80]
    db $fc
    nop
    add a
    nop
    inc bc
    ld bc, $0b35
    ld [hl+], a
    rra
    ld a, [hl+]
    rra
    ld h, b
    ld c, $4c
    ld a, [de]
    sub d
    ld c, a
    rrca
    ld d, a
    rla
    ld c, a
    rst $10
    ld c, $33
    rst $08
    ld c, a
    dec de
    ld e, l
    ld b, $67
    sbc [hl]
    sbc [hl]
    ld [hl], l
    cpl
    sbc $4f
    cp a
    ld c, a
    cp l
    xor a
    ld e, a
    cpl
    sbc a
    rst $08
    sub a
    adc a
    ld [hl], e
    dec hl
    push de
    cp $95
    dec de
    ld l, a
    ld e, [hl]
    ccf
    rra
    dec l
    rra
    rlca
    add a
    inc b
    ld b, e
    or d
    rrca
    ld sp, hl
    ld l, a
    sub a
    ld l, l
    dec de
    add a
    dec de
    rlca
    sbc a
    rra
    adc a
    rst $18
    rlca
    rla
    add hl, bc
    and e
    dec e
    add a
    jr jr_05a_7369

    rla
    ld de, $0a0e
    dec h
    nop
    scf
    inc l

jr_05a_7369:
    ld d, e
    ld [hl-], a
    ld c, l
    ld a, l
    ld [bc], a
    ld e, $01
    adc [hl]
    ld [hl], b
    or a
    ld a, b
    rra
    jr c, jr_05a_7382

    inc e
    dec d
    adc [hl]
    ld a, [bc]
    rst $20
    dec b
    di
    ld a, [bc]
    pop af
    dec d
    and b

jr_05a_7382:
    dec d
    ld a, b
    ld [bc], a
    ld a, h
    ld a, [de]
    ld a, l
    ld h, b
    rst $38
    pop bc
    ld a, [$ee00]
    nop
    ld l, l
    sub [hl]
    ld l, c
    xor h
    ld d, e
    jp nz, Jump_05a_703d

    adc a
    dec [hl]
    jp z, $4eb1

    cp l
    ld h, e
    cp a
    ld [hl], e
    rst $38
    ld bc, $01fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    ld e, b
    and a
    ld [hl], b
    adc a
    cp h
    jp $ee51


    or $4f
    ld h, e
    rst $18
    pop hl
    ld a, a
    adc c
    db $76
    ret


    db $76
    rst $38
    ret nz

    cpl
    ret nz

    rst $18
    nop
    ld l, a
    add b
    sbc d
    ld h, h
    add a
    ld a, b
    ld h, c
    rst $38
    and e
    ld b, b
    ld bc, $2fc0
    ld [de], a
    ld [hl-], a
    rrca
    ld a, $03
    ld h, [hl]
    dec e
    ld l, [hl]
    rla
    ld c, $7d
    rlca
    ld c, $c0
    ld a, [bc]
    ld l, h
    ld a, [de]
    dec d
    ld l, [hl]
    sub h
    ld l, e
    and $1d
    adc h
    ld [hl], e
    call z, $0d3b
    cp [hl]
    sbc d
    dec h
    rst $30
    cp b
    ld a, $ef
    ld l, l
    cp e
    add hl, sp
    xor $fa
    ld a, l
    jr c, @-$1f

    sub b
    ld l, a
    ld [$f0d7], sp
    add a
    ld a, [c]
    db $ed
    or $fd
    jp nz, $98ff

    rst $28
    inc e
    rst $38
    ld a, h
    ei
    ld a, h
    rst $38
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $18
    rst $20
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fc
    cp $fd
    db $fd
    cp $ff
    ld hl, sp+$01
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    inc bc
    rrca
    dec bc
    rlca
    rrca
    inc bc
    adc a
    inc b
    jr c, jr_05a_74dd

    inc e
    rst $38
    ld e, [hl]
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    rra
    di
    rst $18
    inc sp
    db $db
    jr nc, jr_05a_7491

    sub l
    ld d, d
    ret nz

    jp nz, $f130

    nop
    and c
    db $10
    pop bc
    nop
    pop bc
    nop
    ld h, l
    nop
    db $e3
    call c, $fd02
    sub d
    ld a, l
    add e
    ld a, l
    inc de
    db $fd
    ld de, $31ff
    rst $38
    ld hl, $22ff

jr_05a_7491:
    rst $38
    ld [hl+], a
    ld a, a
    inc bc
    ld a, [hl]
    ld d, $fe
    rlca
    cp $64
    ld a, [hl]
    ldh [$e6], a
    ldh [$e1], a
    rst $38
    ldh [$ef], a
    ldh a, [$6f]
    ldh a, [$3f]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, b
    sub d
    ld a, a
    ret c

    scf
    sbc a
    ld a, [hl]
    rrca
    cp $b7
    ld e, a
    dec bc
    rst $30
    cp b
    ld h, a
    add hl, bc
    or $df
    ld a, $ff
    inc b
    db $d3
    inc l
    add c
    ld a, [hl]
    db $d3
    ld l, $da
    daa
    ld hl, $03ff
    rst $38
    ld bc, $81ff
    ld a, a
    ld bc, $03ff
    rst $38
    add l
    ld a, a
    ld bc, $d3ff
    rst $28
    rra
    rst $38
    rra

jr_05a_74dd:
    rst $38
    rst $28
    rra
    ld c, $71
    ld [$41f7], sp
    cp [hl]
    sbc $25
    ld c, h
    inc sp
    ld b, $08
    ld a, h
    adc e
    rst $18
    and b
    ld hl, $c15e
    ld a, $fb
    inc b
    db $f4
    ld [$28d6], sp
    db $fc
    nop
    ld c, d
    or b
    add h
    ld a, [$0009]
    ld l, l
    ld a, [de]
    ret nz

    ccf
    ld [c], a
    rra
    rla
    db $eb
    sub [hl]
    ld a, a
    push bc
    ld a, $6c
    rla
    dec d
    ld a, [hl+]
    ld c, h
    inc bc
    db $db
    ld h, b
    sbc h
    ld l, a
    xor a
    ld e, a
    ccf
    rst $08
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld [hl], a
    rra
    rst $28
    sbc a
    ld a, a
    ld e, a
    cp a
    ld h, a
    cp a
    daa
    db $fd
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    db $fd
    cp a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $28
    rst $38
    ld l, a
    ei
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
    ld a, a
    sbc a
    sbc a
    rst $08
    cp a
    adc b
    ld h, h
    jp $d4ec


    push hl
    ret nz

    cp $ce
    ld a, [c]
    add $fa
    add sp, -$0e
    add sp, -$0e
    ld a, h
    ld a, [c]
    ld a, h
    or h
    inc l
    sub h
    inc [hl]
    add h
    ld d, b
    sub h
    add b
    ld e, h
    ld [$0080], sp
    add b
    rst $38
    sbc a
    adc a
    dec sp
    cp a
    add hl, bc
    cp a
    ld a, [hl-]
    ld a, $9d
    ccf
    ld a, $7f
    ccf
    ccf
    ld a, a
    ld a, a
    ld [hl], $5f
    ld l, $6f
    ld a, d
    rst $38
    ld [hl], d
    ld a, a
    ld a, [$fadf]
    rst $38
    call c, $eeff
    rst $08
    scf
    rst $20
    sbc a
    push hl
    sbc [hl]
    ld a, [$bd0f]
    add a
    adc [hl]
    sub e
    add a
    adc a
    adc a
    sbc a
    add a
    or a
    ld c, a
    rst $38
    ld l, a
    rst $28
    dec sp
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc b
    cp $04
    db $fd
    ld b, $01
    inc bc
    nop
    ld bc, $8000
    ret nz

    ret nz

    pop bc
    nop
    di
    ld bc, $0307
    jp $6b95


    dec sp
    push bc
    ret nz

    ccf
    adc b
    ld [hl], a
    ld b, c
    cp [hl]
    ld h, b
    sbc a
    ldh a, [$8f]
    ret nz

    cp a
    sbc $e1
    add sp, -$29
    pop bc
    rst $38
    ret z

    rst $30
    ldh a, [rIE]
    sub d
    rst $38
    ret z

    rst $30
    sbc h
    db $e3
    ld c, l
    cp d
    ccf
    jp $b54b


    ld c, e
    or [hl]
    or c
    ld c, a
    ld d, l
    ld c, $5f
    cp a
    rst $38
    rst $38
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
    cp a
    ld b, l
    rst $18
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $18
    ei
    ld [hl], a
    ld a, a
    xor [hl]
    rst $38
    rst $18
    ccf
    rst $30
    cp a
    ld a, l
    rra
    rst $28
    cp a
    ret


    rst $38
    call nc, $fdfe
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    cp a
    ld a, a
    rst $38
    ccf
    db $fd
    ccf
    rst $28
    ld a, $ff
    ccf
    rst $38
    dec sp
    rst $38
    ld a, $ff
    cpl
    rst $28
    rst $18
    rst $18
    rst $28
    xor a
    rst $38
    rst $18
    ccf
    rst $18
    dec a
    ld e, a
    cp a
    cp a
    ld e, a
    rst $18
    ccf
    ccf
    sbc a
    sbc a
    set 1, e
    push de

jr_05a_7668:
    cp $01
    and c
    or $4f
    or b
    db $10
    ld a, b
    jr nz, jr_05a_7668

    and [hl]
    xor $bf
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rrca
    inc bc
    rlca
    add b
    db $fc
    ret nz

    cp $c4
    cp $66
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ld a, $fe
    ld e, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add hl, de
    rst $38
    ld a, [hl]
    rst $38
    cp $bf
    push af
    rst $38
    rst $28
    cp a
    rst $00
    ccf
    ld bc, $dfdf
    rst $38
    cp a
    rst $20
    cp a
    db $fd
    rst $38
    rst $18
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
    ld [hl], l
    rst $38
    or $ff
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    ld a, a
    adc a
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
    rst $38
    cp a
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
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
    rst $18
    rst $38
    rst $08
    rst $38
    or a
    cp a
    sbc $bf
    ld e, a
    cp a
    ld e, a
    ccf
    rst $08
    ccf
    ld e, a
    rra
    ld a, $1f
    dec l
    cp a
    call c, $fc4f
    or $ed
    rst $38
    or $fb
    push de
    ld h, d
    ld sp, hl
    ld [hl], c
    jp c, $e916

    ld a, [de]
    or l
    ld bc, $007e
    rra
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld de, $94ff
    rst $38
    call nz, $e4ff
    rst $38
    call z, $bfff
    rst $38
    cp $7f
    ld a, l
    rst $38
    db $fd
    ld [hl], a
    db $fc
    cp e
    db $fc
    rst $28
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
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    ld a, a
    rst $18
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
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $30
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
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    ld e, a
    ld c, a
    inc sp
    inc sp
    sbc e
    ld de, $84d4
    adc a
    ld b, $65
    rlca
    sub a
    rst $38
    rla
    rst $28
    rst $18
    cpl
    cp a
    ld c, a

Jump_05a_77e8:
    rst $38
    rlca
    rrca
    ld e, a
    cpl
    dec l
    inc bc
    rla
    rlca
    ld e, c
    dec b
    ld a, e
    nop
    ld d, a
    ld [bc], a
    ld a, a
    ld [bc], a
    rla
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    ld b, $10
    ld de, $0612
    inc de
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec d
    ld d, $17
    jr jr_05a_7831

    ld b, $19
    ld a, [de]
    dec de
    ld b, $1c

jr_05a_7831:
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
    ld a, [bc]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05a_7878

    ld b, $06
    ld [hl-], a
    ld b, $33
    inc [hl]
    dec [hl]
    ld [hl], $06
    scf
    jr c, jr_05a_788c

    ld a, [hl-]
    dec sp
    inc a
    ld b, $06
    ld b, $06
    ld b, $3d
    ld a, $3f
    ld b, b
    ld b, $41
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, $06
    ld b, $06
    ld b, $47
    ld c, b
    ld b, $49
    ld b, $4a
    ld c, e
    ld c, h
    ld b, $4d
    ld c, [hl]
    ld c, a
    ld d, b

jr_05a_7878:
    ld d, c
    ld [bc], a
    ld [bc], a
    ld d, d
    ld d, e
    ld b, $06
    ld b, $54
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

jr_05a_788c:
    ld h, b
    ld b, $06
    ld b, $61
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
    ld b, $06
    ld l, a
    ld [hl], b
    ld [bc], a
    ld [bc], a
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
    ld b, $06
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
    ld b, $06
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
    ld b, $06
    sub a
    sbc b
    sbc c
    sbc d
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
    ld b, $06
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    ld b, $06
    xor l
    ld b, $ae
    ld b, $06
    xor a
    or b
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    or d
    or e
    or h
    or l
    ld b, $b6
    or a
    cp b
    cp c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld b, $ba
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3c3

    jp Jump_000_02c3


    call nz, $c506
    ld b, $c6
    rst $00
    ret z

    ret


    ld [bc], a
    ld [bc], a
    sbc b
    jp z, Jump_000_06cb

    ld b, $cc
    call $ce06
    ld b, $cf
    ret nc

    pop de
    jp nc, $0202

    ld [bc], a
    ld [bc], a
    sbc c
    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc bc
    inc bc
    inc hl
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    dec b
    ld bc, $0707
    ld bc, $0102
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    ld bc, $0701
    rlca
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    ld bc, $0701
    rlca
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    nop
    nop
    dec b
    ld bc, $0101
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    dec b
    ld b, $01
    ld bc, $0100
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
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
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    nop
    ccf
    jr nc, @-$77

    ld b, $71
    or b
    rra
    xor $8d
    or $e1
    cp $f9
    xor $39
    ld a, $f7
    rrca
    ld sp, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    or e
    ld c, h
    ei
    inc b
    db $fc
    inc bc
    push bc
    ld a, [hl-]
    ret nz

    ccf
    ldh [$1f], a
    ld b, b
    cp a
    adc b
    ld [hl], a
    ret


    ld [hl], $10
    rst $28
    ld b, c
    cp [hl]
    ld [hl+], a
    db $dd
    add d
    ld a, l
    ld b, h
    cp e
    nop
    rst $38
    inc b
    ei
    ld [$00f7], sp
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
    inc bc
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
    cp $00
    add b
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    or a
    rrca
    ld e, a
    ld bc, $0c03
    db $10
    rrca
    db $10
    rrca
    jr jr_05a_7b53

    ld de, $0e0f
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_05a_7b4f:
    nop
    ld a, e
    add h
    ld a, l

jr_05a_7b53:
    add d
    ld d, [hl]
    xor c
    ld h, h
    sbc e
    sub h
    ld l, e
    ld l, c
    sub [hl]
    ld d, a
    xor b
    ret nz

    ccf
    dec h
    jp c, $fd02

    add hl, hl
    sub $00
    rst $38
    ld d, b
    xor a
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_05a_7b4f

    db $10
    rst $28
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
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, a
    ld a, a
    ld sp, hl
    rst $20
    ld a, [hl-]
    ldh a, [$cf]
    ld [hl], b
    ld a, a
    adc h
    adc e
    sbc h
    db $e3
    add a
    db $fc
    nop
    rst $38
    nop

jr_05a_7bc7:
    rst $38
    jr nc, @+$01

    jr nz, jr_05a_7beb

    ld c, $03
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
    push af
    ld a, [bc]
    ei
    inc b
    rst $30
    ld [$0af5], sp
    ld a, [c]

jr_05a_7be5:
    dec c
    db $fc
    inc bc
    db $ed
    ld [de], a
    ld a, [c]

jr_05a_7beb:
    dec c
    ld sp, hl
    ld b, $b6
    ld c, c
    xor c
    ld d, [hl]
    ld b, h
    cp e
    xor d
    ld d, l
    add h
    ld a, e
    ld d, d
    xor l
    dec b
    ld a, [$b946]
    jr c, jr_05a_7bc7

    ld e, c
    and [hl]
    sub h
    ld l, e
    add b
    ld a, a
    ld [$04f7], sp
    ei
    db $10
    rst $28
    jr z, jr_05a_7be5

    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld a, b
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
    ccf
    rst $38
    ld hl, sp-$04
    rst $38
    ld hl, sp-$01
    ld hl, sp-$49
    ldh [$7f], a
    ldh a, [rIF]
    cp l
    ld b, e
    cpl
    ret nc

    inc hl
    call c, $bd63
    push af
    ld [$1718], a
    ld h, [hl]
    and c
    ld [$83f0], sp
    ld a, h
    nop
    rst $38
    ret nz

    rst $38
    db $10
    rra
    inc b
    inc bc
    rlca
    ld [$0f0b], sp
    inc c
    rrca
    ld [de], a
    ld bc, $0010
    stop
    rst $28
    db $10
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
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc

Call_05a_7c97:
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    push hl
    ld a, [de]
    xor $11
    db $e4
    dec de
    call nz, $c43b
    dec sp
    and h
    ld e, e
    and h
    ld e, e
    jp z, Jump_05a_6435

    sbc e
    ld b, b
    cp a
    add h
    ld a, e
    ld c, b
    or a
    nop
    rst $38
    add b
    ld a, a
    ld [$80f7], sp
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$00f7], sp
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
    nop
    rra
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
    nop
    ld bc, $fffe

jr_05a_7d13:
    nop
    rst $38
    nop
    rst $38
    inc b
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
    ld bc, $03ff
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    ld e, $60
    cp a
    jr nz, jr_05a_7d13

    ld b, b
    cp a
    ld b, c
    cp $c2
    ld a, l
    jp nz, $c77d

    ld a, e
    rst $20
    ld e, a
    cp $07
    db $fc
    db $e3
    rst $38
    ld [hl], b
    ld hl, sp+$7f
    ld hl, sp-$09
    jr nc, jr_05a_7d8b

    ld b, h
    add e
    add hl, sp
    ldh a, [$3b]
    db $f4
    db $fc
    xor e
    ld c, h
    ld a, a

jr_05a_7d56:
    inc c
    rrca
    ld h, c
    add c
    call z, Call_000_3b3c
    inc d
    rlca
    ld bc, $03fc
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
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_05a_7d56

    jr nz, @+$01

    nop
    ei

jr_05a_7d7b:
    inc b
    db $fc
    inc bc
    ld a, l
    add d
    ld a, l
    add d
    ld a, [$7105]
    adc [hl]
    or l
    ld c, d
    add hl, hl
    sub $a5

jr_05a_7d8b:
    ld e, d
    ret nc

    cpl
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    ld [$80f7], sp
    ld a, a
    nop
    rst $38
    jr nz, jr_05a_7d7b

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
    nop
    rst $38
    nop
    rst $38
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
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff

jr_05a_7ded:
    ldh a, [rIE]
    nop
    cp a
    rst $18
    xor a
    rst $18
    cp a
    rst $18
    rrca
    push af
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
    ld b, b
    cp a
    add b
    ld a, a
    ld h, b
    sbc a
    add hl, sp
    add $00
    rst $38
    jr nz, jr_05a_7ded

    nop
    rst $38
    ld h, b
    rra
    ld a, b
    add a
    ld c, $f1
    dec bc
    db $f4
    ret z

    rst $30
    jr nc, @+$41

    adc h
    dec bc
    ld [hl-], a
    pop hl
    db $fc
    rst $38
    ld a, e
    rra
    adc a
    inc bc
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    dec d
    nop
    ld a, [bc]
    nop
    adc d
    ld [hl], l
    ld [c], a
    dec e
    ld e, b
    and a
    ld a, [c]
    dec c
    add sp, $17
    ld b, h
    cp e
    add sp, $17
    nop

Jump_05a_7e3f:
    rst $38
    ld b, b
    cp a
    sub h
    ld l, e
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
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
    rrca
    rst $38
    rst $38
    rst $38
    cp $ff
    ld b, $ff
    db $10
    rst $28
    jp $d8fc


    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
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

jr_05a_7e83:
    nop
    rst $38

jr_05a_7e85:
    rst $30
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    sbc a
    ld a, a
    cp a
    ld e, a
    ccf
    rst $38
    ccf
    rst $18
    rra
    rst $20
    rrca
    rst $38
    rra
    xor $3f
    db $dd
    ccf
    rst $18
    ld a, a
    sbc e
    ld a, a
    sub a
    ld a, e
    xor a
    ld sp, hl
    scf
    rst $30
    rrca
    cp a
    ld b, a
    inc sp
    rst $08
    jr nc, jr_05a_7e83

    jr nc, jr_05a_7e85

    cp l
    ld c, e
    ld a, a
    add a
    cp a
    ld b, e
    ld a, [hl]
    adc l
    ld a, a
    adc [hl]
    ld c, $ff
    ld c, $ff
    ld [bc], a
    rst $38
    adc h
    ld a, a
    or $1f
    cp $03
    ld a, a
    nop
    rst $38
    nop
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
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    dec e
    cp $7d
    cp $f9
    rlca
    rra
    ldh [$87], a
    ld hl, sp+$01
    cp $00
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
    nop
    cp $fd
    cp $fd
    rst $38
    rst $38
    rst $38
    cp a
    cp [hl]
    db $fd
    cp a
    db $eb
    cp a
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    ccf
    rst $18
    rst $00
    cp a
    pop af
    cp $f8
    ld hl, sp-$20
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
    ld bc, $7e00
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
    cp $00
    ld a, [$fc00]
    nop
    rst $38
    nop
    ldh a, [rP1]
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    ei
    nop
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
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
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld bc, $81ff
    ld a, [hl]
    jp nz, $c33d

    inc a
    jp $833c


    db $fc
    sbc l
    ld a, [hl]
    db $fc
    inc bc
    rst $30
    nop
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop

Jump_05a_7fbf:
    rst $38
    rrca
    cp $1e
    rst $38
    add hl, de
    xor $3e
    rst $10
    ld a, [hl]
    sbc a
    ld a, [hl]
    cp c
    cp c
    rst $38
    rst $38
    rst $08
    rst $18
    rst $38
    db $eb
    push de
    or $ff
    rst $30
    rst $08
    rst $28
    di
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    xor a
    adc a
    rst $38
    sbc h
    db $fc
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$0e], a
    ldh a, [$0e]
    ldh a, [rTMA]
    db $f8
