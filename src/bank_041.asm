SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0f06
    ld c, $0a
    dec c
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    ld [$080d], sp
    ld c, $0b
    rrca
    ld c, $0e
    dec c
    rrca
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $28
    rst $38
    rst $38
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
    rst $38
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
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    ld a, l
    ld a, l
    ccf
    ccf
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
    dec a
    dec a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld d, $16
    ld a, $3e
    ld a, $3e
    add hl, hl
    add hl, hl
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop

jr_041_40b6:
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    ld [hl], h
    nop
    or b
    jr nz, jr_041_40b6

    nop
    ldh [$c0], a
    ldh [$e0], a
    ldh [$f2], a
    ld a, [c]
    ld a, [$e3fa]
    inc e
    rrca
    ldh a, [$3e]
    ret nz

    pop af
    nop
    ld b, a
    nop
    cpl
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
    rst $28
    db $10
    cp h
    ld b, b
    ld a, a
    ld a, h
    ei
    ld hl, sp-$04
    ldh [$f1], a
    add b
    db $e4
    nop
    adc a
    nop
    dec l
    nop
    ld a, d
    nop
    add l
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld e, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add c
    rst $38
    rlca
    rst $38
    ld a, l
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld l, b
    rst $38
    jp hl


    rst $38
    cp a
    rst $38
    ld a, [de]
    rst $38
    inc d
    rst $38
    rst $38
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
    rst $28
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ei
    ei
    rst $38
    rst $38
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
    ld h, l
    ld h, l
    ldh [$e0], a
    sub d
    sub d
    dec bc
    dec bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc h
    inc h
    or b
    or b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    add a
    nop
    add a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $10
    ld [$04da], sp
    cp h
    db $fc
    rst $38
    cp $7b
    ld a, [hl]
    rst $38
    ld a, [hl]
    sbc a
    ld a, a
    xor b
    rst $38
    ret nz

    rst $38
    nop
    ld a, [hl]
    add b
    rrca
    rst $38
    jr nc, @+$01

    ret nc

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f8
    db $f4
    ldh [$fa], a
    ret nz

    ldh [rP1], a
    inc [hl]
    rst $38
    or $ff
    ld b, e
    rst $38
    sub [hl]
    rst $38
    jr @+$01

    nop
    rst $38
    jr nz, @+$01

    add sp, -$01
    or l
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [$ffff]
    rst $38
    inc sp
    rst $38
    jp nc, $b1ff

    rst $38
    ldh [rIE], a
    adc b
    rst $38
    ld hl, $20ff
    rst $38
    inc d
    rst $38
    sbc e
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    db $fd
    db $fd
    rst $28
    rst $28
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $10
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $de
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
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
    rst $28
    rst $28
    ld l, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld h, c
    ld h, c
    ld de, $0a11
    ld a, [bc]
    inc b
    inc b
    ld b, $06
    add h
    add h
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    sub b

jr_041_4297:
    sub b
    ld [hl], b
    ld [hl], b
    add hl, sp
    add hl, sp
    ld a, b
    ld a, b
    jr c, jr_041_42d8

    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    jr z, jr_041_4297

    nop
    sbc $00
    db $fd
    nop
    ld a, h
    nop
    ld a, l
    ccf
    rst $38
    ld a, a
    db $fc
    ld a, a
    ldh [rIE], a
    add b
    rst $38
    nop
    ld sp, hl
    nop
    rst $00
    nop
    ccf
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
    cp $fd
    db $fc
    db $fc
    ldh a, [$f8]
    ret nz

    jr nc, jr_041_42d6

jr_041_42d6:
    adc a
    nop

jr_041_42d8:
    rlca
    nop
    rra
    nop
    rst $38
    nop
    rst $30
    nop
    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, c
    rst $38
    rla
    rst $38
    ld hl, $f2ff
    rst $38
    ld [c], a
    rst $38
    rst $00
    rst $38
    ld e, d
    rst $38
    db $dd
    rst $38
    ld [de], a
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    dec c
    rst $38
    add c
    rst $38
    dec d
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    nop
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
    rst $38
    rst $38
    sbc $de
    db $fd
    db $fd
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ee
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    or d
    jp nz, $82c2

    add d
    dec b
    dec b
    ld d, l
    ld d, l
    jr jr_041_438e

    jr c, jr_041_43b0

    jr c, jr_041_43b2

    jr @+$1a

    db $10
    db $10
    jr @+$1a

    jr @+$1a

    rrca
    rrca
    jr nc, jr_041_43c5

    ret nc

    rst $18
    ldh [rIE], a
    ld [c], a
    rst $38
    and $ff

jr_041_438e:
    and $ff
    adc c
    ldh [$08], a
    ldh [rBCPS], a
    ldh [$8c], a
    ldh [$94], a
    ldh a, [rDIV]
    ldh a, [rLY]
    ldh a, [rSCY]
    ld hl, sp+$7a
    ld hl, sp-$06
    ld hl, sp-$05
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc

jr_041_43b0:
    db $fd
    db $fc

jr_041_43b2:
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $fc
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd

jr_041_43c5:
    ld hl, sp-$0b
    ldh a, [$e0]
    ldh [$88], a
    add b
    ld b, e
    nop
    rrca
    nop
    ldh [rIE], a
    add [hl]
    rst $38
    ld c, $ff
    inc e
    rst $38
    dec sp
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    cp $ff
    ld a, b
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    dec d
    rst $38
    inc l
    rst $38
    ld e, d
    rst $38
    ld [hl-], a
    rst $38
    or h
    rst $38
    cpl
    rst $38
    ld a, l
    rst $38
    call z, $96ff
    rst $38
    inc l
    rst $38
    ld e, c
    rst $38
    rra
    rst $38
    dec d
    rst $38
    ld h, [hl]
    rst $38
    ld [hl], $ff
    scf
    rst $38
    or a
    rst $38
    ld a, h
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei

Call_041_4433:
    ei
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld a, [$f2fa]
    ld a, [c]
    jp hl


    jp hl


    ret c

    ret c

    sbc h
    sbc h
    jr jr_041_4472

    ld [$0808], sp
    ld [$0808], sp
    ld [$6508], sp
    ld h, l
    di
    di
    di
    di
    db $e3
    db $e3
    pop hl
    pop hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    nop
    rst $38

jr_041_4472:
    rra
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    cpl
    rra
    sbc a
    rrca
    sbc a
    rrca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    rst $08
    rlca
    ld c, a
    rlca
    ld c, a
    inc bc
    ld l, a
    inc bc
    ld l, a
    inc bc
    daa
    inc bc
    scf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], e
    ld [hl], a
    ld [hl], e
    ld [hl], a
    ld [hl], e
    ld [hl], l
    ld [hl], c
    ld c, a
    ld b, b
    scf
    inc bc
    rst $10
    inc de
    rst $38
    nop
    db $f4
    ldh a, [$c0]
    ret nz

    cp [hl]
    add b
    db $e3
    nop
    cp a
    nop
    ld e, $00
    ld a, b
    nop
    ei
    nop
    push de
    nop
    ld [$c300], a
    rst $38
    ld b, a
    rst $38
    sub [hl]
    rst $38
    sbc d
    rst $38
    add h
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld c, d
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [$08ff], sp
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    ld c, a
    nop
    rst $08
    ld bc, $005d
    ld e, h
    nop
    ld e, c
    nop
    dec e
    nop
    ccf
    nop
    cp l
    adc $ce
    ret z

    ret z

    ret z

    ret z

    ret


    ret


    call nz, $c8c4
    ret z

    ld hl, sp-$08
    db $f4
    db $f4
    di
    di
    db $d3
    db $d3
    db $e3
    db $e3
    pop de
    pop de
    pop de
    pop de
    ld [c], a
    ld [c], a
    ld c, d
    ld c, d
    db $ec
    db $ec
    call z, $c4cc
    call nz, $e4e4
    db $ec
    db $ec
    or $f6
    cp $fe
    ei
    ei
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
    add a
    rst $38
    cp c
    rst $00
    cp l
    jp $c3bd


    cp l
    jp $c3bd


    cp l
    jp $c3bd


    adc l
    di
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    ret z

    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $36
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    cp b
    ld b, a
    db $fc
    inc bc
    dec de
    inc b
    dec c
    ld [bc], a
    dec bc
    inc b
    ld [$1b07], sp
    inc b
    ld b, $01
    add hl, bc
    ld b, $09
    ld b, $1b
    inc b
    ld bc, $0006
    rlca
    ld bc, $0906
    ld b, $00
    ld b, $f9
    ld sp, hl
    db $fd
    ld bc, $01ff
    ei
    ld bc, $01e3
    db $db
    add hl, de
    ld e, c
    jr jr_041_4618

    jr c, jr_041_461e

    inc a
    ld a, l
    inc a
    ld a, l
    nop
    ld [hl], $10
    jr c, jr_041_45aa

jr_041_45aa:
    or b
    db $10
    jr nz, jr_041_45ae

jr_041_45ae:
    ld hl, $6c00
    rst $38
    cpl
    rst $38
    ld a, [hl+]
    rst $38
    db $ec
    rst $38
    ld a, [$2fff]
    rst $38
    cp $ff
    ld a, [$ceff]
    rst $38
    ld sp, hl
    rst $38
    and h
    rst $38
    xor b
    rst $38
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, h
    add b
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $18
    ldh [$df], a
    ldh [$5f], a
    rst $18
    dec de
    db $db
    rra
    ld e, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rrca
    ld l, a
    rla
    ld [hl], a
    rrca
    rst $28
    rra
    rst $38
    ccf
    rst $38
    rrca
    rst $18
    dec de
    db $db
    dec de
    db $db
    dec sp
    ei
    dec de
    db $db
    rra
    ld a, a
    rlca
    scf
    rla
    scf
    rlca
    scf
    rrca
    cp a
    rrca
    ccf
    cpl
    rst $38
    daa
    rst $28
    inc bc
    rlc e
    db $eb
    rlca
    rst $38
    rlca
    rst $38

jr_041_4618:
    rlca
    rst $18
    dec bc
    ccf
    inc bc
    or a

