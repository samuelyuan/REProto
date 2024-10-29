SECTION "ROM Bank $0b9", ROMX[$4000], BANK[$b9]

    ld a, c
    pop bc
    ld [hl], c
    pop bc
    ld c, a
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp $c37f


    ld a, c
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    ld e, a
    pop hl
    ld a, a
    pop bc
    ld a, c
    pop bc
    pop af
    ld b, c
    ld c, a
    pop af
    ld e, a
    pop hl
    ld a, c
    pop bc
    ld [hl], c
    pop bc
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    rst $38
    ret z

    rst $28
    ret z

    rst $18
    add sp, -$01
    ret z

    cp $c8
    jp hl


    adc $db
    db $ec
    rst $38
    ret z

    rst $28
    ret z

    sbc $f4
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    rst $28
    or d
    ei
    and d
    cp e
    ld [c], a
    ld a, [c]
    and e
    db $e3
    or e
    di
    and e
    and a
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
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
    ldh a, [rIE]
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    db $ed
    nop
    cp [hl]
    nop
    ei
    nop
    ld l, h
    nop
    db $10
    ld a, [bc]
    add b
    ld h, h
    db $10
    cp e
    ld b, h
    ld e, a
    and b
    push af
    ld a, [bc]
    sbc e
    db $e4
    ret nz

    rst $38
    ldh [rIE], a
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    ret nz

    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38
    pop hl
    ld a, [$f3e3]
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3
    db $fd
    add $e7
    add h
    rst $00

jr_0b9_4129:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h
    db $fd
    sbc [hl]

jr_0b9_4134:
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b9_4169:
    jr c, jr_0b9_4169

    jr c, jr_0b9_4129

    jr c, jr_0b9_41aa

    inc a
    rst $38
    jr c, @+$01

    jr c, jr_0b9_4134

    inc a
    ld a, $3c
    cp h
    ld a, $be
    inc a
    sbc [hl]
    inc e
    ld e, [hl]
    sbc h
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    nop
    nop
    ld [bc], a
    rst $38
    ld b, e
    rst $38
    and [hl]
    rst $38
    rst $38
    rst $38
    sbc c
    ld h, [hl]
    ld b, [hl]
    cp c
    nop
    or $00
    ld e, l
    nop
    xor e
    ld de, $8200
    inc b
    ld l, c
    add b
    xor $11

jr_0b9_41aa:
    db $fd
    ld [bc], a
    di
    inc c
    ld a, h
    add e
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
    nop
    cp $00
    ld bc, $8300
    ld a, h
    ld a, h
    add e
    rst $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    jr @+$41

    inc a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    cp $9f
    rst $28
    adc [hl]
    rst $30
    add [hl]
    xor $c4
    db $dd
    and $ef
    or h
    cp a
    call nc, $947f
    cp $0c
    db $fd
    ld b, $cf
    ld [$088f], sp
    ld a, [hl]
    adc b
    db $fc
    ld [$0ccb], sp
    adc a
    ld [$887f], sp
    db $fc
    db $10
    sbc b
    db $10
    rla
    jr @+$01

    db $10
    db $fd
    ld de, $1199
    daa
    add hl, sp
    rst $28
    ld sp, $23ff
    dec sp
    inc hl
    inc sp
    inc hl
    rst $28
    scf
    rst $38
    ld b, a
    rst $38
    ld b, a
    ld [hl], a
    ld b, a
    rst $20
    ld b, a
    rst $18
    ld h, a
    rst $38
    ld c, a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    adc a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    rst $00
    rst $18
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    di
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ei
    ld a, [c]
    rst $30
    ld a, [$f1ff]
    db $fc
    ldh a, [$fb]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, h
    ld a, c
    ld a, l
    ld a, c
    ld [hl], c
    ld [hl], e
    ld h, d
    ld h, a
    ld b, a
    ld sp, hl
    ld c, c
    pop af
    sub c
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$48
    db $fc
    inc h
    nop
    nop
    nop
    rst $38
    and b
    rst $38
    ret c

    rst $38
    ld a, [$1fff]
    rst $38
    ld d, b
    xor a
    ld bc, $00fe
    ld e, e
    nop
    push hl
    ld d, b
    ld [bc], a
    jr nz, @+$19

    sub h
    dec bc
    xor $11
    ld a, [$fc05]
    inc bc
    db $fc
    inc bc
    ld bc, $03ff
    rst $38
    ccf
    rst $00
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $001f
    ldh [rP1], a
    ldh a, [rIF]
    cpl
    ret nc

    ret c

    jr nz, jr_0b9_4317

    nop
    rlca
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $18
    rra
    sbc a
    rra
    ld a, a
    sbc [hl]
    rst $38
    ld e, $9f
    add hl, de
    rra
    db $10
    db $fc
    db $10
    ld hl, sp+$10
    daa
    jr c, jr_0b9_42f0

    ld sp, $21ff
    ld a, [$f223]
    inc hl
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    db $fc
    ld b, a
    push af
    ld b, [hl]
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h
    db $fd
    ld b, [hl]
    di
    ld b, d
    adc a
    ld a, [c]
    cp $c3
    ld sp, hl
    pop bc
    rst $20
    ret c

    db $ec
    ldh a, [$f9]
    pop hl
    rst $20
    ld a, [$f4ef]
    ld hl, sp-$11
    ei
    db $ed
    db $fd
    jp hl


