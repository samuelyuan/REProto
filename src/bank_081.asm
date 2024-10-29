SECTION "ROM Bank $081", ROMX[$4000], BANK[$81]

    db $10
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld b, b
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
    ldh a, [rIE]
    ld a, $7f
    rlca
    rrca
    nop
    ld bc, $0000
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
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    rrca
    rlca
    rst $20
    ld hl, sp-$01
    nop
    ld a, a
    ret nz

Jump_081_4061:
    rrca
    ret nz

    inc bc
    ret nz

    ld bc, $8181
    adc a
    adc [hl]
    ld a, b
    ld a, b
    ld hl, sp-$38
    ldh [rNR41], a
    ccf
    call c, Call_081_7e85
    add hl, de
    or $ab
    ld d, a
    ld a, l
    sbc [hl]
    pop af
    ld a, a
    add a
    rst $38
    ld c, a
    ld hl, sp-$0e
    ldh a, [$f2]
    ret nz

    db $10
    inc bc
    db $10
    rrca
    add b
    ld l, h
    sub b
    ld [hl], b
    inc de
    inc de
    inc de
    inc de
    ccf
    ld bc, $077e
    ld a, e
    ld c, $f7
    add hl, hl
    ld c, a
    pop af
    rra
    jp hl


    ld a, a
    sub e
    rst $38
    ld h, h
    db $fc
    call nz, JoypadTransitionInterrupt
    ld h, h
    nop
    ld [hl], c
    ld bc, $01a5
    and a
    ld [bc], a
    add a
    nop
    adc a
    add hl, bc
    adc $ff
    call z, $d9ff
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rst $38
    add sp, -$01
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

Jump_081_40e3:
    rst $38
    nop

jr_081_40e5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_081_40ed:
    rst $38
    nop

jr_081_40ef:
    rst $38
    inc de

jr_081_40f1:
    rst $38
    adc d

jr_081_40f3:
    rst $38
    inc bc

jr_081_40f5:
    rst $38
    ld c, c
    rst $38
    dec d
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rrca
    rrca
    rst $38
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
    add b
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    jr nz, jr_081_40e5

    ld h, b
    ret nz

    and b
    ld b, b
    and b
    ret nz

    jr nz, jr_081_40ed

    jr nz, jr_081_40ef

    jr nz, jr_081_40f1

    jr nz, jr_081_40f3

    jr nz, jr_081_40f5

    ldh [$e0], a
    sub b
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    sub b
    ld [hl], b
    sbc a
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    add sp, -$01
    jr @+$01

    ld l, b
    rst $38
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    ld e, b
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    db $fc
    rst $38
    ld hl, sp-$01
    sub b
    rst $38
    jr nz, @+$01

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
    add c
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld a, [hl]
    add e
    ld a, [hl]
    cp e
    ld h, d
    cp a
    ld a, d
    xor a
    ld e, d
    cp a
    ld e, d
    cp a
    ld b, d
    cp a
    ld a, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
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
    ld a, a
    rst $38
    rst $38
    cp $0f
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
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
    rra
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
    inc bc
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    ld e, $03
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rst $20
    inc e
    rst $20
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    ret


    rst $38
    jp hl


    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    inc bc
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
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ld a, a
    ret nz

    ld a, a
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

Jump_081_4327:
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
    cp a
    ret nz

    sbc a
    pop hl
    adc a
    pop af
    add a
    ld sp, hl
    add e
    db $fd
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    add d
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
    add e
    rst $38
    add e
    db $fd
    ld b, e
    db $fc
    ld h, d
    db $fd
    ld [hl+], a
    db $fd
    ld [hl-], a
    db $fd
    ld [de], a
    db $fd
    ld a, [de]
    db $fd
    ld a, [bc]
    db $fd
    ld c, $fd
    ld b, $ff
    ld b, $ff
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
    rst $38
    rst $38
    rst $38
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld a, a
    sbc a
    ld a, a
    add a
    ld a, a
    pop af
    ld a, a
    ret c

    ld a, a
    db $fc
    ld a, a
    db $fc
    ld l, h
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    inc e
    rst $38
    ld c, [hl]
    rst $38
    inc hl
    rst $38
    ld d, e
    cp l
    ld l, a
    sbc a
    push af
    rrca
    ld [hl], b
    adc h
    ld [hl-], a
    ret z

    add b
    ld hl, sp-$2d
    rst $38
    cp a
    rst $38
    inc hl
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    cp a
    cp a
    ld e, a
    rra
    rst $28
    add e
    rst $30

jr_081_43de:
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    ld c, $ff
    ld b, $ff
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
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    ccf
    rst $18
    rra
    rst $30
    rlca

jr_081_4430:
    rla
    ld sp, hl
    ld de, $10fe
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    cp $ff
    rst $38
    rst $38
    cp a
    cp a
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
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    adc l
    jr nc, jr_081_43de

    jr c, jr_081_4430

    inc a
    ret c

    ld a, $9c
    ccf
    sbc [hl]
    ccf
    db $ec
    rra
    call nz, $f90f
    ld b, $f1
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    xor $ff
    rst $30
    rst $28
    ei
    rst $30
    rst $28
    ei
    di
    db $fd
    db $fd
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
    ld a, a
    rst $38
    ccf
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    jr @+$01

    inc c
    rst $38
    ld c, $ff
    ld b, $ff

jr_081_44bc:
    rlca
    rst $38
    inc bc

jr_081_44bf:
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

jr_081_44cd:
    rst $38
    nop
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    di
    inc c
    rst $20
    jr jr_081_44bc

    ld e, $e8
    jr jr_081_44bf

    jr jr_081_44cd

    db $10
    db $e4
    db $10
    ret nz

    jr nc, @-$2c

    jr nc, @-$2e

    ld [hl-], a
    push bc
    ld [hl-], a
    call nz, $9333
    ld h, c
    sub d
    ld h, e
    add d
    ld h, [hl]
    and h
    ld h, d
    and [hl]
    ld h, b
    cp h
    ld h, b
    nop
    rst $38
    ld bc, $01fe
    cp $f0
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    dec sp
    rst $00
    dec bc
    pop af
    ld a, [bc]
    db $f4
    dec bc
    db $f4
    inc bc
    db $fc
    add l
    ld a, [$ff80]
    add c
    cp $80
    rst $38
    add b
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    ld a, a
    dec sp
    ld a, a
    inc sp
    ei
    ld [hl], $f3
    inc a
    db $76
    dec e
    ld a, [hl]
    add hl, de
    db $fc
    inc sp
    db $fc
    inc sp
    cp $27
    rst $38
    ld h, a
    or b
    rst $38
    or c
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $bf
    rst $18
    rst $38
    adc a
    or a
    rst $08
    db $db
    rst $20
    db $fd
    db $e3
    rst $38
    pop af
    rst $30
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    ccf
    cp $1e
    rst $38
    rrca
    rst $38
    rrca
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    rst $38
    nop
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    or $09
    ld [c], a
    ld bc, $0102
    inc bc
    ld bc, $0107
    rlca
    ld bc, $0305
    dec b
    inc bc
    dec b
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    dec bc
    add a
    ld c, e
    add a
    adc e
    ld b, a
    ld l, a
    rlca
    rra
    rlca
    ld a, a
    add a
    ld d, a
    xor [hl]
    or a
    ld c, [hl]
    rla
    xor $8f
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld a, a
    rst $38
    rra
    sbc a
    rlca
    rst $20
    ld sp, hl
    ld bc, $00fc
    rst $38
    nop
    adc a
    ld [hl], b
    ld a, a
    add b
    cpl
    ret nc

    sbc l
    ld [c], a
    db $e3
    db $fc
    ld [hl], h
    ei
    dec a
    cp $0e
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    ccf
    db $10
    rrca
    jr jr_081_4647

    cp h
    dec de
    ld sp, hl
    ld sp, $63f3
    ld h, [hl]
    rst $20
    xor $c7
    cp $cf
    cp [hl]
    rst $18
    sbc [hl]

