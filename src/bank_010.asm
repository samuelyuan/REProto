SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $03
    rrca
    db $10
    inc bc
    ld de, $1312
    inc d
    dec d
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, $03
    rla
    jr jr_010_4040

    inc bc
    ld a, [de]
    dec de
    inc e
    dec e
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc bc
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec bc
    inc c
    ld h, $27

jr_010_4040:
    inc c
    inc c
    inc c
    inc bc
    inc bc
    jr z, jr_010_4070

    ld hl, $2b2a
    inc l
    dec l
    dec bc
    inc c
    ld l, $2f
    inc c
    inc c
    inc c
    inc bc
    jr nc, jr_010_4087

    ld [hl-], a
    ld hl, $3433
    dec [hl]
    ld [hl], $0b
    inc c
    scf
    jr c, jr_010_406d

    add hl, sp
    ld a, [hl-]
    inc bc
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    dec bc

jr_010_406d:
    inc c
    inc c
    ld b, e

jr_010_4070:
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
    dec bc
    inc c
    inc c
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_010_4087:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    dec bc
    inc c
    ld e, h
    ld e, l
    inc bc
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
    dec bc
    inc c
    ld l, c
    ld l, d
    inc bc
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld l, e
    ld l, h
    ld l, l
    ld l, b
    dec bc
    inc c
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [hl], c
    ld [hl], d
    ld e, e
    dec bc
    inc c
    ld [hl], e
    ld [hl], h
    ld [hl], l
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
    dec bc
    inc c
    inc c
    inc c
    inc c
    db $76
    ld [hl], a
    inc bc
    dec sp
    ld a, b
    ld a, c
    ld a, d
    ccf
    ld b, b
    ld b, c
    ld b, d
    dec bc
    inc c
    inc c
    ld b, e
    inc c
    inc c
    inc c
    inc bc
    inc bc
    ld a, e
    ld a, h
    ld hl, $3433
    dec [hl]
    ld [hl], $0b
    inc c
    scf
    jr c, jr_010_40fd

    inc c
    inc c
    inc bc
    inc bc
    ld a, l
    ld a, [hl]
    ld hl, $2b2a
    inc l
    dec l
    dec bc

jr_010_40fd:
    inc c
    ld l, $2f
    inc c
    inc c
    inc c
    inc bc
    inc bc
    ld a, a
    add b
    ld hl, $2322
    inc h
    dec h
    dec bc
    inc c
    ld h, $27
    inc c
    inc c
    ld d, $03
    inc bc
    add c
    add d
    add e
    add h
    add l
    inc e
    dec e
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $03
    rrca
    db $10
    inc bc
    add [hl]
    add a
    adc b
    inc d
    dec d
    dec bc
    inc c
    inc c
    inc c
    nop
    ld bc, $0302
    inc bc
    adc c
    adc d
    adc e
    rlca
    adc h
    adc l
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $01
    ld b, $02
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    dec b
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
    ld b, $06
    ld [bc], a
    ld [bc], a
    dec b
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
    ld bc, $0206
    ld [bc], a
    dec b
    ld [bc], a
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
    ld bc, $0206
    ld [bc], a
    dec b
    ld [bc], a
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
    ld bc, $0206
    ld [bc], a
    dec b
    ld [bc], a
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
    ld b, $06
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    dec b
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
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
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
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    nop
    jr nz, jr_010_4203

    jr nz, jr_010_4205

    jr nz, jr_010_4207

    jr nz, jr_010_41ee

    dec b
    dec b
    ld [hl+], a
    dec b
    ld [bc], a

jr_010_41ee:
    dec b
    dec b
    nop
    jr nz, jr_010_4213

    jr nz, jr_010_41f5

jr_010_41f5:
    jr nz, jr_010_4217

    jr nz, jr_010_421e

    dec b
    dec b
    ld [hl+], a
    dec b
    ld [bc], a
    dec b
    dec b
    nop
    jr nz, jr_010_4223

jr_010_4203:
    jr nz, jr_010_4225

jr_010_4205:
    jr nz, jr_010_4227

jr_010_4207:
    jr nz, jr_010_422f

    ld h, $22
    ld [hl+], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop

jr_010_4213:
    nop
    jr nz, jr_010_4216

jr_010_4216:
    nop

jr_010_4217:
    nop
    ld h, $26
    ld [hl+], a
    ld [hl+], a
    dec b
    ld [bc], a

jr_010_421e:
    ld [bc], a
    dec h
    nop
    nop
    nop

jr_010_4223:
    nop
    nop

jr_010_4225:
    nop
    nop

jr_010_4227:
    nop
    ld hl, $2226
    ld [hl+], a
    dec b
    ld [bc], a
    dec h

jr_010_422f:
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2226
    ld [hl+], a
    dec b
    ld [bc], a
    dec h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2226
    ld [hl+], a
    dec b
    ld [bc], a
    dec h
    dec h
    nop
    nop
    jr nz, jr_010_4254

jr_010_4254:
    nop
    nop
    nop
    nop
    ld bc, $2206
    ld [hl+], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    jr nz, jr_010_4283

    nop
    ld h, $26
    nop
    ld bc, $0606
    ld [hl+], a
    ld [hl+], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$22

    jr nz, jr_010_4274

jr_010_4274:
    nop
    ld bc, $0601
    ld [hl+], a
    ld b, $02
    ld [hl+], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    add b
    nop

jr_010_4283:
    ret nz

    nop
    add b
    nop
    ret nc

    nop
    and b
    nop
    call nc, $a800
    nop
    ret nc

    nop
    add sp, $00
    call nc, $e800
    nop
    push af
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
    ld a, [$ff00]
    nop
    cp $00
    rst $38

jr_010_42ac:
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$f3]
    pop hl
    db $e3
    pop hl
    db $e3
    pop hl
    db $e3
    add c
    add e
    add hl, bc
    inc bc
    jr @+$05

    jr c, @+$03

    ld hl, sp+$01
    ld hl, sp+$01
    db $fc
    ld bc, $01fc
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, h
    add b
    jr c, jr_010_42ac

    adc h
    ldh a, [$ef]
    ldh a, [$fd]
    ld a, [c]
    ld sp, hl
    cp $fd
    cp $fc
    rst $38
    cp $ff
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
    cp $fd
    rst $38
    ld hl, sp-$01
    ldh a, [$f7]
    ldh a, [$e0]
    ldh [$c0], a
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    and b
    nop
    ld b, h
    nop
    xor b
    nop
    ld d, c
    nop
    xor d
    nop
    ld [hl], l
    nop
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    ei
    db $e3
    ei
    jp $c3f3


    di
    add e
    db $e3
    inc bc
    db $e3
    ld bc, $21e1
    ld sp, hl
    ld h, b
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
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    sbc a
    ld e, a
    rst $18

jr_010_43a1:
    rra
    rst $18
    rra
    rst $08
    rrca
    rst $28
    rrca
    ld h, l
    add a
    ld [hl], d
    add a
    ld a, l
    add e
    ccf
    ret nz

    ld e, $e0
    ld e, $e0
    db $10
    ldh [rNR32], a
    ldh [$0e], a
    ldh a, [$c7]
    jr c, jr_010_43a1

    rra
    db $fd
    ld [$ff08], sp
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    add [hl]
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
    ld b, b
    nop
    and b
    nop
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
    db $fc
    rst $38
    ldh [$f8], a
    ret nz

    db $fc
    ret nz

    ld hl, sp-$40
    push af
    ret nz

    ld a, [$fde0]
    ldh [$fe], a
    ldh a, [rIE]
    ldh a, [$fe]
    ld hl, sp-$01
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
    ei
    rst $38
    db $fd
    rst $38
    ld c, d
    rst $38
    or l
    rst $38
    ld c, d
    rst $38
    ld d, b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $03fe
    db $fc
    or a
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
    nop
    nop
    nop
    ld de, $ff11
    rst $38
    rst $38
    rst $38
    ld [hl], c
    rst $38
    ld sp, $30ff
    rst $38
    jr @+$01

    rst $38
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
    rra
    rra
    inc bc
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
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ret nc

    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $dd
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
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
    rst $38
    nop
    rst $30
    nop
    and d
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
    nop
    nop
    nop
    ld c, e
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc $ff
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR33]
    ld [c], a
    ld a, [hl-]
    push bc
    ld [hl], l
    adc d
    ld a, d
    add l
    push af
    ld a, [bc]
    ld [$f415], a
    dec bc
    ld [$f515], a
    ld a, [bc]
    ld a, d
    add l
    db $fc
    cp $78
    ld hl, sp+$30
    jr nc, jr_010_4517

    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    inc b
    inc c
    inc b
    inc c
    add h

jr_010_4517:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ld d, l
    rst $38
    xor d
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
    nop
    rst $38
    ld bc, $87fe
    ld a, b
    cp $01
    rst $38
    nop
    db $f4
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
    nop
    nop
    nop
    call c, $ffdc
    rst $38
    rst $38
    rst $38
    jp $61ff


    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
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
    add b
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
    add c
    add e
    nop
    nop
    nop
    nop
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
    dec b
    nop
    ld [bc], a
    nop
    rlca
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$50ff], a
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
    cpl
    ret nc

    ld l, a
    sub b
    ld bc, $6ffe
    sub b
    db $fd
    nop
    cp $01
    adc c
    inc b
    nop
    nop
    add d
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
    nop
    nop
    nop
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    jr @+$01

    ld [$8cff], sp
    rst $38
    adc h
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld e, h
    and e
    xor [hl]
    ld d, c
    ld d, a
    xor b
    cpl
    ret nc

    ld d, a
    xor b
    dec hl
    call nc, $e817
    dec hl
    call nc, $a857
    xor a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
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
    rst $38
    rst $38
    db $fc
    ld a, [hl]
    db $fc
    ld e, $3c
    ld c, $5c
    rrca
    xor a
    rlca
    ld e, [hl]
    rlca
    cp [hl]
    rlca
    ld e, [hl]
    rlca
    cp [hl]
    rlca
    ld a, a
    rlca
    cp $07
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
    rlca
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    sub d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$0f
    ldh a, [rSC]
    db $fc
    ld a, [hl]
    add b
    db $fc
    nop
    ld b, h
    cp e
    db $fd
    nop
    ld [$8000], sp
    nop
    ld [$20c0], sp
    nop
    nop
    nop
    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    sbc l
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    nop
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
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
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
    cp $fe
    db $fd
    db $fc
    cp $fe
    rst $38
    rst $38
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$17
    add sp, -$12
    xor $d2
    jp nz, $c3e3

    rst $18
    rst $18

