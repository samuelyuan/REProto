SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    push af
    ld a, [$f6eb]
    pop hl
    cp $e8
    or $e4
    cp $f0
    cp $e2
    db $fc
    rst $10
    db $fc
    rst $30
    db $fc
    push hl
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    rst $18
    rst $38
    call $ffdf
    rst $38
    call nz, $cffb
    rst $38
    add sp, -$01
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $fd
    rst $30
    rst $38
    db $ec
    rst $38
    ei
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $18
    ld sp, hl
    rst $10
    ld sp, hl
    ld e, a
    ld sp, hl
    push af
    ei
    ldh a, [rIE]
    ld e, a
    rst $38
    rst $30
    ld hl, sp-$01
    add b
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    stop
    ldh a, [rP1]
    db $e4
    nop
    or h
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    and $ff
    sub [hl]
    rst $28
    ld e, [hl]
    db $ed
    sub h
    rst $28
    ld b, $fd
    cp $c9
    ld a, e
    call $f90d
    ld a, c
    call $f90f
    dec b
    ei
    ld a, c
    rst $18
    or l
    ei
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    call nc, $d4ff
    rst $38
    db $f4
    rst $38
    or b
    rst $38
    sub h
    rst $38
    and b
    rst $38
    xor b
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor e
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
    ld a, [$3fff]
    call nz, $ffff
    ld [hl], d
    ld [hl], d
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    cp d
    cp d
    ret nc

    ret nc

    inc bc
    nop
    nop
    nop
    ld bc, $ea00
    nop
    ld a, [c]
    ld [$aa50], sp
    sub h
    ld [$ff5f], a
    ei
    di
    db $eb
    ld a, a
    ld c, e
    ld a, a
    rst $08
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    db $fd
    ld e, a
    rst $38
    rra
    ld e, $ff
    ld a, $df
    inc [hl]
    rst $18
    dec e
    rst $38
    ldh a, [rIE]
    jp nz, $07f0

    ld hl, sp-$04
    ld hl, sp-$29
    ei
    ld hl, sp-$01
    ccf
    ret nz

    db $10
    rst $38
    dec e
    ld [c], a
    ld a, a
    rst $38
    ld hl, sp-$01
    ld e, [hl]
    rst $38
    db $fd
    ld a, [c]
    ld a, [hl]
    rst $18
    pop bc
    cp [hl]
    push hl
    sbc d
    ld b, e
    cp h
    jp $d13c


    ld a, $d3
    inc a
    ret nz

    ccf
    jp nc, $973d

    ld a, a
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
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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

Jump_04d_413d:
    rst $38
    nop
    rst $38
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld [bc], a
    ld bc, $0003
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $fa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp a
    cp a
    db $fd
    rst $38
    cp l
    dec hl
    db $fd
    cp l
    ei
    rst $38
    ld a, e
    ccf
    db $db
    ld e, a
    ei
    ld a, a
    ei
    ld e, [hl]
    ei
    rst $38
    ld a, [$faf7]
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    db $f4
    dec bc
    db $f4
    dec hl
    call nc, $d528
    nop
    db $fd
    ld [$2af5], sp
    push de
    ld [bc], a
    db $fd
    inc bc
    db $fc
    dec b
    ld a, [$fa05]
    or h
    ld [$aa55], a
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
    db $fd
    ld [c], a
    db $e4
    ld a, [$fcfc]
    rst $38
    rst $38
    ld b, [hl]
    rst $38
    sbc $67
    db $fc
    cp $3f
    rst $38
    rst $20
    rra
    dec bc
    inc bc
    db $eb
    inc bc
    xor d
    inc bc
    inc hl
    ld [bc], a
    and e
    ld [bc], a
    and d
    ld [bc], a
    xor [hl]
    ld [bc], a
    cp [hl]
    ld [bc], a
    ld a, a
    add d
    daa
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
    ret c

    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    db $f4
    rst $38
    add b
    rst $38
    or l
    ld e, a
    or $f9
    rst $18
    rst $38
    db $f4
    ld a, a
    sub d
    ccf
    ld [hl-], a
    rra
    ld hl, sp-$01
    ld a, [c]
    rra
    db $10
    rst $38
    di
    rra
    ld [hl], h
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    or b
    rst $08
    or e
    rst $38
    ld a, [bc]

jr_04d_420d:
    rst $30
    cpl
    sub $0d
    or $4d
    or [hl]
    ld c, l
    or [hl]
    ld c, l
    or [hl]
    dec b
    cp $93
    rst $28
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
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
    jr nz, jr_04d_420d

    nop
    rst $38
    add b
    ret nz

    add e
    add b
    inc b
    add b
    inc c
    nop
    ld e, $00
    ld [$0800], sp
    nop
    ld [$0300], sp
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    stop
    nop
    nop
    rst $30
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    rst $20
    db $fd
    rst $38
    db $ed
    rst $18
    db $ed
    ld a, [$bfdd]
    db $db
    cp $bb
    rst $38
    cp d
    rst $38
    ld a, d
    cp $7b
    rst $38
    ei
    rst $30
    ei
    cp $f1
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rra
    ret nc

    rra
    ld [hl], b
    rra
    ld a, b
    rra
    jr c, @+$61

    ld d, b
    ccf
    ld c, h
    ccf
    ld hl, sp+$3f
    db $fc
    ccf
    ld l, b
    cp a
    ld [hl], h
    cp a
    ld a, b
    cp a
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $18
    ccf
    rst $38
    ld bc, $0000
    rst $38
    rst $38
    ld h, h
    ei
    ld a, a
    rst $38
    ld a, [de]
    ld b, h
    ld a, d
    ld e, a
    di
    ld e, a
    ld d, a
    ld d, a
    ld [hl], a
    ld d, a
    sub $57
    ld [hl], a
    sub $b6
    sub $ce
    or [hl]
    cp a
    xor [hl]
    xor e
    xor [hl]
    rst $28
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
    call nz, $b7ff
    rst $38
    sub a
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rla
    rst $38
    cp $f1
    rst $08
    ld a, $d7
    xor b
    dec de
    xor $3f
    call z, Call_000_3cc6
    adc a
    ld a, h
    ld a, [hl-]
    call c, Call_04d_59b4
    dec de
    db $fc
    rra
    rst $38
    db $fc
    db $eb
    rst $18
    dec hl
    pop af
    adc $70
    rst $08
    pop af
    ld c, [hl]
    and e
    ld e, h
    ld hl, $6bde
    sbc h
    add sp, -$61
    add sp, -$61
    rst $08
    rst $38
    rst $20
    ld hl, sp-$01
    nop
    rst $38
    nop
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
    inc a
    inc bc
    cp h
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    jr nz, jr_04d_431a

jr_04d_431a:
    ld bc, $2300
    nop
    daa
    nop
    ld [bc], a
    nop
    ld b, [hl]
    nop
    ld e, [hl]
    nop
    ld a, h
    nop
    db $fc
    nop
    ld a, h
    nop
    inc b
    nop
    nop
    nop
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    cp $ff
    add b
    add b
    rst $38
    cp $7f
    rst $38
    rst $38
    cp a
    ret nz

    call nz, $f5ff
    rst $38
    adc e
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $ffce
    rst $38
    rst $38
    rst $38
    add hl, de
    and $31
    add $35
    add $37

jr_04d_435d:
    call nz, $a45f
    ld d, a
    xor l
    inc sp
    call $cd32
    inc [hl]
    srl d
    rst $08
    rra
    ld [$c23b], a
    adc [hl]
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    jp $b7ff


    rst $38
    rst $18
    rst $38
    ld e, a
    ld l, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    rst $10
    ld a, a
    ld b, b
    rst $38
    db $d3
    rst $28
    ld a, [$fef8]
    db $fd
    ret nz

    rst $38
    ld a, b
    rst $38
    ld h, l
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    rra
    rst $38
    ret nc

    ld [$3acc], a
    xor [hl]
    ld [$08ae], sp
    sbc [hl]
    jr z, jr_04d_435d

    ld [$112c], sp
    dec [hl]
    add hl, de
    ld e, h
    ld de, $4115
    rst $18
    ld a, [hl]
    sbc c
    pop hl
    ld h, d
    ld a, a
    ld l, l
    sub e
    or c
    ld b, a
    sub b
    ld h, a
    or h
    ld b, a
    or $07
    cp e
    ld b, a
    cp b
    ld b, a
    inc bc
    rst $38
    ld a, b
    rst $38
    ld a, a
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
    rlca
    ld hl, sp+$1f
    ldh [$0e], a
    pop af
    add e
    ld a, h
    ld a, a
    rst $38
    rra
    inc bc
    ld a, e
    inc bc
    ei
    inc bc
    ei
    inc bc
    sbc $03
    db $dd
    ld [bc], a
    rst $18
    ld [bc], a
    jp c, $9a02

    ld [bc], a
    dec e
    ld [bc], a
    dec a
    ld [bc], a
    inc sp
    inc b
    ld bc, $0504
    inc b
    rlca
    inc b
    ei
    inc b
    db $e3
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    cp l
    ld b, d
    rst $38
    ld a, e
    ld h, b
    nop
    ei
    nop
    rla
    add sp, -$80
    nop
    ld a, [c]
    push af
    or $ff
    ld [hl], h
    add b
    add h
    rst $38
    ret z

    rst $38
    xor $ab