jr_081_4647:
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $38
    or [hl]
    ld a, a
    ld b, b
    cp a
    cp a
    rst $18
    adc $ff
    or $ef
    ld a, [$f4f7]
    ei
    ld a, d
    db $fd
    cp l
    ld a, [hl]
    sbc [hl]
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
    db $fc
    rst $38
    ei
    db $fc
    ld a, a
    ld hl, sp+$7f
    db $fc
    ccf
    cp $1e
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
    ld bc, $00ff
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rst $00
    ld bc, $00f1
    db $fc
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    sub a
    add sp, -$61
    ldh [$85], a
    ld a, [$ec13]
    ld [hl+], a
    rst $18
    rrca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    ld sp, hl
    add hl, de
    ldh a, [$31]
    pop hl
    inc hl
    db $e3
    ld b, a
    rst $00
    xor a
    rst $00
    ld a, [hl]
    adc [hl]
    ld a, $dc
    inc a
    ld hl, sp+$3e
    ld hl, sp+$77
    ld hl, sp+$7f
    ldh a, [$71]
    cp $e0
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $18
    jp $e3dd


    db $fd
    pop hl
    rst $38
    ldh a, [$f7]
    ld hl, sp+$79
    db $fc
    ld a, l
    db $fc
    ld a, $fe
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rst $00
    ldh a, [rP1]
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
    add b
    rst $18
    ldh [$f7], a
    ld hl, sp+$7b
    db $fc
    ld a, $ff
    rrca
    rst $38
    rlca
    rst $38
    dec b
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
    rst $38
    sub b
    rst $18
    add b
    adc a
    nop
    rlca
    nop
    inc bc
    ld bc, $0703
    inc bc
    rrca
    rlca
    ld e, $0f
    cp h
    ld e, $fc
    inc a
    ld hl, sp+$78
    ld a, b
    ldh a, [$fc]
    pop af
    db $fd
    db $e3
    rst $10
    db $eb
    rst $08
    rst $30
    rst $00
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    rra
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_081_4807

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e

jr_081_4807:
    ld e, $1f
    jr nz, jr_081_482c

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_081_4841

    ld a, [hl+]
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc l
    dec l
    ld l, $2f
    jr nc, jr_081_4857

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_081_482c:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_081_486f

    ld a, [hl-]
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc a

jr_081_4841:
    ld [hl], $36
    ld [hl], $36
    dec a
    ld a, [bc]
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ccf
    ld [hl], $36
    ld [hl], $36
    dec a
    ld a, [bc]

jr_081_4857:
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld [hl], $36
    ld [hl], $36
    dec a
    ld a, [bc]
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_081_486f:
    ld a, [bc]
    ld b, c
    ld [hl], $36
    ld [hl], $36
    dec a
    ld a, [bc]
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, d
    ld [hl], $36
    ld [hl], $36
    dec a
    ld a, [bc]
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld [hl], $36
    ld [hl], $44
    ld b, l
    ld a, [bc]
    ld a, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld d, d
    add hl, de
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc d
    ld e, c
    ld e, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld e, $1e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld e, $1e
    ld e, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, de
    ld l, [hl]
    ld l, a
    ld [hl], b
    add hl, de
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld e, $1e
    ld e, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, de
    add hl, de
    add hl, de
    ld [hl], l
    add hl, de
    add hl, de
    db $76
    ld [hl], a
    ld a, b
    ld h, h
    ld e, $1e
    ld a, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $88
    adc c
    adc d
    adc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, $8c
    adc l
    ld a, [bc]
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld b, $01
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
    ld [bc], a
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0040
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $2101
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
    ld b, b
    nop
    nop
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    inc b
    inc bc
    add d
    ld bc, $0140
    jr nz, jr_081_4a71

    db $10

jr_081_4a71:
    ld bc, $1920
    ld bc, $0008
    inc e
    ld a, [hl+]
    inc d
    ld [bc], a
    db $10
    ld [hl], c
    add b
    nop
    rst $38
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
    ld a, b
    add sp, -$01
    jr c, @+$01

    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    inc a
    di
    dec a
    ld a, [c]
    dec a
    ld a, [c]
    dec a
    ld a, [c]
    dec [hl]
    ld a, [$fb14]
    ld e, $f9
    rra
    ld sp, hl
    ld e, $f9
    ld a, [de]
    db $fd
    dec de
    db $fc
    ld c, $fd
    ld c, $fd
    inc c
    rst $38
    dec c
    cp $0d
    cp $0e
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    rrca
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld c, $ff
    inc a
    rst $38
    ld a, b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    dec bc
    rst $30
    ei
    rlca
    ei
    rlca
    jp c, Jump_081_4327

    cp a
    inc bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, d
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ld a, c
    rst $38
    jp $81ff


    ld a, a
    ld b, e
    rst $38
    ld e, a
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
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    jr c, @+$01

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
    pop hl
    db $e3
    push hl
    pop hl
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ld d, a
    rst $38
    ld c, a
    rst $38
    sub a
    rrca
    rst $38
    rlca
    rst $00
    ccf
    sub a
    ld l, a
    rst $00
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld [hl], b
    rst $38
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

jr_081_4c7f:
    rst $38
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ld hl, sp+$07
    rst $38

jr_081_4c89:
    nop
    rst $38

jr_081_4c8b:
    nop
    rst $38
    nop

jr_081_4c8e:
    rst $38
    nop
    rst $38
    ccf
    ld hl, sp+$27
    di
    jr nz, jr_081_4c8b

    jr nz, jr_081_4c7f

    jr nc, jr_081_4c89

    jr nc, jr_081_4c8e

    db $10
    push af
    db $10
    ld a, [c]
    db $10
    ld sp, hl
    db $10
    cp $10
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    sbc a
    cp $9f
    cp $9f
    cp $ff
    sbc $f0
    rst $18
    ld e, b
    rst $38
    jr @+$01

    ld [$0cff], sp
    rst $38
    ld [$11ff], sp
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
    rst $20
    rst $38
    rst $20
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
    db $fc
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
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    inc e
    rst $38
    ld a, b
    rst $38
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
    xor a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ld a, b
    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld b, b
    ld a, b
    ld b, b
    ld hl, sp+$40
    ld hl, sp-$40
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$04
    inc b
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    di
    di
    jp nz, $bffd

    call c, $dea1
    and c
    sbc $a1
    sbc $e1
    sbc $6d
    sbc $55
    xor $1f
    xor $0f
    cp $de
    rst $28
    jp c, $feef

    rst $28
    rst $38
    rst $28
    ld l, l
    rst $38
    dec a
    rst $38
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
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
    ld bc, $03ff
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    sbc d
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
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

    ccf
    nop
    cp a
    add b
    cp a
    add b
    ld a, a
    ld b, b
    rst $38
    ret nz

    sbc a
    add b
    rst $38
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $7b
    nop
    nop
    nop
    nop
    nop
    cpl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    add b
    rrca
    nop
    inc bc
    nop
    nop
    ld d, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    nop
    nop
    sub $00
    rst $30
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    adc d
    ld [hl], l
    db $dd
    ld [hl+], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    xor a
    nop
    push de
    nop
    nop
    nop
    add c
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    stop
    rst $38
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
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