jr_010_46f6:
    ldh [$e0], a

jr_010_46f8:
    and $e0
    or [hl]
    or b
    sbc b
    sbc b
    rst $38
    rst $38

Jump_010_4700:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    rst $30
    ld h, e
    rst $30
    ld h, e
    rst $30
    ld h, e
    rst $38
    rst $38
    rst $38
    ld sp, $317b
    ld a, e
    ld sp, $317b
    rst $38
    rst $38
    rst $38
    ld hl, $317b
    ld a, e
    ld sp, $117b
    rst $38
    rst $38
    rst $38
    jr @-$41

    jr @-$41

    jr @-$41

    jr @+$01

    rst $38
    cp l
    jr jr_010_46f6

    jr jr_010_46f8

    inc c
    rst $38
    rst $38
    nop
    rst $38
    cp a
    rst $38
    rla
    db $eb
    ld d, $e9
    dec a

jr_010_4747:
    jp Jump_000_01fe


    or $01
    rst $38
    ld bc, $01fc
    sub d
    ld bc, $b14c
    jr nc, jr_010_4757

    and b

jr_010_4757:
    ld bc, $0180
    jr nz, jr_010_475d

    nop

jr_010_475d:
    ld bc, $0100
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    nop
    ld a, $3e
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    ld hl, sp-$68
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
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
    db $fd
    db $fc
    ld a, [c]
    ldh a, [$fc]
    db $fc
    and $e6
    ld b, e
    ld b, e
    call z, Call_010_6c40
    ld h, b
    ld h, c
    ld h, b
    rst $30
    ldh a, [$3b]
    jr c, jr_010_4747

    inc e
    and [hl]
    ld b, $33
    inc bc
    ld a, c
    ld bc, $8086
    pop af
    ldh a, [$3c]
    inc a
    rst $08
    rrca
    di
    inc bc
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
    nop
    add c
    nop
    cp l
    nop
    ret nz

    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    or b
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18

jr_010_47f1:
    rst $38
    rst $18

jr_010_47f3:
    rst $38
    rst $18

jr_010_47f5:
    rst $38
    rst $18

jr_010_47f7:
    rst $38
    ret nc

jr_010_47f9:
    rst $38
    rst $18

jr_010_47fb:
    rst $38
    add b

jr_010_47fd:
    rst $38
    ld a, a

jr_010_47ff:
    rst $38
    ret z

jr_010_4801:
    rst $30
    ret z

jr_010_4803:
    rst $30
    sub b

jr_010_4805:
    rst $28
    sub b

jr_010_4807:
    rst $28
    sub b

jr_010_4809:
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    jr nz, jr_010_47f1

    jr nz, jr_010_47f3

    jr nz, jr_010_47f5

    jr nz, jr_010_47f7

    jr nz, jr_010_47f9

    jr nz, jr_010_47fb

    jr nz, jr_010_47fd

    jr nz, jr_010_47ff

    jr nz, jr_010_4801

    jr nz, jr_010_4803

    jr nz, jr_010_4805

    jr nz, jr_010_4807

    jr nz, jr_010_4809

    nop
    rst $38
    nop
    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $c6
    add $c6
    add $c6
    add $c6
    rst $38
    rst $38
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$0e]
    pop af
    rrca
    ldh a, [$0e]
    pop af
    rrca
    ldh a, [rTAC]
    ld hl, sp-$01
    rst $38
    ld hl, sp-$08
    ld a, l
    ld a, h
    ld h, h
    ld h, h
    jp nz, $dbc2

    jp $c1d9


    pop bc
    pop bc
    push de
    pop bc
    ld c, l
    ld b, c
    ld l, l
    ld h, c
    dec h
    ld hl, $31b5
    sub l
    ld de, $1959
    add hl, hl
    add hl, bc
    adc l
    adc l
    push bc
    push bc
    ld h, a
    ld h, a
    jr c, jr_010_48c0

    db $10
    db $10
    db $e3
    db $e3
    daa
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    ldh [$c0], a
    rst $28
    ld b, b
    ldh a, [rLCDC]
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    ld bc, $fdff
    rst $38
    push af
    rst $38

jr_010_48c0:
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd

jr_010_48c7:
    rst $38
    ld bc, $fdff

jr_010_48cb:
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
    rlca
    ld hl, sp+$0d
    ld a, [c]
    jr jr_010_48c7

    db $10
    rst $28
    jr jr_010_48cb

    dec c
    ld a, [c]
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
    rlca
    ld hl, sp+$08
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $3131
    ld sp, $3131
    ld sp, $ff31
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    ld a, [$d505]
    ld a, [hl+]
    xor d
    ld d, l
    ld d, h
    xor e
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld d, b
    xor a
    ld [$18f7], sp
    rst $20
    ld [$50f7], sp
    xor a
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
    ldh [$1f], a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    xor a
    ld d, b
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$fd02], a
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f50a]
    add b
    add b
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $30
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
    nop
    rst $38
    nop
    rst $38
    ld a, c
    rst $38
    nop
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
    ld [hl], b
    adc a
    ldh a, [rIF]
    ld a, b
    add a
    cp b
    ld b, a
    ld a, b
    add a
    cp b
    ld b, a
    ld a, b
    add a
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, a
    ccf
    ld a, [hl]
    ccf
    ld a, b
    inc a
    ldh a, [$fa]
    ldh a, [$75]
    ldh [$7a], a
    ldh [$7d], a
    ldh [$7a], a
    ldh [$fd], a
    ldh [$7e], a
    ldh [$7f], a
    ldh [$7f], a
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
    ret nz

    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    add c
    pop bc
    nop
    nop
    nop
    nop
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
    and b
    nop
    ld b, b
    nop
    ldh [$80], a
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
    ld a, a
    ld e, $1f
    inc c
    inc c
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    db $10
    db $10
    db $10
    jr nz, jr_010_4a96

    jr nz, jr_010_4a98

    ld hl, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    ldh [rP1], a
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
    ld bc, $0200
    nop
    dec b
    nop
    dec bc
    nop
    ld a, a
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
    rlca
    rra
    inc bc
    ccf

jr_010_4a96:
    inc bc
    rra

jr_010_4a98:
    inc bc
    xor a
    inc bc
    ld e, a
    rlca
    cp a
    rlca
    ld a, a
    rrca
    rst $38
    rrca
    ld a, a
    rra
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
    rst $18
    rst $38
    cp a
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    dec bc
    cp $03
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $80
    ld a, a
    ret nz

    ccf
    db $ed
    nop
    rst $38
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
    db $fd
    cp $fd
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$5e]
    ldh [$be], a
    ldh [$7c], a
    pop bc
    ld hl, sp+$03
    or b
    rlca
    sub b
    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rrca
    add b
    rra
    daa
    ld hl, sp-$61
    jr nc, @+$01

jr_010_4b11:
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
    rrca
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add c
    rst $38
    sub b
    rst $28
    jr jr_010_4b11

    inc e
    db $e3
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    ld a, $c0
    inc e
    ldh [$31], a
    pop bc
    rst $30
    rlca
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    sbc a
    rst $38
    rrca
    rst $28
    rrca
    add a
    rlca
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rra
    ld a, a
    ld a, a
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
    jr jr_010_4b93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_010_4ba3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_4bb3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_010_4bc3

    ld [hl-], a

jr_010_4b93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $15
    scf
    jr c, jr_010_4bd4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_010_4ba3:
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

jr_010_4bb3:
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

jr_010_4bc3:
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

jr_010_4bd4:
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
    add c
    add c
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    add c
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    add c
    add c
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
    add c
    add c
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
    add c
    add c
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
    add $81
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    add c
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    add c
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    add c
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
    dec d
    dec d
    dec d
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $f8
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    dec d
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec d
    ld de, $1312
    inc d
    dec d
    inc b
    dec d
    ld d, $81
    rla
    jr jr_010_4caa

    ld a, [de]
    dec de
    inc e
    dec d
    dec e
    ld e, $1f
    dec d
    dec d
    dec d
    dec d
    jr nz, jr_010_4cbf

    ld [hl+], a
    inc hl
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc

jr_010_4caa:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_010_4cbf:
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
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
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    ld [bc], a
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0706
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld b, $07
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld b, $07
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0606
    rlca
    dec b
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    ld bc, $0101
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, $01
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0005
    inc b
    inc b
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0005
    inc b
    inc b
    ld [bc], a
    nop
    nop
    ld bc, $0106
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0005
    nop
    inc b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, $01
    ld bc, $0507
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0701
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    ld [$0a0d], sp
    ld [$0909], sp
    nop
    add hl, bc
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0900], sp
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0900], sp
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    di
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$11
    rst $38
    rst $28
    rst $38
    rst $28
    rst $30
    rst $28
    or $ef
    or $ef
    or $ef
    or $ef
    or $ef
    cp $03
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ldh a, [rIF]
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
    rrca
    rrca
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld d, e
    ld d, e
    cp $fe
    ret nz

    ret nz

    rst $00
    rst $00
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    ld c, a
    ld l, a
    ld l, a
    ld a, a
    ld a, a
    ld [$62ea], a
    ld h, d
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld [c], a
    cp $3f
    inc sp
    rst $08
    rrca
    ld hl, sp-$40
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
    rrca
    rrca
    ld bc, $0301
    inc bc
    add a
    rlca
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_010_4eae:
    ei
    inc b
    db $fc
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    ldh [$1f], a
    ld b, $f9
    rlca
    ld hl, sp+$72
    adc l
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ld a, [c]
    dec c
    ei
    inc b
    rst $08
    jr nc, jr_010_4eae

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    ld [$41f7], sp
    cp [hl]
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
    add b
    add b
    rst $38
    ldh a, [rIE]
    cp $bf
    rst $38
    cp a
    rst $00
    cp [hl]
    jp $c3be


    cp [hl]
    jp $c3be


    cp [hl]
    jp $c3be


    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $18
    cp [hl]
    db $db
    cp [hl]
    db $db
    cp [hl]
    db $db
    cp [hl]
    db $db
    cp [hl]
    db $db
    cp [hl]
    ei
    ld c, $ff
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    di
    di
    jp $ffc3


    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rrca
    rrca
    dec sp
    dec sp
    add e
    add e
    inc bc
    inc bc
    ld e, $1e
    ldh [$e0], a
    nop
    nop
    add a
    add a
    db $fc
    db $fc
    ldh a, [$f0]
    di
    di
    ld a, a
    ld a, a
    rst $38
    rst $38
    xor a
    rst $38
    rst $20
    ld a, a
    rst $38
    ccf
    di
    rra
    ld sp, hl
    rst $38
    rra
    rra
    rst $20
    rst $20
    rra
    rra
    rst $38
    ld a, a
    jp $3fc2


    nop
    rst $38
    rlca
    rst $38
    ccf
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
    cp a
    rst $38
    ccf
    rst $38
    rra
    ei
    and e
    cp $38
    rst $38
    db $fc
    rst $18

jr_010_4fa1:
    rst $18
    rst $38
    add b
    ld hl, sp-$79
    ld hl, sp-$79
    db $fc
    inc bc
    db $fc
    inc bc
    rst $00
    jr c, jr_010_4faf

jr_010_4faf:
    rst $38
    ld a, [$0305]
    db $fc
    nop
    rst $38
    ld a, [de]
    push hl
    jr jr_010_4fa1

    inc sp
    call z, $9f60
    add e
    ld a, h
    inc c
    di
    rst $38
    nop
    db $fc
    inc bc
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    cp $01
    db $fc
    inc bc
    cp $01
    db $e3
    inc e
    add b
    ld a, a
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7c], a
    add e
    ld a, b
    add a
    ldh a, [$7f]
    db $fc
    rrca
    ld e, a
    inc bc
    ccf
    nop
    rla
    nop
    rrca
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08

jr_010_4ff8:
    ld a, a
    ld a, a

jr_010_4ffa:
    ccf
    ccf

jr_010_4ffc:
    inc de
    dec de

jr_010_4ffe:
    db $10
    jr jr_010_4ff8

    jr jr_010_4ffa

    jr jr_010_4ffc

    jr jr_010_4ffe

    ld hl, sp-$09
    ld hl, sp-$09
    ld a, a
    rst $30
    ld e, a
    rst $30
    ld e, d
    rst $30
    ld e, d
    rst $30
    ld e, d
    rst $30
    ld e, d
    rst $30
    ld a, [$ff37]
    ret


    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    cp $fe
    db $fc
    db $fc
    ei
    ei
    ldh [$e0], a
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    adc a
    adc a
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $20
    rst $38
    push hl
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    ccf
    ccf
    rst $08
    rst $08
    rrca
    rrca
    rlca
    rlca
    rst $38
    rst $38
    add a
    add a
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_010_5077:
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    cp a
    rra
    rra
    cp a
    cp a
    rst $38
    ccf
    rst $38

jr_010_5085:
    rst $38
    adc a
    adc a
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
    ccf
    ccf
    nop
    nop
    nop
    nop
    ret nz

jr_010_50a3:
    nop
    cp [hl]
    ld b, b
    ld bc, $20fe
    rst $18
    nop
    rst $38
    add b
    ld a, a
    jr c, jr_010_5077

    inc bc
    db $fc
    nop
    rst $38
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld b, b
    cp a
    jr jr_010_50a3

    jr c, jr_010_5085

    add b
    ld a, a
    ld l, [hl]
    sub c
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    ld b, $f9
    inc e
    db $e3
    ldh a, [rIF]
    ld hl, sp+$07
    adc a
    ld [hl], b
    ld bc, $01fe
    cp $07
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    cp $0f
    rst $38
    ld bc, $03bf
    ld e, a
    rlca
    cp a
    rlca
    ld e, a
    rlca
    xor a
    rlca
    ld d, a
    rlca
    rst $28
    rst $20
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $38
    rst $18
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    ld e, $1f
    ld a, $3f
    ld hl, sp-$01
    ldh a, [rIE]
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
    rlca
    ld hl, sp+$1f
    cp $bf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    cp a
    cp a
    rst $38
    rst $38
    pop hl
    pop hl
    rst $28
    rst $28
    rst $38
    rst $38
    ldh a, [$f0]
    pop hl
    pop hl
    rst $20

jr_010_516b:
    rst $20
    cp $fe
    ldh a, [$f0]
    ldh [$e0], a
    rst $20
    rst $20
    rst $38
    rst $38
    db $fd
    db $fd
    ldh [$e0], a
    ldh [$e0], a
    rst $20
    rst $20
    cp $fe
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    ret nz

    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr c, jr_010_516b

    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    ld bc, $c2fe
    dec a
    db $ec
    inc de
    ld a, a
    add b
    ld a, a
    add b
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ei
    inc b
    rst $38
    nop
    rst $18

jr_010_51cd:
    jr nz, jr_010_51cd

    ld bc, $fe0f
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    xor h
    rst $38
    db $d3
    rst $38
    adc c
    rst $30
    call z, $aef3
    pop af
    adc a
    ldh a, [$cf]
    ldh a, [$af]
    ldh a, [$8f]
    cp $cf
    rst $38
    adc e
    rst $38
    ld c, e
    db $fc
    adc e
    db $fc
    xor e
    db $fc
    dec hl
    db $fc
    adc e
    db $fc
    adc e
    rst $38
    dec bc
    rst $38
    adc e
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    set 7, l
    ld a, e
    rst $38
    xor l
    xor l
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop

jr_010_5231:
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
    ldh [$9f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ef]
    ld hl, sp-$01
    db $fc
    rst $18
    rst $38
    rst $08
    ei
    rst $08
    ld sp, hl
    rst $08
    ld sp, hl
    rst $08
    ld sp, hl
    rst $08
    ld sp, hl
    rst $28
    ld sp, hl
    rst $38
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

jr_010_5266:
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rra
    rra
    db $fd
    db $fd
    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    ld a, b
    ld a, b
    ldh a, [$f0]
    ret nz

    ret nz

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
    db $fc