jr_041_461e:
    ld [bc], a
    sub [hl]
    jp nz, $c8ff

    rst $38
    adc [hl]
    rst $38
    ld e, $ff
    scf
    rst $38
    rra
    rst $38
    rra
    cp $1e
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
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
    ld a, a
    ld a, a
    cp a
    cp a
    rst $28
    rst $28
    ld [hl], d
    ld [hl], d
    rrca
    rrca
    ld a, d
    ld a, d
    ret nz

    ret nz

    db $10
    db $10
    ld bc, $0f01
    rrca
    ld a, h
    ld a, h
    db $e3
    db $e3
    add a
    add a
    rlca
    rlca
    add a
    add a
    add a
    add a
    sub [hl]
    ld l, c
    sbc e
    ld h, h
    ld [hl], l
    ld a, [bc]
    xor l
    ld [hl], d
    scf
    ret z

    and a
    ld e, b
    rst $28
    db $10
    ld a, a
    nop
    rst $38
    rst $38
    cp $fe
    ld a, l
    ld a, b
    db $ed
    ld h, b
    call c, $b140
    nop
    ld l, e
    nop
    xor a
    nop
    jp nz, $f2ff

    rst $38
    inc [hl]
    rst $38
    add b
    rst $38
    jr @+$01

    ldh [rIE], a
    jr nz, @+$01

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
    ld a, a
    rst $38
    ld [hl-], a
    rst $38
    jr nz, @+$01

    rst $18
    nop
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
    ei
    inc b
    rst $38
    nop
    ld sp, hl
    ld sp, hl
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
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ld e, [hl]
    rst $38
    ld b, $ff
    adc b
    rst $38
    pop bc
    rst $38
    jp $e7ff


    rst $38
    rst $30
    rrca
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0103
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    rst $00
    rst $00
    dec hl
    dec hl
    cpl
    cpl
    ld a, l
    ld a, l
    di
    di
    xor a
    xor a
    jp hl


    jp hl


    rst $28
    rst $28
    cpl
    cpl
    ld a, a
    ld a, a
    rst $30
    rst $30
    sbc e
    sbc e
    db $eb
    db $eb
    cp a
    cp a
    ccf
    ccf
    rst $38
    cp $ff
    db $fc
    rst $30
    ldh a, [$f8]
    ldh [$b7], a
    add b
    sbc a
    rst $38
    ld h, a
    rst $38
    call nz, $a8ff
    rst $38
    db $e4
    rst $38
    cp h
    rst $38
    jp nc, $c0ff

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
    rst $38
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
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $28
    rst $28
    rst $08
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    db $fd
    db $fd
    ld a, l
    ld a, l
    rst $38
    rst $38
    xor $ef
    call z, $edcf
    rst $28
    db $ed
    rst $28
    ld a, [$70ff]
    ld a, c
    ld a, b
    ld a, b
    ld [hl], b
    ld a, c
    jr nc, jr_041_47fd

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $18
    ldh [$df], a
    ldh [$de], a
    pop hl
    rst $18
    ldh [$df], a
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rla
    nop
    add hl, de
    nop
    inc a
    nop
    ld a, h
    ld bc, $fcfd
    cp $da
    jp c, $8080

    add b
    add b
    and b
    add b
    add b
    add b
    stop
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld c, b
    scf
    call z, Call_041_4433
    dec sp
    ret z

    scf
    ld l, h
    inc de
    adc a
    adc a
    add l
    add l
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    daa
    nop
    cp a
    nop
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

jr_041_47fd:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    cp h
    cp [hl]
    sbc b
    sbc h
    inc a
    ld a, $30
    inc a
    or h
    cp [hl]
    ldh a, [$fd]
    ret nc

    rst $30
    ret nz

    db $e3
    nop
    rst $20
    add b
    rst $30
    add b
    rst $30
    db $10
    cp d
    nop
    sbc h
    nop
    inc e
    nop
    cp [hl]
    nop
    cp [hl]
    add b
    push af
    nop
    rst $30
    nop
    db $e3
    nop
    rst $30
    nop
    rst $30
    db $10
    db $10
    ld b, c
    ld b, c
    db $e3
    db $e3
    inc bc
    db $e3
    pop bc
    ld hl, $21c1
    sra e
    db $dd
    dec a
    rst $18
    ccf
    dec de
    ei
    ei
    ei
    rst $30
    rst $30
    rst $38
    rst $38
    ei
    ei
    di
    di
    rst $18
    rst $18
    nop
    cp l
    nop
    db $e3
    nop
    db $e3
    db $10
    rst $30
    db $10
    rst $30
    ld d, l
    rst $38
    xor [hl]
    xor [hl]
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_041_488a

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $06
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $f701
    rst $30
    ld a, a
    ld a, a
    and c
    and c
    cp $00
    rst $38
    nop

jr_041_488a:
    cp $00
    db $e4
    nop
    sub d
    nop
    inc h
    rst $38
    ld a, d
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$0c]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    rst $38
    ld b, b
    rst $18
    ld b, b
    ei
    nop
    ld sp, hl
    nop
    ld a, c
    add b
    ld sp, hl
    nop
    ei
    nop
    ld sp, hl
    add b
    rst $10
    nop
    adc a
    nop
    adc a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ei
    nop
    ld a, c
    ld b, $06
    inc b
    inc b
    ld b, $06
    xor b
    xor b
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    jr nz, jr_041_491e

    jr nz, jr_041_4920

    ld d, b
    ld d, b
    ld b, $06
    add [hl]
    add [hl]
    inc c
    inc c
    inc b
    inc b
    nop
    rst $38
    ld a, [hl]
    add c
    cp [hl]
    ld b, c
    ld a, d
    add l
    sbc $21
    cp $01
    nop
    rst $38
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    ld b, $06

jr_041_491e:
    inc b
    inc b

jr_041_4920:
    ld [bc], a
    rst $30
    nop
    adc a
    nop
    adc [hl]
    ld d, b
    rst $18
    nop
    rst $18
    ld e, e
    rst $18
    xor e
    xor e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    ld a, a
    nop
    ret nz

    ccf
    ld h, b
    rra
    cp a
    add b
    ld a, a
    ld a, a
    ld bc, $0101
    ld bc, $0101
    db $db
    db $db
    rst $38
    rst $38
    ld c, a
    ld c, a
    ld bc, $e101
    ld bc, $01c9
    adc c
    add hl, bc
    ld [hl], a
    rlca
    cp a
    rrca
    ld a, a
    inc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    sbc h
    ld a, a
    add b
    or $09
    ldh [$1f], a
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    db $76
    adc c
    ld a, l
    add d
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_041_49ec

    nop
    inc a
    nop
    rst $30
    nop
    db $e3
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $28
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $8080


    jr c, @+$3a

    inc e
    inc e
    jr jr_041_49ea

    jr jr_041_49ec

    jr jr_041_49ee

    and e
    and e
    jp $c3c3


    jp $c3c3


    add e
    add e
    add b
    add b
    inc a
    inc a
    jr jr_041_49fe

    jr jr_041_4a00

    db $10
    db $10

jr_041_49ea:
    jr jr_041_4a04

jr_041_49ec:
    add $c6

jr_041_49ee:
    jp $c3c3


    jp $8383


    add e
    add e
    ld d, b
    ld d, b
    jr jr_041_4a12

    jr jr_041_4a14

    db $10
    db $10

jr_041_49fe:
    jr jr_041_4a18

jr_041_4a00:
    nop
    rst $18
    nop
    ld a, c

jr_041_4a04:
    nop
    jr c, jr_041_4a07

jr_041_4a07:
    ld a, h
    jr nz, jr_041_4a87

    ld l, $7e
    rst $38
    rst $38
    nop
    nop
    dec d
    nop

jr_041_4a12:
    nop
    nop

jr_041_4a14:
    add hl, hl
    add hl, hl
    nop
    nop

jr_041_4a18:
    rlca
    nop
    ld b, a
    ld b, b
    jr nz, jr_041_4a3e

    nop
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nc

    ret nc

    rst $38
    rst $38
    sbc a
    sbc a
    cp a
    add b
    rst $18
    add b
    or a
    add b
    or b
    sub b

jr_041_4a3e:
    ld [c], a
    ldh [$fa], a
    ldh a, [$fd]
    inc a
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    ld a, b
    add a
    add sp, $17
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
    ld b, [hl]
    cp c
    nop
    rst $38
    nop
    rst $38
    sub h
    ld l, e
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    cp $01
    cp $01
    nop
    nop
    nop
    nop
    ld bc, $f600

jr_041_4a87:
    add hl, bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld b, $09
    add hl, bc
    jr nc, jr_041_4ac6

    ld [hl], b
    ld [hl], b
    jr nc, jr_041_4aca

    jr nc, jr_041_4acc

    jr nz, jr_041_4abe

    ld d, l
    ld d, l
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    ld b, $06
    inc b
    inc b
    ld b, $06
    xor c
    xor c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nz, jr_041_4ad2

    jr nc, jr_041_4ae4

    ld h, b
    ld h, b
    ld c, $0e
    adc [hl]
    adc [hl]
    ld b, $06
    inc b
    inc b

jr_041_4abe:
    inc b
    inc b
    xor b
    xor b
    ld [hl], c
    ld [hl], c
    ld h, c
    ld h, c

jr_041_4ac6:
    ld h, b
    ld h, b
    jr nz, @+$22

jr_041_4aca:
    ld b, b
    ld b, b

jr_041_4acc:
    add [hl]
    add [hl]
    adc [hl]
    adc [hl]
    ld [bc], a
    di

jr_041_4ad2:
    nop
    di
    nop
    ei
    nop
    db $dd
    nop
    adc a
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    cp a
    nop
    sbc $00
    di

jr_041_4ae4:
    nop
    pop af
    nop
    di
    ld [$72fb], sp
    di
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
    nop
    ret nc

    ret nc

    nop
    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    nop
    db $fc
    nop
    rst $10
    nop
    inc h
    nop
    ld [de], a
    nop
    jr nz, @+$01

    ld bc, $4cff
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
    nop
    rst $38
    ld [bc], a
    db $fd
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_041_4b47:
    rst $38
    inc hl
    call c, $8c73
    daa
    ret c

    rlca
    ld hl, sp+$07
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
    nop
    nop
    nop
    dec hl
    nop
    jr nz, jr_041_4b47

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or e
    rst $28
    ld [$5008], sp
    ld d, b
    pop hl
    pop hl
    pop hl
    pop hl
    ldh [$e0], a
    ld b, c
    ld b, c
    add c
    add c
    ld a, [hl+]
    ld a, [hl+]
    inc e
    inc e
    jr jr_041_4b9c

    inc c
    inc c
    ld [$1408], sp
    inc d
    ld h, e
    ld h, e
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    adc d
    adc d
    inc a
    inc a
    jr jr_041_4bb2

    jr jr_041_4bb4

jr_041_4b9c:
    db $10
    db $10
    jr jr_041_4bb8

    and l
    and l
    jp $c3c3


    jp $c1c1


    pop bc
    pop bc
    ld b, d
    ld b, d
    jr jr_041_4bc6

    jr jr_041_4bc8

    nop
    rst $20

jr_041_4bb2:
    nop
    rst $28

jr_041_4bb4:
    nop
    rst $20
    nop
    ld e, [hl]

jr_041_4bb8:
    nop
    inc a
    nop
    inc a
    ld bc, $007d
    ld a, h
    dec b
    cp l
    nop
    rst $00
    nop
    rst $00

jr_041_4bc6:
    jr nz, @-$17

jr_041_4bc8:
    adc c
    rst $28
    rst $20
    rst $28
    db $fd
    db $fd
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    ld a, l
    dec a
    dec a
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld a, h
    nop
    ld c, a
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
    rst $38
    rst $38
    ld b, b
    nop
    rst $28
    rst $28
    and d
    nop
    ld b, h
    nop
    cp $00
    ccf
    nop
    ld c, a
    nop
    sbc a
    rst $38
    sub [hl]
    rst $38
    add d
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
    ld hl, sp+$07
    ld a, c
    add [hl]
    ld l, [hl]
    sub c
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38

jr_041_4c2a:
    nop
    rst $38
    ret nz

    ccf
    ld h, h
    sbc e
    ld [bc], a
    db $fd
    xor $11
    rst $28
    db $10
    ld h, a
    sbc b
    rst $20
    jr jr_041_4c2a

    db $10
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, $c1
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
    nop
    nop
    nop
    db $ed
    ld [de], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $20
    rst $38
    add hl, hl
    add hl, hl
    add e
    add e
    jp $83c3


    add e
    add c
    add c
    add e
    add e
    inc d
    inc d
    jr c, jr_041_4ca8

    jr c, jr_041_4caa

    jr c, jr_041_4cac

    db $10
    db $10
    jr nc, jr_041_4ca8

    jr z, jr_041_4ca2

    rst $00
    rst $00
    add e
    add e
    add e
    add e
    add e
    add e
    add l
    add l
    jr z, jr_041_4cae

    jr c, jr_041_4cc0

    jr c, jr_041_4cc2

    jr nz, jr_041_4cac

    jr nc, jr_041_4cbe

    jr nz, jr_041_4cb0

    ld c, e
    ld c, e
    add a
    add a
    add a
    add a
    ld b, $06
    ld b, $06
    add c
    add c
    jr c, jr_041_4cd6

    ld [hl], b
    ld [hl], b
    nop
    rst $08