jr_081_4ec0:
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld c, d
    nop
    rst $38
    rst $38
    ld b, b
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    jr nc, jr_081_4ec0

    scf
    ret nz

    scf
    add b
    ld [hl], a
    add a
    ld [hl], b
    ld [$08f0], sp
    push af
    ld [$08f6], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld hl, sp+$0f
    call nz, $e22f
    daa
    ld sp, $30f1
    ld hl, sp+$38
    db $fc
    inc a
    cp $3e
    cp $3f
    db $fd
    ccf
    db $fd
    ccf
    db $fc
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ccf
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ei
    ret nz

    rst $38
    ld a, a
    rra
    inc bc
    ret nz

    nop
    nop
    ld b, b
    nop
    jr nc, jr_081_4fa5

jr_081_4fa5:
    ld e, c
    nop
    xor a
    nop
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_081_4fde

    db $10
    sbc a
    ld [$84cf], sp
    rst $20
    jp nz, $e1c3

    pop hl
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fc
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

jr_081_4fde:
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    ld e, a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fc
    rst $38
    nop
    db $fd
    ld hl, sp+$05
    ld hl, sp+$05
    ei
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    pop af
    ld [$00f1], sp
    pop af
    nop
    pop af
    ld a, [bc]
    pop af
    ld [$0af1], sp
    pop af
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    ld a, [bc]
    di
    ld [$f00b], sp
    dec bc
    ldh a, [$0b]
    ldh a, [rNR13]
    ld [bc], a

jr_081_5048:
    inc sp
    inc bc
    ldh a, [rP1]
    ldh a, [$f0]
    ccf
    db $10
    inc d
    dec de
    inc d
    db $eb
    ld d, $f9
    ld d, $e9
    ld d, $e9
    ld d, $e9

jr_081_505c:
    ld a, $e1

jr_081_505e:
    ccf
    ldh [rNR41], a
    rst $38

jr_081_5062:
    db $e4
    dec sp

jr_081_5064:
    db $ec
    inc sp

jr_081_5066:
    xor $31
    xor $31
    rst $28
    jr nc, jr_081_505c

    jr nc, jr_081_505e

    jr nc, @-$0f

    jr nc, jr_081_5062

    jr nc, jr_081_5064

    jr nc, jr_081_5066

    jr nc, jr_081_5048

    ldh a, [$80]
    ld a, a
    ld b, b
    ccf
    nop
    nop
    ld [bc], a
    db $fd
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
    ld b, b
    rst $38
    jr nz, @+$01

    ld d, c
    rst $38
    ret


    rst $38
    sub $ff
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
    ld bc, $037e
    inc b
    rlca
    ld [$10ef], sp
    rst $28
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $08
    nop
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, d
    rlca
    ldh a, [rNR22]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rNR10]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    nop
    nop
    ldh [rP1], a
    ldh a, [rIE]
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    inc b
    nop
    cp $01
    db $eb
    inc b
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    nop
    rst $38
    ld bc, $00ff
    nop
    ld hl, $54de
    xor e
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
    nop
    rst $38
    ld d, b
    rst $38
    ld h, [hl]
    rst $38
    or l
    rst $38
    db $db
    rst $38
    nop
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
    cp a
    nop
    cp a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
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
    ret nc

    nop
    nop
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
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$41
    cp [hl]
    ret nz

    ccf
    ldh a, [rIF]
    db $ec
    inc de
    cp $01
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    xor d
    ld d, l
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
    ld [c], a
    rst $38
    ld l, d
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
    nop
    rst $38
    nop
    ld bc, $00ff
    rst $38
    rst $38
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $e0
    rra
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    ld d, b
    xor a
    ld [bc], a
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    cpl
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    push de
    rst $38
    ld a, e
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    jr nz, jr_081_525e

    db $fc
    db $fc
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $03
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    dec bc
    inc e
    dec bc

jr_081_525e:
    inc e
    dec bc
    jr c, jr_081_5271

    jr @+$21

    jr c, @+$21

    jr c, @+$21

    cp b
    rla
    ld a, b
    rla
    ld hl, sp-$09
    nop
    rlca
    rst $38

jr_081_5271:
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, $ff
    rra
    rst $38

jr_081_52ce:
    rrca
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
    add b
    nop
    add b
    nop
    add b
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    jr nz, jr_081_52ce

    nop
    ldh a, [rP1]
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    dec bc
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld b, $06
    ld de, $0612
    inc de
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    ld b, $06
    ld b, $06
    ld b, $18
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld b, $06
    ld b, $06
    ld b, $1d
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    jr nz, @+$08

    ld b, $06
    ld b, $06
    ld hl, $0b0b
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    ld b, $24
    ld b, $06
    ld b, $06
    ld b, $25
    dec bc
    dec bc
    nop
    nop
    add hl, de
    ld h, $27
    jr z, jr_081_53d0

    ld a, [hl+]
    ld b, $06
    ld b, $06
    dec hl
    inc l
    dec bc
    dec bc
    nop
    dec l
    ld l, $2f
    cpl
    cpl
    jr nc, jr_081_53e9

    ld b, $06
    ld b, $32
    inc sp
    dec bc
    dec bc
    dec bc
    inc [hl]
    dec [hl]
    cpl
    cpl
    cpl
    cpl
    ld [hl], $37
    jr c, jr_081_5403

    ld a, [hl-]
    cpl
    dec sp
    dec bc
    dec bc
    dec bc

jr_081_53d0:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc a
    dec a
    ld a, $2f
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld b, l
    ld b, [hl]
    ld b, a

jr_081_53e9:
    cpl
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    cpl
    cpl
    cpl

jr_081_5403:
    cpl
    cpl
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
    cpl
    cpl
    cpl
    cpl
    cpl
    ld e, l
    ld e, [hl]
    ld e, a
    cpl
    ld h, b
    ld h, c
    cpl
    ld h, d
    ld h, e
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    cpl
    cpl
    ld l, b
    cpl
    ld l, c
    ld l, d
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    cpl
    cpl
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    nop
    cpl
    cpl
    cpl
    ld h, h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    cpl
    cpl
    cpl
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    cpl
    cpl
    cpl
    ld l, e
    ld a, e
    ld a, h
    ld a, l
    cpl
    cpl
    cpl
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    add d
    cpl
    cpl
    ld h, h
    ld [hl], e
    add e
    add h
    add l
    cpl
    cpl
    cpl
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    cpl
    cpl
    ld l, e
    adc h
    adc l
    adc [hl]
    cpl
    cpl
    cpl
    cpl
    adc a
    sub b
    sub c
    sub d
    dec bc
    sub e
    nop
    nop
    nop
    ld bc, $0402
    inc b
    inc b
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    inc b
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld bc, $0402
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
    ld bc, $0004
    nop
    nop
    nop
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
    ld hl, $0202
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld bc, $0301
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    call c, $ffff
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$09f6], sp
    ldh [$1f], a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $03fe
    db $fc
    rlca
    cp b
    ld bc, $00be
    cp a
    nop
    cp a
    inc a
    jp $820d


    nop
    add b
    nop
    add b
    nop
    add b
    jr nc, @-$4e

    ccf
    add e
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ret nz

    rst $00
    ld hl, sp-$05
    db $fc
    cp $ff
    ld a, b
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    rst $30
    ldh a, [$b8]
    rst $38
    db $fd
    db $fd
    ldh a, [$f0]
    rst $38
    rst $38
    cp $ff
    cp $fd
    cp $f7
    ei
    db $fc
    ldh [$e0], a
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    sub b
    ld b, b
    or b
    ld d, b
    cp b
    nop
    rst $38
    inc b
    cp $14
    cp $ac
    cp $fc
    rst $38
    jr nz, @+$01

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
    rst $38
    rst $38
    rst $38
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
    ld [$ffff], sp
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    dec hl
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    inc bc
    db $fc
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    rrca
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

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

    adc a
    ld [hl], b
    ld h, a
    jr jr_081_571e

    ld [$483f], sp
    adc a
    ld hl, sp-$59
    ret c

    adc a
    ldh a, [$9f]
    ld h, b
    ccf
    ret nz

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
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld a, a
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    add b
    ld a, a