jr_0b9_42f0:
    ei
    db $ed
    rst $38
    ret


    rst $28
    ret


    sbc $ec
    db $fd
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$dbbe], a
    rst $18
    sbc d
    cp e
    sbc $ff
    sbc d
    sbc $93
    cp a
    jp nc, Jump_000_1ef3

    or $1b
    cp [hl]
    inc sp
    ld a, a
    or c
    rst $38
    add hl, sp
    cp c

jr_0b9_4317:
    ccf
    ld a, e
    cp l
    rst $38
    add hl, sp
    ld a, a
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, $3c
    ld sp, hl
    ccf
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $18
    ld d, e
    rst $08
    ld c, c
    rst $20
    inc h
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    di
    sub d
    ld h, b
    ld h, b
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    and c
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    daa
    rst $18
    rlca
    ld a, a
    daa
    rst $18
    rlca
    ld a, a
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
    ld a, a
    adc a
    adc a
    ld [hl], a
    rst $38
    rlca
    dec bc
    inc bc
    add e
    inc bc
    di
    inc bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld hl, $21b9
    ld sp, $ef21
    ld sp, $a1ff
    ei
    and e
    or $c7
    adc a
    ei
    cp [hl]
    ld d, e
    cp d
    inc hl
    ld [hl], d
    and e
    rst $28
    ld sp, $21bf
    ld a, l
    ld [hl], c
    ld sp, hl
    ld [hl], c
    rst $30
    ld a, c
    rst $38
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, l
    ld a, c
    ei
    ld a, l
    rst $38
    ld a, c
    dec a
    add hl, sp
    ei
    dec a
    rst $30
    add hl, de
    db $dd
    sub c
    cp c
    pop de
    rst $30
    dec de
    rst $38
    inc sp
    ld a, [hl]
    ld [hl], e
    di
    cp e
    rst $28
    scf
    cp a
    daa
    ccf
    daa
    or $27
    rst $28
    ld [hl], a
    rst $38
    push hl
    rst $38
    push hl
    rst $30
    push hl
    call Call_0b9_5bf9
    ld l, l
    rst $38
    ld c, c
    rst $28
    ld c, c
    db $dd
    ld l, c
    ld a, e
    ld c, l
    rst $28
    ld c, c
    rst $38
    add hl, hl
    cp a
    add hl, hl
    ld a, l
    and l
    rst $30
    dec h
    xor a
    dec [hl]
    ld a, a
    and l
    rst $38
    daa
    rst $30
    daa
    rst $28
    scf
    cp a
    daa
    ld a, a
    and a
    rst $38
    daa
    ei
    ld d, e
    ld [hl], a
    ld e, e
    rst $38
    ld d, e
    rst $18
    sub e
    cp a
    db $d3
    ei
    sub e
    rst $30
    dec de
    rst $08
    add hl, bc
    ccf
    ret


    ld a, l
    adc c
    ei
    adc l
    rst $28
    adc c
    sbc a
    jp hl


    db $fd
    ret


    ei
    call $c9ff
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $18
    ld d, d
    rst $18
    ld d, d
    rst $18
    ld d, d
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
    jr jr_0b9_4475

    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b9_4488

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    jr z, jr_0b9_449b

    ld a, [hl+]
    dec hl
    inc l

jr_0b9_4475:
    dec l
    ld l, $2f
    jr nc, jr_0b9_44ab

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0b9_44be

    ld a, [hl-]
    dec sp
    inc a

jr_0b9_4488:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_449b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_44ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_44be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    cp $07
    rlca
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
    rrca
    rst $38
    ld c, a
    rst $38
    rst $08
    db $fc
    ei
    db $fc
    db $fd
    ld a, [c]
    or $f1
    db $e3
    ldh [$f1], a
    ldh [$fc], a
    ldh [$cf], a
    ldh a, [$df]
    ldh [$f9], a
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp $c3ff


    ld sp, hl
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    ld sp, hl
    pop bc
    pop af
    pop bc
    ld c, a
    pop af
    rst $18
    pop hl
    ld sp, hl
    pop bc
    ld [hl], c
    pop bc
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    rst $38
    ret z

    rst $28
    ret z

    rst $18
    add sp, -$01
    ret z

    ld a, [hl]
    ret z

    ld l, c
    adc $db
    db $ec
    rst $38
    ret z

    rst $28
    ret z

    sbc $f4
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    db $eb
    or d
    ld a, [$baa2]
    and d
    or d
    and d
    xor e
    or e
    or e
    and e
    or a
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
    nop
    nop
    nop
    ld l, [hl]
    nop
    push de
    nop
    add b
    and d
    db $10
    xor e
    ld b, h
    ld e, a
    and b
    ld [hl], l
    adc d
    sbc e
    db $e4
    ret nz

    rst $38
    ldh [rIE], a
    cp $f1
    rst $18
    ldh a, [$bf]
    ldh [$7e], a
    ret nz

    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38
    pop hl
    ld a, [$f3e3]
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3
    db $fd
    add $e7
    add h
    rst $00

jr_0b9_47f9:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h

jr_0b9_4802:
    db $fd
    sbc [hl]

jr_0b9_4804:
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b9_4839:
    jr c, jr_0b9_4839

    jr c, jr_0b9_47f9

    jr c, jr_0b9_487a

    inc a
    rst $38
    jr c, jr_0b9_4802

    jr c, jr_0b9_4804

    inc a
    ld a, $3c
    cp h
    inc a
    inc a
    inc a
    inc e
    inc e
    inc e
    sbc h
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    nop
    nop
    nop
    cp e
    ld b, b
    ld [hl+], a
    ld bc, $5204
    add b
    xor $11
    db $fd
    ld [bc], a
    rst $30
    ld [$817e], sp
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