jr_041_4ca2:
    nop
    rst $18
    nop
    rst $08
    ld [bc], a
    ei

jr_041_4ca8:
    nop
    ld a, b

jr_041_4caa:
    nop
    pop af

jr_041_4cac:
    ld [bc], a
    ei

jr_041_4cae:
    nop
    ei

jr_041_4cb0:
    inc c
    db $fd
    ld bc, $099f
    sbc a
    sub a
    sbc a
    ld e, [hl]
    rst $18
    cp a
    cp a
    rst $38
    rst $38

jr_041_4cbe:
    ld sp, hl
    ld sp, hl

jr_041_4cc0:
    ei
    ei

jr_041_4cc2:
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $18
    rst $18
    sbc a
    sbc a
    cp a
    cp a
    rla
    rla
    nop
    rst $38
    ld [$00ff], sp
    rst $38

jr_041_4cd6:
    nop
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
    sbc a
    sbc a
    rst $38
    rst $38
    ccf
    nop
    nop
    nop
    ld a, c
    nop
    ld hl, sp+$00
    adc $00
    ei
    rst $38
    rra
    rst $38
    scf
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
    call nz, $fe3b
    ld bc, $c13e
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rBGP]
    cp b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

    daa
    add b
    ld a, a
    nop
    rst $38
    nop
    nop
    cpl
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$0b
    db $f4
    rst $08
    ld a, b
    rst $18
    rst $28
    nop
    cp l
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld sp, hl
    nop
    db $fd
    ld bc, $00fb
    rst $18
    nop
    adc a
    ld [hl], b
    ld [hl], b
    jr nz, jr_041_4d64

    jr nz, jr_041_4d66

    ld d, b
    ld d, b
    add l
    add l
    ld b, $06
    ld c, $0e
    ld b, $06
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld [hl], b
    ld [hl], b
    pop af
    pop af
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    nop
    ei
    nop
    pop af

jr_041_4d64:
    nop
    di

jr_041_4d66:
    nop
    di
    nop
    rst $30
    ld [$00bf], sp
    ld e, $00
    ld e, $00
    rra
    ld bc, $25bf
    ccf
    dec bc
    ei
    db $10
    pop af
    inc de
    di
    ld d, e
    rst $30
    ld [hl], a
    rst $30
    ld l, a
    rst $28
    ld e, $7e
    ld a, $3e
    ld a, $3e
    cp $fe
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
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
    ld bc, $0000
    ld b, e
    nop
    ld h, e
    nop
    dec [hl]
    nop
    adc b
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_041_4dcd:
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    jr nz, jr_041_4dcd

    nop
    rst $38
    nop
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
    rst $18
    ld hl, sp-$41
    sub $79
    rst $38
    pop af
    cp $f9
    cp $f9
    or $fa
    db $f4
    db $fd
    ldh a, [$9e]
    ld hl, sp+$1e
    ld hl, sp+$1c
    ld hl, sp-$42
    ld hl, sp-$42
    cp $7f
    sbc $f7
    ld a, [$fef1]
    di
    db $fc
    ei
    db $fc
    inc bc
    di
    rlca
    rst $28
    inc hl
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    cp a
    inc bc
    ccf
    inc bc
    rst $30
    di
    db $fc

jr_041_4e32:
    db $e3
    db $fc
    db $e3
    db $fc
    push af
    ld hl, sp-$09
    add sp, $7d
    sub b
    cp a
    ld h, b
    ccf
    ret nc

    ld a, a
    ret nc

    ld a, a
    add b
    ld a, l
    add b
    rst $38
    nop
    push hl
    jr jr_041_4e32

    jr @-$01

    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    ld a, $c0
    ld a, h
    add b
    ld hl, sp+$00
    ld a, b

jr_041_4e5b:
    add b
    ld hl, sp+$00
    add sp, $10
    ret c

    jr nz, jr_041_4e5b

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    rlca
    rst $38
    cp a
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
    ld e, a
    rst $38
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
    rst $28
    rra
    rst $08
    ccf
    rst $08
    ccf
    db $d3
    ccf
    di
    rra
    jp hl


    rra
    db $ec
    rra
    cp $1f
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    sbc a
    ld a, a
    rst $18
    ld a, a
    rst $08
    ld a, a
    xor a
    ld a, a
    rst $28
    ccf
    rst $30
    ccf
    rst $30
    rra
    di
    rra
    db $eb
    rra
    ld sp, hl
    rrca
    db $fd
    rrca
    db $fc
    rlca
    cp $07
    cp $03
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    cp $01
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    cp c
    ld b, b
    ld a, [c]
    nop
    db $e4
    nop
    rla
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
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
    sbc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    pop af
    rst $38
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, b
    rst $38
    ld e, h
    rst $38
    ret c

    rst $38
    sbc [hl]
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add h
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
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    adc a
    nop
    add a
    nop
    add a
    nop
    rlca
    nop
    rlca
    nop
    inc c
    inc bc
    dec c
    ld [bc], a
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    rlca
    inc c
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    rra
    nop
    rra
    nop
    jr @+$09

    jr @+$09

    inc e
    inc bc
    inc e
    inc bc
    jr jr_041_500d

    jr jr_041_500f

    jr @+$09

    dec sp
    rlca
    dec sp

jr_041_500d:
    rlca
    dec sp

jr_041_500f:
    rlca
    jp nz, $c2fd

    db $fd
    ret nz

    rst $38
    ret nz

    rst $38
    push bc
    rst $38
    add $f9
    call nc, $c6fb
    ld sp, hl
    db $f4
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f5]
    ldh a, [$f5]
    ldh a, [$f5]
    ldh a, [$f0]
    push af
    db $fd
    ldh a, [rNR10]
    rrca
    rrca
    nop
    dec b
    nop
    nop
    nop
    inc b
    ld [$0700], sp
    nop
    rrca
    ld [$ef07], sp
    ldh a, [$e0]
    rst $38
    ldh [$e0], a
    db $e4
    add sp, -$1c
    add sp, -$1c
    add sp, -$1c
    ld hl, sp-$1c
    add sp, -$20
    rst $38
    ldh [rIE], a
    push af
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    pop bc
    rst $20
    sub d
    ret nz

    ret nz

    ret nz

    rra
    db $fd
    dec e
    rst $38
    rra
    rst $38
    dec de
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_041_5077

jr_041_5077:
    ld a, a
    nop
    ld a, a
    ld d, d
    ccf
    ld b, c
    ld a, $42
    ccf
    ld e, b
    daa
    ld b, l
    ld a, $49
    db $76
    ld c, c
    db $76
    add hl, bc
    ld a, [hl]
    nop
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    nop
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
    nop
    ld h, b
    nop
    nop
    nop
    nop
    xor d
    nop
    rst $38
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
    ret nz

    nop
    ld d, l
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
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
    adc b
    nop
    ret c

    inc bc
    rst $38
    db $f4
    rst $38
    ld l, a
    rst $38
    ld l, [hl]
    rst $38
    ld l, l
    rst $38
    rst $28
    rst $38
    ld l, h
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret


    nop
    rst $38
    nop
    rst $38
    rst $38
    xor d
    rst $38
    ld c, l
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    db $db
    rst $38
    ei
    sub c
    sub c

jr_041_510c:
    sub e
    sub e
    sub b
    sub b
    nop
    nop
    nop
    sub h
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    or b
    dec b
    or c
    inc b
    ld e, d
    rst $28
    ld a, d
    rst $18
    ld e, d
    rst $38
    ld a, d
    ld e, a
    ld d, e
    db $76
    rst $10
    or $73
    ld e, d
    jp c, Jump_000_00f3

    rst $38
    rst $38
    nop
    ld a, a
    nop
    ld [bc], a
    nop
    ld d, d
    and l
    ld de, $4084
    add b
    add hl, bc
    ldh a, [$de]
    ld h, $3b
    ld b, e
    jr nz, jr_041_518a

    ld h, b
    add h
    ldh [rP1], a
    jr nz, jr_041_510c

    ld h, b
    add b
    ld b, b
    add b
    inc c
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $04c1
    nop
    rst $38
    db $db
    and a
    rst $38
    rst $38
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
    rra
    nop
    inc bc
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld a, [hl+]
    db $dd
    inc b
    rst $38
    rst $28
    rst $38
    cp $ff
    ei
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38

jr_041_518a:
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_041_51c4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_041_51d4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_041_51e4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_041_51f4

    ld [hl-], a

jr_041_51c4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_041_5204

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec bc
    ld a, $3f
    ld b, b
    ld b, c

jr_041_51d4:
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
    dec bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_041_51e4:
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

jr_041_51f4:
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
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_041_5204:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld l, e
    ld a, b
    ld a, c
    ld l, e
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
    add h
    sub h
    sub l
    sub [hl]
    sub a
    ld l, e
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
    ld l, e
    ld l, e
    and h
    ld l, e
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
    ld l, e
    ld l, e
    ld l, e
    ld l, e
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
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_041_6bc3

    call nz, Call_041_6bc5
    add $c7
    ret z

    ld l, e
    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld l, e
    pop de
    jp nc, $d36b

    call nc, $d6d5
    ld l, l
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld l, e
    sbc $df
    ld l, e
    ldh [rOCPD], a
    pop hl
    ld [c], a
    db $e3
    ld l, l
    db $e4
    dec bc
    push hl
    and $e7
    add sp, $6b
    jp hl


    ld [$eb6b], a
    ld l, e
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
    dec bc
    ld c, $0f
    db $10
    ld de, $1312
    dec bc
    dec bc
    inc d
    dec bc
    dec bc
    dec d
    ld d, $17
    jr jr_041_52d1

jr_041_52d1:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $07
    rlca
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $05
    ld [bc], a
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0202
    nop
    inc bc
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
    rlca
    ld bc, $0302
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0101
    rlca
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0202
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    nop
    inc bc
    ld bc, $0101
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
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0300
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
    ld [bc], a
    ld [bc], a
    rlca
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
    ld [bc], a
    rlca
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
    ld [bc], a
    rlca
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
    ld [bc], a
    rlca
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_041_53d3

jr_041_53d3:
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0002
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
    rlca
    rlca
    ld bc, $0107
    ld bc, $0001
    nop
    nop
    nop
    nop
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    add hl, bc
    ld [$0808], sp
    nop
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    rrca
    add hl, bc
    ld bc, $0901
    ld bc, $0901
    ld [$0808], sp
    ret nc

    ret nc

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    db $10
    db $10
    ld [$0008], sp
    nop
    ld bc, $0101
    ld bc, $0303
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
    sbc c
    sbc c
    ld e, h
    ld e, h
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld e, $1e
    inc e
    inc e
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    db $10
    db $10
    and b
    and b
    ret nz

    ret nz

jr_041_5460:
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_041_5460

    nop
    db $f4
    nop
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    nop
    db $fc
    nop
    cp $01
    rst $38
    ld b, b
    cp $11
    rst $38
    dec h
    rst $38
    sub [hl]
    cp $65
    db $fd
    rst $08
    rst $28
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
    db $f4
    db $f4
    add b
    add b
    jr nz, jr_041_54bc

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
    jr c, jr_041_54e0

    ld b, c
    ld b, c
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
    nop
    nop
    jr nz, jr_041_54da

    nop
    nop