jr_04d_4428:
    ld a, a
    xor d
    sub $aa
    ld l, d
    cp a
    sbc a
    ld a, a
    push de
    ld a, a
    ld a, h
    ld d, a
    add b
    ld d, l
    add c
    ld d, h
    ld a, b
    add h
    ld d, $a8
    jr nc, jr_04d_4428

    ld c, e
    cp a
    rst $38
    cp $f7
    rst $30
    rst $30
    push af
    ei
    push af
    ldh a, [$ef]
    cp $eb
    rst $38
    ld [$e2ff], a
    di
    xor $e1
    cp $dd
    or $f5
    sub $ff
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
    ld [$02ff], sp
    inc bc
    ld a, [hl]
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
    pop bc
    rst $38
    inc b
    rst $38
    ld b, b
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
    rra
    rst $38
    add e
    ld b, c
    call nc, Call_000_1c61
    ld sp, $05cb
    jp nc, Jump_000_0fe3

    ei
    ld a, d
    ld hl, sp+$07
    sub a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ld hl, sp+$7f
    add b
    ccf
    ret nz

    cpl
    ret nc

    daa
    ret c

    rst $38
    nop
    ld c, $f1
    ccf
    ret nz

    inc b
    ei
    inc b
    ei
    inc c
    di
    ld b, $f9
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rP1], a
    nop
    ld bc, $0302
    nop
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
    nop
    nop
    ld e, $1f
    jr nz, jr_04d_4527

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04d_4537

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04d_4547

    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04d_4559

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_04d_4527:
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

jr_04d_4537:
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

jr_04d_4547:
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

jr_04d_4559:
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
    ld [$d1eb], a
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
    ld a, [$fbd1]
    db $fc
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
    jr @+$1b

    ld b, $1a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04d_462d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$08

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04d_464e

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04d_462d:
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
    nop
    nop
    nop
    nop

jr_04d_464e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    inc b
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0202
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
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
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0404
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, HeaderLogo
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    cp $01
    ld a, l
    add d
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$fd05]
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
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
    reti


    ld h, $fb
    inc b
    sbc $21
    or a
    ld c, b
    di
    inc c
    ei
    inc b
    cp l
    ld b, d
    ei
    inc b

jr_04d_47dc:
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld e, e
    and h
    ld a, a
    add b
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
    rst $38

jr_04d_47ff:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld a, l
    add d
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$fa05]
    dec b
    cp $01
    cp $01
    ld a, l
    add d
    rst $38
    nop
    ld a, e
    add h
    rst $20
    jr jr_04d_47dc

    ld c, d
    inc de
    db $ec
    ld b, d

Call_04d_482b:
    cp l
    adc [hl]
    ld [hl], c
    ld d, a
    xor b
    ld l, $d1
    inc b
    ei
    inc e
    db $e3
    jr c, jr_04d_47ff

    ld e, [hl]
    and c
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    db $10
    jr nc, jr_04d_4873

    db $10
    jr c, jr_04d_4856

    jr @+$1a

    jr @+$1a

    jr @+$1a

    jr jr_04d_4856

    inc c
    ld [$0cfb], sp
    rst $38
    inc c
    rst $38
    inc c

jr_04d_4856:
    rst $30
    inc c
    rst $30
    inc c
    db $fd
    ld b, $fd
    ld b, $ff
    ld b, $ff
    ld b, $fb
    ld b, $fb
    ld b, $fe
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld e, a
    and c
    rst $28

jr_04d_4873:
    ld de, $29d7
    ld l, a
    sub c
    or $09
    cp [hl]
    ld b, c
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    cp $01
    cp $01
    rst $38
    nop
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
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    cp $01
    cp $01
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_04d_495e

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
    db $db
    inc h
    ei
    inc b
    db $fd
    ld [bc], a
    db $dd

jr_04d_48f3:
    ld [hl+], a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10

jr_04d_4900:
    rst $30

jr_04d_4901:
    ld [$40bf], sp
    rst $30
    ld [$40bf], sp
    rst $18
    jr nz, jr_04d_4901

    add hl, bc
    xor a
    ld d, b
    rst $38
    nop
    ld e, a
    and b
    rst $18
    jr nz, jr_04d_4900

    inc d
    db $e3
    inc e
    jp $c93c


    ld [hl], $e3
    inc e
    rst $28
    db $10
    db $ed
    ld [de], a
    reti


    ld h, $ea
    dec d
    push af
    ld a, [bc]
    and $19
    jr c, jr_04d_48f3

    call nc, Call_04d_482b
    or a
    ldh a, [rIF]
    ld a, [$fa05]
    dec b
    ld d, h
    xor e
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $80
    cp $80

jr_04d_4958:
    rst $38
    add b

jr_04d_495a:
    rst $38
    add b
    cp a
    ret nz

jr_04d_495e:
    cp a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

jr_04d_4964:
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $18
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    rst $28
    jr nc, jr_04d_4964

    jr nc, @+$01

    jr nc, jr_04d_4958

    jr nc, jr_04d_495a

    jr nc, @+$01

    db $10
    rst $30
    jr @-$07

    jr @+$01

    jr @-$0f

    jr @-$0f

    jr @-$03

    inc c
    ei
    inc c
    rst $38
    inc c
    ld a, a
    adc h
    rst $30
    inc c
    rst $38
    inc b
    db $fd
    ld b, $fd
    ld b, $ff
    ld b, $fb
    ld b, $fb
    ld b, $ff
    ld [bc], a
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fc
    inc bc
    cp $01
    cp a
    ld b, b
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
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
    db $ed
    ld [de], a
    ei
    inc b
    pop de
    ld l, $ab
    ld d, h
    swap h
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld e, a
    and b
    ccf
    ret nz

    cp [hl]
    ld b, c
    ld e, a
    and b
    dec sp
    call nz, $a45b
    ld c, a
    or b
    add c
    ld a, [hl]
    ld b, l
    cp d
    inc c
    di
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld d, c
    xor [hl]
    sbc b
    ld h, a
    dec l
    jp nc, Jump_04d_53ac

    adc d
    ld [hl], l
    add d
    ld a, l
    add h
    ld a, e
    or b
    ld c, a

Jump_04d_4a00:
    ret nz

    ccf
    pop bc
    ld a, $e0
    rra
    push hl
    ld a, [de]
    ret nc

    cpl
    jp nz, Jump_04d_413d

    cp [hl]
    sub h
    ld l, e
    ld b, b
    cp a
    ld h, h
    sbc e
    ld [$94f7], sp
    ld l, e
    ld d, b
    xor a
    inc b
    ei
    sub c
    ld l, [hl]
    inc [hl]
    set 7, a
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_4a86:
    ld a, [$ef05]
    db $10
    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    add b

jr_04d_4a90:
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    ld [hl], a
    ret z

    ld a, a
    ret nz

    ld l, a
    ret nc

    rst $10
    ld l, b
    rst $30
    ld l, b
    rst $30
    ld l, b
    rst $28
    ld [hl], b
    and a
    ld a, b
    rst $20
    jr c, jr_04d_4a90

    inc a
    di
    inc a
    rst $30
    jr c, jr_04d_4a86

    inc a
    db $d3
    inc a
    db $fd
    ld a, [de]

jr_04d_4ab8:
    ei
    inc e
    rst $38
    jr jr_04d_4ab8

    inc e

jr_04d_4abe:
    db $eb
    inc e
    rst $28
    jr jr_04d_4abe

    inc c
    ld a, a
    adc h
    rst $38
    inc c
    ld a, a

jr_04d_4ac9:
    adc h
    or $0d
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld [hl], $cf
    rst $28
    ld d, $5e
    and a
    ld [bc], a
    rst $38
    ld d, d
    xor a
    rrca
    di
    ld b, a
    cp e
    ld d, e
    xor a
    dec b
    ei
    and c
    ld e, a
    ld d, c
    xor a
    inc bc
    db $fd
    dec hl
    push de
    ld de, $00ef
    rst $38
    add c
    ld a, [hl]
    jr z, jr_04d_4ac9

    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    sub $40
    cp a
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $28
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld h, a
    ld a, a
    daa
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    jr nc, jr_04d_4b5f

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
    rlca
    rra
    inc bc
    daa
    inc bc
    ld b, c
    ld bc, HeaderCGBFlag
    dec h
    ld bc, $071b
    rra
    rrca
    ld e, a
    rrca
    ld a, a
    rrca
    ld l, a
    rrca
    ld l, a
    rrca
    rrca
    dec c
    rrca
    inc c
    rrca
    inc b
    rlca
    inc b
    rlca

jr_04d_4b4a:
    inc b
    rlca

jr_04d_4b4c:
    ld b, $07
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rst $20
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    inc bc
    rst $38

jr_04d_4b5f:
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04d_4b64:
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04d_4b6a:
    db $fd
    inc bc
    db $fd
    inc bc

jr_04d_4b6e:
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
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
    rst $18
    jr nz, jr_04d_4b4a

    ld b, b

jr_04d_4b8c:
    cp a
    ld b, b
    rst $18
    jr nz, jr_04d_4b4c

    ld b, h
    rst $18
    jr nz, jr_04d_4b64

    jr nc, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_04d_4b6e

    jr nc, @-$2f

    jr nc, jr_04d_4b6a