jr_0b9_487a:
    nop
    nop
    cp $00
    ld bc, $8300
    ld a, h
    ld a, h
    add e
    rst $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    jr @+$41

    inc a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    cp $9f
    rst $28
    adc [hl]
    rst $30
    add [hl]
    xor $c4
    db $dd
    and $ef
    or h
    cp a
    call nc, $947f
    cp $0c
    db $fd
    ld b, $cf
    ld [$088f], sp
    ld a, [hl]
    adc b
    db $fc
    ld [$0ccb], sp
    adc a
    ld [$887f], sp
    db $fc
    db $10
    sbc b
    db $10
    rla
    jr @+$01

    db $10
    db $fd
    ld de, $1199
    daa
    add hl, sp
    rst $28
    ld sp, $23ff
    dec sp
    inc hl
    inc sp
    inc hl
    rst $28
    scf
    rst $38
    ld b, a
    rst $38
    ld b, a
    ld [hl], a
    ld b, a
    rst $20
    ld b, a
    rst $18
    ld h, a
    rst $38
    ld c, a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    adc a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    rst $00
    rst $18
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    di
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ei
    ld a, [c]
    rst $30
    ld a, [$f1ff]
    db $fc
    ldh a, [$fb]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fc
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, h
    ld sp, hl
    ld a, c
    ld sp, hl
    ld [hl], c
    ld [hl], e
    ld h, d
    ld h, a
    ld b, l
    ld sp, hl
    ld c, c
    pop af
    sub c
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$48
    db $fc
    inc h
    nop
    nop
    nop
    db $fd
    nop
    xor [hl]
    ld [$1457], sp
    dec bc
    xor [hl]
    ld de, $05fa
    db $fc
    inc bc
    db $fc
    inc bc
    ld bc, $03ff
    cp $3d
    add $ff
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $001f
    ldh [rP1], a
    ldh a, [rIF]
    cpl
    ret nc

    ret c

    jr nz, jr_0b9_49c7

    nop
    rlca
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $18
    rra
    sbc a
    rra
    ld a, a
    sbc [hl]
    rst $38
    ld e, $9f
    add hl, de
    rra
    db $10
    db $fc
    db $10
    ld hl, sp+$10
    daa
    jr c, jr_0b9_49a0

    ld sp, $21ff
    ld a, [$f223]
    inc hl
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    db $fc
    ld b, a
    push af
    ld b, [hl]
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h
    db $fd
    ld b, [hl]
    di
    ld b, d
    adc a
    ld a, [c]
    cp $c3
    ld sp, hl
    pop bc
    rst $20
    ret c

    db $ec
    ldh a, [$f9]
    pop hl
    rst $20
    ld a, [$f4ef]
    ld hl, sp-$11
    ei
    db $ed
    db $fd
    jp hl


jr_0b9_49a0:
    ei
    db $ed
    rst $38
    ret


    rst $28
    ret


    sbc $ec
    db $fd
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$dbbe], a
    rst $18
    sbc d
    cp e
    sbc $ff
    sbc d
    sbc $93
    cp a
    jp nc, Jump_000_1ef3

    or $1b
    cp [hl]
    inc sp
    ld a, a
    or c
    rst $38
    add hl, sp
    cp c

jr_0b9_49c7:
    ccf
    ld a, e
    cp l
    rst $38
    add hl, sp
    ld a, a
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, $3c
    ld sp, hl
    ccf
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $18
    ld d, e
    rst $08
    ld c, c
    rst $20
    inc h
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    di
    sub d
    nop
    nop
    dec b
    db $fc
    ld b, $fc
    rlca
    db $fc
    rlca
    db $fc
    ld b, $fd
    inc c
    ld hl, sp+$36
    ld sp, hl
    rst $18
    cp $ff
    ld e, $ff
    rrca
    ld a, a
    add a
    inc h
    db $db
    add c
    ld a, [hl]
    ld b, b
    cp a
    ldh a, [$ef]
    db $10
    rra
    adc b
    rrca
    ld [hl], h
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add c
    add c
    pop bc
    pop bc
    rst $38
    ld hl, $21b9
    ld sp, $ef21
    ld sp, $a1ff
    ei
    and e
    rst $30
    rst $00
    adc [hl]
    ei
    cp [hl]
    ld d, e
    cp d
    inc hl
    ld [hl], d
    and e
    rst $28
    ld sp, $21bf
    ld a, l
    ld [hl], c
    ld sp, hl
    ld [hl], c
    rst $30
    ld a, c
    rst $38
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, l
    ld a, c
    ei
    ld a, l
    rst $38
    ld a, c
    dec a
    add hl, sp
    ei
    dec a
    rst $30
    add hl, de
    db $dd
    sub c
    cp c
    pop de
    or $1a
    cp $32
    ld a, [hl]
    ld [hl], d
    ld a, [c]
    cp d
    xor $36
    cp [hl]
    ld h, $3e
    ld h, $f6
    ld h, $ee
    db $76
    rst $38
    push hl
    rst $38
    push hl
    rst $30
    push hl
    call Call_0b9_5bf9
    ld l, l
    rst $38
    ld c, c
    rst $28
    ld c, c
    db $dd
    ld l, c
    ld a, e
    ld c, l
    rst $28
    ld c, c
    rst $38
    add hl, hl
    cp a
    add hl, hl
    ld a, l
    and l
    rst $30
    dec h
    xor a
    dec [hl]
    ld a, a
    and l
    rst $38
    daa
    rst $30
    daa
    rst $28
    scf
    cp a
    daa
    ld a, a
    and a
    rst $38
    daa
    ei
    ld d, e
    ld [hl], a
    ld e, e
    rst $38
    ld d, e
    rst $18
    sub e
    cp a
    db $d3
    ei
    sub e
    rst $30
    dec de
    rst $08
    add hl, bc
    ccf
    ret


    ld a, l
    adc c
    ei
    adc l
    rst $28
    adc c
    sbc a
    jp hl


    db $fd
    ret


    ei
    call $c9ff
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    sbc $52
    sbc $52
    sbc $52
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b9_4b98

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b9_4baa

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b9_4b81