jr_041_54bc:
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_041_54da:
    ld b, $06
    dec d
    dec d
    ld a, [de]
    ld a, [de]

jr_041_54e0:
    ld a, [hl+]
    ld a, [hl+]
    jr @+$1a

    nop
    nop
    ld bc, $0301
    inc bc
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    add b
    add b
    ld b, b
    ld b, b
    add hl, de
    add hl, de
    dec e
    dec e
    ld a, $3e
    ld a, $3e
    ld e, $1e
    ld e, $1e
    ld c, $0e
    inc b
    inc b
    ld c, $0e
    inc c
    inc c
    ld c, $0e
    sub b
    sub b
    pop hl
    pop hl
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    sub b
    sub b
    add hl, bc
    add hl, bc
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
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    db $10
    db $10
    sbc d
    sbc d
    inc a
    inc a
    inc a
    inc a
    nop
    jp $e300


    nop
    db $e3
    nop
    di
    nop
    db $e3
    nop
    di
    db $10
    push af
    nop
    rst $28
    db $10
    rst $18
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld [bc], a
    ccf
    ld [bc], a
    ld a, a
    rla
    ccf
    ld a, [de]
    ccf
    db $dd
    db $dd
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
    db $fc
    db $fc
    db $d3
    db $d3
    jr @+$1a

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    db $10
    rst $28
    ret nz

    ld a, $08
    or $20
    sbc $80
    ld a, [hl]
    nop
    cp $01
    cp $00
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    jr c, jr_041_55de

    ld [$0808], sp
    ld [$0000], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    rra
    inc [hl]
    inc [hl]
    add sp, -$18
    sub b
    sub b
    ld b, c
    ld b, b
    adc e
    adc b

jr_041_55de:
    dec l
    jr nz, jr_041_5600

    nop
    ld a, $00
    sbc b
    nop
    xor $e0
    rst $30
    ldh a, [$fc]
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
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
    ldh a, [$f0]
    rst $38
    rst $38

jr_041_5600:
    ldh [$e0], a
    ret nz

    ret nz

    and b
    and b
    nop
    nop
    ld [de], a
    ld [de], a
    ld b, $06
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    inc bc
    inc bc
    inc bc
    sub h
    sub h
    jr c, jr_041_565a

    ld a, h
    ld a, h
    jr c, @+$3a

    jr c, jr_041_5660

    jr c, jr_041_5662

    jr jr_041_5644

    jr jr_041_5646

    jr jr_041_5648

    inc d
    inc d
    inc h
    inc h
    add d
    add d
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc

jr_041_563b:
    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b

jr_041_5644:
    ret nz

    ret nz

jr_041_5646:
    ld b, b
    ld b, b

jr_041_5648:
    inc b
    inc b
    rrca
    rrca
    rrca

jr_041_564d:
    rrca
    rrca
    rrca
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$04
    db $fd

jr_041_565a:
    nop
    ei
    ld [$00df], sp
    sub a

jr_041_5660:
    nop
    adc a

jr_041_5662:
    nop
    rrca
    nop
    add a
    nop
    adc a
    nop
    adc a
    ld b, h
    rst $28
    ld [bc], a
    rst $08
    sub [hl]
    rst $10
    rst $10
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    pop af
    pop af
    adc h
    adc h
    ld d, b

jr_041_5681:
    ld d, b
    nop
    nop
    nop
    nop
    ld bc, $0501
    dec b
    jr nc, jr_041_56bc

    add h
    add h
    ld bc, $0001
    ld bc, $0001
    add b
    add b
    add c
    add c
    add $c6
    ret nc

    ret nc

    ret nz

    ret nz

    nop
    nop
    jr nz, jr_041_5681

    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_041_56c7

    jr nz, jr_041_56c9

    and b
    rra
    and b
    rra
    and c
    ld e, $86
    add hl, de
    jr jr_041_563b

    jr z, jr_041_564d

    ld h, b
    sbc a
    ld b, b
    sbc a
    ld d, b
    adc a

jr_041_56bc:
    ld b, b
    adc a
    ld b, b
    adc a
    jr nc, jr_041_56f2

    add hl, sp
    add hl, sp
    dec a
    dec a
    add hl, sp

jr_041_56c7:
    add hl, sp
    ld d, h

jr_041_56c9:
    ld d, h
    ld l, b
    ld l, b
    sub b
    sub b
    ld h, c
    ld h, b
    ld b, e
    ld b, b
    ld c, $00
    ld e, $00
    ei
    add b
    rst $38
    nop
    ld [c], a
    nop
    ret z

    nop
    ld [hl], a
    nop
    xor h
    rst $38
    ldh a, [rIE]
    pop af
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
    nop
    nop

jr_041_56f2:
    nop
    nop
    nop
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
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nc, @+$32

    jr nz, jr_041_572a

    ld d, b
    ld d, b
    adc b
    adc b
    add [hl]
    add [hl]
    rlca
    rlca
    add a
    add a
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    add e
    add e
    ld d, d
    ld d, d
    inc d
    inc d
    inc a
    inc a
    inc e
    inc e
    inc e
    inc e

jr_041_572a:
    inc e
    inc e

jr_041_572c:
    ld [$0808], sp
    ld [$0c0c], sp
    inc d
    inc d
    jp nz, $e0c2

    ldh [$e1], a
    pop hl
    pop hl
    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld h, b
    ld h, b
    add c
    add c
    ld d, $16
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    nop
    ld sp, hl
    nop
    db $fd
    ld bc, $00fd
    db $fd
    ld bc, $08fb
    rst $18
    nop
    rst $08
    nop
    add a
    nop
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    rst $28
    ld [bc], a
    rst $28
    ld b, d
    rst $20
    or e
    rst $30
    adc d
    jp c, $fe7c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    jp z, $34ca

    inc [hl]
    and d
    and d
    jr nz, jr_041_57a0

    add c
    add c
    dec bc
    dec bc
    ld sp, $8931
    adc c
    jr nz, jr_041_57aa

    add b
    add b
    nop
    nop
    jr nc, jr_041_57d0

    add $26
    jr jr_041_572c

    ld h, d
    ld h, d
    adc b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_041_57a0:
    nop
    ld [$5020], sp
    ld bc, $03e1
    inc bc
    inc c
    inc c

jr_041_57aa:
    jr nc, jr_041_57dc

    ldh [$e0], a
    add b
    add b
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $20
    cp $cf
    db $fd
    rst $38
    ld a, [c]
    rst $38
    db $eb
    rst $38
    sub $ff
    jp nc, Jump_041_61d2

    ld h, b
    ld b, a
    ld c, b
    cpl
    jr nz, jr_041_57e8

    nop
    rst $38
    add b
    cp $00
    ld sp, hl
    nop

jr_041_57d0:
    ld a, [hl]
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    ld a, a
    rst $38
    ld e, h
    rst $38
    rra
    rst $38

jr_041_57dc:
    ld [$e1ff], a
    rst $38
    jr z, @+$01

    jp z, Jump_000_08ff

    rst $38
    rst $20
    rst $38

jr_041_57e8:
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    pop hl
    pop hl
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld b, c
    ld b, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    sub b
    sub b
    dec b
    dec b
    ld b, $06
    add [hl]
    add [hl]
    ld c, $0e
    ld b, $06

jr_041_580c:
    inc b
    inc b
    ld [bc], a
    ld [bc], a

jr_041_5810:
    inc b
    ld a, l
    nop
    xor d
    nop
    xor $00
    rst $08
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    inc b
    ld e, a
    nop
    inc a
    nop
    dec e
    nop
    inc a
    nop
    inc a
    nop
    ld a, [hl]
    nop

jr_041_5831:
    ld a, $00
    cp [hl]
    nop
    cp a
    jr nz, jr_041_5831

    nop
    di
    ld [bc], a
    di
    ld [bc], a
    di
    nop
    di
    nop
    ei
    ld [$08fb], sp
    ei
    ld bc, $11f7
    rst $18
    ld de, $039f
    adc a
    dec bc
    adc a
    rlca
    rst $18
    ccf
    rst $38
    sbc a
    rst $18
    rst $08
    rst $08
    push af
    push af
    cp c
    ld sp, hl
    ld a, b
    ld a, b
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    db $ed
    db $ed
    ld l, $2e
    xor a
    xor a
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    ld c, a
    ld c, a
    add a
    ld a, b
    rrca
    ldh a, [$87]
    ld a, b
    ld b, $f8
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    ld b, a
    jr c, jr_041_580c

    ld a, b
    rst $00
    jr c, jr_041_5810

    ld a, b
    jp $033c


    cp h
    inc bc
    cp h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, d
    ld h, d
    ld hl, $2020
    jr nz, jr_041_58df

    ld b, h
    inc h
    inc h
    jr nz, jr_041_58c0

    jr nz, @+$22

    jr nz, jr_041_58c4

    jr nz, jr_041_58c6

    ld [hl], c
    ld [hl], b
    and a
    and b
    rrca
    nop
    ld a, a
    ld b, b
    ld a, [hl]
    nop
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $76
    rst $38

jr_041_58c0:
    ld de, $00ff
    rst $38

jr_041_58c4:
    nop
    rst $38

jr_041_58c6:
    ld h, c
    rst $38
    ld a, [bc]
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    call nz, Call_041_70ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_041_58df:
    rst $38
    ld bc, $21df
    ld l, a
    ld bc, $007f
    ld a, [hl-]
    nop
    ld a, c
    ld bc, $0039
    ld a, c
    nop
    ld a, l
    inc b
    dec a
    inc b
    cp l
    ld bc, $04fb
    rst $20
    nop
    rst $00
    ld bc, $01e7
    rst $20
    nop
    rst $30
    nop
    rst $30
    ld de, $24f7
    xor a
    ld bc, $00bf
    dec e
    nop
    sbc h
    nop
    sbc h
    nop
    cp [hl]
    inc hl
    cp a
    ld [hl+], a
    cp [hl]
    add e
    rst $18
    dec b
    ld [hl], a
    inc bc
    di
    ld bc, $0373
    di
    dec bc
    rst $38
    inc bc
    ld a, e
    sub e
    ei
    rra
    ld a, a
    rrca
    rst $18
    ld b, $ce
    ld c, $ce
    ld c, $ce
    cpl
    rst $28
    cpl
    rst $28
    ld c, a
    rst $28
    ld a, a
    rst $38
    ld a, e
    ld a, e
    ld a, c
    ld a, c
    add hl, sp
    add hl, sp
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp a
    ld b, b
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    cp a
    ld b, b
    cp $00
    ld [bc], a
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
    rst $38
    cp $fe
    cp $f8
    db $f4
    ldh [$d0], a
    ret nz

    nop
    nop
    add b
    nop
    nop
    nop
    sub c
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    daa
    rst $38
    di
    rst $38
    db $fd
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, hl
    ei
    ld a, a
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    ld [de], a
    rst $38
    inc l
    rst $38
    dec hl
    rst $38
    ld d, $ff
    ld c, l
    rst $38
    add hl, bc
    rst $38
    ld b, b
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
    rlca
    nop
    rrca
    inc b
    dec c
    inc b
    add hl, de
    ld [$081b], sp
    inc sp
    db $10
    scf
    inc d
    ld l, a
    inc l
    ld l, a
    inc l
    rst $08
    ld c, h
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $18
    rst $18
    ld c, a
    rst $08
    rst $08
    rst $08
    sbc l
    db $dd
    cp $fe
    rst $18
    rst $18
    ld a, [hl]
    cp $bf
    cp a
    ld a, a
    ld a, a
    dec sp
    dec sp
    dec sp
    dec sp
    ei
    ei
    ld a, e
    ld a, e
    cp e
    cp e
    ei
    ei
    rst $28
    rst $28
    xor $ee
    xor $ee
    xor $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp l
    cp l
    sbc c
    sbc c
    cp a
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $30
    rst $30
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $18
    db $dd
    db $dd
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
    ei
    ei
    ld a, e
    ld a, e
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    pop af
    nop
    rlc b
    cp a
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
    ld bc, $02ff
    rst $38
    cp $fc
    ld hl, sp-$08
    pop af
    ldh [$c0], a
    add b
    ret nz

    nop
    jr nz, jr_041_5a7c