jr_04d_4ba3:
    jr c, @-$0f

    db $10
    rst $00
    jr c, jr_04d_4b8c

    inc e
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    ccf
    ld b, b
    cp a
    ld [hl+], a
    db $dd
    ldh [$1f], a
    sub b
    ld l, a
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    jr nz, jr_04d_4ba3

    ret nz

    ccf
    ret nz

    ccf
    push bc
    ld a, [hl-]
    dec b
    ld a, [$ff00]
    add e
    ld a, l
    add e
    ld a, l
    inc bc
    db $fd
    add c
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    call c, $fcff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh a, [$80]
    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    cp $c0
    ldh [$d1], a
    ldh [$d1], a
    ldh a, [$ce]
    ld [$e6d4], a
    ld hl, sp-$18
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$ec], a
    ldh a, [$e4]
    ld hl, sp-$02
    ldh [$f2], a
    db $f4
    rst $30
    ldh a, [$f7]
    ldh a, [$e7]
    ldh [$f7], a
    ldh a, [$f7]
    ldh a, [$f5]
    ld a, [c]
    push af
    ld a, [c]
    ld sp, hl
    ld a, [$faf9]
    ld sp, hl
    ld a, [$f8fb]
    ld a, [$faf9]
    ld sp, hl
    ld a, [$faf9]
    ld sp, hl
    ld a, [$faf9]
    ld sp, hl
    db $fc
    db $fd
    ld hl, sp-$07
    db $fc
    db $fd
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $30
    cp $f7
    cp $ef
    cp $ff
    cp $ff
    cp $df
    cp $df
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    inc a
    rst $38
    cp h
    ld a, a
    inc a
    rst $38
    inc e
    rst $38
    jr @+$01

    ld e, b
    cp a
    jr @+$01

    jr @+$01

    or b
    ld a, a
    ld [hl], b
    cp a
    jr nc, @+$01

    ld [hl], d
    db $fd
    ld a, [c]
    ld a, l
    pop af
    ld a, [hl]
    ld [hl], l
    ld a, [$faf5]
    ld [c], a
    db $fd
    push hl
    ld a, [$fee1]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $c1
    cp $c0
    rst $38
    add c
    cp $88
    rst $30
    add d
    db $fd
    add l
    ld a, [$ea95]
    dec b
    ld a, [$ea15]
    ld a, [hl+]
    push de
    ld d, h
    xor e
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor c
    ld d, [hl]
    ld [hl+], a
    db $dd
    dec b
    ld a, [$fb04]
    ld a, [de]
    push hl
    ld c, c
    or [hl]
    inc h
    db $db
    ld [hl-], a
    call Call_000_000f
    rrca
    rrca
    rla
    ld [$001f], sp
    rla
    ld [$0817], sp
    rla
    ld [$0c13], sp
    rla
    ld [$0817], sp
    inc de
    inc c
    dec de
    inc b
    rla
    ld [$0817], sp
    rrca
    nop
    rrca
    nop
    rla
    ld [$0817], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$000f], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$000f], sp
    dec bc
    inc b
    dec bc
    inc b
    dec c
    ld [bc], a
    add hl, bc
    ld b, $09
    ld b, $0b
    inc b
    nop
    rlca
    ld bc, $0006
    rlca
    ld bc, $0006
    rlca
    nop
    rlca
    add h
    inc bc
    call nz, $e403
    inc bc
    db $f4
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
    ld a, [hl]
    add c
    cp $01
    cp $01
    cp $01
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    cp [hl]
    ld b, c
    or [hl]
    ld c, c
    rst $30
    ld [$28d7], sp
    db $d3
    inc l
    cp a
    ld b, b
    ld a, a
    add b
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
    add b
    rst $38
    ret nz

    cp a
    ld [bc], a
    db $fd
    ld [$26f7], sp
    reti


    add hl, hl
    sub $d5
    ld a, [hl+]
    dec d
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    sub l
    ld l, d
    db $fd
    ld [bc], a
    sbc $21
    dec hl
    call nc, $a45b
    ld e, [hl]
    and c
    xor a
    ld d, b
    ld d, [hl]
    xor c
    ld d, l
    xor d
    cp [hl]
    ld b, c
    xor d
    ld d, l
    xor h
    ld d, e
    xor d
    ld d, l
    ld [hl], a
    adc b
    xor d
    ld d, l
    ld d, [hl]
    xor c
    db $e4
    dec de
    ld [$56f7], sp
    xor c
    ld d, b
    xor a
    ld d, [hl]
    xor c
    ld d, b
    xor a
    xor b
    ld d, a
    sub h
    ld l, e
    call nc, $282b
    rst $10
    ld b, h
    cp e
    inc h
    db $db
    ld d, h
    xor e
    and b
    ld e, a
    sub l
    ld l, d
    ld bc, $c5fe
    ld a, [hl-]
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    rst $38
    nop
    rst $18
    jr nz, jr_04d_4e15

    nop
    nop
    nop
    nop

jr_04d_4e15:
    nop
    rlca
    nop
    nop
    rlca
    ld e, e
    rlca
    dec hl
    rlca
    dec de
    rlca
    dec hl
    rlca
    ld a, [de]
    rlca
    ld a, [hl-]
    rlca
    jr c, jr_04d_4e2f

    ld a, d
    rlca
    ld [hl-], a
    rlca
    cp b
    rlca
    ld l, h

jr_04d_4e2f:
    inc bc
    inc h
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    dec d
    inc bc
    dec d
    inc bc
    dec d
    inc bc
    dec h
    inc bc
    dec h
    inc bc
    dec a
    inc bc
    cp l
    inc bc
    ld a, h
    inc bc
    inc e
    inc bc
    sbc h
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    cp h
    inc bc
    inc a
    inc bc
    inc e
    inc bc
    sbc h
    inc bc
    call c, $3c03
    inc bc
    call c, $fc03
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $ec
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld b, h
    ld b, c
    ld l, a
    ld b, c
    ld c, a
    ld b, c
    ld e, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    cp $c1
    cp $81
    cp $81
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
    ld [hl], a
    nop
    ld d, l
    nop
    push de
    ld a, [hl+]
    ld d, a
    xor b
    dec [hl]
    jp z, $fb04

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_04d_4eb1:
    rst $38
    nop
    rst $38
    ld bc, $25fe
    jp c, $d02f

    xor a
    ld d, b
    ld e, l
    and d
    ld l, l
    sub d
    jp nc, $f52d

    ld a, [bc]
    ld [hl], l
    adc d
    cp d
    ld b, l
    ld [hl], a

jr_04d_4ec9:
    adc b
    cp a
    ld b, b
    ld d, l
    xor d
    rst $28
    db $10
    ld a, $c1
    call nc, Call_04d_7d2b
    add d
    and l
    ld e, d
    ld d, d
    xor l
    xor d
    ld d, l
    adc b
    ld [hl], a
    ld d, l
    xor d
    ld a, [hl+]
    push de
    sub l
    ld l, d
    ld d, d
    xor l
    xor b
    ld d, a
    jr nz, jr_04d_4ec9

    ret nz

    ccf
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    xor b
    ld d, a
    db $10
    rst $28
    ld bc, $fffe
    nop
    sbc $21
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $eb
    inc d
    ld a, [hl+]
    nop
    ld a, e
    nop
    db $db
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    pop af
    ld sp, hl
    ld [hl], c
    ld sp, hl
    pop af
    rst $38
    pop hl
    rst $38
    pop de
    rst $38
    ld d, c
    ld sp, hl
    pop de

jr_04d_4f2d:
    ld sp, hl
    ld bc, $02f9
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jp hl


    db $fd
    cp c
    db $ed
    ld hl, sp-$13
    ld hl, sp-$13
    jr nc, jr_04d_4f2d

    db $10
    db $ed
    db $10
    db $ed
    nop
    rst $38
    daa
    rst $38
    ld b, a
    rst $28
    ld b, b
    cp $40
    sbc $00
    rst $18
    ld l, b
    sub a
    ld b, [hl]
    cp e
    ld b, [hl]
    cp e
    inc bc
    cp $80
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    push de
    rst $38
    jp nc, $c0ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    sbc $00
    db $fd
    nop
    db $db
    nop
    dec a
    nop
    xor c
    ld d, [hl]
    ld l, d
    sub l
    xor d
    ld d, l
    xor l
    ld d, d
    and a
    ld e, b
    ld bc, $02fe
    db $fd
    inc bc
    db $fc
    dec e
    ld [c], a
    cpl
    ret nc

    ld d, l
    xor d
    cp $01
    db $ed
    ld [de], a
    cp $01
    cp a
    ld b, b
    cp b
    ld b, a
    ld a, [hl]
    add c
    ld a, e
    add h
    cp d
    ld b, l
    xor b
    ld d, a
    push de
    ld a, [hl+]
    ld d, l

jr_04d_4fcb:
    xor d
    ld c, d
    or l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    ld d, l
    xor d
    ld d, l

jr_04d_4fd7:
    xor d
    xor c
    ld d, [hl]
    ld [bc], a
    db $fd
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    and d
    ld e, l
    sub l
    ld l, d
    ld [bc], a
    db $fd
    add hl, hl
    sub $8c
    ld [hl], e
    ld [$48f7], sp
    or a
    jr z, jr_04d_4fcb

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    cp a
    jr z, jr_04d_4fd7

    rst $38
    nop
    nop
    rst $38
    db $fc
    rst $38
    inc hl
    rst $18
    cp $01
    sbc l
    ld h, d
    db $dd
    ld [hl+], a
    call c, $b523
    nop
    dec a
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
    add b
    rst $38
    adc a
    rst $38
    nop
    inc h
    nop
    rst $38
    nop
    rst $38
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $30
    ld sp, hl
    rst $20
    ld a, b
    rst $20
    rra
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    nop
    rst $38
    db $76
    rst $38
    inc a
    db $fc
    inc c
    ld a, h
    rlca
    rst $18
    rlca
    rst $18
    inc b
    rst $18
    rlca
    rst $18
    rlca
    add a
    rlca
    sub a
    nop
    rst $38
    nop
    rst $38
    inc a