jr_010_528d:
    inc bc
    rst $38
    nop
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
    rrca
    rrca
    nop
    add b
    nop
    ld c, $f1
    nop
    rst $38
    pop hl
    ld e, $3f
    ret nz

    rrca
    ldh a, [rNR23]
    rst $20
    jr nz, jr_010_528d

    rst $00
    jr c, jr_010_5231

    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc c
    di
    inc c
    di
    rlca
    ld hl, sp+$62
    sbc l
    rst $20
    jr @+$01

    nop
    rst $18
    jr nz, jr_010_5266

    ld h, b
    adc a
    ld [hl], b
    adc l
    ld [hl], d
    add d
    ld a, l
    inc a
    jp $aaff


    rst $38
    ld d, l
    cp $eb
    inc [hl]
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    daa
    rst $38
    ld hl, sp-$01
    di
    db $fc
    ld h, a
    ld hl, sp+$4f
    ldh a, [$5f]
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    cp a
    ret nz

    rst $38
    ld hl, sp-$41
    rst $38
    or a
    rst $18
    or [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    or [hl]
    jp c, $ffda

    rst $38
    ccf
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
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
    rlca
    ld hl, sp+$0f
    db $fc
    rra
    cp $1f
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    inc sp
    ccf
    inc sp
    ccf
    dec sp
    scf
    ccf
    inc sp
    ccf
    di
    ccf
    di
    cp a
    di
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $e3
    db $e3
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
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
    ld a, a
    ld a, a
    rlca
    rlca
    ld hl, sp+$44
    cp e
    add [hl]
    ld a, c
    add b
    ld a, a
    ldh [$1f], a
    ld a, $c1
    ld bc, $d8fe
    daa
    inc c
    di
    ld b, $f9
    inc de
    db $ec
    ld [hl], $c9
    ld a, [hl-]
    push bc
    ld [hl], c
    adc [hl]
    ld [hl], e
    adc h
    ld h, h
    sbc e
    ret nz

    ccf
    ld e, e
    and h
    and a
    ld e, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld c, a
    or b
    rst $38
    xor d
    db $fd
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec [hl]
    rst $38
    ld a, a
    ret nz

    rst $38
    nop
    db $fd
    nop
    ld a, [$f400]
    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    add sp, -$20
    db $fc
    db $fc
    rst $18
    ld a, a
    db $db
    ld l, a
    reti


    ld l, l
    reti


    ld l, l
    reti


    db $ed
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    db $db
    db $db
    db $db
    ei
    ei
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0100
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    add h
    inc bc
    call nz, $cc03
    inc bc
    call z, $dc03
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $c1ff
    rst $38
    pop bc
    ldh a, [$cf]
    pop af
    cp $f1

jr_010_5455:
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    ei
    ld a, [$f5f5]
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    db $fc
    jp $fc03


    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    pop af
    dec d
    ld [$d728], a
    jr nc, jr_010_5455

    jr z, @-$27

    dec d
    ld [$f10e], a
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    cp $01
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    nop
    ld a, $c0
    ld bc, $08fe
    rst $30
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rra
    ldh [rTIMA], a
    ld a, [$ff00]
    or b
    ld c, a
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ld a, [c]
    dec c
    db $dd
    ld [hl+], a
    rst $28
    db $10
    add $39
    call c, $fc23
    inc bc
    cp $01
    db $fc
    inc bc
    ei
    xor a
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
    ld bc, $abff
    cp $fa
    nop
    db $f4
    nop
    xor b
    nop
    ld b, b
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

jr_010_54f4:
    rst $38
    jr @+$01

    jr jr_010_54f4

    inc a
    di
    inc a
    di
    inc a
    ei
    inc a
    di
    db $fc
    ld a, e
    cp $73
    cp a
    ld a, d
    cp a
    ld [hl], d
    cp l
    ld a, d
    db $fd
    ld [hl], d
    db $fd
    ld a, d
    rst $38
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld [hl], d
    ld [hl], d
    ld a, [$fffa]
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    cp $01
    cp $ff
    cp $01
    cp $dd
    cp $55
    cp $dd
    cp $01
    cp $ff
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    inc d
    db $eb
    xor d
    ld d, l
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    adc b
    nop
    ldh a, [$80]
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $aafe
    ld d, l
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    ldh [rSVBK], a
    adc a
    inc d
    db $eb
    inc bc
    db $fc
    ld bc, $f0fe
    rrca
    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @-$7d

    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    ld e, $e1
    rrca
    ldh a, [rNR22]
    add sp, $07
    ld hl, sp-$3d
    inc a
    nop
    rst $38
    nop
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
    ld d, a
    db $fc
    nop
    add sp, $00
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
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    or a
    ld hl, sp-$5a
    ld a, a
    xor d
    ld d, a
    xor d
    ld d, l
    xor d
    push de
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ld [$ffea], a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    add b
    nop
    ld hl, sp+$00
    rst $38
    ld bc, $03fe
    db $fc
    ld [$98f0], sp
    ld h, b
    sub b
    ld h, b
    sbc [hl]
    ld l, [hl]
    sub d
    ld a, [hl]
    sub d
    ld a, [hl]
    sub d
    ld a, [hl]
    sub d
    ld a, [hl]
    sub d
    ld a, [hl]
    sub d
    ld a, [hl]
    sub e
    ld a, a
    sbc [hl]
    ld a, a
    sub e
    ld a, a
    sub d
    ld a, a
    sub d
    ld a, a
    sub d
    ld a, a
    sub d
    ld a, a
    ld [c], a
    rra
    di
    ld c, $f7
    rrca
    pop af
    rrca
    nop

jr_010_565b:
    rst $38
    nop
    rst $38
    ld [$54f7], sp
    xor e
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, e

jr_010_566d:
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    ret nc

    add b
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld d, b
    xor a
    jr z, jr_010_565b

    jr jr_010_566d

    jr z, @-$27

    ld d, b
    xor a
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
    ret nz

jr_010_5697:
    ccf
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    adc a
    ld [hl], b
    nop

jr_010_56ad:
    rst $38
    rst $38
    nop
    sbc $21
    ret nc

    cpl
    rst $38
    nop
    ld a, a
    add b
    rst $00
    jr c, @-$1b

    dec e
    jp $c63c


    add hl, sp
    ld a, h
    add a
    ccf
    ret z

    jr jr_010_56ad

    jr nc, jr_010_5697

    db $f4
    dec bc
    rst $38
    ld b, b
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
    dec b
    rst $38
    xor a
    ld hl, sp-$80
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    cp $df
    rst $38
    rst $18
    ld [$dfdf], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$fefe], a
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ldh a, [$0e]
    ld hl, sp+$06
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    cp $01
    cp $ff
    cp $01
    cp $ef
    cp $a9
    cp $ef
    cp $01
    cp $ff
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [$50f7], sp
    xor a
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    di
    nop
    rlca
    nop
    adc h
    nop
    ld a, [hl-]
    nop
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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
    db $fc
    inc bc
    rst $38
    nop
    rra
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
    add b
    nop
    ld a, b
    add b
    rla
    add sp, $31
    adc $21
    sbc $e1
    ld e, $f1
    ld c, [hl]
    db $fd
    add d
    rst $38
    nop
    ld [c], a
    dec e
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    sub c
    ld l, [hl]
    ld bc, $00fe
    rst $38
    pop hl
    ld e, $ff
    nop
    cp a
    ld b, b
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
    ld e, a
    ld hl, sp-$40
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_010_57f4

    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    cp c
    cp c
    cp e
    cp e
    cp c
    cp c
    cp c
    cp c
    cp e
    cp e
    cp e
    cp e
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
    ld bc, $03fc
    ld hl, sp+$00
    ldh a, [rP1]
    rra
    nop
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ret nz

    nop
    ret nz

    nop

jr_010_57f4:
    rst $38
    ccf
    ret nz

    ccf
    rst $38
    ccf
    ret nz

    ccf
    sbc $3f
    jp nc, Jump_010_5e3f

    ccf
    ld b, b
    ccf
    ld e, a
    nop
    rst $38
    rra
    rst $38
    rra
    rst $20
    rra
    ldh [$1f], a
    db $10
    rst $28
    and b
    ld e, a
    ld b, b
    cp a
    pop af
    ld c, $ef
    db $10
    rst $18
    jr nz, @+$01

    nop
    cp a
    nop
    rla
    nop
    dec bc
    nop
    inc bc
    nop
    dec d
    nop
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    nop

jr_010_5851:
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
    ccf
    cp h
    ld b, b

jr_010_5862:
    rst $00
    jr c, jr_010_5862

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    db $fc
    inc bc
    rst $00
    jr c, jr_010_5851

    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld e, h
    ldh a, [$80]
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
    rrca
    rst $38
    rst $38
    db $fd
    rst $38
    reti


    reti


    sbc e
    sbc e
    sbc c
    sbc c
    cp e
    cp e
    sbc c
    sbc c
    sbc e
    sbc e
    cp e
    cp e
    cp e
    cp e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    xor a
    cp $03
    rst $38
    nop
    rla
    nop
    dec bc
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add e
    jp hl


    sub a
    db $d3
    xor a
    and l
    rst $18
    res 7, a
    add a
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    xor a
    rst $38
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ccf
    nop
    cpl
    nop
    db $fd
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$7a]
    add l
    call nc, $a02b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
    call nc, Call_010_7a2b
    add l
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
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
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    adc h
    ld h, e
    sbc h
    cp $01
    rst $38
    inc [hl]
    rst $28
    ld de, $728d
    sbc l
    ld h, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    cp a
    ldh a, [rP1]
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
    ld [$1cff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    cp h
    cp h
    sbc l
    sbc l
    sbc h
    sbc h
    cp l
    cp l
    cp h
    cp h
    cp l
    cp l
    cp l
    cp l
    db $fd
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
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    add a
    rst $08
    add a
    rst $08
    add a
    adc a
    inc bc
    ld a, e
    add a
    ld a, e
    add a
    ld a, e
    add a
    ld a, b
    add a
    nop
    rst $38
    inc b
    ei
    ld b, b
    cp a
    adc b
    ld [hl], a
    db $fc
    inc bc
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    xor a
    ld d, b
    dec d
    ld [$fd02], a
    ld bc, $02fe
    db $fd
    dec d
    ld [$50af], a
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ld a, a
    add b
    inc bc
    db $fc
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
    ret nz

    nop
    db $fc
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc d
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, [bc]
    rst $38
    cp a
    ldh a, [$80]
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
    ld a, a
    ret nz

    ld a, a
    call c, $d47f
    ld a, a
    call nc, $d47f
    ld a, a
    call nc, $d47f
    ld a, a
    call nc, $ff7f
    rst $38
    rst $38
    rst $38
    call c, $dcff
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $cccc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ei
    ccf
    add l
    ld a, a
    nop
    cpl
    ld bc, $0017
    dec bc
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    nop
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $30
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rra
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
    ld a, [bc]
    push af
    ld d, h
    xor e
    xor b
    ld d, a
    push hl
    ld a, [de]
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp $01
    rst $38
    nop
    rrca
    ldh a, [rP1]
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
    ldh [rNR41], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, [bc]
    rst $38
    cp a
    ldh a, [$aa]
    nop
    ld bc, $0000
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
    ld hl, sp+$0f
    ld hl, sp-$11
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    xor $ff
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ec
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    call $ffcd
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$7f
    ld hl, sp-$41
    ld hl, sp+$5f
    ld hl, sp+$2f
    db $fc
    ld d, a
    db $fc
    cpl
    db $fc
    rra
    ld a, h
    cpl
    db $fc
    ld e, a
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $f8
    ld hl, sp-$08
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $28
    ld b, h
    cp e
    xor e
    ld d, h
    push de
    ld a, [hl+]
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    ld a, a
    add b
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
    nop
    nop
    ld hl, sp+$38
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    db $e4
    rst $38
    rra
    rst $38
    dec b
    xor a
    ld hl, sp-$01
    nop
    cp a
    nop
    ld d, l
    nop
    xor d
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    adc $ff
    adc $ce
    adc $ce
    adc $ce
    sbc $de
    rst $08
    rst $08
    sbc $de
    rst $18
    rst $18
    cp $fe
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
    ld bc, $03ff
    rst $38
    rlca
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    rra
    rra
    rst $18
    ccf
    rst $18
    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add d

jr_010_5c9d:
    ld a, l
    ld b, h
    cp e
    xor d
    ld d, l
    nop
    rst $38
    ret nz

    ccf
    ld [$df15], a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [rIE], a
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
    rlca
    ld hl, sp+$0a
    push af
    dec d
    ld [$d728], a
    jr nc, jr_010_5c9d

    jr z, @-$27

    dec d
    ld [$f50a], a
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
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

    ret nz

    db $fc
    inc a
    rst $38
    inc de
    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
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
    ld a, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    dec bc
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    dec bc
    nop
    rlca
    nop
    dec bc
    nop
    rra
    rra
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    ld h, [hl]
    xor $ee
    ld l, a
    ld l, a
    cp $fe
    ld l, a
    ld l, a
    cp $fe
    rst $28
    rst $28
    cp $fe
    rst $38

jr_010_5d51:
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_010_5d51

    add b
    ld a, a
    inc d
    db $eb
    jr z, @-$27

    ld d, b
    xor a
    db $f4
    dec bc
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    dec b
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    ld [hl], a
    ld [hl], a
    rst $28
    rst $28
    rst $30
    rst $30
    rst $28
    rst $28
    rst $30
    rst $30
    rst $28
    rst $28
    rst $30
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    ld sp, hl
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
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

Jump_010_5e3f:
    rst $38
    rra
    rst $38
    rra
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
    inc bc
    rst $38
    ld bc, $81ff
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
    sub d
    ld l, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
    xor b
    ld d, a
    ld d, h
    xor e
    ld a, [bc]
    push af
    ld b, $f9
    ld a, [bc]
    push af
    ld d, h
    xor e
    xor b
    ld d, a
    ld [hl], b
    adc a
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
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
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
    db $fc
    db $fc
    rst $38
    ccf
    rst $38
    rst $20
    rst $38
    dec de
    ldh a, [$fc]
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$f8], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$f8], a
    ldh [$f8], a
    ret nz

    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld sp, hl
    pop bc
    ei
    jp $cffb


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
    ld l, a
    cp a
    rst $28
    ccf
    rst $08
    ccf
    rst $18
    cpl
    ld e, a
    xor a
    sbc a
    ld l, a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    ld e, a
    ld a, a
    rst $18
    rst $38
    ld e, a
    ld a, a
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
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
    rst $38
    add b
    ld a, a
    cp $01
    rst $38
    nop
    ccf
    ret nz

    ld bc, $00fe
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    ld e, $3e
    ld e, $3e
    dec a
    inc a
    dec a
    inc a
    inc a
    ld a, h
    ld a, $7e
    ld a, [hl-]
    ld a, d
    ld a, d
    ld a, d
    ld a, [hl]
    ld a, d
    ld a, [hl]
    ld a, d
    ld a, e
    ei
    ld [hl], a
    rst $30
    db $fc
    db $fc
    ld hl, sp-$08
    db $fd
    ld sp, hl
    rst $38
    pop af
    rst $30
    di
    di
    di
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
    db $fc
    rst $38
    pop af
    cp $e1
    cp $ef
    ldh a, [$dc]
    db $e3
    call nc, $d0eb
    rst $28
    ret nz

    rst $38
    ret nc

    rst $28
    call nc, $d4eb
    db $eb
    jp nc, $ceed

    pop af
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
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
    ld hl, sp-$08
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_010_6049

    inc c
    inc c
    inc c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_010_606a