jr_041_5a7c:
    ld b, c
    nop
    rrca
    nop
    ldh a, [$fc]
    db $e4
    db $fc
    add b
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [$60], a
    ldh [rSTAT], a
    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    or a
    rst $38
    di
    rst $38
    sbc h
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jr c, @+$01

    add b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    jr nc, @+$01

    nop
    rst $38
    add b
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
    cp a
    cp a
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
    nop
    rst $38
    nop
    cp $00
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
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $10ff
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    jr @+$01

    ld [$1cff], sp
    rst $38
    ld c, $ff
    dec e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    and b
    rra
    nop
    ld a, a
    nop
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    inc b
    db $f4
    db $10
    ret nc

    add c
    add b
    inc bc
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
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld a, a
    rst $38
    rrca
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
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
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
    db $fd
    db $fd
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    ld a, l
    ld a, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld h, b
    adc a
    ld h, b
    adc b
    ld h, e
    adc b
    ld h, e
    adc d
    ld h, c
    adc d
    ld h, c
    adc b
    ld h, e
    adc d
    ld h, c
    adc b
    ld h, e
    adc d
    ld h, c
    adc d
    ld h, c
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc d
    ld h, c
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc e
    ld h, b
    adc b
    ld h, b
    adc a
    ld h, b
    rra
    ret nz

    db $10
    rst $00
    ld [de], a
    push bc
    ld d, $c1
    dec d
    jp nz, $c017

    ld d, $c1
    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    rla
    ret nz

    db $10
    ret nz

    rra
    ret nz

    ld b, b
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    dec l
    rst $38
    ld bc, $00ff
    rst $38
    ld d, d
    ld d, d
    nop
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
    nop
    nop
    nop
    xor d
    xor d
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
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
    di
    di
    di
    di
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    ei
    ei
    rst $38
    rst $38
    cp a
    cp a
    ld e, a
    ld e, a
    cp a
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    pop af
    pop af
    rst $38
    nop

jr_041_5cd2:
    rst $38
    nop

jr_041_5cd4:
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_041_5cde:
    rst $38
    nop

jr_041_5ce0:
    inc e
    pop hl

jr_041_5ce2:
    inc d
    jp hl


jr_041_5ce4:
    dec d
    add sp, $15
    add sp, $15
    add sp, $15
    add sp, -$6b
    ld l, b
    sub l
    ld l, b
    sub l
    ld l, b
    sub h

jr_041_5cf3:
    ld l, c
    sub h

jr_041_5cf5:
    ld l, c
    sub l
    ld l, b
    dec d
    add sp, -$2b
    jr z, jr_041_5cd2

    jr z, jr_041_5cd4

    jr z, jr_041_5cde

    jr nz, jr_041_5ce0

    jr nz, jr_041_5ce2

    jr nz, jr_041_5ce4

    jr nz, @+$1e

    nop

jr_041_5d0a:
    rst $38
    nop

jr_041_5d0c:
    rst $38
    nop

jr_041_5d0e:
    jr jr_041_5cf3

    jr jr_041_5cf5

    ld a, [de]
    pop hl
    add hl, bc
    ld a, [c]
    ld a, [bc]
    pop af
    add e
    ld a, b
    ld d, d
    xor c
    ld d, c
    xor d
    jp nc, $da29

    ld hl, $21da
    jp c, $db21

    jr nz, @-$23

    jr nz, @-$23

    jr nz, @-$23

    jr nz, jr_041_5d0a

    jr nz, jr_041_5d0c

    jr nz, jr_041_5d0e

    jr nz, jr_041_5d50

    nop
    ld hl, sp+$00
    rlca
    nop
    ld a, b
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    cp e
    rst $38
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

jr_041_5d50:
    cp $00
    cp $00
    inc e
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ld [$38ff], sp
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld a, a
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
    ldh [$e1], a
    ret nz

    pop hl
    ret nz

    di
    ret nz

    pop hl
    ldh [$f3], a
    ldh [$fe], a
    ld b, b
    ld e, a
    jr nz, jr_041_5ddf

    jr nc, jr_041_5de1

    nop
    ccf
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    add b
    cp a
    ldh a, [$f2]
    ldh [$e1], a
    ldh [$e1], a
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
    inc bc
    ld hl, sp+$03
    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    adc b
    ld [hl], e
    ld [$08f3], sp
    di
    ld c, b

jr_041_5dd3:
    or e
    adc b
    ld [hl], e
    ld [$88f3], sp
    ld [hl], e
    ld [$48f3], sp
    or e
    adc b

jr_041_5ddf:
    ld [hl], e
    ret nz

jr_041_5de1:
    dec sp
    ret nz

    dec sp
    and b
    ld e, e
    ldh [rNR31], a
    nop
    dec bc
    ldh a, [$0b]
    ld hl, sp+$03
    jr jr_041_5dd3

    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    ld [$88f3], sp
    ld [hl], e
    ld [$08f3], sp
    di
    ld [$00f3], sp
    ei
    ld c, b
    or e
    ld h, b
    sbc e
    ld l, b
    sub e
    ldh [rNR31], a
    and b
    ld e, e
    ld l, b
    sub e
    xor b
    ld d, e
    add sp, $13
    add sp, $13
    ld [$f803], sp
    inc bc
    nop
    inc bc
    di
    nop
    ld b, $f8
    ld a, [bc]
    rst $38
    nop
    rst $38
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld bc, $0701
    rlca
    ccf
    ccf
    db $fc
    rst $38
    ldh [rIE], a
    add b
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld c, $0e
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld b, c
    ldh [$e0], a
    pop hl
    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld h, b
    ld h, b
    and c
    and c
    inc e
    inc e
    ld c, $0e
    ld c, $0e
    di
    rst $38
    di
    rst $38
    di
    ccf
    rst $30
    ccf
    ld l, l
    ccf
    ld a, $7f
    ld e, $7f
    cp [hl]
    ld a, a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    ret nz

    rst $10
    ret nz

    db $e3
    ret nz

    pop hl
    ret nz

    di
    ret nz

    rst $30
    ret nz

    di
    ret nz

    rst $30
    ret nc

    rst $38
    add b
    cp [hl]
    add b
    cp [hl]
    add b
    cp [hl]
    ret nc

    rst $38
    or c
    cp a
    or b
    cp [hl]
    db $f4
    push af
    ldh [$e3], a
    pop hl
    db $e3
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    ei
    ei

Call_041_5ec0:
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    jr @+$01

    nop
    rst $28
    nop
    nop
    nop
    nop
    nop
    ld a, [$ff00]
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
    db $f4
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
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
    rra
    nop
    rra
    ld h, b
    ld a, a
    ld b, b
    ld a, a
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
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $10
    rst $10
    rst $20
    rst $20
    db $ed
    db $ed
    rst $20
    rst $20
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    daa
    daa
    rra
    rra
    rra
    rra
    rrca
    rrca
    dec bc
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    add hl, bc
    rst $00
    rst $00
    jp $c7c3


    rst $00
    jp $83c3


    add e
    jp $c3c3


    jp Jump_000_2424


    jr @+$1a

    jr jr_041_5f74

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    jp $c7c3


    rst $00
    rst $00
    rst $00
    add e
    add e
    add d
    add d
    ld b, b
    ld a, [$b700]

jr_041_5f74:
    nop
    rst $08
    nop
    rst $08
    nop
    rst $28
    jr nz, @+$01

    ret nz

    rst $38
    ld [hl], b
    rst $38
    cp b
    ei
    ld l, c
    ld a, c
    ld [hl], b
    ld [hl], c
    ld hl, sp-$07
    ld a, b
    ld a, c
    ei
    ei
    push af
    push af
    rst $18
    rst $18
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    nop
    nop
    nop
    add b
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
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rrca
    nop
    sbc $00
    xor [hl]
    nop
    cp $00
    sbc h
    nop
    ld b, h
    nop
    ld a, [c]
    nop
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
    rst $28
    rst $28
    rst $38
    rst $38
    rst $18
    rst $18
    ei
    ei
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
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    cpl
    cpl
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    scf
    scf
    inc sp
    inc sp
    ld sp, $0231
    ld [bc], a
    adc a
    adc a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    add hl, hl
    add hl, hl
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    add b
    db $eb
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld sp, hl
    nop
    ld sp, hl
    xor b
    ei
    ld a, [c]
    rst $30
    add d
    xor a
    rra
    db $eb
    ld a, $c1
    cp a
    ld b, c
    rst $38
    nop
    or a
    nop
    nop
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    dec d
    nop
    ld [hl], h
    nop
    pop af
    nop
    rst $38
    nop
    and a
    nop
    ld a, [$4000]
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
    nop
    rst $38
    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    dec b
    ld a, [$f807]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    dec b
    ld a, [$fa05]
    rra
    ldh [rIF], a
    ldh a, [$0b]
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    cp $fe
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0202
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fd
    ld [$0ffa], sp
    rst $38
    rrca
    rst $38
    rrca
    ei
    cp a
    ld c, e
    cp $01
    ld d, a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    sub b

jr_041_6127:
    nop
    cp $00
    rst $38
    nop
    add sp, $00
    ld c, a
    nop
    ld de, $09ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_041_6139:
    rst $38
    nop

jr_041_613b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    dec bc
    db $f4
    rst $38
    nop
    ld sp, hl
    ld b, $fc
    inc bc
    ld c, $f1
    add b
    ld a, a
    jr nc, jr_041_6127

    jr nz, jr_041_6139

    jr nz, jr_041_613b

    inc b
    ei
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    ld e, a
    and b
    rst $00
    jr c, jr_041_6175

    ei
    ld [bc], a
    db $fd
    inc bc

jr_041_6175:
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $38
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
    db $fd
    db $fd
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
    cp a
    cp a
    sub a
    sub a
    ld e, d
    ld e, d
    inc a
    inc a
    inc a
    inc a
    jr c, jr_041_6204

    db $10
    db $10
    jr jr_041_61e8

    db $10
    rst $10

Jump_041_61d2:
    nop
    cp d
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    db $fd
    ld e, e
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38

jr_041_61e8:
    adc l
    ld a, a
    ldh [$1f], a
    ld b, a
    nop
    call nc, $ff00
    rst $38
    sub $d6
    rst $38
    rst $38
    rst $38
    rlca
    cp b
    nop
    rst $38
    nop
    ld e, a
    nop
    ldh a, [rP1]
    ret nc

    rst $38
    cp e
    rst $38

jr_041_6204:
    ld [hl], $ff
    nop
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    pop hl
    ld e, $f8
    rlca
    ldh a, [rIF]
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
    ldh [$1f], a
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld hl, sp+$07
    rst $38
    nop
    ld e, a
    and b
    ld l, a
    sub b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    dec e
    jr jr_041_6292

    db $10
    stop
    nop
    db $10
    stop
    nop
    jr z, jr_041_62ac

    dec bc
    dec bc
    add a
    add a
    add a
    add a
    rlca
    rlca
    ld b, $06
    ld b, $06
    db $76
    rst $38