jr_04d_505d:
    ld a, [hl]
    jr c, jr_04d_505d

    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    and $00
    rst $38
    nop
    ei
    nop
    db $ed
    nop
    pop af
    nop
    ret nc

    nop
    ld d, b
    nop
    ld e, a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_04d_50ab:
    nop
    ld e, a
    and b
    and a
    ld e, b
    ld e, a
    and b
    rst $38
    nop
    ld e, e
    and h
    xor d
    ld d, l
    cp d
    ld b, l
    push de
    ld a, [hl+]
    ld b, d
    cp l
    xor d
    ld d, l
    call nc, Call_04d_522b
    xor l
    xor d
    ld d, l
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld l, d
    sub l
    ld d, h
    xor e
    xor e
    ld d, h
    ld d, l
    xor d
    ld b, b
    cp a
    ld [$a4f7], sp
    ld e, e
    add b
    ld a, a
    inc c
    di
    ld [bc], a
    db $fd
    ld c, b
    or a
    sub b
    ld l, a
    ld d, h
    xor e
    db $10
    rst $28
    nop
    rst $38
    ld b, d
    cp l
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    ld [$42f7], sp
    cp l
    add hl, bc
    or $22
    db $dd
    ld de, $47ee
    cp b
    ld [hl+], a
    db $dd
    call z, $e733
    jr jr_04d_50ab

    ld e, c
    rst $38
    rst $38
    ld b, b
    cp a
    add a
    ld a, b
    add a
    ld a, b
    and a
    ld e, b
    ret nc

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    nop
    nop
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
    sub e
    nop
    rst $38
    nop
    rst $38
    nop
    sub e
    nop
    sub e
    nop
    sub e
    nop
    sub e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    inc h
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    rst $30
    rst $38
    rst $38
    rrca
    cp $0f
    cp $ff
    cp $ff
    sbc $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $01f7
    rra
    ld bc, $01ef
    rst $38
    nop
    rst $18
    nop
    rlca
    ld bc, $004f
    rst $38
    nop
    rst $38
    add b
    db $fd
    ld bc, $ffff
    rst $38
    rst $38
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
    ld [hl], b
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
    ccf
    rst $38
    ld a, a
    add b
    db $db
    nop
    rst $28
    nop
    ld a, [$a100]

jr_04d_5199:
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    push af
    ld a, [bc]
    rst $18
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
    rst $38
    nop
    ld a, e
    add h
    rst $38
    nop
    sub l
    ld l, d
    jr z, jr_04d_5199

    ld c, b
    or a
    sub d
    ld l, l
    ld [bc], a
    db $fd
    ld d, b
    xor a
    ld b, l
    cp d
    ld [hl+], a
    db $dd
    sub d
    ld l, l
    db $db
    inc h
    dec h
    jp c, $d42b

    add hl, bc
    or $05
    ld a, [$ea15]
    dec l
    jp nc, Jump_04d_4eb1

    ld d, a
    xor b
    dec h
    jp c, Jump_04d_54ab

    ld e, e
    and h
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp l
    ld b, d
    cp a
    ld b, b
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
    db $fc
    inc bc
    inc bc
    db $fc
    db $10
    rst $28
    pop bc
    ld a, $81
    ld a, [hl]
    cp $ff
    ld bc, $d0ff
    cpl
    db $dd
    ld [hl+], a
    ret nz

    ccf
    ccf
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ld [bc], a
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
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra

Call_04d_522b:
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc h
    nop
    inc h
    nop
    rst $38
    nop
    inc h
    nop
    inc h
    nop
    inc h
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
    ld e, a
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld [bc], a
    cp a
    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_5275:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04d_527a:
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_04d_527a

    rst $38
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04d_5275

    pop de
    ld l, $d2
    dec l
    ld [de], a
    db $ed
    add $39
    ld d, a
    xor b
    rst $38
    nop
    db $db
    inc h
    db $eb
    inc d
    or $09
    ld sp, hl
    ld b, $f6
    add hl, bc
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, [$ff05]
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    ld d, l
    xor d
    or [hl]
    ld c, c
    nop
    rst $38
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    ld a, [hl+]
    push de
    dec hl
    call nc, Call_000_01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp c, $ff25

    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    cp e
    ld b, h
    rst $30

jr_04d_52e7:
    ld [$00ff], sp
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld [$ff15], a
    nop
    rst $18
    jr nz, @-$3f

    ld b, b
    rst $38
    nop
    push de
    ld a, [hl+]
    dec bc
    db $f4
    db $ed
    ld [de], a
    add c
    ld a, [hl]
    add h
    ld a, e
    adc h
    ld [hl], e
    jr nz, jr_04d_52e7

    rst $38
    rst $38
    nop
    rst $38
    add h
    ld a, e
    nop
    rst $38
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [$fe]
    ldh a, [$fe]
    ld a, [c]
    cp $60
    cp $f7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    and b
    ld e, c
    nop
    ld e, a
    nop
    ld e, l
    and b
    ld e, a
    and b
    ld e, b
    and b
    ld e, [hl]
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [$0cfc], sp
    sbc h
    rrca
    sbc a
    dec c
    rst $38
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    inc bc
    rst $38
    ldh [rIE], a
    nop
    rlca
    add c
    pop af
    sub e
    sub e
    sub b
    sbc h
    sub b
    sbc a
    add b
    sbc a
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    db $10
    ld a, $38
    rst $38
    inc e
    rst $38
    ld a, $ff
    dec l
    rst $38
    dec h
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    xor l
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    ld b, a
    rst $38
    jp $e33f


    rra
    and c
    rra
    pop af
    rrca
    ld sp, hl
    rlca
    db $fd
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    ld d, b
    xor a
    db $76
    adc c
    adc d
    ld [hl], l
    xor d
    ld d, l
    push de
    ld a, [hl+]
    sbc $21

Jump_04d_53ac:
    ld a, l
    add d
    ld a, d
    add l
    or l
    ld c, d
    cp d
    ld b, l
    db $dd
    ld [hl+], a
    ld l, b
    sub a
    ld e, [hl]
    and c
    and [hl]
    ld e, c
    or l
    ld c, d
    ld d, e
    xor h
    xor e
    ld d, h
    ld l, c
    sub [hl]
    xor [hl]
    ld d, c
    ld d, h
    xor e
    xor l
    ld d, d
    rst $38
    nop
    ld a, [$ee05]
    ld de, $15ea
    ld d, a
    xor b
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38

jr_04d_53d9:
    nop
    sbc $21
    ei
    inc b
    ld [hl], l
    adc d
    db $fd
    ld [bc], a
    cp l

jr_04d_53e3:
    ld b, d
    cp $01
    db $f4
    dec bc
    rst $38
    nop
    xor $11
    push de
    ld a, [hl+]
    rst $28
    db $10
    or $09
    rst $30
    ld [$c43b], sp
    ld e, [hl]
    and c
    jr nz, jr_04d_53d9

    xor e
    ld d, h
    db $f4
    dec bc
    ldh a, [rIF]
    add d
    ld a, l
    jr nz, jr_04d_53e3

    ccf
    ret nz

    ld a, h
    add e
    rst $38
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    rst $18
    nop
    rst $38
    nop
    add b
    ld a, a
    jr nz, @+$01

    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    jr nz, @+$01

    nop
    rst $18
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    nop
    cp a
    nop
    ccf
    nop
    ccf
    ld [$0abf], sp
    ld a, a
    ld a, [hl+]
    ld a, a
    ld [hl-], a
    ld a, a
    ld d, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, [hl]
    ld bc, $016e
    sbc [hl]
    ld bc, $017a
    adc $01
    ld a, [hl]
    ld bc, $0338
    rrca
    ld bc, $002f
    ld d, e
    nop
    adc a
    nop
    add hl, de

Jump_04d_54ab:
    nop
    dec hl
    nop
    and d
    nop
    push de
    ld a, [hl+]
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    xor [hl]
    ld d, c
    ei

jr_04d_54b9:
    inc b
    ld h, l
    sbc d
    or a
    ld c, b
    ret nc

    cpl
    ld [de], a
    db $ed
    ld d, l
    xor d
    ld e, e
    and h
    ld d, l
    xor d
    ld d, l
    xor d
    and e
    ld e, h
    ld b, l
    cp d
    ld d, c
    xor [hl]
    ld b, b
    cp a
    ld h, b
    sbc a
    add c
    ld a, [hl]
    ld h, d
    sbc l
    ld [hl+], a
    db $dd
    or c
    ld c, [hl]
    ld c, h
    or e
    db $10
    rst $28
    and c
    ld e, [hl]
    ld d, d
    xor l
    ret nz

    ccf
    nop
    rst $38
    jr nc, jr_04d_54b9

    inc d
    db $eb
    and b
    ld e, a
    call nc, $802b
    ld a, a
    nop
    rst $38
    ld c, a
    or b
    ld bc, $91fe
    ld l, [hl]
    rst $38
    rst $38
    ld bc, $71ff
    adc a
    rst $38
    ld bc, $01ff
    ld bc, $00ff
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld d, c
    rst $38
    reti


    rst $38
    ld e, e
    rst $38
    ld hl, sp-$01
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    or $ff