jr_0b9_4b81:
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    ld l, $2f
    jr nc, jr_0b9_4bc5

    dec a
    ld a, $34
    dec [hl]
    ld [hl], $37
    ccf
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_0b9_4b98:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_4baa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_4bc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, $3f
    jr c, jr_0b9_4d8b

    ld hl, sp+$1f
    ldh a, [rIE]
    pop af
    cp $f3
    db $fc
    ld a, [c]
    db $fd
    di
    db $fc
    ld a, [$f8fd]
    rst $38
    cp $ff
    rst $30
    rst $38
    xor d
    nop
    or $00
    cp $00
    ld hl, sp+$07
    db $fd
    nop
    db $fd

jr_0b9_4d8b:
    nop
    rst $38
    inc bc
    rst $38
    inc b
    dec bc
    db $fc
    dec e
    ld a, [c]
    ld d, $f1
    inc hl
    ldh [$31], a
    ldh [$3c], a
    ldh [rVBK], a
    ldh a, [$5f]
    ldh [$f9], a
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp $c3ff


    ld sp, hl
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    ld sp, hl
    pop bc
    pop af
    pop bc
    ld c, a
    pop af
    ld e, a
    pop hl
    ld sp, hl
    pop bc
    pop af
    pop bc
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    ld a, a
    ld c, b
    ld l, a
    ld c, b
    ld e, a
    add sp, -$01
    ld c, b
    ld a, [hl]
    ld c, b
    ld l, c
    ld c, [hl]
    ld e, e
    db $ec
    ld a, a
    ld c, b
    ld l, a
    ld c, b
    ld e, [hl]
    ld [hl], h
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    db $eb
    or d
    ld a, [$baa2]
    ld [c], a
    or d
    and d
    xor e
    or e
    or a
    and e
    or a
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    inc bc
    ld a, h
    rst $38
    add b
    rst $28
    nop
    cp [hl]
    nop
    ei
    nop
    ld l, a
    nop
    push de
    add hl, hl
    add b
    ret nz

    nop
    ld [hl+], a
    add b
    call c, $bb01
    ld b, h
    ld e, a
    and b
    push af
    ld a, [bc]
    sbc c
    and $40
    ld a, a
    jr nz, jr_0b9_4ea3

    sbc [hl]
    ld de, $10ff
    cp a
    ld h, b
    cp $40
    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38

jr_0b9_4ea3:
    pop hl
    ld a, [$f3e3]
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3

jr_0b9_4eb4:
    db $fd
    add $e7
    add h
    rst $00

jr_0b9_4eb9:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h
    db $fd
    sbc [hl]
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b9_4ef9:
    jr c, jr_0b9_4ef9

    jr c, jr_0b9_4eb9

    jr c, @+$3d

    inc a
    cp a
    jr c, jr_0b9_4f42

    jr c, jr_0b9_4f42

    inc a
    ld a, $3c
    inc a
    ld a, $3e
    inc a
    sbc [hl]
    inc e
    ld e, [hl]
    sbc h
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    dec c
    dec c
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld l, [hl]
    nop
    dec sp
    nop
    or $00
    rst $18
    nop
    cp c
    nop
    ld [hl+], a
    db $eb
    inc b
    jr jr_0b9_4eb4

    ld [hl+], a
    ld [$0035], sp
    ld [$f911], a
    ld b, $f7
    ld [$817e], sp
    nop
    rst $38

jr_0b9_4f42:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    ld bc, $8300
    ld a, h
    ld a, h
    add e
    rst $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    jr @+$41

    inc a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    cp $9f
    rst $28
    adc [hl]
    rst $30
    add [hl]
    xor $c4
    db $dd
    and $ef
    or h
    cp a
    call nc, $947f
    cp $0c
    db $fd
    ld b, $cf
    ld [$088f], sp
    ld a, [hl]
    adc b
    db $fc
    ld [$0ccb], sp
    adc a
    ld [$887f], sp
    db $fc
    db $10
    sbc b
    db $10
    rla
    jr @+$01

    db $10
    db $fd
    ld de, $1199
    daa
    add hl, sp
    rst $28
    ld sp, $23ff
    dec sp
    inc hl
    inc sp
    inc hl
    rst $28
    scf
    rst $38
    ld b, a
    rst $38
    ld b, a
    ld [hl], a
    ld b, a
    rst $20
    ld b, a
    rst $18
    ld h, a
    rst $38
    ld c, a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    adc a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    rst $00
    rst $18
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    di
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ei
    ld a, [c]
    rst $30
    ld a, [$f1ff]
    db $fc
    ldh a, [$fb]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fc
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, h
    ld sp, hl
    ld a, c
    ld sp, hl
    ld [hl], c
    ld [hl], e
    ld h, d
    ld h, a
    ld b, a
    ld sp, hl
    ld c, c
    pop af
    sub c
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$48
    db $fc
    inc h
    ret c

    ret c

    rst $38
    nop
    rst $38
    rst $38
    nop
    ei
    nop
    xor a
    nop
    cp $00
    ld e, e
    nop
    add c
    nop
    xor b
    jr nz, jr_0b9_5066

    nop
    ld [$0098], sp
    add h
    ld b, d
    ld h, a
    db $10
    cp d
    inc b
    rst $38
    nop
    rst $30
    ld [$ff00], sp
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
    rra
    nop
    ldh [rP1], a
    ldh a, [rIF]
    cpl
    ret nc

    ret c

    jr nz, jr_0b9_50a7

    nop
    rlca
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $18
    rra
    sbc a
    rra
    ld a, a
    sbc [hl]
    rst $38
    ld e, $9f
    add hl, de
    rra
    db $10
    db $fc
    db $10
    ld hl, sp+$10
    daa
    jr c, @+$31

    ld sp, $21ff
    ld a, [$f223]
    inc hl
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    db $fc
    ld b, a
    push af
    ld b, [hl]
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h