jr_041_6292:
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld e, a
    db $fd
    nop
    rst $38
    ld [hl], b
    rrca
    add d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    xor l
    dec c
    ld a, b
    nop

jr_041_62ac:
    rst $38
    nop
    rst $18
    nop
    rst $28
    rst $38
    db $e3
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_041_62c1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    di
    inc c
    inc bc
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
    ld h, d
    sbc l
    jr nz, jr_041_62c1

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    jp nz, $803d

    ld a, a
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    rst $38
    ei
    ei
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ei
    ei
    ei
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    inc b
    nop
    ld b, c
    nop

jr_041_6317:
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    inc b
    ld bc, $0105
    dec h
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    dec c
    ld b, $06
    rlca
    add a
    rlca
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    rrca
    rst $28
    rst $08
    ldh a, [$bd]
    ld a, [c]
    ei
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [$fd], a
    ld [c], a
    ei
    db $e4
    ei
    db $e4
    rst $30
    ldh [$9b], a
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    cp a
    ld b, b
    ld a, [hl-]
    push bc
    inc e
    pop bc
    inc e
    ld bc, $fee0
    ld d, b
    cp $58
    cp $58
    rst $38
    ld d, h
    rst $38
    ld e, h
    rst $38
    ld [hl], h
    rst $38
    ld c, [hl]
    rst $38
    or b
    nop
    ld hl, $9010
    jr nz, jr_041_6317

    jr nz, jr_041_639a

    jr nz, jr_041_63cb

    jr nz, @+$42

    add b
    ld b, b
    add b
    rst $38
    ld a, a
    sub $3f
    xor $3f
    jp z, $fe3f

    rra

jr_041_639a:
    or $1f
    or $0f
    db $fc
    rrca
    ld a, [c]
    rrca
    db $f4
    rrca
    db $fc
    rlca
    ld hl, sp+$07
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    rst $38

jr_041_63b5:
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    call c, Boot
    cp $01
    cp $00

jr_041_63c5:
    rst $38
    ld bc, $00fe
    rst $38
    ld a, h

jr_041_63cb:
    add e
    jr jr_041_63b5

    nop
    rst $38
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
    ld [bc], a
    db $fd
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    ret nz

    ccf
    jr nz, jr_041_63c5

    nop
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
    ei
    ei
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    push af
    ei
    ei
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
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    ld a, a
    nop
    ld [c], a
    dec e
    ld [bc], a
    db $fd
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    ld c, d
    ld c, d
    dec bc
    dec bc
    ccf
    ccf
    rst $18
    rst $18
    ccf
    ccf
    ld e, a
    and b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sub a
    ld l, b
    sub a
    ld l, b
    cp $00
    ld a, a
    add b
    ld a, e
    add b
    ld l, h
    sub c
    ld l, h
    sub c
    xor h
    ld d, c
    ld l, h
    sub c
    db $ec
    ld de, $03fc
    cp h
    ld b, e
    cp [hl]
    ld h, c
    inc sp
    ld h, b
    sub d
    ld h, b
    sub c

jr_041_6455:
    ld h, d

jr_041_6456:
    pop de
    ld h, d
    push de
    ld [hl+], a
    ldh a, [rTMA]
    ld hl, sp+$02
    cp d
    ld b, h
    ld d, c
    cp a
    ld a, c
    cp a
    ld [hl], e
    cp e
    dec d

jr_041_6467:
    ei
    dec de
    di
    dec de
    di
    sub e
    ld [hl], e
    rst $08
    ld [hl], e
    ld l, a
    rst $30
    ld h, a
    rst $38
    ld [hl], a
    rst $28
    ld l, a
    rst $20
    rst $28
    rst $20
    rst $08
    rst $20
    rst $20
    rst $08
    rrca
    rst $28
    sub b
    ld h, b
    ret nc

    jr nz, jr_041_6455

    jr nz, jr_041_6467

    nop
    sub b
    ld b, b
    add b
    ld b, b
    inc d
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_041_6456

    inc h
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    cp a
    rst $38
    and h
    rst $38
    rst $30
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b

jr_041_64c1:
    ld a, a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    ld a, b
    add a
    ccf
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
    rst $38
    nop
    rst $38
    add b
    ld a, a

jr_041_64de:
    ret nz

    ccf

jr_041_64e0:
    jr nz, jr_041_64c1

    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
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
    ld [bc], a
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc a
    ret nz

    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $08
    jr nc, jr_041_64de

    jr nc, jr_041_64e0

    rst $08
    rst $08
    rst $08
    sbc a
    cp a
    sbc a
    cp a
    sbc a
    sbc a
    sbc a
    sbc a
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
    cp a
    nop
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    rst $38
    rst $38
    rst $20
    rra
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
    ldh [$1f], a
    ld hl, sp+$07
    ld a, a
    add b
    cp a
    ld b, b
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
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    db $10
    rst $28
    cp $01
    cp a
    ld b, b
    scf
    ret z

    ld c, a
    or b
    rra
    ldh [$3f], a
    ret nz

    or e
    ld c, h
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
    jr @+$1b

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
    jr z, jr_041_65f3

    ld a, [hl+]
    dec hl
    ld a, [de]
    ld a, [de]
    inc l
    dec l
    ld l, $2f
    jr nc, jr_041_6605

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld a, [de]
    ld [hl], $37
    jr c, jr_041_6616

    ld a, [de]
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc d
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, [de]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [de]
    ld c, c
    ld c, d
    ld c, e

jr_041_65f3:
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

jr_041_6605:
    ld e, [hl]
    ld e, a
    ld h, b
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    ld h, b

jr_041_6616:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    ld a, [de]
    ld a, [de]
    ld a, [de]
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub c
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sub l
    sub l
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld a, [de]
    ld a, [de]
    sbc a
    and b
    ld a, [de]
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
    ld a, [de]
    or h
    or l
    ld a, [de]
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

    ld a, [de]
    ld a, [de]
    ret


    ld a, [de]
    jp z, $cccb

    call $cfce
    ret nc

    ld a, [de]
    pop de
    jp nc, $d4d3

    ld a, [de]
    push de
    sub $1a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rst $10
    ret c

    reti


    jp c, Jump_000_1adb

    call c, $dedd
    rst $18
    ldh [rNR30], a
    pop hl
    ld [c], a
    ld a, [de]
    ld a, [de]
    db $e3
    db $e4
    ld a, [de]
    ld [c], a
    push hl
    and $e7
    add sp, -$17
    ld [$1aeb], a
    ret


    ldh [$e0], a
    ld a, [de]
    db $ec
    db $ed
    ld a, [de]
    xor $ef
    ldh a, [rNR30]
    ld a, [de]
    pop af
    ld a, [c]
    ld a, [de]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [de]
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $1a1a
    ld [bc], a
    ld a, [de]
    ld a, [de]
    inc bc
    inc b
    ld a, [de]
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    rlca
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0207
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, $0603
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld bc, $0101
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
    rlca
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
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
    ld bc, $0201
    ld bc, $0202
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld bc, $4201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2202
    ld b, d
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a01
    ld bc, $0901
    add hl, bc
    ld bc, $0606
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    cp b
    cp b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
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
    inc c
    inc c
    inc a
    inc a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld a, b
    ld a, b
    ldh [$e0], a
    ld hl, sp-$08
    ldh [$e0], a
    jr nc, jr_041_689c

    db $10
    db $10
    inc c
    inc c
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc c
    inc c
    jr nc, @+$32

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

jr_041_689c:
    ld bc, $09ff
    rst $38
    inc [hl]
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $38
    and a
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
    rst $20
    rst $00
    rst $00
    add e
    add e
    add d
    add d
    ld b, c
    ld b, c
    nop
    nop
    sub c
    sub c
    ld bc, $0f01
    rrca
    inc hl
    inc hl
    adc a
    adc a
    ld e, a
    ld e, a
    ccf
    ccf
    sbc a
    sbc a
    ld e, a
    ld e, a
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fcfa]
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, c
    nop
    nop
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
    nop
    db $f4
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
    nop
    nop
    nop
    nop
    jr @+$1a

    cp h
    cp h
    cp $fe
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld a, h
    ld a, h
    ldh [$e0], a
    ld hl, sp-$08
    ldh [$e0], a
    jr nc, jr_041_696a

    db $10
    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc e
    inc e
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_041_696a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1808], sp
    jr jr_041_69f1

    ld a, h
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    and b
    and b
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_041_69ae

    jr jr_041_69a8

    nop
    rst $30
    nop
    db $fd
    db $10
    rst $38
    nop
    cp $60
    db $fc
    ld d, b
    db $fc
    ld a, b
    db $fc
    xor h
    db $fc
    ld a, [de]
    cp $bc
    cp $bf
    rst $38
    rst $38
    rst $38

jr_041_69a8:
    push af
    db $fd
    cp $fe
    db $fc
    db $fc

jr_041_69ae:
    ld sp, hl
    ld sp, hl
    rst $30
    rst $30
    rst $18
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $20
    rst $20
    xor a
    xor a
    inc bc
    inc bc
    and e
    and e
    ret c

    ret c

    ld d, c
    ld d, c
    and l
    and l
    ld d, c
    ld d, c
    and e
    and e
    inc de
    inc de
    xor a
    xor a
    rst $08
    rst $08
    ld a, a

jr_041_69f1:
    ld a, a
    rst $38
    rst $38
    rla
    rla
    nop
    nop
    ld c, a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_041_6a02

jr_041_6a02:
    nop
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
    nop
    nop
    nop
    push de
    push de
    rst $38
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
    inc bc
    rrca
    rrca
    rrca
    rrca
    ld e, e
    ld e, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_041_6a70

    ldh a, [$f0]
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    ldh a, [$f0]
    ret nz

    ret nz

    ld h, b
    ld h, b
    db $10
    db $10
    ld [$0408], sp
    inc b
    ld bc, $0601
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0701
    rlca
    inc bc
    inc bc

jr_041_6a70:
    rrca
    rrca
    jr nc, jr_041_6aa4

    ld h, b
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
    nop
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
    ld [bc], a
    rst $38
    ld bc, $05ff
    rst $38
    ld b, $c7
    adc b
    adc a
    add d
    add d
    inc bc
    inc de
    ld bc, $2141
    ld hl, $0303
    inc bc
    inc bc
    rrca
    rrca

jr_041_6aa4:
    rrca
    rrca
    cp a
    cp a
    rrca
    rra
    cpl
    cpl
    ccf
    ccf
    sbc a
    sbc a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
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
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    ei
    ei
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    db $fd
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
    ld e, a
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    inc hl
    inc hl
    rrca
    rrca
    dec de
    dec de
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    inc e
    inc e
    ld e, $1e
    ld a, $3e
    jp nz, Jump_000_01c2

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
    ld h, b
    ld h, b
    pop hl
    pop hl
    db $f4
    db $f4
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    ld [bc], a
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$04
    db $fc
    inc b
    cp $0a
    ld a, [$fda9]
    ld c, b
    ld hl, sp-$2e
    or $6f
    rst $28
    xor e
    cp a
    ld e, e
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $20
    rst $20
    add a
    add a
    add e
    add e
    ld d, l
    ld d, l
    adc b
    adc b
    ld de, $9751
    sub a
    inc bc
    inc bc
    dec de
    dec de
    ld b, a
    ld b, a
    sbc a
    sbc a
    cp a
    cp a
    ld c, a
    ld c, a
    rra
    rra
    sbc a
    sbc a
    rst $28
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop

Jump_041_6bc3:
    nop
    ld d, l

Call_041_6bc5:
    nop
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
    dec b
    dec b
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc b
    inc b
    or b
    or b
    ret nz

    ret nz

    add b
    add b
    add b
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
    add b
    add b
    ld b, [hl]
    ld b, [hl]
    rrca
    rrca
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    inc e
    inc e
    ld a, $3e
    inc a
    inc a
    ld h, h
    ld h, h
    add d
    add d
    ld bc, $0001
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    add d
    sbc [hl]
    ld [bc], a
    dec sp
    db $10
    rra
    ld [bc], a
    rlca
    nop
    rlca
    inc bc
    rlca
    ld d, $1f
    dec de
    ccf
    ld a, [bc]
    ccf
    ld l, l
    ld a, a
    dec e
    ccf
    cpl
    ld a, a
    ccf
    ccf
    cp a
    cp a
    ld e, a
    rst $18
    xor a
    rst $28
    or $f6
    cp $fe
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    cp $fe
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [$f7fa]
    rst $30
    rst $30
    rst $30
    rst $18
    rst $18
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
    rst $30
    rst $30
    rst $20
    rst $20
    and l
    and l
    push bc
    push bc
    dec [hl]
    dec [hl]
    jr z, @+$2a

    ld d, h
    ld d, h
    cp c
    cp c
    dec bc
    dec bc
    ret


    ret


    or a
    or a
    rst $28
    db $10
    rst $08
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    and l
    ld e, d
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$7f]
    add b
    db $f4
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    jr nz, jr_041_6ce2

    db $10
    db $10
    add hl, bc
    add hl, bc
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    dec c
    dec c
    jr nz, jr_041_6cfa

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop

jr_041_6ce2:
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $7300
    ld [bc], a
    db $e3
    nop
    add c
    nop
    add b
    nop
    add b

jr_041_6cfa:
    nop
    add b
    nop
    pop bc
    nop
    jp $e722


    nop
    add e
    ld b, b
    jp $9794


    sub $f7
    sbc c
    db $fd
    sub d
    cp $15
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    sub a
    rst $38
    ld a, a
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
    ccf
    ld a, a
    ccf
    ccf
    dec e
    dec e
    ccf
    ccf
    ld b, a
    ld b, a
    rlca
    rlca
    rrca
    rrca
    rrca
    ld c, $bf
    cp [hl]
    rra
    ld e, $ff
    cp $7f
    ld a, [hl]
    ccf
    ld a, $7f
    ld a, [hl]
    ld a, a
    ld a, [hl]
    cp a
    cp [hl]
    rst $18
    sbc $ef
    xor $f7
    or $ff
    db $fc
    rst $38
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$df]
    ret nc

    cp a
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$e7]
    ldh [$e0], a
    ldh [$e0], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    jr nz, jr_041_6daf

    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_041_6daf:
    add b
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    ld bc, $00ff
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    ld bc, $00ff
    ld a, [hl]
    nop
    dec sp
    nop
    cpl
    nop
    rra
    nop
    rrca
    nop
    inc hl
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$383f], sp
    ccf
    jr c, jr_041_6e24

    jr c, jr_041_6e26

    jr nc, jr_041_6e28

    jr nc, jr_041_6e2a

    jr nc, jr_041_6e2c

    jr nc, jr_041_6e2e

    jr nc, @+$01

    ldh a, [$df]
    ret nc

    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$3f], a
    jr nz, jr_041_6e82

    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_041_6e24:
    rst $38
    nop

jr_041_6e26:
    rst $38
    nop

jr_041_6e28:
    rst $38
    nop

jr_041_6e2a:
    rst $38
    nop

jr_041_6e2c:
    rst $38
    nop

jr_041_6e2e:
    rst $38
    nop
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    daa
    rst $38
    daa
    rst $38
    ret nc

    nop
    ret c

    nop
    ret nc

    nop
    ret nc

    nop
    ldh a, [rP1]
    cp d
    ld a, [bc]
    sub a
    rlca
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

jr_041_6e57:
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh [$1f], a
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    nop
    rst $38

jr_041_6e82:
    ld bc, $01ff
    cp a
    nop
    inc e
    ld [$010f], sp
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    rra
    nop
    ccf
    jr nz, jr_041_6e57

    ld [hl+], a
    rst $38
    nop
    rst $30
    ld b, $fe
    nop
    ld hl, sp+$10
    stop
    nop
    nop
    nop
    db $f4
    db $f4
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    and $66
    ldh [rLCDC], a
    ldh [$a0], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ret nz

    nop
    ret c

    add b
    db $fc
    add b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld b, $00
    rst $38

jr_041_6ed2:
    nop
    rst $38
    jr nz, @-$1f

    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld a, h
    add e
    ld a, d
    add c
    add c
    ld a, a
    add c
    ld a, a
    add b
    ld a, [hl]
    ld [bc], a
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    ld b, $01
    rlca
    ld bc, $010e
    ld e, $01
    ld e, [hl]
    ld bc, $017e
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    inc bc
    db $fd
    ld bc, $02fe
    rst $08
    jr nc, jr_041_6ed2

    ld [hl], $de
    ld bc, $105b
    ld c, h
    ld c, h
    or c
    or c
    nop
    nop
    rlca
    rlca
    inc bc
    inc bc
    adc a
    rlca
    rst $18
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $00
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rra
    ld a, [hl+]
    ccf
    rlca
    rra
    sub [hl]
    cp a
    cpl
    rst $38
    rlca
    rst $28
    cpl
    rst $38
    inc h
    cp $0c
    db $fc
    ld c, b
    db $fc
    ld [$6efc], sp
    cp $32
    cp $5e
    cp $36
    ld a, [hl]
    inc de
    scf
    rrca
    rrca
    rra
    rra
    rra
    rra
    scf
    scf
    rst $08
    rst $08
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld d, e
    ld d, b
    ld [bc], a
    ld [bc], a
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
    ld h, b
    nop
    ld a, [hl]
    nop
    ld a, a
    ld b, b
    rst $18
    ret nz

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ret nc

    ret nz

    ld a, b
    ld h, b
    call c, Call_041_5ec0
    ld b, b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    call nz, $c2ff
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $08
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$79
    cp b
    add e
    cp h
    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    add b
    inc bc
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rrca
    add b
    rrca
    add b
    sbc a
    ldh [$1f], a
    ld b, $00
    nop
    db $fc
    jr @+$01

    inc bc
    ld a, a
    add [hl]
    sbc a
    ld h, [hl]

jr_041_6fde:
    ld h, [hl]
    jr jr_041_7059

    ld b, a
    cpl
    jr nz, jr_041_6fde

    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
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
    ld bc, $0301
    inc bc
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
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $3e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    sbc a
    add b
    dec e
    dec e
    jr nz, jr_041_706c

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
    rst $38
    rst $38
    ccf

jr_041_7059:
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38

jr_041_706c:
    ld [hl], c
    rst $38
    ld hl, $deff
    nop
    cp $00
    cp $80
    cp $80
    cp $80
    cp $40
    cp $40
    cp $40
    ld a, [$fa24]
    inc h
    ld a, [$f224]
    inc l
    ld a, [c]
    inc l
    ld a, [c]
    inc l
    ld a, [c]
    inc l
    ld a, [c]
    inc l
    ld a, [$fa24]
    inc h
    ld a, [$fa24]
    inc h
    ld a, [$fe64]
    ld h, b
    cp $60
    cp $60
    cp $e0
    sbc $40
    adc [hl]
    add d
    ld b, $02
    add b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    ldh [$c8], a
    ld [$fcfc], sp
    db $fd
    db $fd
    db $fd
    push af
    db $ed
    push hl
    rst $28
    db $e3
    db $fd
    pop af
    rst $20
    db $e3
    db $e3
    db $e3
    inc bc
    inc bc
    inc hl
    inc hl
    ld h, e
    ld h, e
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    cp a
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
    ld sp, hl
    ld sp, hl
    ld a, [c]
    ld a, [c]
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, [$fdfa]

Call_041_70ff:
    db $fd
    db $fc
    db $fc
    ld a, [$6ffa]
    ld l, a
    ld a, a
    ld a, a
    ccf
    ccf
    cp a
    cp a
    ld a, a
    ld a, a
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
    ld a, a
    nop
    db $eb
    add sp, $0b
    dec bc
    ld a, $3e
    rra
    rra
    rra
    rra
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
    rrca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rrca
    rrca
    rra
    rra
    ld e, $1e
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
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
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
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
    ld bc, $03ff
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
    rst $20
    rst $20
    db $eb
    db $eb
    pop hl
    pop hl
    jp hl


    jp hl


    rst $30
    rst $30
    rst $30
    rst $30
    di
    di
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
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    push hl
    push hl
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    adc a
    add b
    ld e, h
    ld e, h
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
    cp $ff
    cp $ff
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
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
    add b
    rst $38
    ret nz

    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $28
    rst $10
    rst $10
    db $db
    db $db
    jp $ebc3


    db $eb
    rst $38
    rst $38
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
    rlca
    rst $38
    nop
    ld a, a
    nop
    ldh a, [$f0]
    rst $08
    adc $f9
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    ld hl, sp+$3f
    ld a, [hl-]
    cp a
    jr c, @+$01

    add hl, sp
    jp c, $fd98

    ld a, h
    cp $3e
    sbc $1e
    sbc $1e
    sbc $1e
    rst $18
    ccf
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
    rst $28
    rrca
    rst $28
    rrca
    rst $38
    rrca
    cp a