jr_04d_557e:
    ld sp, hl
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
    pop bc
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    add d
    rst $38
    ld bc, $00ff
    ld a, a
    ret nz

    ccf
    or b
    rra
    add sp, $1f
    db $f4
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    ld e, a
    ld bc, $006d
    ld c, $00
    add e
    nop
    ld e, l
    nop
    db $dd
    nop
    db $eb
    inc d
    dec l
    jp nc, Jump_000_29d6

    ld e, d
    and l
    ld [hl], l
    adc d
    db $fc
    inc bc
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    rst $10
    jr z, jr_04d_557e

    ld d, h
    dec l
    jp nc, $857a

    xor d
    ld d, l
    ld d, l
    xor d
    ld c, d
    or l
    dec hl
    call nc, $fd02
    ld b, b
    cp a
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
    call c, $ff00
    nop
    ld a, a
    nop
    ld c, $01
    ldh a, [rIF]
    add a
    rst $38
    rra
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
    cp $7f
    cp $7f
    cp $ff
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $f8
    rst $38
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    db $fd
    jp hl


    ret nc

    call nc, $d180
    xor d
    ld sp, hl
    or b
    xor a
    ld c, e
    call c, $de5d
    sbc [hl]
    rst $38
    cp a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    dec [hl]
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    inc a
    rst $38
    adc [hl]
    rst $38
    jp $f0ff


    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [$3dff]
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [hl-], a
    rst $38
    dec de
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    ret nz

    ccf
    ld [hl], b
    rra
    ld hl, sp+$0f
    or h
    rrca
    ld hl, sp+$07
    ld a, h
    inc bc
    sbc $01
    ld e, a
    nop
    xor a
    nop
    xor a
    nop
    ld b, b
    cp a
    xor d
    ld d, l
    ld d, c
    xor [hl]
    and h
    ld e, e
    sub b
    ld l, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    nop
    rst $38
    db $10
    rst $28
    jr nz, @-$1f

    ld c, b
    or a
    sub b
    ld l, a
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ldh [$1f], a
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    and a
    ld a, a
    and a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
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
    or a
    rst $38
    ld bc, $80ff
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
    rlca
    rst $38
    nop
    sub h
    cp b
    rst $38
    ld a, [$02ff]
    rst $20
    nop
    ld a, l
    add sp, -$03
    ld [$07fd], sp
    rst $38
    rst $38
    rst $38
    ld sp, $20ff
    ld [hl], e
    dec bc
    inc b
    ld b, h
    ld l, a
    ld h, $fc
    ret nz

    cpl
    ld b, c
    rra
    cp l
    sbc a
    ld e, c
    rst $38
    di
    ld hl, sp-$0f
    ld hl, sp-$18
    cp $3f
    rst $38
    rrca
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld c, $ff
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [$0eef], sp
    rst $38
    rrca
    rst $38
    rrca
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
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
    ld bc, $80ff
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ret nc

    ccf
    ldh [$1f], a
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    db $fd
    inc bc
    cp $01
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
    jp Jump_000_1f3f


    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    db $fd
    rst $38
    and l
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $41ff
    rst $38
    ld b, e
    rst $38
    nop
    cp $00
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    ldh [rIE], a
    ldh a, [rIE]
    ld h, l
    rst $38
    ld bc, $00ff
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
    rst $18
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    rra
    rst $18
    rra
    sbc a
    rra
    rst $38
    and e
    rst $30
    add a
    rst $28
    rst $28
    rst $38
    rra
    rst $38
    add b
    rra
    ld [$2510], a
    jr jr_04d_584e

    nop
    add c
    add h

jr_04d_584e:
    db $e4
    xor $e4
    cp $88
    ccf
    ld [$161c], a
    nop
    ret nz

    ldh [$c0], a
    push af
    ld b, b
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    daa
    rst $38
    daa
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, [hl]
    rst $28
    inc hl
    rst $30
    inc bc
    ei
    rlca
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    or $ff
    rst $30
    rst $38
    adc $ff
    ld [$6cff], a
    rst $38
    inc l
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ld bc, $80ff
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$1f]
    add sp, $1f
    ldh a, [rIF]
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $ffff
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
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    nop
    xor b
    ld [bc], a
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
    adc b
    rst $38
    scf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
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
    rra
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    adc b
    rst $38
    call c, $daff
    rst $38
    xor l
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $30
    add c
    ld bc, $0024
    ld c, d
    nop
    xor d
    nop
    jp hl


    nop
    ld e, d
    nop
    dec l
    nop
    dec h
    adc a
    ld e, [hl]
    ccf
    add b
    ld b, $00
    call nz, Call_000_1f00
    nop
    rst $18
    ld bc, $01ff
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    add b
    rst $38
    add b
    ld a, [$f860]
    jr @-$02

    inc b
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    ld b, $ff
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    cp b
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    jr nc, @+$01

    ld [de], a
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ret z

    rst $18
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sbc a
    cp a
    dec a
    cp a
    ccf
    rst $38
    rra
    rst $38

Call_04d_59b4:
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
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
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
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    rst $38
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
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
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
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ld e, a
    rra
    xor a
    rrca
    rlca
    rrca
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    inc bc
    ld bc, $fd3f
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $e0ff
    rst $38
    ld a, [hl]

jr_04d_5a4b:
    rst $38
    ld a, a
    rst $38
    jr jr_04d_5a4b

    nop
    cp $21
    ld a, a
    add hl, sp
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    scf
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
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, c
    rst $38
    ld e, b
    rst $38
    cp b
    rst $38
    or l
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld sp, $0bff
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    sbc b
    rst $38
    call z, Call_04d_66ff
    rst $38
    inc hl
    rst $38
    ld de, $00ff
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
    jr nz, jr_04d_5af3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04d_5b03

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04d_5b13

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04d_5b24

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_04d_5af3:
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

jr_04d_5b03:
    ld sp, $5352
    ld sp, $5554
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

jr_04d_5b13:
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
    ld c, [hl]
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_04d_5b24:
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
    ld c, [hl]
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
    ld a, b
    ld a, e
    ld a, h
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
    ld c, [hl]
    sub h
    ld c, [hl]
    sub l
    ld a, e
    ld a, h
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
    ld a, e
    ld a, h
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld a, e
    xor e
    xor h
    ld c, [hl]
    xor l
    ld c, [hl]
    ld c, [hl]
    ld a, e
    ld a, h
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
    ld c, [hl]
    ld a, e
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
    ld sp, $3131
    ld sp, $3131
    db $f4
    push af
    or $31
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $f731
    ld hl, sp-$07
    ld sp, $3131
    ld sp, $3131
    ld sp, $fa31
    ei
    db $fc
    db $fd
    cp $ff
    ld d, c
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0404
    inc b
    ld bc, $0101
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
    inc b
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
    ld b, $01
    ld bc, $0401
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
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0404
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    cp h
    jp $c1fe


    cp $c1
    sbc $e1
    sbc $e1
    ld e, $e1
    ld c, $f1
    rrca
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$47
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
    sub h
    rst $38
    rst $30
    rst $38
    sub d
    rst $38
    rst $38
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [hl-], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rra
    rst $38
    cp $ff
    ret nz

    rst $38
    jp nz, $deff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    ld [$e8ff], a
    rst $38
    ret nz

    rst $38
    ld b, c
    rst $38
    ld b, l
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    and d
    rst $38
    and e
    rst $38
    or h
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    ld bc, $07ff
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    cp $3f
    cp $7f
    or $ff
    ld a, [c]
    rst $38
    sub d
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    ret


    rst $38
    ld c, c
    db $fd
    ld c, b
    db $fd
    ld l, h
    db $fd
    ld h, h
    or $25
    or $27
    cp h
    daa
    cp b
    rra
    add b
    ccf
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld h, l
    rst $38
    ld h, a
    rst $38
    ld [hl], l
    rst $38
    scf
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add d
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor l
    rst $38
    or a
    rst $38
    sub l
    rst $38
    rst $38
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
    ld bc, $a5ff
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    ld b, e
    rst $38
    ld bc, $09ff
    rst $38
    ld hl, $01f9
    and l
    ld bc, $0035
    and l
    nop
    push af
    nop
    sub l
    nop
    sub h
    nop
    jp nc, $d200

    inc bc
    ei
    ld c, $cf
    cp h
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ccf
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
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld c, d
    rst $38
    ld c, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    cp $1f
    rst $38
    ld a, a
    ld sp, hl
    rst $38
    push hl
    rst $38
    and l
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    sub d
    cp $d2
    cp $52
    ei
    ld c, d
    db $eb
    ld c, c
    xor $4b
    db $ec
    daa
    ld hl, sp+$2f
    and b
    ccf
    ret nz

    cp a
    add b
    rst $38
    ld bc, $03ff
    rst $38
    rlca
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    ld a, a
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
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
    rst $18
    rst $38
    cp $ff
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
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
    ld b, b
    rst $38
    dec bc
    rst $38
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    pop bc
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
    cp $ff
    ei
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    or $3f
    db $fc
    cp a
    sbc b
    cp a
    and b
    cp a
    ret nc

    cp a
    ret nz

    ld a, a
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
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
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh a, [$df]
    ldh a, [$df]
    pop af
    rst $18
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    inc de
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
    ld bc, $07ff
    rst $38
    inc a
    rst $38
    rst $00
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
    rst $30
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    ldh a, [rIE]
    jp c, $b0ff

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    ld c, $ff
    inc c
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
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc e
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    add b
    rst $38
    add d
    cp $04
    db $fc
    nop
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    ret nz

    add b
    add b
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $80ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $30
    cp $df
    rst $38
    rst $08
    rst $38
    rst $08
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
    ld b, c
    rst $38
    add c
    rst $38
    ld bc, $07ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
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
    ld l, a
    rst $38
    ld c, e
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld a, h
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
    ld hl, sp-$01
    ldh a, [rIE]
    db $f4
    rst $38
    or $ff
    ld sp, hl
    rst $38
    ld sp, $c1ff
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    ld a, h
    rst $38
    cp $ff
    cp $ff
    ld a, [$7aff]
    rst $38
    ld hl, sp-$01
    add sp, -$01
    sbc b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    inc [hl]
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld [bc], a
    cp $84
    db $fc
    nop
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    add c
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cpl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    push af
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
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    ldh a, [rIE]
    di
    rst $38
    set 7, a
    rlca
    rst $38
    ld b, l
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    rst $20
    rst $38
    add $ff
    add $ff
    add h
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    ld sp, $70ff
    rst $38
    or c
    rst $38
    or c
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    add d
    cp $04
    cp $08
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    add b
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and l
    ld e, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_62de:
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_04d_62de

    jr nz, jr_04d_6301