jr_081_571e:
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    xor d
    ld d, l
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld e, $ff
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

    nop
    add b
    nop
    ret nz

    nop
    ldh [$a0], a
    ld b, b
    push de
    nop
    cp $00
    rst $38
    nop
    inc bc
    nop
    rst $10
    rst $10
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
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld c, $ff
    ld b, $06
    dec b
    inc b
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$f0]
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    cp $fd
    db $fc
    ei
    db $fc
    ei
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $18
    add b
    cp a
    cp b
    add a
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    cp $fd
    cp $fd
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a
    ldh [$df], a
    ret nz

    cp a
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
    rst $38
    nop
    rst $38
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
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld a, a
    jr nz, jr_081_58d8

    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, [bc]
    rrca
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
    ld bc, $0000
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    cp $fe
    db $fd
    cp $fd
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a
    ldh [$df], a
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
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
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    xor b
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld a, [hl+]
    ccf
    nop
    ld bc, $0000
    nop

jr_081_58d8:
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fd
    db $fc
    ei
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [$ef]
    ldh a, [$ef]
    ldh [$df], a
    ret nz

    cp a
    ret nz

    cp a
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    add b
    nop
    db $fc
    add b
    rst $38
    xor b
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld a, [bc]
    rrca
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
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
    rlca
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$80]
    ldh a, [$a0]
    ldh a, [$a0]
    ldh a, [rNR41]
    jr nc, jr_081_599a

jr_081_599a:
    nop
    nop
    add b
    add b
    cp $fe
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
    ld bc, $01fe
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    ei
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $c3
    dec sp
    rst $30
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
    inc bc
    rrca
    nop
    rrca
    nop
    ld hl, sp-$08
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
    nop
    rst $38
    nop
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
    ld bc, $f0ff
    nop
    rst $00
    nop
    cp $00
    ld [hl], h
    nop
    or b
    nop
    call c, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld a, [$ea1f]
    ld a, a
    cp [hl]
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
    db $fd
    cp $ec
    ldh a, [$a0]
    ret nz

    add b
    nop
    rlca
    nop
    nop
    nop
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    ei
    ld a, [bc]
    pop af
    ld [$0bf0], sp
    ldh a, [$08]
    di
    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    ld [$08f3], sp
    ei
    ld [$08fb], sp
    ei
    ld [$08fb], sp
    ei
    ld [$3bfb], sp
    ret z

    rst $38
    rst $38
    ld sp, hl
    ld a, [bc]
    add hl, bc
    ld a, [$b609]
    add hl, bc
    ld d, d
    add hl, bc
    ld [hl], d
    add hl, bc
    or $09
    or $09
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    ldh [rP1], a
    rst $38
    ldh [rIE], a
    dec bc
    rst $38
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
    ld bc, $07fe
    ld a, [$e01f]
    ld a, a
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
    ld bc, $8fff
    rst $38
    cp a
    db $fd
    cp $e8
    ldh a, [$a0]
    ret nz

    add b
    nop
    rlca
    nop
    ccf
    nop
    ld a, h
    inc bc
    rst $28
    rra
    jr c, jr_081_5b19

    nop
    rlca
    ldh [$1f], a
    ldh [$9f], a
    nop

jr_081_5b19:
    rst $38
    jr c, @+$05

    add b
    ld bc, $f904
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    rrca
    db $fd
    rrca
    ld hl, sp+$0a
    ld hl, sp+$0d
    ldh a, [$0a]
    ldh a, [$0d]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    rst $38
    add b
    rst $38
    nop
    cp b
    ld b, a
    adc d
    ld [hl], l
    nop
    rst $38
    or b
    ld c, a
    ldh a, [rIF]
    db $f4
    dec bc
    db $fc
    inc bc
    rst $38
    nop
    push af
    ld a, [bc]
    cp $01
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    add b
    nop
    rst $38
    ldh a, [$03]
    inc bc
    ld hl, sp-$01
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
    ei
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
    cp $06
    ld hl, sp+$1f
    ldh [$7f], a
    add b
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
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    ei
    db $fc
    add sp, -$10
    ld h, b
    add b
    nop
    nop
    nop
    ld bc, $0f00
    ld bc, $0f7e
    di
    ld a, a
    sbc h
    rst $38
    ldh [rIE], a
    nop
    nop
    rst $38
    ld a, a
    add b
    ld sp, hl
    ldh a, [$f0]
    db $10
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [rP1]
    ld e, c
    nop
    cp c
    nop
    ld e, a
    rra
    ldh a, [rIE]
    nop
    rst $38
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    cp $01
    add d
    ld a, l
    rst $08
    jr nc, @+$01

    nop
    db $fc
    inc bc
    rst $38
    nop
    nop
    nop
    add b
    nop
    rst $38
    ld hl, sp-$21
    inc bc
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
    nop
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    inc bc
    rra
    rst $38
    ld a, a
    rst $38
    ld a, [$d8fc]
    ldh [$60], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rlca
    ld sp, hl
    ccf
    adc $ff
    ld [hl], b
    rst $38
    add b
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
    ld a, a
    ret nc

    cpl
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    ld h, b
    sbc a
    ld b, b
    cp a
    ldh [$1f], a
    rra
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    rst $08
    inc bc
    pop hl
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
    cp $7f
    ld a, [$d0fc]
    ldh [rLCDC], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc l
    inc bc
    ld h, a
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
    rst $38
    nop
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
    add e
    rst $38
    ld h, b
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    ld l, e
    nop
    rst $38
    nop
    push de
    nop
    or $00
    ld hl, sp+$00
    db $fd
    nop
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
    cp $01
    ld bc, $0000
    nop
    ld a, c
    add b
    db $fc
    rst $38
    adc a
    inc bc
    jp $fffc


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    cp $ff
    or $f8
    ret nc

    ldh [$c0], a
    nop
    ld [$0000], sp
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rrca
    inc de
    ld a, a
    sbc [hl]
    rst $38
    ldh a, [rIE]
    add b
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    rst $38
    nop
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    ld d, a
    nop
    rst $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld hl, sp+$00
    ld a, d
    add b
    db $fc
    rst $38
    adc a
    inc bc
    jp $fffc


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
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    cp $ff
    db $f4
    ld hl, sp-$50
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    rrca
    ld sp, $6f1f
    rst $38
    ld a, h
    rst $38
    ret nz

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
    rst $38
    ld hl, sp-$01
    adc b
    rra
    ld [$0bfc], sp
    inc e
    add sp, $0c
    ld hl, sp+$0c
    ld a, [$fa0c]
    ld c, $f8
    ld c, $f4
    ld c, $f4
    ld c, $f4
    ld b, $fd
    ld b, $fd
    ld b, $fd
    rlca
    cp $07
    cp $07
    ld a, [$fa07]
    rlca
    ld a, [$0bf7]
    rrca
    inc bc
    ld e, a
    inc bc
    rst $30
    inc bc
    add hl, sp
    jp $ffff


    ld b, $01
    add a
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    db $fd
    cp $f4
    ld hl, sp-$50
    ret nz

    ldh [rP1], a
    jr jr_081_5e04