jr_041_72e9:
    ld c, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    adc b
    rlca
    ld [$4087], sp
    adc a
    ld b, b
    adc a
    ld a, b
    add a
    jr c, @-$37

    jr c, @-$37

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
    jr nz, @+$01

    ld hl, sp-$09
    db $fc
    db $e3
    ld hl, sp-$39
    jr c, jr_041_72e9

    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc c
    di
    ld c, $f1
    inc c
    di
    ld c, $f1
    inc c
    di
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $28
    rst $28
    ld a, [hl]
    ld a, [hl]
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    call $bfcd
    cp a
    or a
    or a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rla
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $30
    rlca
    rst $20
    rlca
    rst $20
    rlca
    push af
    dec b
    rst $20
    rlca
    rst $20
    rlca
    ld b, a
    rlca
    ld b, e
    inc bc
    ld b, e
    inc bc
    ld b, e
    inc bc
    ld h, e
    inc bc
    ld h, e
    inc bc
    db $e3
    add e
    db $e3
    add e
    db $e3
    add e
    and e
    add e
    and c
    add c
    and c
    add c
    and c
    add c
    and c
    add c
    and c
    add c
    and c
    add c
    sub c
    add c
    sub b
    add b
    pop de
    pop bc
    ret nc

    ret nz

    ret nc

    ret nz

    ret nc

    ret nz

    ret nc

    ret nz

    ret nc

    ret nz

    ld d, b
    nop
    jr nc, @+$62

    or b
    ldh [$a8], a
    ldh [$88], a
    ret nz

    xor b
    ldh [$a8], a
    ldh [$a8], a
    and b
    add sp, -$20
    add sp, -$20
    add sp, -$20
    add sp, -$20
    add sp, -$20
    db $f4
    ldh a, [$f4]
    ldh a, [$e4]
    ldh [$f4], a
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh a, [$f2]
    ldh a, [$fa]
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$03
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
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
    ld a, [$fcfa]
    db $fc
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    di
    di
    di
    di
    ei
    ei
    rst $20
    rst $20
    db $eb
    db $eb
    rst $30
    rst $30
    rst $30
    rst $30
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
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $de
    rst $38
    rst $38
    cp $fe
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c0
    rra
    ldh [rNR33], a
    ldh [rNR33], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR34], a
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$0c
    ldh a, [$0c]
    ldh a, [rDIV]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    rlca
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rlca
    ei
    ei
    ei
    ei
    ld [hl], e
    ld [hl], e
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
    rst $08
    rst $08
    rst $10
    rst $10
    rst $10
    rst $10
    rst $20
    rst $20
    and a
    and a
    and a
    and a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    db $eb
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
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    sbc $de
    rst $38
    rst $38
    cp $fe
    db $fd
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
    rst $30
    rst $30
    rst $38
    rst $38
    db $fd
    db $fd
    rst $28
    rst $28
    db $ed
    db $ed
    rst $38
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
    db $fc
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    ei
    ei
    pop hl
    pop hl
    pop af
    pop af
    pop hl
    pop hl
    pop af
    pop af
    push bc
    push bc
    pop bc
    pop bc
    db $e3
    db $e3
    db $e3
    db $e3
    db $fd
    db $fd
    ld hl, sp-$08
    rst $30
    rst $30
    ei
    ei
    rst $18
    rst $18
    rst $18
    rst $18
    sbc a
    sbc a
    rst $18
    rst $18
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
    cp a
    cp a
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
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
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    and l
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
    db $fd
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    or b
    or b
    ld a, [c]
    ld a, [c]
    ldh a, [$f0]
    ld sp, hl
    ld sp, hl
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    jp $d1c3


    pop de
    or e
    or e
    and a
    and a
    sub e
    sub e
    adc a
    adc a
    xor e
    xor e
    rst $08
    rst $08
    push hl
    push hl
    ei
    ei
    ei
    ei
    di
    di
    or $f6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
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
    nop
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
    rst $30
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld a, a
    ld a, a
    cp a
    cp a
    ccf
    ccf
    rst $18
    rst $18
    ld e, a
    ld e, a
    cp a
    cp a
    rra
    rra
    daa
    daa
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, [$f9fa]
    ld sp, hl
    ld hl, sp-$08
    db $fd
    db $fd
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
    cp $fe
    rst $38
    rst $38
    rst $18
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    pop af
    pop af
    db $fc
    db $fc
    or h
    or h
    sbc l
    sbc l
    or l
    or l
    sub $d6
    rst $10
    rst $10
    ei
    ei
    rst $20
    rst $20
    ei
    ei
    rst $38
    rst $38
    ei
    ei
    cp $fe
    ei
    ei
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ccf
    ccf
    rst $38
    rst $38
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
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    rst $30
    rst $30
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    db $e4
    db $e4
    add sp, -$18
    jp c, $c0da

    ret nz

    call nz, $c0c4
    ret nz

    db $e3
    db $e3
    add sp, -$18
    ld hl, sp-$08
    cp $fe
    cp $fe
    ld a, [$fefa]
    cp $fe
    cp $fe
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    cp a
    cp a
    cpl
    cpl
    ld c, a
    ld c, a
    rst $00
    rst $00
    ld c, a
    ld c, a
    sub a
    sub a
    ld b, a
    ld b, a
    sbc a
    sbc a
    xor a
    xor a
    rst $08
    rst $08
    ld a, a
    ld a, a
    cp a
    cp a
    db $eb
    db $eb
    rst $18
    rst $18
    ld d, a
    ld d, a
    set 1, e
    db $ed
    db $ed
    rst $18
    rst $18
    rst $38
    rst $38
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, hl
    rst $38
    nop
    rst $38
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$100f], sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    jr jr_041_78af

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
    jr z, jr_041_78cf

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_041_78df

    ld [hl-], a

jr_041_78af:
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    scf
    jr c, jr_041_78f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc [hl]
    inc [hl]
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_041_78cf:
    ld c, b
    inc [hl]
    inc [hl]
    ld c, c
    ld b, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_041_78df:
    ld d, l
    inc [hl]
    inc [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    inc d
    inc d
    inc d
    ld e, c
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc [hl]
    inc [hl]
    ld h, b

jr_041_78f3:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc [hl]
    inc [hl]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    inc [hl]
    inc [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [hl], h
    ld [hl], h
    add c
    add d
    add e
    add h
    add l
    inc [hl]
    add [hl]
    add a
    adc b
    nop
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
    xor b
    xor c
    xor b
    xor b
    xor b
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    inc [hl]
    or b
    or c
    or d
    or e
    or e
    or e
    or h
    or l
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    inc [hl]
    inc [hl]
    cp h
    cp l
    cp [hl]
    cp a
    cp a
    ret nz

    pop bc
    jp nz, $c34f

    call nz, $c6c5
    rst $00
    inc [hl]
    ret z

    ret


    inc d
    inc d
    jp z, $cbcb

    call z, $cecd
    rst $08
    ld [hl], h
    ret nc

    pop de
    jp nc, $d334

    call nc, $1414
    push de
    sub $d7
    ret c

    inc d
    reti


    jp c, $dcdb

    ld [hl], h
    db $dd
    ret z

    sbc $14
    inc d
    inc d
    rst $18
    ldh [$e1], a
    ld [c], a
    inc d
    inc d
    db $e3
    db $e4
    ld [hl], h
    push hl
    ld [hl], h
    db $d3
    and $14
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    rst $20
    add sp, -$17
    ld [hl], h
    ld [hl], h
    nop
    nop
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
    ld bc, $0101
    ld bc, $0200
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
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    nop
    ld [bc], a
    dec b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rBGP]
    jr c, jr_041_7b30

    inc e
    inc bc
    inc c
    inc bc
    inc c
    add e
    inc c
    inc bc
    inc c
    ld b, e
    inc c
    ld b, e
    inc c
    db $e3
    inc c
    or e
    inc c
    add e
    inc c
    ld [hl], e
    inc c
    db $d3
    inc c
    ld b, e
    inc c
    sub e
    inc c
    db $e3
    inc c
    inc bc
    inc c
    inc bc
    call z, $fc03

jr_041_7b30:
    nop
    add e
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    ld bc, $0e41
    ld [hl], c
    ld b, $31
    ld b, $31
    ld b, $79
    ld b, $11
    ld b, $91
    ld b, $01
    ld b, $91
    ld b, $81
    ld b, $99
    ld b, $d9
    ld b, $79
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $81
    ld c, $01
    cp $07
    ld hl, sp+$3f
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
    ld bc, $70ff
    rst $38
    inc bc
    rst $38
    ccf
    jp $c307


    push af
    inc bc
    ld a, [hl]
    pop bc
    rst $38
    pop bc
    add sp, -$40
    add sp, -$40
    add sp, -$20
    add sp, -$20
    db $f4
    ldh [$f4], a
    db $e4
    db $f4
    ldh a, [$f4]
    ldh a, [$fa]
    ldh a, [$fa]
    ld a, [c]
    ld a, [$fbfa]
    ld hl, sp-$01
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    db $fc
    cp $fc
    cp $fe
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    ld hl, sp-$02
    db $fc
    ld hl, sp-$20
    ld hl, sp-$80
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
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
    cp a
    xor [hl]
    cp a
    nop

jr_041_7be4:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ret nz

    sbc a
    nop
    and b
    rra
    and b
    rra
    cp a
    rra
    cp a
    rra
    rst $38
    rra
    cp a
    rra
    cp a
    rra
    ldh [$1f], a
    add a
    rra
    db $fd
    rra
    sbc $1f
    ldh a, [$1f]
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    ld hl, $61de
    sbc [hl]
    ld l, a
    sbc a
    ld [c], a
    inc e
    add sp, $10
    ldh [rP1], a
    jr nz, jr_041_7be4

    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, $fe
    ld a, $fe
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    db $fc
    ld a, a
    cp $7f
    cp $7f
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    or b
    rrca
    or b
    rrca
    cp a
    rrca
    or b
    adc a
    or b
    sbc a
    ret nc

    sbc a
    ret nc

    adc a
    ret nc

    rrca

jr_041_7cd9:
    or b
    rrca
    or b
    rrca
    or b
    adc a
    or b
    ld a, a
    adc a
    ld a, a
    adc a
    and b
    rst $18
    sub b
    rst $38
    cp h
    rst $38
    or b
    rst $38
    ldh [$b8], a
    ld b, b
    or b
    ret nz

    ldh [$c0], a
    ldh [rP1], a
    ldh [rP1], a
    db $e3
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
    pop af
    rst $38
    ld b, $fc
    jr c, jr_041_7cd9

    ldh [rLCDC], a
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
    add c
    nop
    rst $20
    nop
    cp $01
    ld hl, sp+$07
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
    ld bc, $00ff
    rst $38
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_041_7d6c:
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    or b
    rst $38
    ld [hl], b
    ld a, a
    jr nc, jr_041_7dbf

    rra
    or b
    rst $08
    jr jr_041_7d6c

    inc c
    di
    ld b, $b9
    inc bc
    cp l
    ld bc, $11bd
    cp l
    add hl, de
    add hl, de
    cp l
    ld e, c
    db $fd
    ld e, c
    db $fd
    ld b, c
    db $fd
    ld b, c
    db $ed
    pop bc
    db $ed
    ld bc, $01ed
    and l
    ld bc, $01a5
    push af
    ld bc, $41fd
    db $fd
    ld bc, $f0ff
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00

jr_041_7dbf:
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    cp $00
    db $fc
    nop
    cp $83
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $e1
    cp a
    ret nz

    ld a, a
    add b
    ld a, h
    add e
    inc b
    ld hl, sp+$00
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
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    pop hl
    ld a, a
    add a
    rst $30
    ccf
    ldh [$80], a
    nop
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
    ld c, $01
    jr jr_041_7e1b

    ld [hl], b
    rrca
    ret nz

    ccf
    nop
    rst $38
    nop

jr_041_7e1b:
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
    jr nz, @+$01

    ldh a, [rIE]
    nop
    rst $38
    ld a, h
    rst $38
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
    nop
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
    rst $38
    rst $38
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
    ldh a, [rIE]
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
    ld b, $07
    ld hl, sp-$01
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld c, $03
    ld b, $03
    inc c
    rrca
    jr c, jr_041_7f0c

    ldh a, [$7f]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    cp $80
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$fe]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    nop
    nop
    nop
    nop
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

jr_041_7f0c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$89]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ld b, b
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld [$00f9], sp
    ld sp, hl
    ld [$08f9], sp
    db $fd
    ld [$00fd], sp
    push af
    nop
    db $fd
    nop
    rst $38
    ld [$08fd], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ffff], sp
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $18
    rra
    cp a
    rra
    sbc a
    rra
    ccf
    rra
    rra
    rra
    scf
    rra
    daa
    rra
    and a
    ccf
    and b
    ccf
    and b
    ccf
    ldh [$3f], a
    and b
    ccf
    jr nz, jr_041_7fb1

    and b
    ccf
    jr nz, jr_041_7fb5

    and b
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [rIE], a
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf

jr_041_7fb1:
    ret nz

    ld a, a
    add b
    ld a, a

jr_041_7fb5:
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld h, c
    jr nz, jr_041_7ff6

jr_041_7ff6:
    db $e4
    nop
    db $e4
    nop
    db $f4
    nop
    ldh a, [rP1]
    rst $28
    nop