jr_0b9_5066:
    db $fd
    ld b, [hl]
    di
    ld b, d
    adc a
    ld a, [c]
    cp $c3
    ld sp, hl
    pop bc
    rst $20
    ret c

    db $ec
    ldh a, [$f9]
    pop hl
    and $fb
    rst $28
    db $f4
    ld hl, sp-$11
    ei
    db $ec
    db $fd
    add sp, -$05
    db $ec
    rst $38
    ret z

    rst $28
    ret z

    sbc $ec
    db $fd
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$dbbe], a
    rst $18
    sbc d
    cp e
    sbc $ff
    sbc d
    sbc $93
    cp a
    jp nc, Jump_000_1ef3

    or $1b
    cp [hl]
    inc sp
    ld a, a
    or c
    rst $38
    add hl, sp
    cp c

jr_0b9_50a7:
    ccf
    ld a, e
    cp l
    rst $38
    add hl, sp
    ld a, a
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, $3c
    ld sp, hl
    ccf
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $18
    ld d, e
    rst $08
    ld c, c
    rst $20
    inc h
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, c
    ld c, c
    di
    sub d
    pop hl
    pop hl
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    xor a
    nop
    cp $00
    ld e, e
    nop
    db $fd
    nop
    ld l, $28
    ld d, a
    nop
    dec bc
    jr nz, jr_0b9_50f8

    or h
    inc bc

jr_0b9_50f8:
    ld c, $11
    cp d
    dec b
    cp h
    ld b, d
    db $f4
    dec bc
    ld bc, $03ff
    rst $38
    dec a
    add $ff
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $001f
    ldh [rP1], a
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h
    db $fd
    ld b, [hl]
    rst $30
    ld b, [hl]
    adc a
    or $fe
    rst $00
    rst $38
    jp $83fb


    di
    add e
    rra
    db $e3
    rst $38
    ld b, $1f
    inc e
    ld hl, sp+$3f
    ei
    ld e, l
    db $fd
    ld e, c
    ei
    ld e, l
    rst $38
    adc c
    rst $28
    adc c
    sbc [hl]
    db $ec
    cp l
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$24e7], a
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld sp, hl
    ret


    di
    sub d
    pop hl
    pop hl
    ld [bc], a
    nop
    ld c, c
    nop
    add hl, bc
    nop
    jp Jump_000_33c0


    ldh a, [$0b]
    ld hl, sp+$0b
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    dec b
    db $fc
    rrca
    rst $38
    rrca
    rst $38
    ld a, $ff
    rst $38
    db $fc
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
    ldh [rIE], a
    ldh a, [$1f]
    ld a, b
    adc a
    adc h
    ld [hl], a
    db $fc
    rlca
    ld a, [bc]
    inc bc
    add d
    inc bc
    ld a, [c]
    inc bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld hl, $21b9
    ld sp, $ef21
    ld sp, $a1ff
    ei
    and e
    rst $30
    rst $00
    adc a
    ei
    cp a
    ld d, e
    cp e
    inc hl
    ld [hl], e
    and e
    rst $28
    ld sp, $21bf
    ld a, l
    ld [hl], c
    ld sp, hl
    ld [hl], c
    rst $30
    ld a, c
    rst $38
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, l
    ld a, c
    ei
    ld a, l
    rst $38
    ld a, c
    dec a
    add hl, sp
    ei
    dec a
    rst $30
    add hl, de
    db $dd
    sub c
    cp c
    pop de
    or $1a
    cp $32
    ld a, [hl]
    ld [hl], d
    ld a, [c]
    cp d
    xor $36
    cp [hl]
    ld h, $3e
    ld h, $f6
    ld h, $ee
    db $76
    rst $38
    push hl
    rst $38
    push hl
    rst $30
    push hl
    call Call_0b9_5bf9
    ld l, l
    rst $38
    ld c, c
    rst $28
    ld c, c
    db $dd
    ld l, c
    ld a, e
    ld c, l
    rst $28
    ld c, c
    rst $38
    add hl, hl
    cp a
    add hl, hl
    ld a, l
    and l
    rst $30
    dec h
    xor a
    dec [hl]
    ld a, a
    and l
    cp $26
    or $27
    xor $36
    cp [hl]
    ld h, $7e
    and a
    cp $26
    ld a, [$7652]
    ld e, d
    cp $52
    sbc $92
    cp [hl]
    jp nc, $92fa

    or $1a
    rst $08
    add hl, bc
    dec l
    ret


    ld l, l
    adc c
    jp hl


    adc l
    call $8d89
    ret


    call $c9c9
    ret


    rst $38
    ret


    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld [hl], e
    rst $18
    ld d, e
    sbc $52
    adc h
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
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
    ccf
    inc b
    ccf
    add hl, bc
    ccf
    ld bc, $27d6
    db $d3
    ld [hl+], a
    pop de
    jr nz, @-$36

    ld sp, $39c0
    ret nz

    ccf
    rst $18
    ccf
    rst $38
    nop
    jr nz, jr_0b9_54e2