jr_081_5e04:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0f13
    ld a, [hl]
    rra
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$5500], sp
    nop
    ld l, e
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp a
    nop
    sbc a
    rst $38
    nop
    ld bc, $0080
    add b
    ld a, b
    add a
    add c
    cp $70
    add b
    rrca
    nop
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$fdff]
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    rst $38
    db $fd
    cp $ec
    ldh a, [$a0]
    ret nz

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
    ld bc, $0700
    add hl, bc
    ccf
    ld c, a
    rst $38
    ld a, h
    rst $38
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp-$09
    jr @+$19

    jr jr_081_5ec5

    inc e
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c

jr_081_5ec5:
    inc bc
    inc c
    inc bc
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $79
    ld b, $79
    ld b, $59
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    ld e, h
    inc bc
    inc e
    add e
    inc e
    nop
    ld a, a
    pop af
    rrca
    inc bc
    db $fc
    pop bc
    nop
    inc a
    inc bc
    nop
    rst $38
    nop
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

    ld de, $2aff
    rst $38
    xor e
    rst $38
    sub a
    rst $38
    nop
    ld bc, $0302
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
    ld de, $0303
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_081_5f36

    ld a, [de]
    dec de
    ld c, $1c
    dec e
    ld e, $03
    inc bc
    rra
    jr nz, jr_081_5f49

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld c, $28
    add hl, hl
    ld a, [hl+]
    inc bc
    inc bc
    inc bc
    dec hl

jr_081_5f36:
    inc l
    dec l
    ld l, $2f
    ld hl, $3130
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $03
    inc bc
    inc b
    scf
    jr c, jr_081_5f81

    ld a, [hl-]

jr_081_5f49:
    dec sp
    inc a
    dec a
    ld a, $0e
    ccf
    ld hl, $4140
    inc bc
    inc bc
    ld [de], a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, $49
    ld c, d
    ld c, e
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld c, $33
    ld d, d
    ld d, e
    ld d, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, l
    ld hl, $5756
    ld e, b
    ld e, c
    ld e, d
    ld c, $5b
    ld hl, $5d5c
    inc bc

jr_081_5f81:
    inc bc
    inc bc
    inc b
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld c, $63
    ld h, h
    ld c, d
    ld h, l
    ld h, [hl]
    ld hl, $0303
    inc bc
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
    ld hl, $0321
    inc bc
    inc bc
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
    ld hl, $2121
    inc bc
    inc bc
    inc bc
    ld a, h
    ld c, $7d
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld hl, $2121
    ld hl, $0384
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld e, l
    adc h
    adc l
    ld hl, $2121
    ld hl, $038e
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld hl, $2121
    ld hl, $9821
    inc bc
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld c, d
    ld hl, $2121
    ld hl, $a121
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld c, d
    ld hl, $a9a8
    ld hl, $2121
    ld hl, $aa21
    xor d
    xor e
    inc bc
    inc bc
    inc bc
    xor h
    ld hl, $2121
    xor l
    ld c, d
    ld hl, $2121
    ld hl, $aaaa
    xor [hl]
    inc bc
    inc bc
    inc bc
    xor a
    ld hl, $2121
    or b
    or c
    ld hl, $2121
    ld hl, $aaaa
    or d
    inc bc
    inc bc
    inc bc
    or e
    ld hl, $2121
    ld hl, $21b4
    ld hl, $2121
    xor d
    or l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    or [hl]
    ld hl, $2121
    or a
    cp b
    ld hl, $2121
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    dec b
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
    nop
    ld [bc], a
    ld bc, $0606
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    jr nz, jr_081_612c

jr_081_612c:
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
    jr nz, jr_081_614d

jr_081_614d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_081_6182

jr_081_6182:
    stop
    stop
    stop
    jr nz, jr_081_618a

jr_081_618a:
    adc b
    nop
    ld a, b
    nop
    sbc b
    nop
    inc l
    nop
    ld [hl], b
    inc b
    db $fc
    inc bc
    rst $18
    nop
    ccf
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $18
    add b
    cp [hl]
    pop bc
    ld c, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    ldh a, [$c0]
    add b
    nop
    nop
    rst $38
    nop
    cp $01
    jp hl


    ld d, $36
    ld sp, hl
    cp $f9
    ld hl, sp-$01
    ld sp, hl
    cp $3e
    db $dd
    ld e, h
    cp a
    ld hl, sp-$01
    pop hl
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    pop af
    cp $80
    rst $38
    ld [bc], a
    db $fc
    ld e, $e1
    ld d, b
    adc a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $70
    adc a
    ld [hl], d
    adc l
    ld sp, $21ce
    sbc $35
    jp z, $fc03

    inc d
    db $eb
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
    ret nz

    rst $38
    jp nz, $e6ff

    rst $38
    db $e3
    rst $38
    db $f4
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld e, $fe

jr_081_624a:
    jr jr_081_624a

    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    ld a, e
    rst $38
    ld a, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
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
    rst $38
    nop
    rrca
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
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38

jr_081_62af:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $e3
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    add $39
    sub e
    ld l, h
    inc l
    db $d3
    cp h
    ld b, e
    or b
    ld c, a
    ret nc

    cpl
    jr nz, jr_081_62af

    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    ld b, $f9
    ld e, $e1
    rlca
    ld hl, sp+$41
    cp [hl]
    ld d, c
    xor [hl]
    ld [$94f7], sp
    ld l, e
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
    inc bc
    rst $38
    inc c
    rst $38
    ld sp, $c7ff
    rst $38
    inc e
    rst $38
    push hl
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rla
    rst $38
    jp c, $79fd

    ldh a, [$c1]
    db $e3
    ld bc, $248e
    rra
    adc [hl]
    ld a, a
    ld e, [hl]
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ccf
    ld b, b
    ccf
    add c
    ld a, [hl]
    nop
    cp $a2
    inc e
    jr z, jr_081_6360

    inc a
    nop
    jr nz, jr_081_6368

    jr nz, jr_081_6362

    ret nz

    ccf
    ld l, [hl]
    sub c
    push de
    ld a, [hl+]
    ld a, d
    add l
    db $dd
    ld [hl+], a
    or $09
    add c
    ld a, a

jr_081_6360:
    rst $38
    ret nz

jr_081_6362:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_081_6368:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $20
    ld hl, sp+$7e
    add c
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
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
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $9f60
    ld h, d
    sbc l
    ld [bc], a
    db $fd
    inc h
    db $db
    inc h
    db $db
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    di
    rst $38
    xor a
    cp $78
    db $fc
    ld [c], a
    pop af
    add d
    rst $00
    dec d
    adc [hl]
    ld d, h
    cp e
    ld d, b
    rst $28
    ld b, b
    cp a
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    db $fd

Jump_081_63ff:
    rst $38
    rst $38
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
    inc b
    ld hl, sp+$40
    ld a, $00
    rra
    ld a, [bc]
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    xor d
    ld d, l
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    add b
    ld a, a
    rst $38
    ldh a, [rP1]
    rst $38
    inc bc
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
    db $fc
    pop af
    ldh [rSVBK], a
    adc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_081_645d:
    rst $38
    inc c
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ld bc, $1bff
    rst $20
    ld h, c
    sbc a
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    add hl, sp
    rst $00
    jr jr_081_645d

    nop
    rst $38
    nop
    rst $38
    ld d, b