jr_010_6049:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_607a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_010_608a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0c
    inc c
    scf
    jr c, jr_010_609c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_010_606a:
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
    ld c, a
    ld d, b

jr_010_607a:
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

jr_010_608a:
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
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_010_609c:
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
    ld e, l
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
    inc c
    inc c
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
    jp nz, $0cc3

    inc c
    call nz, $c6c5
    rst $00
    ret z

    inc c
    ret


    jp z, $cccb

    call $cfce
    ret nc

    inc c
    inc c
    pop de
    jp nc, $d4d3

    inc c
    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld e, l
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
    ld bc, $0c02
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
    ld de, $0c0c
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_010_6169

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_010_6179

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_6189

    nop
    nop
    nop
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_010_6169:
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_010_6179:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_010_6189:
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    ld bc, $0202
    ld b, $01
    ld bc, $0601
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    ld bc, $0602
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $02
    dec b
    nop
    inc bc
    ld bc, $0002
    ld b, $06
    ld bc, $0601
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $05
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld bc, $0101
    ld b, $01
    ld b, $06
    ld [bc], a
    ld b, $06
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld b, $01
    ld b, $02
    dec b
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld b, $01
    ld bc, $0101
    ld bc, $0400
    inc b
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld c, $09
    ld [$0000], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    ld c, $09
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld h, c
    ld h, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    di
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
    rrca
    ldh a, [rIF]
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
    rst $38
    rst $38
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
    ret nc

    adc d
    db $ec
    ld sp, hl
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    db $fd
    db $fd
    cp a
    cp a
    rst $38
    rst $38
    cp c
    cp c
    xor b
    xor b
    xor a
    xor a
    sbc a
    sbc a
    xor $ee
    rst $28
    rst $28
    db $fc
    db $fc
    rst $38
    rst $38
    add c
    add c
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
    ld e, [hl]
    ld e, [hl]
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld bc, $ff01
    rst $38
    db $ed
    db $ed
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ld b, $06
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    dec bc
    dec bc
    rst $38
    rst $38
    cp $fe
    jp nz, Jump_000_00c2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    di
    di
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    rra
    rst $38
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
    db $fc
    add a
    db $fc
    add a
    db $fc
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    di
    di
    db $db
    db $db
    rst $38
    rst $38
    ld d, c
    ld d, c
    ld d, e
    ld d, e
    ld a, e
    ld a, e
    db $76
    db $76
    jp c, $f2da

    ld a, [c]
    adc $ce
    cp $fe
    xor [hl]
    xor [hl]
    xor $ee
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    ld c, e
    ld c, e
    add hl, bc
    add hl, bc
    ld e, e
    ld e, e
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rra
    rra
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sbc a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, $3e
    cp $fe
    cp $fe
    inc b
    inc b
    rlca
    rlca
    nop
    nop
    nop
    nop
    cp $ef
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
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
    rra
    rst $38
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
    ccf
    ccf
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
    ld bc, $07ff
    cp $ff
    cpl
    rst $38
    dec a
    dec a
    dec l
    dec l
    ld l, $2e
    inc a
    inc a
    cpl
    cpl
    jr c, @+$3a

    dec [hl]
    dec [hl]
    ccf
    ccf
    scf
    scf
    ccf
    ld a, $3f
    inc a
    ld a, $3d
    ccf
    jr c, jr_010_64ea

    jr nc, jr_010_64ec

    jr nz, @+$01

    ldh [$fe], a
    pop hl
    rst $18
    ret nz

    sbc a
    add b
    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    pop af
    db $fd
    ld a, [c]
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]

jr_010_64d1:
    ldh a, [$f0]

jr_010_64d3:
    ldh a, [$f0]

jr_010_64d5:
    ldh a, [$f0]

jr_010_64d7:
    ldh a, [$f0]

jr_010_64d9:
    ldh a, [$f0]

jr_010_64db:
    ldh a, [$f0]

jr_010_64dd:
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

jr_010_64ea:
    ld hl, sp-$01

jr_010_64ec:
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld h, b
    sbc a
    ld h, b

jr_010_64f7:
    sbc a
    ld h, b

jr_010_64f9:
    sbc a
    ld h, b

jr_010_64fb:
    sbc a
    ld h, b

jr_010_64fd:
    sbc a
    ld h, b

jr_010_64ff:
    sbc a
    jr nc, jr_010_64d1

    jr nc, jr_010_64d3

    jr nc, jr_010_64d5

    jr nc, jr_010_64d7

    jr nc, jr_010_64d9

    jr nc, jr_010_64db

    jr nc, jr_010_64dd

    jr jr_010_64f7

    jr jr_010_64f9

    jr jr_010_64fb

    jr jr_010_64fd

    jr jr_010_64ff

    jr @-$17

    jr @-$17

    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    add a
    add a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    cp $fe
    rst $38
    rst $38
    sbc a
    sbc a
    cp $fe
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
    rra
    rra
    ld bc, $ff01
    ld bc, $07ff
    rst $38
    rra
    ei
    ld a, a
    push af
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    and l
    rst $38
    sbc l
    sbc l
    ld sp, hl
    ld sp, hl
    rst $28
    rst $28
    cp a
    cp a
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rlca
    ld hl, sp+$05
    ld a, [$0106]
    dec b
    ld bc, $0106
    dec b
    ld bc, $010c
    dec a
    ld bc, $01be
    ld [$d501], a
    ld bc, $01ea
    ld d, l
    nop
    xor e
    ld bc, $0151
    nop
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec c
    ld [bc], a
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    rra
    rra
    add hl, de
    add hl, de
    jr jr_010_6642

    jr jr_010_6644

    jr jr_010_6646

    jr jr_010_6648

    jr jr_010_664a

    jr jr_010_664c

    jr jr_010_664e

    ld hl, sp-$08
    rst $38
    rst $38
    rst $08
    rst $08
    call z, $fecc
    cp $ff
    rst $38

jr_010_6642:
    rst $38
    rst $38

jr_010_6644:
    rst $38
    rst $38

jr_010_6646:
    ld a, a
    rst $38

jr_010_6648:
    add b
    ld a, a

jr_010_664a:
    rst $38
    nop

jr_010_664c:
    rst $38
    nop

jr_010_664e:
    rst $38
    nop
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
    db $db
    db $db
    sub l
    sub l
    ld [hl], l
    ld [hl], l
    push af
    push af
    dec a
    dec a
    inc sp
    inc sp
    cp a
    cp a
    ld a, $3f
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
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
    rst $08
    rst $38
    ld c, b
    rst $38
    ld c, e
    rst $38
    call z, $03ff
    db $fc
    rst $38
    inc bc
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a