jr_0b9_54e2:
    and b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
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
    inc bc
    nop
    inc bc
    ldh a, [rNR13]
    ldh a, [rNR13]
    or b
    sub e
    ld [hl], b
    ld d, e
    ldh a, [$d3]
    ldh a, [rHDMA3]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [$f3]
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
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
    dec bc
    inc c
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0505
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    ld [bc], a
    dec h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    dec b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    and $19
    xor $11
    add sp, $10
    pop hl
    add hl, de
    ldh a, [$08]
    rrca
    nop
    rrca
    add b
    rrca
    add b
    rlca
    add b
    rlca
    ret nz

    rlca
    rst $00
    nop
    ret nz

    nop
    ldh [rP1], a
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
    rra
    nop
    ld c, $ff
    add e
    rst $38
    rra
    rst $38
    ld c, $fe
    ld sp, $71fd
    ld a, l
    db $fc
    ldh [$7c], a
    ld e, b
    dec e
    dec b
    rra
    nop
    rra
    jr jr_0b9_5847

jr_0b9_5847:
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
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

jr_0b9_5858:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$08
    rrca
    ld hl, sp+$4f
    ld hl, sp-$31
    ld hl, sp+$4f
    jr c, jr_0b9_5858

    jr @+$01

    ld [$08ff], sp
    rst $28
    jr jr_0b9_58a9

    add hl, bc
    jr c, @+$0b

    ld a, b
    ld c, c
    ld hl, sp+$09
    ld hl, sp-$07
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_58a9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0302
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
    dec b
    ld b, $07
    ld [$0a09], sp
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
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0b9_5935

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_5935:
    ld bc, $2120
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2726
    jr z, jr_0b9_5973

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_5973:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
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
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0380
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    nop
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$3e], a
    pop bc
    ld a, $c1
    ld [hl], b
    add b
    ld h, b
    add b
    nop
    ret nz

    nop

Call_0b9_5bf9:
    rst $00
    nop
    add a
    nop
    add a
    nop
    add e
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    inc bc
    nop
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
    rrca
    rst $38
    jr @+$01

    daa
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $1fff
    rst $38
    ld a, a
    ld sp, hl
    rra
    db $10
    rlca
    ld bc, $9f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
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
    nop
    nop
    nop
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
    nop
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    rrca
    rst $38
    nop
    add b
    rst $38
    ret nz

    rst $38
    inc hl
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld e, a
    db $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ldh a, [$fb]
    db $e4
    xor [hl]
    ret nc

    ld a, $c0
    ld a, $c0
    inc a
    ret nz

    inc a
    ret nz

    inc h
    ret c

    inc b
    ld hl, sp-$02
    nop
    sbc a
    ld h, b
    sub a
    ld l, b
    xor a
    ld d, b
    rst $18
    jr nz, jr_0b9_5d27

    rst $00
    ld h, e
    sbc h
    ld a, h
    add e
    nop
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
    rst $38
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
    ldh a, [$f0]
    rst $38
    ld c, a
    ld [hl], c
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    sub c
    rst $38
    pop hl
    rst $30
    pop hl
    db $e3
    pop hl
    rrc c
    rlca
    adc l
    ld b, e
    call Call_000_0d03
    inc bc
    add hl, bc

jr_0b9_5d27:
    daa
    add hl, bc
    daa
    add hl, sp
    ld b, a
    add hl, sp
    ld b, a
    ld e, b
    rlca
    jr jr_0b9_5d79

    ld [$8807], sp
    rlca
    ld [$8807], sp
    rlca
    or b
    ld c, a
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
    ldh [$1f], a
    nop
    nop
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
    ld a, a
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
    add b
    add e
    add b
    add e
    add b

jr_0b9_5d79:
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld b, $07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld e, $01
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec d
    ld a, [bc]
    dec de
    inc b
    ld e, $00
    jr jr_0b9_6084

jr_0b9_6084:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    ld [hl], l
    ld a, [bc]
    db $eb
    inc d
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld e, [hl]
    and b
    cp b
    ld b, b
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
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0707
    rlca
    rlca
    rlca
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld [$1808], sp
    add hl, de
    ld a, [de]
    rlca
    rlca
    rlca
    rlca
    rlca
    dec de
    inc e
    dec b
    dec b
    dec b
    dec e
    ld e, $1f
    jr nz, jr_0b9_612b

    ld [hl+], a
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
    rlca
    rlca