jr_081_647b:
    xor a
    jr nz, jr_081_645d

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc c
    cp $71
    ld hl, sp-$2b
    db $e3
    ld b, b
    adc a
    ld [hl+], a
    dec e
    adc b
    ld [hl], a
    jr nz, jr_081_647b

    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop

jr_081_64c9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld [bc], a
    ld bc, $0002
    inc bc
    ld [bc], a
    add c
    ld [hl+], a
    pop bc
    ld d, b
    ld hl, $9109
    dec c
    ld bc, $1fe1
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_081_64c9

    ld b, b
    cp a
    ccf
    cp $ff
    nop
    ccf
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
    ret nz

    rst $38
    nop
    rst $38

Call_081_64ff:
    ld b, b
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp Jump_081_63ff


    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    scf
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    ld e, a
    rst $38
    ld a, l
    rst $38
    rst $08
    rst $28
    rra
    adc a
    ld e, a
    ccf
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$3f]
    ld hl, sp-$01
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    and $c0
    xor $c0
    rst $08
    rst $00
    sbc $c7
    pop af
    rst $00
    di
    rst $00
    db $e3
    rst $00

jr_081_65ec:
    db $e3
    ld h, a

jr_081_65ee:
    db $ed
    ld h, e
    db $ed
    ld h, e
    ld hl, sp+$63

jr_081_65f4:
    ei
    ld h, e
    di
    jr nz, jr_081_65ec

    jr nc, jr_081_65ee

    jr nc, jr_081_65f4

    inc sp
    rst $38
    rra
    pop hl
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
    rst $38
    rst $38
    cp $ff
    db $fc
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
    nop
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
    rlca
    rst $38
    rrca
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