jr_010_66b5:
    add b
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
    rst $28
    db $10
    rst $38

jr_010_66c3:
    nop
    rst $30
    ld [$00fe], sp
    inc b
    nop
    add h
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $41fe
    cp [hl]
    jr nz, jr_010_66b5

    ld [$00f7], sp
    rst $38
    jr jr_010_66c3

    ld bc, $3ffe
    ret nz

    ret nz

    ccf
    ld c, $f1
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $03fe
    db $fc
    ld [c], a
    dec e
    ret nc

    cpl
    sub a
    ld l, b
    sbc a
    ld h, b
    inc bc
    ld a, h
    ld a, [bc]
    ld [hl], l
    ld c, b
    scf
    ld a, c
    ld b, $20
    rra
    jr nz, jr_010_671f

    jr nz, @+$21

    nop
    rra
    nop
    rra
    nop
    rra
    db $10
    rrca
    db $10
    rrca
    nop
    rrca
    add hl, bc
    ld b, $00
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
    cp $0f
    rst $38

jr_010_671f:
    ld bc, $0100
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    pop hl
    pop hl
    db $fd
    db $fd
    ld a, a
    ld a, a
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    db $e3
    db $fc
    ret nz

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
    ld b, b
    or b
    ldh a, [$0c]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    sub c
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ret nz

    db $fd
    ld [bc], a
    ld h, l
    sbc d
    add sp, $17
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld hl, $60de
    sbc a
    ld h, e
    sbc h
    ld bc, $0ffe
    ldh a, [rTIMA]
    ld a, [$738c]
    add d
    ld a, l
    rst $00
    jr c, jr_010_6819

    cp a
    ld l, a
    sub b
    db $fc
    inc bc
    or b
    ld c, a
    db $10
    rst $28
    add hl, bc
    or $48
    or a
    add h
    ld a, e
    add [hl]
    ld a, c
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ld hl, sp+$07
    call c, Call_000_1f23
    ldh [$39], a
    add $1f
    nop
    inc a
    nop
    ld a, h
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    nop
    inc bc
    add e
    inc e
    sbc b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6819:
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld e, [hl]
    rra
    xor e
    ld bc, $0055
    db $eb
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $18
    adc e
    xor e
    adc b
    adc b
    sbc l
    adc b
    xor d
    adc b
    sbc l
    adc b
    adc d
    adc b
    sbc l
    adc b
    adc d
    db $fc
    db $fd
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
    ld bc, $0001
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$c4], a
    ldh [rDIV], a
    ret nz

    call z, $3cc0
    ret nz

    ccf
    ret nz

    cpl
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    ld sp, $e0ce
    rra
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    dec c
    ld a, [c]
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    ld [hl], a

jr_010_68bd:
    adc b
    ret z

    scf
    ei
    inc b
    push af
    ld [bc], a
    add d
    ld bc, $008f
    ld c, a
    nop
    ld c, a
    nop
    ld b, e
    nop
    inc sp
    nop
    call nz, $083b
    rst $30
    inc bc
    db $fc
    inc bc
    db $fc
    ld a, $c1
    ret nz

    ccf
    jr nz, jr_010_68bd

    ldh [$1f], a
    add b
    ld a, a
    push hl
    ld a, [de]
    ld a, e
    add h
    rra
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    add e
    nop
    add e
    nop
    jp Jump_010_4700


    nop
    ld h, a
    nop
    daa
    nop
    scf
    nop
    xor b
    db $10
    sub d
    ld [$0817], sp
    dec sp
    inc b
    ld a, b
    rlca
    push bc
    ld a, [hl-]
    dec a
    jp nz, Jump_000_01fe

    ccf
    nop
    ld a, a
    ld [$fd1f], a
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
    ret nz

    rst $38
    ld hl, sp+$3f
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    ld a, a
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    ld a, a
    ld b, d
    rst $38
    ld b, d
    ld e, a
    cp $ff
    db $e3
    db $e3
    db $e3
    db $e3
    rst $30
    rst $30
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
    db $fc
    inc bc
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
    rst $20
    db $e3
    rst $18
    ld sp, hl
    rst $20
    di
    rst $38
    rst $28
    rst $38
    rst $20
    ccf
    dec de
    rla
    rrca
    ld [$0b0d], sp
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec e
    dec bc
    inc e
    dec bc
    inc e
    dec bc
    inc e
    dec bc
    inc e
    dec bc
    inc a
    dec bc
    inc a
    dec bc
    inc a
    dec bc
    inc a
    dec bc
    inc a
    dec bc
    ld a, h
    dec bc
    ld a, h
    dec bc
    ld a, h
    dec bc
    db $fc
    dec bc
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    rst $38
    ld [$08fe], sp
    call c, Call_000_1830
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$28]
    rst $30
    jr nz, @+$01

    and h
    ld [hl], e
    db $e4
    inc sp
    db $e4
    inc sp
    db $e4
    inc sp

jr_010_69ba:
    db $f4
    inc hl
    db $e4
    inc hl
    ld h, e
    and h
    di
    db $10
    ret c

    rrca
    ld a, a
    add a
    cp a
    ld b, b
    rst $18
    jr nz, jr_010_69ba

    db $10
    rst $30
    ld [$06f9], sp
    ld a, [$0001]
    nop
    rrca
    nop
    ld hl, sp+$00
    ret nz

    nop
    pop bc
    nop
    jp Jump_010_7900


    nop
    rra
    ldh [rIE], a
    nop
    add sp, $17

jr_010_69e6:
    sbc h
    ld h, e
    ei
    inc b
    rst $20
    jr @+$01

jr_010_69ed:
    nop
    rst $18
    jr nz, jr_010_69ed

    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    ld bc, $82fe
    ld bc, $1ee1
    jr jr_010_69e6

    ldh [rP1], a
    di
    nop
    rst $30
    nop
    rst $20
    nop
    rst $18
    nop
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$fd3f], a
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    inc a
    rst $38
    jr c, @+$01

    cp b
    rst $38
    cp [hl]
    ld a, a
    cp a
    ld a, c
    cp a
    ld a, b
    cp a
    ld hl, sp-$41
    rst $38
    cp a
    ld a, a
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    ld sp, hl
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
    rlca
    rst $38
    ld hl, sp+$07
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$a1], a
    cp $bc
    rst $20
    cp d
    rst $20
    add hl, sp
    rst $20
    ld sp, $30ef
    rst $28
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf
    rst $38
    jr nz, @+$01

    ccf
    rst $38
    jr nz, @+$01

    ld a, $ff
    ld [hl-], a
    rst $38
    ld a, $ff
    jr nz, @+$01

    cp a
    ld h, b
    cp a
    ld a, a
    cp $3f
    pop af
    ld a, $7f
    ld [$051e], sp
    ld a, [hl]
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $3b
    add $ff
    ld [bc], a
    add e
    ld a, [hl]
    ccf
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $e4
    nop
    sub [hl]
    ld bc, $8e71
    or c
    ld b, b

jr_010_6ad6:
    rra
    jr nz, jr_010_6b40

    jr jr_010_6ad6

    inc b
    db $fd
    ld [bc], a
    cp $01
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
    ld a, a
    add b
    ldh a, [rP1]
    ld a, c
    nop
    ld a, $00
    rra
    nop
    rrca
    nop
    rla
    nop
    ld hl, sp+$07
    rst $00
    jr c, jr_010_6b3b

    ret nz

    pop af
    nop
    dec [hl]
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    cp $00
    ldh [$bf], a
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
    ld bc, $03ff
    rst $38
    rlca
    cp $1f
    db $fc
    ccf
    ldh a, [$7f]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rra
    rst $38
    ld de, $11ff

jr_010_6b3b:
    rst $38
    ld de, $11ff
    rst $38

jr_010_6b40:
    ld de, $11ff
    db $fd
    ld de, $11fb
    db $fd
    ld de, $f9fb
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    ld hl, sp-$05
    inc b
    di
    inc c
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
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [$80], a
    ldh [$90], a
    ldh [$90], a
    ldh [$fd], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    push af
    jp z, $cff0

    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$79
    ld [hl], b
    adc a
    pop af
    rrca
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    rst $38
    nop

jr_010_6bbe:
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_010_6bbe

    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
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
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$04fb], sp
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld l, a
    nop
    rra
    nop
    ld e, a
    nop
    cp $01
    pop af
    ld c, $0f
    ldh a, [rIE]
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
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld c, $fe
    dec e
    ld hl, sp+$3a
    ldh a, [$f5]
    ldh [$fa], a
    ret nz

    nop
    push af
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    ld [$00d5], a
    ld [$f500], a
    ret nz

    ld a, [$fff8]
    rst $38
    rst $10
    rla
    or d
    inc de
    ld d, d
    inc de

Call_010_6c40:
    or d
    inc de
    ld d, d
    inc de
    sub d
    inc de
    ld [de], a
    inc de
    sub d
    inc de
    ld [de], a
    inc de
    ld a, [c]
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [$1f], a
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
    db $fc
    cp $c1
    db $fc
    inc bc
    ld hl, sp+$07
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rSB]
    ld [hl], b
    ld bc, $0170
    ld h, b
    ld bc, $0160
    ld h, b
    nop
    ldh [rSB], a
    ld d, b
    inc bc
    ld d, b
    inc bc
    db $10
    inc bc
    jr jr_010_6c8e

    jr jr_010_6c90

    ld e, b

jr_010_6c8e:
    inc bc
    ld e, b