jr_0b9_612b:
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
    rlca
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
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
    inc b
    inc b
    inc b
    ld b, $03
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
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
    nop
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
    cp $00
    ldh a, [rSB]
    ret nz

    rrca
    nop
    ccf
    inc bc
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
    rst $38
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
    add b
    rst $38
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    ld e, $1f
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
    ld bc, $011f
    ld a, a
    ld bc, $07f8
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0080
    add b
    nop
    add b
    nop
    ldh [rP1], a
    db $fc
    ld h, b
    rst $38
    inc e
    rst $18
    inc bc
    jp $c000


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
    ldh [rP1], a
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
    cp $00
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    and $ff
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    ld a, a
    di
    inc e
    rst $38
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
    ld bc, $0000
    nop
    nop
    add b
    nop
    ldh a, [$80]
    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$0c]
    ldh a, [rTAC]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$1c
    ei
    ld h, b
    rst $38
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
    cp $81
    db $fc
    add e
    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    db $10
    ld de, $1312
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    dec d
    dec d
    dec d
    ld d, $17
    jr jr_0b9_65c1

    ld a, [de]
    dec de
    inc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec e
    ld e, $15
    dec d
    dec d
    dec d
    dec d
    dec d
    rra
    jr nz, jr_0b9_65dc

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_0b9_65c1:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_0b9_65dc:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $03
    inc bc
    inc bc
    inc bc
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
    ld b, $06
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    ld e, $1f
    ld e, $1f
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    nop
    cp $00
    ldh a, [rSB]
    ret nz

    rrca
    nop
    ccf
    inc bc
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
    rst $38
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
    add b
    ld [hl], b
    add b
    ld a, [hl]
    ret nz

    ccf
    ld hl, sp+$0f
    rst $08
    ld bc, $00c1
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
    ldh [rP1], a
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
    cp $00
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    di
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp+$3f
    ld sp, hl
    ld c, $ff
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    ldh [rIE], a
    inc e
    rra
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
    ret nz

    nop
    ret nz

    add b

jr_0b9_696a:
    ret nz

    add b

jr_0b9_696c:
    ret nz

    add b

jr_0b9_696e:
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a

jr_0b9_6976:
    ldh [rP1], a

jr_0b9_6978:
    ld h, b
    ret nz

jr_0b9_697a:
    ld h, b
    ret nz

jr_0b9_697c:
    ld h, b
    ret nz

    ld [hl], b
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [$30], a
    ldh [$30], a
    ret nz

    jr nc, jr_0b9_696a

    jr nc, jr_0b9_696c

    jr nc, jr_0b9_696e

    jr c, @-$0e

    jr @-$0e

    jr @-$0e

    jr jr_0b9_6976

    jr jr_0b9_6978

    jr jr_0b9_697a

    jr jr_0b9_697c

    ld [$0cf0], sp
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [rTIMA]
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$07
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    db $fc
    jr nc, @+$01

    pop bc
    rst $38
    ld bc, $07ff
    ld hl, sp+$1f
    ldh [$7f], a
    add b
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
    ld bc, $0000
    nop
    nop
    add b
    nop
    ldh a, [$80]
    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc a
    inc bc
    ldh [$1f], a
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
    cp $81
    db $fc
    add e
    ld [hl], b
    ld c, a
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    inc b
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
    ld de, $0012
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0b9_6ac0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $04
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    jr nz, jr_0b9_6ad8

    ld [hl+], a
    inc hl
    inc b
    inc h
    dec h
    inc b
    nop
    nop
    nop

jr_0b9_6ac0:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, $27
    jr z, jr_0b9_6af1

    ld a, [hl+]
    dec hl
    inc l
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

jr_0b9_6ad8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_6af1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $01ff
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
    nop
    rst $38
    nop
    cp $00
    add b
    ld bc, $7f00
    nop
    rst $38
    rrca
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
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_0b9_6d6d

    jr nc, jr_0b9_6d6f

    jr nc, jr_0b9_6d71

    jr nc, jr_0b9_6d73

    jr nc, jr_0b9_6d75

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    db $10
    rra
    jr jr_0b9_6d67

    jr jr_0b9_6d69

    jr jr_0b9_6d6b

    jr jr_0b9_6d6d

    jr jr_0b9_6d6f

    jr jr_0b9_6d71

    jr jr_0b9_6d73

    jr jr_0b9_6d75

    jr @+$21

    jr @+$21

    ld [$080f], sp
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c

jr_0b9_6d67:
    rrca
    inc c

jr_0b9_6d69:
    rrca
    inc c

jr_0b9_6d6b:
    rrca
    inc c

jr_0b9_6d6d:
    rrca
    inc c

jr_0b9_6d6f:
    rrca
    inc c

jr_0b9_6d71:
    rrca
    inc b

jr_0b9_6d73:
    rlca
    inc b

jr_0b9_6d75:
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
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
    ei
    inc bc
    ld bc, $0107
    rst $38
    ld bc, $3fff
    rst $38
    pop bc
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
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    add a
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ldh a, [rIF]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ld a, [c]
    ld [$08f2], sp
    rst $30
    ld [$08f7], sp
    push af
    ld [$08f5], sp
    push af
    ld [$0ff0], sp
    ldh a, [$08]
    pop af
    ld [$04f1], sp
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    inc b
    ld hl, sp+$07
    ld hl, sp+$04
    ld hl, sp+$04
    ld a, [$fb04]
    ld b, $fb
    ld b, $fb
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    ld [bc], a
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $1ffe
    cp $e1
    cp $01
    cp $01
    cp $1f
    ldh [rIE], a
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$fb]
    inc e
    ld sp, hl
    ld a, $f9
    ld a, $f1
    ld a, [hl]
    pop af
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    ld a, [hl]
    ld a, b
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    nop
    nop
    rst $38
    nop
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    nop
    ld d, b
    rrca
    nop
    pop af
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0080
    ret nz

    nop
    ldh [$80], a
    ldh [$c0], a
    ldh a, [rTAC]
    nop
    rst $38
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
    nop
    rst $38
    ld bc, $7eff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b9_6ef8:
    nop
    rst $38