jr_081_6650:
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
    rst $28
    rst $38
    sbc c
    ld sp, hl
    jr nc, jr_081_6650

    ld a, b
    ld hl, sp+$4e
    adc $c0
    jp $8180


    add c
    add b
    add c
    add b
    add b
    add b
    ret nz

    ldh a, [$fd]
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    ld bc, $0737
    ld a, h
    ccf
    db $e3
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    adc $fe
    inc a
    ldh a, [$fd]
    ldh [$9f], a
    nop
    ccf
    ld c, $7f
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    add b
    ld hl, sp-$01
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
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    inc bc
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
    ldh a, [rIE]
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    ld a, a
    dec e
    ccf
    dec e
    rra
    rla
    rra
    rla
    sbc a
    rlca
    rst $08
    adc a
    ld h, a
    rrca
    scf
    daa
    ccf
    rra
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl], b
    set 6, b
    inc hl
    ldh a, [$e3]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$cb]
    ldh a, [$33]
    ldh a, [$f7]
    ret nz

    rst $20
    add b
    ld l, a
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
    cp a
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
    ld a, h
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld [bc], a
    rst $38
    dec bc
    rst $38
    inc b
    ld a, [bc]
    rst $38
    ld [$15ff], sp
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    or e
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    add hl, de
    pop af
    ld a, c
    pop af
    db $fc
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    db $fd
    cp $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    inc bc
    db $fd
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld l, a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $30
    or $87
    add [hl]
    add d
    inc bc
    rst $08
    add e
    cp a
    pop bc
    cp a
    pop bc
    db $dd
    db $e3
    pop de
    rst $28
    ret nz

    ld a, a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ld a, a
    cp $ef
    cp $bf
    rst $38
    rst $18
    cp a
    rst $18
    cp a
    rst $28
    rst $18
    rst $28
    rst $18
    db $f4
    rst $28
    pop af
    rst $28
    add $ff
    sbc b
    rst $38
    rst $38
    ldh [rIE], a
    jp Jump_000_07ff


    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    db $fc
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
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
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
    inc bc
    db $fc
    ccf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ldh a, [$9b]
    rst $20
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp [hl]
    rst $18
    cp [hl]
    sbc a
    cp $9f
    rst $38
    rra
    ld a, a
    ld e, $7f
    ld e, a
    ccf
    sbc $3f
    ld e, a
    cp a
    ld a, [hl]
    cp a
    ld e, a
    cp a
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc [hl]
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
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    cp a
    rst $00
    cp a
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
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
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [$f8]
    ret nz

    adc a
    inc bc
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
    cp $f3
    ld a, [c]
    db $e3
    jp nz, Jump_081_4061

    ld [hl], c
    ld h, c
    scf
    jr nz, @-$50

    ld de, $9768
    ld [hl], b
    sbc a
    nop
    rst $38
    sub b
    rst $38
    sub c
    cp $83
    rst $38
    sbc c
    rst $20
    ld e, $f9
    sbc a
    cp $b6
    rst $38
    xor a
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
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
    cp $ff
    db $fc
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ei
    db $10
    rst $38
    db $10
    rst $38
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
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    cp $00
    pop hl
    nop
    rra
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
    rst $38
    call c, $9cff
    rst $38
    sbc $bf
    sbc $bf
    sbc $bf
    sbc $bf
    rst $38
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $7d
    ld a, $3d
    ld a, $bd
    ld a, $7d
    cp [hl]
    ld a, l
    cp [hl]
    dec a
    cp $3d
    cp $3d
    cp $bc
    rst $38
    inc sp
    db $fc
    sbc a
    ld a, h
    rst $20
    sbc a
    ld sp, hl
    rst $20
    ld h, a
    rst $38
    sbc b
    ld a, a
    ld a, c
    rst $38
    rst $38
    rst $38
    ld a, a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    rlca
    ret nz

    ccf
    rst $38
    ccf
    rst $38
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
    inc bc
    db $fc
    ccf
    rst $00
    rst $38
    nop
    nop
    rst $38
    inc de
    rst $28
    rst $08
    ccf
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
    ldh [rIE], a
    sbc [hl]
    pop hl
    ld sp, hl
    rlca
    cpl
    rra
    ld hl, sp+$3f
    ldh [$3f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    jp nz, $ce7f

    ld a, a
    ld a, [c]
    ld a, a
    ld h, [hl]
    rst $38
    ld e, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp $fb
    ld hl, sp-$01
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, b
    rst $38
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
    ccf
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fd
    ccf
    rst $08
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    ccf
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rst $18
    cp a
    rst $18
    cp a
    db $fc
    cp a
    xor l
    or e
    inc hl
    ld sp, hl
    adc b
    ld [hl], e
    ld l, b
    di
    add sp, -$0d
    dec c
    di
    dec c
    di
    inc c
    di
    ld [$0bf7], sp
    rst $30
    dec de
    rst $20
    rra
    rst $20
    sbc a
    rst $20
    rra
    rst $20
    ld d, a
    rst $28
    ld e, $ef
    inc h
    rst $08
    sbc l
    rst $28
    sbc a
    rst $28
    xor a
    rst $18
    xor a
    rst $18
    cp a
    rst $18
    rra
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $fe
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
    ld a, a
    ld hl, sp-$09
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp-$39
    ld hl, sp-$39
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$2f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [$bf], a
    ld hl, sp+$27
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
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
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
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ccf
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
    rlca
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
    rst $38
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
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
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
    ld bc, $0302
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
    ld de, $0303
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_081_6d46

    ld a, [de]
    dec de
    ld c, $1c
    dec e
    ld e, $03
    inc bc
    rra
    jr nz, jr_081_6d59

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld c, $28
    add hl, hl
    ld a, [hl+]
    inc bc
    inc bc
    inc bc
    dec hl

jr_081_6d46:
    inc l
    dec l
    ld l, $2f
    ld hl, $3130
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $03
    inc bc
    inc b
    scf
    jr c, jr_081_6d91

    ld a, [hl-]

jr_081_6d59:
    dec sp
    inc a
    dec a
    ld a, $0e
    ccf
    ld hl, $4140
    inc bc
    inc bc
    ld [de], a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, $49
    ld c, d
    ld c, e
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld c, $33
    ld d, d
    ld d, e
    ld d, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, l
    ld hl, $5756
    ld e, b
    ld e, c
    ld e, d
    ld c, $5b
    ld hl, $5d5c
    inc bc

jr_081_6d91:
    inc bc
    inc bc
    inc b
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld c, $63
    ld h, h
    ld c, d
    ld h, l
    ld h, [hl]
    ld hl, $0303
    inc bc
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
    ld hl, $0321
    inc bc
    inc bc
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
    ld hl, $2121
    inc bc
    inc bc
    inc bc
    ld a, h
    ld c, $7d
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld hl, $2121
    ld hl, $0384
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld e, l
    adc h
    adc l
    ld hl, $2121
    ld hl, $038e
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld hl, $2121
    ld hl, $9821
    inc bc
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld c, d
    ld hl, $2121
    ld hl, $a121
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld c, d
    ld hl, $a9a8
    ld hl, $2121
    ld hl, $aa21
    xor d
    xor e
    inc bc
    inc bc
    inc bc
    xor h
    ld hl, $2121
    xor l
    ld c, d
    ld hl, $2121
    ld hl, $aaaa
    xor [hl]
    inc bc
    inc bc
    inc bc
    xor a
    ld hl, $2121
    or b
    or c
    ld hl, $2121
    ld hl, $aaaa
    or d
    inc bc
    inc bc
    inc bc
    or e
    ld hl, $2121
    ld hl, $21b4
    ld hl, $2121
    xor d
    or l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    or [hl]
    ld hl, $2121
    or a
    cp b
    ld hl, $2121
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    dec b
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
    nop
    ld [bc], a
    ld bc, $0606
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    jr nz, jr_081_6f3c

jr_081_6f3c:
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
    jr nz, jr_081_6f5d

jr_081_6f5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_081_6f92

jr_081_6f92:
    stop
    stop
    stop
    jr nz, jr_081_6f9a

jr_081_6f9a:
    adc b
    nop
    ld a, b
    nop
    sbc b
    nop
    inc l
    nop
    ld [hl], b
    inc b
    db $fc
    inc bc
    rst $18
    nop
    ccf
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $18
    add b
    cp [hl]
    pop bc
    ld c, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    ldh a, [$c0]
    add b
    nop
    nop
    rst $38
    nop
    cp $01
    jp hl


    ld d, $36
    ld sp, hl
    cp $f9
    ld hl, sp-$01
    ld sp, hl
    cp $3e
    db $dd
    ld e, h
    cp a
    ld hl, sp-$01
    pop hl
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    pop af
    cp $80
    rst $38
    ld [bc], a
    db $fc
    ld e, $e1
    ld d, b
    adc a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $70
    adc a
    ld [hl], d
    adc l
    ld sp, $21ce
    sbc $35
    jp z, $fc03

    inc d
    db $eb
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
    ret nz

    rst $38
    jp nz, $e6ff

    rst $38
    db $e3
    rst $38
    db $f4
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld e, $fe

jr_081_705a:
    jr jr_081_705a

    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    ld a, e
    rst $38
    ld a, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
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
    rst $38
    nop
    rrca
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
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38

jr_081_70bf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $e3
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    add $39
    sub e
    ld l, h
    inc l
    db $d3
    cp h
    ld b, e
    or b
    ld c, a
    ret nc

    cpl
    jr nz, jr_081_70bf

    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    ld b, $f9
    ld e, $e1
    rlca
    ld hl, sp+$41
    cp [hl]
    ld d, c
    xor [hl]
    ld [$94f7], sp
    ld l, e
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
    inc bc
    rst $38
    inc c
    rst $38
    ld sp, $c7ff
    rst $38
    inc e
    rst $38
    push hl
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rla
    rst $38
    jp c, $79fd

    ldh a, [$c1]
    db $e3
    ld bc, $248e
    rra
    adc [hl]
    ld a, a
    ld e, [hl]
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ccf
    ld b, b
    ccf
    add c
    ld a, [hl]
    nop
    cp $a2
    inc e
    jr z, jr_081_7170

    inc a
    nop
    jr nz, jr_081_7178

    jr nz, jr_081_7172

    ret nz

    ccf
    ld l, [hl]
    sub c
    push de
    ld a, [hl+]
    ld a, d
    add l
    db $dd
    ld [hl+], a
    or $09
    add c
    ld a, a

jr_081_7170:
    rst $38
    ret nz

jr_081_7172:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_081_7178:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $20
    ld hl, sp+$7e
    add c
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
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
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $9f60
    ld h, d
    sbc l
    ld [bc], a
    db $fd
    inc h
    db $db
    inc h
    db $db
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    di
    rst $38
    xor a
    cp $78
    db $fc
    ld [c], a
    pop af
    add d
    rst $00
    dec d
    adc [hl]
    ld d, h
    cp e
    ld d, b
    rst $28
    ld b, b
    cp a
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    inc b
    ld hl, sp+$40
    ld a, $00
    rra
    ld a, [bc]
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    xor d
    ld d, l
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    add b
    ld a, a
    rst $38
    ldh a, [rP1]
    rst $38
    inc bc
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
    db $fc
    pop af
    ldh [rSVBK], a
    adc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_081_726d:
    rst $38
    inc c
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ld bc, $1bff
    rst $20
    ld h, c
    sbc a
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    add hl, sp
    rst $00
    jr jr_081_726d

    nop
    rst $38
    nop
    rst $38
    ld d, b

jr_081_728b:
    xor a
    jr nz, jr_081_726d

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc c
    cp $71
    ld hl, sp-$2b
    db $e3
    ld b, b
    adc a
    ld [hl+], a
    dec e
    adc b
    ld [hl], a
    jr nz, jr_081_728b

    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop

jr_081_72d9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld [bc], a
    ld bc, $0002
    inc bc
    ld [bc], a
    add c
    ld [hl+], a
    pop bc
    ld d, b
    ld hl, $9109
    dec c
    ld bc, $1fe1
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_081_72d9

    ld b, b
    cp a
    ccf
    cp $ff
    nop
    ccf
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
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp Jump_081_63ff


    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    scf
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    ld e, a
    rst $38
    ld a, l
    rst $38
    rst $08
    rst $28
    rra
    adc a
    ld e, a
    ccf
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$3f]
    ld hl, sp-$01
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    and $c0
    xor $c0
    rst $08
    rst $00
    sbc $c7
    pop af
    rst $00
    di
    rst $00
    db $e3
    rst $00

jr_081_73fc:
    db $e3
    ld h, a

jr_081_73fe:
    db $ed
    ld h, e
    db $ed
    ld h, e
    ld hl, sp+$63

jr_081_7404:
    ei
    ld h, e
    di
    jr nz, jr_081_73fc

    jr nc, jr_081_73fe

    jr nc, jr_081_7404

    inc sp
    rst $38
    rra
    pop hl
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
    rst $38
    rst $38
    cp $ff
    db $fc
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
    nop
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
    rlca
    rst $38
    rrca
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