jr_010_6c90:
    rl e
    ret z

    inc de
    rl e
    inc c
    db $d3
    rrca
    db $d3
    dec c
    db $d3
    ld c, l
    db $d3
    ld c, a
    db $d3
    ld c, h
    db $d3
    ld c, [hl]
    pop de
    db $dd
    add d
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    rst $38
    cp $00
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    adc $31
    pop bc
    ld a, $3c
    jp Jump_000_00ff


    rst $38
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
    rst $18
    jr nz, @-$16

    rla
    rst $00
    jr c, jr_010_6d20

    add $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$f0], a
    add b
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b

jr_010_6d20:
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    db $fc
    db $fc
    ld a, a
    rst $38
    dec h
    push hl
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    rst $20
    inc a
    rst $38
    db $e4
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [$87], a
    ld a, b
    rlca
    ld hl, sp+$3f
    db $fc
    ld a, a
    cp $f1
    ldh a, [rP1]
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
    ld a, a
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ret


    rst $38
    ld c, c
    rst $38
    ld sp, hl
    rst $38
    ld c, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ret


    ld a, a
    ret


    rst $38
    ret


    rst $38
    jp hl


    rst $38
    sbc [hl]
    cp $3e
    jp nz, Jump_000_02fe

    ld c, $f2
    ld [bc], a
    cp $02
    cp $03
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
    rst $38
    nop
    rst $38
    nop

jr_010_6db8:
    ldh a, [rIF]
    ld c, $f1
    rst $18
    jr nz, @+$01

    nop
    ccf
    ret nz

    rst $08
    jr nc, jr_010_6db8

    inc c
    db $fd
    ld [bc], a
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

jr_010_6dd8:
    rst $38
    nop
    rst $38
    nop
    cp $01
    push af
    ld c, $8f
    ld [hl], b
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
    sbc [hl]
    ld h, c

jr_010_6dee:
    rst $08
    jr nc, jr_010_6dd8

    jr jr_010_6dee

    inc b
    inc a
    jp $f10e


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    rrca
    di
    rra
    di
    rra
    di
    rra
    di
    rrca
    di
    rst $08
    ei
    rst $38
    ei
    sbc a
    di
    adc a
    di
    adc a
    di
    sbc a
    db $e3
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    add e
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ret nz

    ccf
    cp $01
    rst $38
    nop
    rst $38
    add b
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    cp $01
    cp $00
    sbc h
    nop
    ld d, h
    adc b
    inc b
    adc b
    inc e
    add b
    inc c
    add b
    inc c
    add b
    inc b
    adc b
    inc c
    add b
    ld e, a
    add b
    ld e, a
    add b
    rst $18
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, l
    add d
    ld e, a
    add b
    ld e, l
    add d
    ld e, l
    add d
    ld e, a
    add b
    sub b
    ld bc, $8778
    sub b
    ld l, a
    ldh [rIF], a
    ld hl, sp+$07
    jp hl


    ld b, $ff
    ld bc, $c7ee
    jr c, @+$01

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
    ld a, h
    add e
    ld hl, sp+$07
    or b
    ld c, a
    db $fc
    inc bc
    call $fe32
    ld bc, $18e7
    rst $38
    nop
    ld a, l
    add d
    sbc h
    ld h, e
    and $19
    ld sp, hl
    ld b, $fe
    ld bc, $10ef
    rst $28
    db $10
    rst $38
    nop
    ld a, [$a707]
    ld a, b
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
    rst $08
    ldh a, [$cf]
    ld [hl], b
    cp a
    ld b, b
    sbc a
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    adc a
    db $fd
    ccf
    db $ed
    ei
    xor l
    rst $18
    xor c
    ld a, a
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    cpl
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld a, [bc]
    push af
    ld e, a
    and b
    rst $38
    inc bc
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    ld hl, sp+$38
    ret nz

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
    add b
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld c, a

jr_010_6f3f:
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    inc c
    rst $38
    ld h, e
    sbc a
    ld a, h
    db $e3
    ld a, a
    db $fc
    rst $38
    ld a, a
    rst $18
    ld a, a
    ld b, e
    rst $38
    sbc a
    ldh [rIE], a
    nop
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_010_6f70:
    ret nz

    ccf
    ldh [$1f], a
    sub b
    ld l, a
    jr c, jr_010_6f3f

    ld a, c
    add [hl]
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h

jr_010_6f80:
    ld a, a
    add b
    sbc a
    ld h, e
    cp h
    ld a, a
    push bc
    cp $fc
    inc bc
    cp $01
    rst $00
    jr c, jr_010_6f70

    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp h
    ld b, e
    rst $18
    jr nz, jr_010_6f80

    inc h
    cp a
    ld h, b
    ld hl, sp+$37
    di
    inc c
    call Call_000_3e32
    rst $00
    rst $38
    inc bc
    rst $38
    rra
    db $fd
    ld a, a
    db $dd
    di
    db $dd
    cp a
    pop de
    ld a, a
    sub c
    rst $38
    ld de, $11ff
    ld de, $1111
    ld de, $1111
    ld de, $1717
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop hl
    cp $15
    ld [$40bf], a
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

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
    db $fc
    rst $38
    cp $e1
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rra
    rra
    rra
    jr jr_010_7018

    jr jr_010_701a

    ld a, [de]
    rra
    ld a, [de]
    rra
    dec de
    rra
    ld a, [de]
    rra
    ld a, [de]
    rra
    rra
    rst $38
    ld a, [$fb1f]
    rst $38
    cp $1f

jr_010_700d:
    ld a, [$fbdf]
    ld e, a
    ei
    ld e, a
    cp $5f
    ld a, [$fe5f]

jr_010_7018:
    ld e, a
    ei

jr_010_701a:
    ld e, a
    ld a, [$ffdf]
    rra
    rst $38
    rst $18
    ld a, [hl-]
    rst $38
    sbc $ff
    ei
    rst $38
    rst $38
    rst $38
    ccf
    cp $06
    rst $38
    ld [bc], a
    ei
    ld b, $f7
    ld a, [bc]
    ei
    ld b, $03
    cp $03
    cp $03
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
    or $09
    rst $18
    jr nz, jr_010_700d

    ccf
    rst $38
    rrca
    ld a, [c]
    ld a, l
    adc a
    ldh a, [$fb]
    inc b
    pop af
    ld c, $f1
    ld c, $38
    rst $00
    xor h
    ld [hl], e
    add e
    ld a, h
    jp c, $de27

    ld hl, $10ef
    rst $28
    db $10
    rst $30
    ld [$c13e], sp
    ld h, [hl]
    sbc c
    cp $01
    cp $01
    ld hl, sp+$07
    db $e3
    inc e
    sbc a
    ld h, b
    ld a, a
    add b
    cp $01
    call nz, $ff3b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    cp $3f
    cp $fb
    sbc $f7
    sbc $3f
    jp nc, Jump_000_12ff

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
    ld [de], a
    inc de
    inc de
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop bc
    cp $15
    ld [$a05f], a
    rst $38
    inc bc
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
    rst $28
    add b
    ld a, a
    ret nz

    nop
    rst $38
    ret nz

    ld [c], a
    pop hl
    ld [c], a
    ld bc, $01e2
    db $e3
    add b
    ld [c], a
    add c
    ld [c], a
    and c
    and $e1
    ld [c], a
    and c
    and $81
    ld [c], a
    add c
    and $a1
    db $e4
    and e
    and $a1
    and $a1
    and $a1
    db $e4
    and e
    and $e1
    and $e1
    and $a1
    db $e4
    db $e3
    and $e1
    and $a1
    and $e1
    and $a1
    and $e1
    db $f4
    jp $80e7


    rlca
    nop
    db $e3

jr_010_711d:
    nop
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $81
    ld a, [hl]
    pop af
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_010_7137:
    rst $38
    ld bc, $1eff
    rst $38
    ldh [rIE], a
    ld bc, $18ff
    rst $20
    sbc a
    ld h, b
    rst $08
    jr nc, jr_010_7137

    rrca
    db $fc
    inc bc
    db $fc
    inc bc
    jr nc, jr_010_711d

    add b
    ld a, a
    ldh [$1f], a
    ld a, b
    add a
    xor a
    ld [hl], b
    db $e3
    inc e
    push af
    ld c, $fd
    inc bc
    db $fd
    ld b, $07
    ld hl, sp+$4f
    ldh a, [rLCDC]
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    jr @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $08
    rst $38
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
    cp $0f
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    ld hl, sp-$01
    add c
    cp $2b
    call nc, $807f
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$00
    rrca
    nop
    rra
    nop
    rra
    ld bc, $013e
    ld a, $03
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    rlca
    jr z, jr_010_71da

    ld d, b
    rlca
    ld l, b
    rlca
    ld b, b
    rlca
    nop