jr_0b9_6efa:
    nop
    rst $38

jr_0b9_6efc:
    nop
    rst $38

jr_0b9_6efe:
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [$ef]
    db $10
    rst $28
    jr nc, jr_0b9_6ef8

    jr nc, jr_0b9_6efa

    jr nc, jr_0b9_6efc

    jr nc, jr_0b9_6efe

    jr nc, jr_0b9_6f41

    jr nz, jr_0b9_6f43

    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    stop
    ldh a, [rP1]
    ldh a, [$e0]
    or b
    and b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    db $10
    rrca
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$2f]
    ldh a, [$8f]

jr_0b9_6f41:
    ld [hl], b
    rst $28

jr_0b9_6f43:
    db $10
    rrca
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rlca
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0201
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    inc bc
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc bc
    nop
    nop
    nop
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
    inc d
    inc bc
    nop
    nop
    nop
    dec d
    ld d, $16
    rla
    jr jr_0b9_702f

    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld e, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_702f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
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
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    cp $00
    add b
    ld bc, $7f00
    nop
    rst $38
    rrca
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
    ld hl, sp+$00
    nop
    rlca
    nop
    rst $38
    ld bc, $3eff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ret nz

    ld bc, $3f00
    nop
    rst $38
    rrca
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
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_0b9_72e7

    jr nc, jr_0b9_72e9

    jr nc, jr_0b9_72eb

    jr nc, jr_0b9_72ed

    jr nc, jr_0b9_72ef

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    db $10
    rra
    jr jr_0b9_72e1

    jr jr_0b9_72e3

    jr jr_0b9_72e5

    jr jr_0b9_72e7

    jr jr_0b9_72e9

    jr jr_0b9_72eb

    jr jr_0b9_72ed

    jr jr_0b9_72ef

    jr @+$21

    jr @+$21

    ld [$080f], sp
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c

jr_0b9_72e1:
    rrca
    inc c

jr_0b9_72e3:
    rrca
    inc c

jr_0b9_72e5:
    rrca
    inc c

jr_0b9_72e7:
    rrca
    inc c

jr_0b9_72e9:
    rrca
    inc c

jr_0b9_72eb:
    rrca
    inc b

jr_0b9_72ed:
    rlca
    inc b

jr_0b9_72ef:
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ei
    inc bc
    ld bc, $0107
    rst $38
    ld bc, $3fff
    rst $38
    pop bc
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
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    add a
    ld a, b
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $1ffe
    cp $e1
    cp $01
    cp $01
    cp $1f
    ldh [rIE], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0504
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0e
    stop
    nop
    nop
    nop
    ld de, $0112
    ld bc, $0101
    ld bc, $0101
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    ld bc, $1801
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    jr nz, jr_0b9_7533

    ld [hl+], a
    inc hl
    inc h
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_0b9_7545

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_7533:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_7545:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, $03
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    ret nz

    nop
    rlca
    rlca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
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
    ldh a, [$71]
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    pop af
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    call z, $c0f3
    db $fc
    ld hl, sp-$01
    ldh a, [$37]
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
    nop
    ld bc, $0101
    ld bc, $8101
    ld bc, $03c1
    ld [c], a
    inc bc
    ld a, [c]
    inc bc
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
    rst $38
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
    add b
    nop
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    di
    nop
    ld a, h
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    rst $38
    nop
    cp a
    ret nz

    adc a
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

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fd
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $08
    nop
    di
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
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
    nop
    inc bc
    nop
    inc bc
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $10
    rra
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$df], a
    ldh [$1f], a
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0504
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b9_7a3b

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_0b9_7a4f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    jr nc, @+$03

    ld bc, $3101
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_0b9_7a3b:
    jr c, jr_0b9_7a3d

jr_0b9_7a3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b9_7a4f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    nop
    nop
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    nop
    nop
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    ret nz

    nop
    rlca
    rlca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
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
    ldh a, [$71]
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    pop af
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    call z, $c0f3
    db $fc
    ld hl, sp-$02
    pop af
    scf
    ld sp, hl
    nop
    rst $38
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
    ld bc, $0101
    ld bc, $8101
    ld bc, $03c1
    ld [c], a
    inc bc
    ld a, [c]
    inc bc
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
    ld hl, sp+$03
    ldh [rTAC], a
    add b
    rlca
    nop
    rlca
    jr jr_0b9_7c73

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$39
    ld hl, sp+$07
    ld hl, sp+$07
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop

jr_0b9_7c73:
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
    ccf
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c1ff
    rst $38
    ld hl, $19ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    jp $a33f


    rst $18
    adc e
    rst $30
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

    rra
    ldh [rTAC], a
    ld hl, sp+$03
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld a, $fe
    ld a, $fe
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7c
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh a, [$f3]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$f8], a
    nop
    cp $00
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    ld hl, sp-$01
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
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sub [hl]
    ld c, a
    ld d, $c9
    inc bc
    adc l
    dec bc
    add l
    dec hl
    add a
    dec hl
    add a
    nop
    rst $38
    ld a, [hl+]
    add c
    ld a, [hl+]
    add c
    xor d
    add c
    xor d
    add c
    xor d
    add c
    xor d
    add c
    ld [$6ac1], a
    pop bc
    ld sp, hl
    add b
    add a
    ld hl, sp-$7f
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    adc a
    cp $b7
    cp $fe
    ld bc, $f10e
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    inc bc
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$fb]
    ldh [$fc], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    dec b
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
    db $08
    add hl, bc