jr_081_7460:
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
    rst $28
    rst $38
    sbc c
    ld sp, hl
    jr nc, jr_081_7460

    ld a, b
    ld hl, sp+$4e
    adc $c0
    jp $8180


    add c
    add b
    add c
    add b
    add b
    add b
    ret nz

    ldh a, [$fd]
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    ld bc, $0737
    ld a, h
    ccf
    db $e3
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    adc $fe
    inc a
    ldh a, [$fd]
    ldh [$9f], a
    nop
    ccf
    ld c, $7f
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    add b
    ld hl, sp-$01
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
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    inc bc
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
    ldh a, [rIE]
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    ld a, a
    dec e
    ccf
    dec e
    rra
    rla
    rra
    rla
    sbc a
    rlca
    rst $08
    adc a
    ld h, a
    rrca
    scf
    daa
    ccf
    rra
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl], b
    set 6, b
    inc hl
    ldh a, [$e3]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$cb]
    ldh a, [$33]
    ldh a, [$f7]
    ret nz

    rst $20
    add b
    ld l, a
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
    cp a
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
    ld a, h
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld [bc], a
    rst $38
    dec bc
    rst $38
    inc b
    ld a, [bc]
    rst $38
    ld [$15ff], sp
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    or e
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld de, $71f9
    ld sp, hl
    ld hl, sp-$04
    ld sp, hl
    db $fc
    ei
    db $fc
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    inc bc
    db $fd
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld l, a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f6
    rst $30
    add [hl]
    add a
    ld [bc], a
    add e
    add a
    jp $c19f


    cp a
    pop bc
    reti


    rst $20
    pop bc
    rst $38
    ret nz

    ld a, a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, c
    cp $22
    rst $38
    dec [hl]
    rst $08
    dec a
    di
    ld a, a
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add e
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    db $fc
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
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
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
    inc bc
    db $fc
    ccf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ldh a, [$9b]
    rst $20
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    sbc $bf
    sbc $bf
    sbc [hl]
    rst $38
    sbc a
    rst $38
    rra
    ld a, a
    ld e, $7f
    rra
    ccf
    ld e, [hl]
    ccf
    ld e, a
    cp a
    ld a, [hl]
    cp a
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    adc [hl]
    ld a, a
    ldh [$9f], a
    ld sp, hl
    rst $20
    rst $00
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
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
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [$f8]
    ret nz

    adc a
    inc bc
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
    cp $fe
    ld a, [c]
    ld a, [c]
    jp nz, Jump_081_40e3

    ld h, c
    ld h, e
    ld [hl], c
    ld l, $31
    ld b, $b9
    ld h, [hl]
    sbc c
    ld [hl], h
    sbc e
    nop
    rst $38
    sub b
    rst $38
    sub c
    cp $83
    rst $38
    adc c
    rst $30
    ld e, $f9
    sbc a
    cp $b6
    rst $38
    ld l, a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
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
    cp $ff
    db $fc
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ei
    db $10
    rst $38
    db $10
    rst $38
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
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    cp $00
    pop hl
    nop
    rra
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
    rst $38
    call c, $9cff
    rst $38
    sbc $bf
    sbc $bf
    sbc $bf
    sbc $bf
    rst $38
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $7d
    ld a, $3d
    ld a, [hl]
    db $fd
    ld a, $fd
    ld a, $7d
    cp [hl]
    ld a, l
    cp [hl]
    dec a
    cp $3d
    cp $bc
    rst $38
    inc sp
    db $fc
    sbc a
    ld a, h
    rst $20
    sbc a
    ld sp, hl
    rst $20
    ld h, a
    rst $38
    sbc b
    ld a, a
    ld a, c
    rst $38
    rst $38
    rst $38
    ld a, a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    rlca
    ret nz

    ccf
    rst $38
    ccf
    rst $38
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
    inc bc
    db $fc
    ccf
    rst $00
    rst $38
    nop
    nop
    rst $38
    inc de
    rst $28
    rst $08
    ccf
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
    ldh [rIE], a
    sbc [hl]
    pop hl
    ld sp, hl
    rlca
    cpl
    rra
    ld hl, sp+$3f
    ldh [$3f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    jp nz, $ce7f

    ld a, a
    ld a, [c]
    ld a, a
    ld h, [hl]
    rst $38
    ld e, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp $fb
    ld hl, sp-$01
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, b
    rst $38
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
    ccf
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fd
    ccf
    rst $08
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    ccf
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rst $18
    cp a
    rst $18
    cp a
    db $fc
    cp a
    xor l
    or e
    inc hl
    ld sp, hl
    adc b
    ld [hl], e
    ld l, b
    di
    add sp, -$0d
    dec c
    di
    dec c
    di
    inc c
    di
    ld [$0bf7], sp
    rst $30
    dec de
    rst $20
    rra
    rst $20
    sbc a
    rst $20
    rra
    rst $20
    ld d, a
    rst $28
    ld e, $ef
    inc h
    rst $08
    sbc l
    rst $28
    sbc a
    rst $28
    xor a
    rst $18
    xor a
    rst $18
    cp a
    rst $18
    rra
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $fe
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
    ld a, a
    ld hl, sp-$09
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp-$39
    ld hl, sp-$39
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$2f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [$bf], a
    ld hl, sp+$27
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
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
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
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ccf
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
    rlca
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
    rst $38
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
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
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
    jr jr_081_7b42

jr_081_7b42:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_081_7b6f

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_081_7b81

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_081_7b91

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_081_7ba2

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_081_7b6f:
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
    ld c, a
    ld d, b
    ld d, c

jr_081_7b81:
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

jr_081_7b91:
    ld h, d
    ld h, e
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
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_081_7ba2:
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
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


    jp z, $cb00

    call z, $cecd
    rst $08
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
    ld [$0009], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $5959
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_081_7c6f

    ld a, [de]
    dec de
    ld e, c
    inc e
    dec e
    ld e, $59
    rra
    jr nz, jr_081_7c81

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_081_7c6f:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_081_7c81:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    ld bc, $0101
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0103
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
    ld bc, $0100
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0100
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0109], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    ld bc, $0909

jr_081_7d9f:
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
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    or d
    nop
    jp nc, $f600

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
    db $76
    adc c
    ld [hl], l
    adc d
    ld l, b
    add a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    jr c, @-$37

    jr c, jr_081_7d9f

    inc [hl]
    rst $08
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
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
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld b, c
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    push af
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
    inc b
    rst $38
    ld h, b
    rst $38
    di
    rst $38
    add hl, bc
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
    nop
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    cp $ff
    rla
    rst $38
    add b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    or h
    nop
    ld [$0400], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $00
    ld h, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_081_7e85:
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $08
    jr nc, jr_081_7f07

    cp a
    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or e
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, l
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
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $e3
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
    ld sp, $00ff
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld [$f7ff], sp
    rst $38
    rlca
    rst $38
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    sbc $ff
    nop
    rst $38
    nop

jr_081_7f07:
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    db $fd
    rst $38
    ld b, a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    nop
    and b
    nop
    stop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    rst $38
    ret nz

    rst $38
    call nz, Call_081_64ff
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    rst $38
    ld [hl], l
    rst $38
    ld [hl], c
    rst $38
    ld [hl], d
    rst $38
    db $76
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    or b
    rst $38
    ld a, c
    rst $38
    cp b
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    rra
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    xor b
    rst $38
    ld a, a
    rst $38
    adc b
    rst $38
    cp $ff
    rra
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld c, $ff
    inc d
    rst $38
    ld hl, sp-$01
    dec d
    rst $38
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    rst $00
    rst $38
    cp a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    db $e4
    rst $38
    cp $ff
    dec bc
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06ff], sp
    ld bc, $0001
    nop
    nop
    ld a, [hl+]
    nop
    add hl, bc
    nop
    dec bc
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
    nop
    nop
    rrca
    nop