jr_04d_6301:
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld a, a
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
    add sp, -$01
    ldh [rIE], a
    ld [c], a
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    db $e4
    rst $38
    ldh [rIE], a
    db $ec
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$faff]
    rst $38
    ld hl, sp-$01
    ld a, [$f9ff]
    rst $38
    push af
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fc
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
    or $fd
    ld e, a
    db $fc
    ld a, a
    db $fc
    rst $38
    cp $bf
    cp $5e
    cp $9e
    cp $1e
    cp $1e
    cp $1e
    cp $3c
    db $fc
    ld e, b
    ld hl, sp+$70
    ld hl, sp+$60
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$80], a
    ret nz

    add b
    add b
    inc b
    add b
    inc b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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
    adc a
    ld [hl], b
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
    ld b, [hl]
    cp c
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ld hl, sp+$7f
    rst $38
    ld a, a
    rst $38
    jr nz, @+$01

    ld b, c
    adc $4d
    rst $08
    ld [hl], e
    cp $41
    adc $41
    adc $4d
    rst $08
    ld bc, $7fce
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    ld hl, sp+$48
    ld hl, sp+$6f
    ld hl, sp+$7f
    ld hl, sp-$43
    rst $38
    and b
    rst $38
    ld l, a
    rst $38
    ld l, $ff
    nop
    rst $20
    daa
    rst $20
    ccf
    rst $20
    ld b, a
    rst $20
    ld h, e
    rst $20
    inc hl
    rst $20
    cp e
    rst $20
    rst $20
    rst $38
    ld a, a
    rst $38
    cp l
    cp $6c
    cp $2c
    cp $2d
    cp $0d
    cp $08
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    inc e
    rst $38
    ld hl, sp-$01
    pop de
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    cp $f1
    cp $eb
    db $fc
    ei
    db $fc
    rlca
    ld hl, sp-$01
    nop
    cp $00

jr_04d_648a:
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    adc h
    ld [hl], e
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    rst $30
    ld [$1be4], sp
    db $ec
    inc de
    db $ed
    ld [de], a
    rst $18
    jr nz, jr_04d_648a

    jr nz, @+$01

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], c
    adc [hl]
    rst $38
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
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    db $eb
    rst $38
    ld [$ea7f], a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    cp $ff
    cp $01
    ld bc, $fe01
    ld bc, $01fe
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rlca
    add hl, bc
    rst $38
    rst $38
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
    rst $30
    rst $38
    cpl
    db $fd
    cpl
    push af
    cpl
    push af
    cpl
    rst $30
    cpl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    ld a, a
    rst $38
    ld h, a
    rst $38
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
    or $09
    xor $11
    cp c
    ld b, [hl]
    cp e
    ld b, h
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
    ei
    inc b
    db $db
    inc h
    rla
    add sp, $77
    adc b
    and $19
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $28
    db $10
    add e
    ld a, h
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ret nz

    pop de
    add b
    ret nc

    ret nz

    db $db
    ld [c], a
    db $dd
    rst $38
    ret nz

    rst $38
    rst $38
    reti


    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    rst $38
    inc b
    rst $38
    inc b
    ei
    inc b
    ld b, $ff
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    nop
    rst $38
    rst $00
    rst $38
    jp nz, $c3ff

    ccf
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    ccf
    ld [bc], a
    ccf
    nop
    rst $38
    rst $38
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]

jr_04d_6636:
    ldh a, [rIE]

jr_04d_6638:
    push af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_04d_6640:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $8c73
    and $19
    db $ed
    ld [de], a
    rst $20
    jr jr_04d_6640

    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_04d_6636

    jr nz, jr_04d_6638

    jr nz, jr_04d_6638

    ld [hl+], a
    adc a
    ld [hl], b
    sub d
    ld l, l
    sub c
    ld l, [hl]
    ld a, [hl-]
    push bc
    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0101
    ld b, c
    ld bc, $0101
    db $dd
    dec de
    push hl
    rst $38
    ld bc, $ffff
    ld a, a
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    ccf
    dec d
    ccf
    ei
    ccf
    rst $38
    ccf
    ld sp, hl
    ccf
    ldh [rIE], a
    rst $28
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    add hl, hl
    rst $38
    rst $28
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    jp hl


    rst $38
    cpl
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
    nop
    rst $38
    and b
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38

Call_04d_66ff:
    nop
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
    ret nz

    ccf
    ld h, b
    sbc a
    ldh [$1f], a
    ldh a, [rIF]
    adc b
    ld [hl], a
    ret c

    daa
    ldh a, [rIF]
    ei
    inc b
    sub $29
    cp $01
    cp [hl]
    ld b, c
    and h
    ld e, e
    cp h
    ld b, e
    cp $01
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
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
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$0af5], sp
    rst $38
    rst $38
    db $e3
    rst $38
    rrca
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, b
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    set 7, a
    rlca
    rlca
    rlca
    daa
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
    nop
    rst $38
    cp $ff
    ld d, [hl]
    rst $38
    cp $ff
    ld d, [hl]
    rst $38
    ld d, [hl]
    rst $38
    ld d, [hl]
    rst $38
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    rra
    ld [$ea1f], a
    rra
    ld [$ea1f], a
    rra
    ld [$ff1f], a
    nop
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $18
    rst $20
    sbc e
    ld h, h
    ei
    inc b
    cp $01
    rst $38
    nop
    cp c
    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $f1
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    rra
    rst $38
    jr @+$01

    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    scf
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    and b
    rst $38
    ei
    rst $38
    ccf
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    or b
    ld c, a
    and b
    ld e, a
    add b
    ld a, a
    add h
    ld a, e
    db $f4
    dec bc
    db $f4
    dec bc
    or a
    ld c, b
    cp c
    ld b, [hl]
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    add h
    ld a, e
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    ld c, $ff
    ld c, $ff
    xor [hl]
    rst $38
    ld c, $ff
    ld e, $ff
    dec e
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    ld l, b
    rst $38
    ld l, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld b, a
    rst $38
    set 7, a
    jp $e0ff


    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    sub h
    rst $38
    call nc, $96ff
    rst $38
    jp nc, $d1ff

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, l
    inc bc
    sbc l
    inc bc
    adc e
    ld bc, $0103
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $01ff
    rst $38
    nop
    xor $11
    cp $01
    sbc $21
    ld d, a
    xor b
    ld l, d
    sub l
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
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    db $fd
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
    ld bc, $03ff
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
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
    ret nz

    rst $38
    rlca
    rst $38
    ei
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    or $ff
    ld [c], a
    cp $f4
    cp $74
    cp $00
    cp $00
    cp $00
    cp $f4
    cp $bc
    cp $5e
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e4], a
    ret nz

    ret z

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    pop bc
    add b
    jp $efc0


    jp $efff


    rst $38
    rst $28
    rst $38
    rst $20
    cp $f7
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    ld sp, hl
    ldh a, [$f1]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f4], a
    ldh [$f4], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e8], a
    ldh [$f8], a
    ldh [$f9], a
    ldh [$f9], a
    ret nz

    ld a, [c]
    ret nz

    ld a, [$f3c0]
    ret nz

    ld sp, hl
    ret nz

    or $c0
    ld sp, hl
    ret nz

    ld sp, hl
    add b
    ei
    add b
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    rst $38
    add b
    db $fd
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

jr_04d_6aae:
    cp $01
    cpl
    ret nc

    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], e
    adc h

jr_04d_6ab8:
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    or a
    ld c, b
    rst $30
    ld [$00ff], sp
    push af
    ld a, [bc]
    rst $20
    jr jr_04d_6aae

    jr jr_04d_6ab8

    db $10
    rst $28

jr_04d_6acb:
    db $10
    rst $18
    jr nz, jr_04d_6acb

    inc bc
    inc e
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    jp nz, $c0c0

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret z

    add b
    ret nz

    add b
    ldh [$80], a
    ld b, b
    nop
    or l
    nop
    jp nz, $de00

    nop
    ld a, a
    nop
    jp $8100


    ld bc, $0101
    ld [bc], a
    nop
    ld e, $00
    ld a, [hl]
    nop
    db $fc
    db $10
    db $fc
    nop
    rst $38
    nop
    ld a, a
    ld b, $ff
    ld e, $ff
    ld a, $ff
    cp $ff
    db $fc
    rst $38
    jr c, jr_04d_6bb6

    jr nc, jr_04d_6b9d

    ld [hl+], a
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0700
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    di
    rst $38
    ld [$a2ff], a
    cp $02
    adc $02
    xor $02
    or $02
    ld a, a
    ld [bc], a
    ld a, a
    rlca
    ld a, a
    dec b
    sbc l
    dec b
    rrca
    dec b
    rst $00
    dec b
    ld c, a
    dec b
    ld d, a
    ld bc, $0187
    or a
    ld bc, $0323
    daa
    inc bc
    ld l, a
    inc bc
    ld l, a
    inc bc
    ld l, a
    inc bc
    ld a, a
    inc bc
    ld e, a
    inc bc
    ld l, a
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    cp a
    rlca
    rst $38
    rrca
    ld a, a