jr_010_71da:
    inc bc
    add b
    inc bc
    ldh a, [rTAC]
    ldh [rIF], a
    nop
    rst $28
    rrca
    ld a, a
    cp a
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and h
    ld a, a
    xor h
    ld a, a
    or l
    ld a, a
    cp l
    ld a, a
    and l
    ld a, a
    or l
    ld a, a
    and a
    ld a, a
    or a
    ld a, a
    xor a
    ld a, a
    and l
    ld a, a
    and a
    ld a, a
    xor a
    ld a, a
    xor [hl]
    ld a, a
    xor a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    rra
    rst $38
    rlca
    ld d, a
    xor a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ccf
    ld hl, sp-$40
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ld h, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    sub b
    ld a, a
    jr nz, @+$01

    nop
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
    jp $ec3f


    rra
    adc b
    ld [hl], a
    inc a
    jp $f36c


    ret c

    ccf
    add $3f
    reti


    daa
    ld e, $e1
    rlca
    ld hl, sp+$00
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
    rst $38
    ld bc, $0fff
    db $fd
    ccf
    db $fd
    rst $38
    db $fd
    db $e3
    ld a, l
    rst $00
    ld a, l
    rst $18
    ld [hl], c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, a
    ld c, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld [bc], a
    db $fd
    dec hl
    call nc, $807f
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    inc bc
    db $fc
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    ld c, h
    db $fc
    ld c, h
    db $fc
    ld c, h
    db $fc
    ld l, h
    db $fc
    ld l, h
    db $fc
    call c, Call_010_7cfc
    rst $38
    rst $28
    db $fc
    rst $38
    rst $38
    ld a, a
    db $fc
    rst $28
    db $fc
    rst $38
    db $fd
    ld a, a
    db $fd
    rst $18
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $28
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
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rra
    pop hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$61]
    cp $80
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld bc, $06ff
    rst $38
    jr c, @+$01

    ret nz

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
    ret nz

    ccf
    ldh [$9f], a
    ld b, b
    rst $38
    or b
    ld a, a
    db $ec
    rra
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    inc bc
    rrca
    rra
    rra
    ld a, [hl]
    ld a, a
    ld [$eafd], a
    db $fd
    dec bc
    inc e
    ld a, [bc]
    dec e
    ld l, d
    ld a, l
    jp z, Jump_000_0afd

    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
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
    ldh a, [$f0]
    ld a, [bc]
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, h
    add b
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    dec bc
    nop
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    add a
    ld a, a
    ld hl, sp-$79
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    di
    rrca
    push af
    rrca
    ld a, [de]
    rst $20
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld d, b
    rst $38
    ld c, $ff
    inc a
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld [hl], b
    rst $38
    add a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
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
    jp nz, Jump_000_20ff

    rst $38
    rst $38
    rra
    ld a, [$d9fd]
    or $db
    inc [hl]
    sbc [hl]
    ld [hl], c
    ld a, c
    sub [hl]
    db $db
    inc [hl]
    sbc e
    ld [hl], h
    ld e, e
    or h
    db $db
    inc [hl]
    db $db
    inc [hl]
    db $db
    inc [hl]
    db $db
    inc [hl]
    db $db
    inc [hl]
    db $db
    inc [hl]
    rst $18
    scf
    cp a
    cp a
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
    ldh [rIE], a
    ld a, [bc]
    push af
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3efe
    ret nz

    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    ld bc, $0fff
    rst $38
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    cpl
    nop
    rra
    nop
    cpl
    nop
    rla
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
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
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    sub a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld [$17ff], a
    rst $38
    cp d
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    ld l, $ff
    ld a, $ff
    db $fc
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    ret


    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    ld c, $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $04
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_010_7574

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    ld e, $1f
    db $10
    dec d
    dec d
    jr nz, jr_010_757c

    ld hl, $1522
    dec d
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_759b

    ld a, [hl+]
    dec hl

jr_010_7574:
    dec d
    inc l
    dec l
    dec d
    ld l, $2f
    jr nc, jr_010_75ad

jr_010_757c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_010_75bd

    ld a, [hl-]
    dec d
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, h
    ld c, l

jr_010_759b:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc b
    inc b
    inc b
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

jr_010_75ad:
    ld e, l
    ld e, [hl]
    ld e, a
    inc b
    inc b
    inc b
    inc b
    ld h, b
    ld h, c
    ld h, d
    ld d, e
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_010_75bd:
    ld l, b
    ld l, c
    ld l, d
    inc b
    inc b
    inc b
    inc b
    ld l, e
    ld l, h
    ld l, l
    inc b
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc b
    inc b
    inc b
    inc b
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
    ld a, a
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
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
    ld a, a
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
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
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
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
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
    or b
    or c
    or d
    or e
    or h
    or l
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
    ld d, e
    or [hl]
    or a
    cp b
    cp c
    cp d
    inc b
    inc b
    inc b
    inc b
    cp e
    cp h
    cp l
    inc b
    inc b
    inc b
    inc b
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3c3

    jp $c4c3


    push bc
    add $c7
    ret z

    ret z

    ret z

    ret


    jp z, $cccb

    call Call_010_7f7f
    ld a, a
    ld a, a
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
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
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0206
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $02
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld b, $02
    ld [bc], a
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
    ld b, $02
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
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0206
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld b, $02
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $ff83
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    ld [$f0ff], a
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $20
    rst $38
    or b
    rst $38
    ret c

    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    db $fd
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
    rst $20
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    sbc a
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    call nz, $c0ff
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp a
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
    rst $38
    rst $38
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
    ld e, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    ei
    rst $38
    push hl
    rst $38
    sbc e
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    call c, Call_010_7bff
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    sbc $ff
    add sp, -$01
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
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
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    rst $38
    db $ec
    rst $38
    ld [hl], b
    rst $38
    sbc b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, $ff
    rst $30
    rst $38
    and b
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01

Jump_010_7900:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $ff
    ld hl, sp-$01
    jp $feff


    rst $38
    ld [hl], d
    rst $38
    cp b
    rst $38
    db $e3
    rst $38
    cp $ff
    cp h
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    xor $ff
    ldh a, [rIE]
    add b
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
    ret nz

    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    ldh [rIE], a
    add b
    rst $38
    call z, $b6ff
    rst $38
    call c, $38ff
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    rrca
    rst $38
    inc [hl]
    rst $38
    ret c

    rst $38
    ld h, c
    rst $38
    add $ff
    cp a
    rst $38
    sbc $ff
    ld a, h
    rst $38
    or e
    rst $38
    ld e, [hl]
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    pop af
    rst $38
    ld h, [hl]
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$d5ff]
    rst $38
    xor a
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
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
    jr nz, @+$01

    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    add b
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    ret nz

    rst $38
    ld [bc], a
    rst $38
    cp $ff
    cp h
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38

Call_010_7a2b:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    cp [hl]
    ret nz

    cp $c0
    sbc $e0
    cp $e0
    rst $28
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    db $fd
    cp $ff
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
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    ccf
    rst $38
    rrca
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
    jr nz, @+$01

    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr z, @+$01

    jr z, @+$01

    ld [$00ff], sp
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
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
    cp $fe
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
    ld bc, $00ff
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
    ccf
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
    jr nc, @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc [hl]
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
    jr c, @+$01

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
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

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
    inc a
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]

Call_010_7bff:
    rst $38
    ld a, $ff
    dec a
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    add e
    add c
    pop bc
    add b
    pop bc
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $7e
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    dec c
    rst $38
    dec c
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec sp
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld a, a
    cp $7e
    cp $7f
    cp $fd
    cp $ff
    db $fc
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
    ld hl, sp-$01
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

Call_010_7cfc:
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    rst $00
    ccf
    ld [hl], b
    rrca
    ldh a, [rIF]
    ld a, b
    add a
    ld hl, sp-$79
    cp b
    rst $00
    call c, $fce3
    db $e3
    db $ec
    di
    db $f4
    ei
    ld a, [hl]
    ld sp, hl
    ld a, d
    db $fd
    inc a
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    cpl
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    add hl, hl
    rst $38
    ld sp, $23ff
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    ld b, $ff
    rla
    cp $0f
    cp $2f
    cp $2d
    cp $5f
    db $fc
    ld e, a
    db $fc
    cp e
    db $fc
    cp a
    ld hl, sp-$47
    ld hl, sp+$78
    ld hl, sp+$70
    ld hl, sp+$78
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$f8], a
    ldh [$f0], a
    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    ld bc, $8080
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    db $fc
    inc bc
    cp $01
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
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$8f], a
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$7d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$cf]
    cp a
    ret nz

    db $fc
    add e
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    rst $38
    nop
    ld a, b
    rlca
    ld a, $01
    rrca
    nop
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    rlca
    ld hl, sp-$7a
    ld a, c
    inc bc
    db $fc
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
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
    ld a, [hl]
    add c
    ld a, $c1
    ld e, $e1
    ld b, $f9
    ld [bc], a
    db $fd
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
    nop
    rst $38
    ld e, b
    and a
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    ld hl, sp+$07
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

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    ld [$0000], sp
    nop
    db $fc
    nop
    add d
    ld a, h
    rrca
    ldh a, [$f1]
    ld c, $7f
    add b
    rra
    ldh [rSB], a
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
    inc c
    di
    ld a, $c1
    ld e, b
    and a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld a, b
    add a
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
    rst $38
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
    db $fd
    cp $fd
    xor $fd
    adc $fd
    adc [hl]
    cp $8d
    cp $8c
    cp $8c
    cp $8c
    cp $8c
    cp $8c
    cp $8d
    cp $8d
    cp $8d
    adc $bd
    adc $b5
    adc $b5
    xor $95
    xor $99
    db $ec
    sbc b
    db $fc
    sbc h
    rst $38
    sbc h
    db $fc
    adc [hl]
    call c, $dc8e
    add [hl]
    db $fc
    adc [hl]
    call c, $dc8e
    adc [hl]
    db $fc
    adc [hl]
    db $ec
    adc [hl]
    call z, $8c8e
    adc [hl]
    adc b
    adc h

jr_010_7f6c:
    add hl, bc
    sbc h

jr_010_7f6e:
    jr jr_010_7f6c

    jr jr_010_7f6e

    ld [$08fc], sp
    db $f4
    ld e, h
    and e
    rst $38
    nop
    db $eb
    inc d
    rst $38
    nop
    rst $38

Call_010_7f7f:
    nop
    rlca
    ld hl, sp-$80
    ld a, a
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    inc bc
    db $fc
    db $10
    rst $28
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    or $09
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, h
    add e
    ld a, [hl]
    add c
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
    ld hl, sp+$03
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
    inc bc
    rst $38
    ei
    rlca
    ei
    rlca
    ei
    rlca
    di
    rlca
    jp $4307


    add a
    ld h, e
    rlca
    inc hl
    rlca
    inc sp
    rlca
    sbc e
    rlca
    dec bc
    rlca
    inc bc
    rlca
    ld b, e
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    rra
    adc a
    rra