jr_04d_6b9d:
    rrca
    rst $38
    rrca
    rst $38
    rrca
    cp a
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
    sbc a
    ld a, a
    sbc a
    ld a, a

jr_04d_6bb6:
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ccf
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, a
    nop
    nop
    ld [$0c00], sp
    nop
    inc e
    nop
    ld l, $00
    ld [bc], a
    nop
    ld [de], a
    nop
    ld hl, $1200
    nop
    ld a, [bc]
    nop
    ld a, $00
    ld e, $00
    inc e
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
    ld bc, $011f
    ccf
    ld bc, $011f
    rrca
    ld bc, $014f
    rrca
    inc bc
    cpl
    ld bc, $0b7f
    ld a, a
    dec bc
    rst $28
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $18
    sub a
    rst $38
    sub a
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    ccf
    cp a
    cpl
    rst $28
    cpl
    xor a
    cpl
    rst $28
    cpl
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld c, a
    rst $18
    ld c, a
    ld e, a
    ld e, a
    rst $18
    ld e, a
    ld e, a
    ld e, a
    rst $18
    ld e, a
    rst $38
    sbc a
    rst $38
    sbc a
    cp a
    sbc a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    and $ff
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c7ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
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
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0209], sp
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_04d_6d8d

    ld [bc], a
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl

jr_04d_6d8d:
    inc h
    dec h
    ld h, $27
    jr z, jr_04d_6dbc

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04d_6dd0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04d_6de0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
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
    inc h
    inc h

jr_04d_6dbc:
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
    ld e, a
    ld h, b

jr_04d_6dd0:
    inc h
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [bc], a
    ld h, a
    ld c, l
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, e

jr_04d_6de0:
    inc h
    ld h, c
    ld h, c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    db $76
    inc h
    ld h, c
    ld h, c
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
    ld l, e
    add d
    ld l, e
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
    ld l, e
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
    ld l, e
    inc h
    inc h
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
    inc h
    cp a
    ret nz

    pop bc
    ld [bc], a
    ld [bc], a
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_24cb

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

    ld l, e
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
    jr @+$17

    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    ld bc, $0401
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
    ld bc, $0102
    inc b
    inc b
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
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0202
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld hl, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add hl, sp
    ccf
    add hl, sp
    dec a
    dec a
    dec a
    dec a
    cp l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    db $fc
    add b
    db $f4
    ret nz

    db $f4
    ret nz

    db $f4
    ret nz

    ld a, [c]
    ret nz

    ld a, [c]
    ret nz

    ld a, [c]
    ldh [$f2], a
    ldh [$fa], a
    ldh [$f9], a
    ldh [$f9], a
    ldh a, [$f9]
    ldh a, [$fd]
    ldh a, [$fd]
    ldh a, [$fc]
    ldh a, [$fd]
    ld a, [c]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld hl, sp-$01
    ldh [rIE], a
    add b
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
    db $fd
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    cp $fe
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld hl, $2300
    inc b
    daa
    ld [$101f], sp
    ccf
    jr nz, jr_04d_7197

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
    ld bc, $03ff
    rst $38
    rlca
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
    ld hl, sp-$01
    ldh a, [rIE]
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    ld a, a
    rst $38
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

jr_04d_7197:
    rst $38
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
    rra
    rra
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rrca
    adc a
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    jr c, @+$01

    ret nz

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
    ei
    rst $38
    pop hl
    rst $38
    add c
    ei
    ld bc, $01e1
    pop bc
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    inc b
    rlca
    nop
    rrca
    nop
    ccf
    jr nz, jr_04d_7269

    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ldh [rIE], a
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
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_04d_7269:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    inc bc
    rst $38
    rlca
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
    rst $38
    rst $38
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
    ld hl, sp-$01
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr nz, @+$01

    ld h, b
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
    nop
    inc d
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    or [hl]
    rst $38
    and [hl]
    rst $38
    ld hl, sp-$01
    ld e, b
    rst $38
    ld [$08ff], sp
    rst $38
    jr nz, @+$01

    ld b, d
    rst $38
    ld d, b
    rst $38
    ld [hl], c
    rst $38
    ld hl, $01ff
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    or b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    call nc, $d0ff
    rst $38
    ld [c], a
    rst $38
    db $d3
    rst $38
    jp nz, $c2ff

    rst $38
    ret z

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
    ld [c], a
    rst $38
    ldh [rIE], a
    add sp, -$01
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$25
    ld hl, sp+$19
    ld hl, sp+$3d
    ld hl, sp+$7c
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$03
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $07
    cp $07
    cp $0f
    cp $0f
    cp $1f
    cp $1f
    rst $38
    ccf
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
    ld hl, sp-$01
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
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
    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    jr c, @-$06

    ld [hl], $f6
    ld de, $11f1

jr_04d_7435:
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [$08]
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$40
    ld hl, sp+$24
    ld hl, sp+$27
    ld hl, sp+$4f
    ld hl, sp+$0e
    ld hl, sp-$72
    ld hl, sp+$0e
    ld hl, sp-$72
    ld hl, sp+$0c
    ld a, [$fd0b]
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    add hl, bc
    cp $0e
    db $fc
    inc c
    cp $0c
    cp $0d
    cp $4d
    rst $38

jr_04d_7474:
    dec c
    cp $0d
    cp $05
    cp $04
    rst $38
    inc c
    rst $38
    add hl, bc
    cp $04
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff20]
    nop
    rst $38
    nop
    rst $38
    ld de, $21fe
    sbc $73
    adc h
    ccf
    ret nz

    rra
    ldh [$15], a
    ld [$e817], a
    rlca
    ld hl, sp+$05
    ld a, [$f807]
    rlca
    ld hl, sp-$31
    jr nc, jr_04d_7474

    jr nc, jr_04d_7435

    ld [hl], c
    add a
    ld a, b
    dec b
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    cp $c0
    add b
    add b
    ret nz

    rst $38
    ret nz

    add c
    ret nz

    rst $10
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ldh a, [$6d]
    ldh [$3f], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    stop
    nop
    nop
    nop
    nop
    add b
    ld a, a
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
    nop
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
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], a
    ld a, a
    scf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    adc a
    rrca
    rst $08
    db $db
    rst $18
    ei
    db $fd
    ld a, e
    add hl, sp
    rra
    rra
    rrca
    rrca
    rrca
    inc bc
    rlca
    jp $e303


    rlca
    rst $38
    ld h, a
    rst $18
    ccf
    ld c, a
    cp a
    rst $38
    adc a
    rst $38
    rst $28
    ld [hl], a
    rst $28
    ld e, a
    rst $38
    sbc a
    ld e, a
    ld e, a
    rst $18
    sbc a
    ld e, a
    rra
    rra
    rra
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    rrca
    rra
    rrca
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra
    adc a
    rra
    xor a
    rra
    adc a

jr_04d_7583:
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $08
    ccf
    add [hl]
    ld a, a
    add $3f
    add $3f
    call nz, Call_000_043f
    rst $38
    ld h, h
    sbc a
    ld h, h
    sbc a
    ld h, h
    sbc a
    ld [hl], h
    adc a
    ld h, h
    sbc a
    ld h, h
    sbc a
    scf
    call z, Call_000_0cf7
    ld d, l
    xor [hl]
    ld d, a
    xor h
    ld d, a
    xor h
    inc c
    rst $30
    inc c
    rst $30
    ld l, $d5
    dec h
    call c, $dc21
    inc h
    reti


    nop
    ld sp, hl
    jr nc, jr_04d_7583

    ld de, $03e9
    ld sp, hl
    ld b, e
    or c
    ld b, e
    or c
    ld bc, $05f3
    di
    rlca
    ld [c], a
    jp Jump_000_0306


    ld b, $0b
    ld b, $fb
    ld b, $7b
    add [hl]
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ei
    db $fc

jr_04d_75da:
    db $db
    db $e4
    ei
    inc b
    add b
    ld a, a
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $20
    jr @-$17

    jr jr_04d_75da

    db $10
    rst $28
    db $10
    rst $28
    stop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    pop hl
    rst $38
    add b
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

jr_04d_7650:
    rst $38

jr_04d_7651:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add c
    ld a, [hl]
    or e
    ld c, h
    rst $18
    jr nz, jr_04d_7650

    jr nz, jr_04d_7651

    ld hl, $00ff
    ld a, l
    add d
    ld l, b
    sub a
    inc bc
    db $fc
    dec a
    jp nz, $c03f

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call c, Call_000_0323
    db $fc
    ldh [rIE], a
    cp c
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $e3
    rst $38
    push af
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld a, [$ffff]
    rst $38
    add a
    rst $38
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $d7ff
    rst $38
    call nc, $d4ff
    rst $38
    call nc, $ffff
    ret nz

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
    dec b
    ld a, [$fa05]
    nop
    rst $38
    ld a, c
    add [hl]
    jp hl


    ld d, $7d
    add d
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    nop
    rst $38
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
    cp $01
    cp $01
    cp $01
    cp $01
    ret nz

    ccf
    ld l, $d1
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
    nop
    rst $38
    cp $01
    ld e, e
    rst $38
    sbc b
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $f8
    cp $fe
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
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    jp z, Jump_04d_4a00

    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    rst $38
    cp [hl]
    rst $38
    or d
    rst $38
    or d
    rst $38
    or d
    rst $38
    rst $38
    inc a
    ld a, a
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    cp $ff
    rst $38
    ldh a, [rIE]
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
    ld [$1df7], sp
    ld [c], a
    ld l, e
    sub h
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    rst $28
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
    ldh [$1f], a
    rrca
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
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    ld bc, $03fe
    db $fd
    inc bc
    db $fd
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld bc, $07fe
    ld hl, sp+$0e
    ld hl, sp+$08
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    db $fd
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld c, b
    or a
    dec a
    jp nz, $bd42

    ld a, [hl+]
    push de
    nop
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    inc d
    rst $38
    ld de, $d1fb
    di
    add c
    di
    sub c
    di
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    xor d
    nop
    sub h
    nop
    jr nz, jr_04d_785b

jr_04d_785b:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $f4
    rst $30
    inc b
    push af
    inc b
    rst $30
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld hl, sp-$01
    adc b
    rst $38
    rst $18
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
    db $10
    rst $38
    db $10
    rst $38
    rra
    rst $38
    rra
    rst $38
    ei
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_789c:
    rst $38
    nop

jr_04d_789e:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld d, d
    xor l
    ld a, e
    add h
    sbc a
    ld h, b

jr_04d_78b0:
    ccf
    ret nz

    nop
    rst $38
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_04d_789c

    jr nz, jr_04d_789e

    jr nz, jr_04d_78b0

    db $10
    rst $28
    db $10
    rst $28
    stop
    rst $38
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ldh a, [rIF]
    dec c
    ld a, [c]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
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
    cp $01
    ld bc, $fffe
    nop
    rst $38
    nop
    cp [hl]
    pop bc
    ld de, $40e0
    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    jp $ff00


    nop
    ld a, a
    add b
    ld e, $e1
    add hl, bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    rst $30
    rst $38
    ldh a, [rIE]
    ld [c], a
    db $fd
    inc d
    db $eb
    db $10
    rst $28
    sub c
    ld l, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    db $ed
    rst $38
    xor a
    rst $38
    xor c
    rst $38
    xor b
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    ld a, [c]
    ld a, a
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
    ld e, h
    rst $38
    ld d, b
    cp $50
    cp $d0
    cp $f8
    rst $38
    rst $38
    rst $38
    add b
    add a
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    scf
    rst $38
    ld [hl], e
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    db $fd
    rst $38
    cp b
    rst $38

jr_04d_7984:
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

jr_04d_798e:
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$d7], a
    jr z, jr_04d_7984

    jr jr_04d_798e

    db $10
    add b
    ld a, a
    ld [hl], a
    adc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    add b
    ld a, a
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

jr_04d_79d4:
    rst $38
    nop

jr_04d_79d6:
    rst $38
    nop

jr_04d_79d8:
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38

jr_04d_79ea:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04d_79d4

    jr nz, jr_04d_79d6

    jr nz, jr_04d_79d8

    jr nz, jr_04d_79ea

    db $10
    rst $28
    db $10
    rst $28
    db $10
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
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
    ld bc, $4dfe
    or d
    rst $28
    db $10
    ld a, l
    add d
    ld l, [hl]
    sub c
    inc b
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    rra
    rst $38
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
    db $ed
    rst $38
    ld l, a
    rst $38
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
    rst $38
    ld hl, sp-$01
    and b
    rst $20
    sbc e
    sbc a
    add hl, de
    sbc a
    rra
    cp a
    ccf
    cp a
    jr z, @+$01

    jp $83c3


    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$ffff], sp
    rst $38
    rst $30
    db $fd
    rst $28
    db $fd
    ld l, a
    db $fd
    db $eb
    db $fd
    ld [bc], a
    rst $38
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ret z

    nop
    ld l, [hl]
    sub c
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10

jr_04d_7a9c:
    rst $38
    nop
    cp $01
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_7aae:
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld bc, $bffe
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04d_7a9c

    jr nz, jr_04d_7aae

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld hl, sp+$07
    inc bc
    db $fc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], b
    nop
    cp a
    rra
    rra
    rra
    cp a
    rra
    ld e, a
    rra
    rst $38
    rra
    ld d, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp a
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
    cp a
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
    ldh a, [$3f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $00
    nop
    add b
    nop
    add b
    ld a, a
    ld a, [hl]
    add c
    xor $11
    xor $11
    cp $01
    cp $01
    cp $01
    ld bc, $ffff
    ld bc, $01ff
    ld a, l
    add e
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld bc, $fdff
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04d_7b90:
    inc bc
    rlca
    ld [bc], a
    rlca
    nop
    inc bc
    ld bc, $ff01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_04d_7ba2:
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04d_7b90

    jr nz, jr_04d_7ba2

    db $10
    rst $28
    stop
    rst $38
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rst $08
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
    ldh a, [rIE]
    cp h
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
    ld a, a
    rst $38
    ld a, a
    pop bc
    ld a, a
    ldh [$7f], a
    ldh a, [$7f]
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
    and a
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    ld b, e
    ld a, a
    ld hl, $003f
    ccf
    db $10
    rra
    nop
    rra
    ld [$040f], sp
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0000
    ld a, a
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
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld bc, $0fff
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
    ldh a, [$f8]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp $c1
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
    cp b
    rst $38
    ld bc, $c0ff
    rst $38
    cp $ff
    pop af
    rst $38
    ldh a, [$f0]
    db $fc
    cp $fe
    rst $38
    call $ceff
    rst $38
    jp z, $dcff

    rst $38
    call c, $f8ff
    rst $38
    ld hl, sp-$05
    inc e
    rst $38
    dec b
    rst $38
    pop bc
    rst $38
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
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    db $fc
    rra
    cp $17
    rst $38
    sbc e
    ld a, a

Call_04d_7d2b:
    add hl, bc
    ccf
    inc c
    rra
    add h
    rrca
    call nz, $e227
    inc de
    ld a, [c]
    nop
    ld hl, sp+$00
    db $fc
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    add e
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
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
    add e
    rst $38
    ld bc, $40ff
    ld a, a
    jr nz, jr_04d_7db9

    nop
    ccf
    db $10
    rra
    ld [$000f], sp
    rrca
    inc b
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0000
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
    db $fd
    cp $ef
    ldh a, [$7f]
    add b
    rst $38
    nop
    cp $01
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04d_7db9:
    rst $38
    rst $38
    rst $38
    ld b, $ff
    dec c
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    rra
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    call nz, $c4ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ccf
    ccf
    rra
    ccf
    cp $ff
    db $e4
    rst $38
    ld h, b
    rst $20
    and b
    db $e3
    ld [hl+], a
    pop hl
    ld [bc], a
    ldh [rSC], a
    ldh [$a0], a
    ldh [$a2], a
    ldh [$85], a
    ldh [$82], a
    ldh [rNR51], a
    ldh a, [rSB]
    ld hl, sp+$00
    cp $e0
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
    ccf
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $c0ff
    rst $38
    ldh [rIE], a
    ldh a, [$3f]
    call c, $fe5f
    ld c, a
    rst $38
    ld c, a
    rst $38
    rrca
    ld a, a
    cpl
    ccf
    cpl
    ccf
    adc a
    rla
    sbc a
    dec d
    rst $18
    add hl, de
    rst $38
    ld a, [bc]
    rst $38
    inc bc
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld d, b
    rst $38
    ld [$04ff], sp
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    dec sp
    rst $38
    ld a, [de]
    rst $38
    ld e, $ff
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, c
    ld a, a

jr_04d_7e80:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, [$bafc]
    ld a, h
    cp b
    ld a, b

jr_04d_7e9c:
    cp c
    ld a, b
    ld sp, hl
    ld a, b
    db $ed
    ld a, b
    db $ed
    ld a, b
    push bc
    ld a, b
    ld b, l
    ld a, b
    ld b, $70
    ld d, $f0
    ld e, [hl]
    ldh a, [$58]
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
    add d
    rst $38
    rst $38
    rst $38
    add l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    xor d
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rlca
    ld a, a
    nop
    ldh [$0e], a
    rst $38
    inc c
    rst $38
    ld c, $7c
    adc [hl]
    inc e
    ld [hl+], a
    inc e
    rlca
    jr @+$11

    jr jr_04d_7e9c

    jr jr_04d_7e80

    jr jr_04d_7f40

    jr c, @+$09

    jr c, @+$51

    jr nc, jr_04d_7f08

    ldh a, [$1f]
    ldh a, [$0a]
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38

jr_04d_7f08:
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
    rst $28
    rst $38
    ei
    rst $38
    cp $ff
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
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld e, b
    rst $38
    ld d, [hl]
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $18
    inc d
    rst $38

jr_04d_7f40:
    dec b
    rst $38
    dec b
    db $fd
    ld bc, $01ff
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ld b, $ff
    ld [bc], a
    cp $00
    cp $00
    cp $80
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    jr @+$01

    ld e, b
    rst $38
    call nc, $ffff
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    sbc c
    ld a, e
    dec de
    ccf
    dec sp
    ld a, e
    cp e
    ccf
    inc sp
    ld a, e
    inc bc
    ccf
    ld [bc], a
    rst $30
    ld b, $77
    inc d
    ld [hl], a
    ld d, h
    ld [hl], a
    ld b, h
    ld [hl], a
    call nz, $056f
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
    db $fd
    rst $38
    xor c
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    rst $38
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
    add b
    rst $38
    and l
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    ld a, a
    rst $38
    rrca
    rra
    ccf
    rst $38
    inc bc
    rst $38
    jr nz, jr_04d_7ff7

    add h
    ld [bc], a
    ld b, b
    nop
    or l
    nop
    push af
    nop
    db $eb
    nop
    ld a, l
    nop
    ld e, a
    nop
    ld d, l

jr_04d_7ff7:
    nop
    ld [$fa00], a
    nop
    rst $30
    nop
    cp a
    nop
