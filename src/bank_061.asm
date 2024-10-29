SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

    rrca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    jp $0fff


    rst $38
    ld e, $ff
    ld e, $ff
    sbc [hl]
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    ld h, e
    rst $38
    ld d, e
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld de, $d3ff
    rst $38
    di

Jump_061_403b:
    rst $38
    rst $20
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    rst $18
    rst $38
    reti


    rst $38
    ret c

    rst $38
    jp nz, $c3ff

    rst $38
    rst $20
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
    ld a, [hl]
    rst $38
    ld [hl], $ff
    db $76
    rst $38
    db $76
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld [c], a
    rst $38
    jp nz, $e3ff

    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc a
    ld [hl], b
    jp c, Jump_061_6025

    rst $38
    cp b
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, $ff
    dec e
    cp $f8
    rst $38
    ret nc

    rst $38
    inc e
    rst $38
    ret z

    ccf
    db $10
    rst $28
    nop
    rst $38
    dec b
    rst $38
    ld c, $ff
    jr @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    jr nz, @+$01

    ld h, c
    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    rst $18
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    jp $c3ff


    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    ld hl, $65ff
    rst $38
    ld [hl], l
    rst $38
    ld a, l
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    call c, $f4ff
    rst $38
    jr z, @+$01

    ld [$1cff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rra
    rst $38
    ccf
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
    ld sp, $21ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop de
    cp $40
    rst $38
    db $10
    rst $38
    sbc l
    rst $38
    rst $08
    rst $38
    rst $38
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
    cp a
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
    dec de
    rst $38
    cp a
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
    ld hl, sp-$01
    ld a, b
    rst $38
    add hl, sp
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [hl], $ff
    rst $38
    rst $38
    add hl, de
    rst $38
    ld c, b
    rst $38
    ret z

    ld a, a
    ld [hl], b
    rst $28
    dec c
    rst $38
    dec bc
    rst $38
    adc h
    rst $38
    sbc $ff
    ld hl, sp-$01
    ld a, [bc]
    db $fd
    ld a, [hl+]
    rst $10
    inc d
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    daa
    rst $18
    rst $20
    rra
    jp $fc3f


    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$64ff], sp
    rst $38
    ld l, h
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    add c
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    add $ff
    rst $20
    rst $38
    db $db
    rst $38
    ld a, e
    rst $38
    ld e, l
    rst $38
    ld b, l
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    cp h
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    add hl, sp
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    pop af
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld e, $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, d
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    sbc b
    rst $38
    jr c, @+$01

    cp b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $38

jr_061_427b:
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ret nz

    rst $38
    ld a, [c]
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    adc a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    dec sp
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_061_427b

    rla
    rst $28
    rra
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
    di
    rst $38
    cp a
    rst $38
    ld c, a
    rst $38
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
    adc a
    rst $38
    adc a
    rst $38
    add e
    rst $38
    adc e
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    ld b, a
    rst $38
    ld h, e
    rst $38
    sub c
    rst $28
    adc b
    rst $30
    dec h
    db $db
    add c
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    db $76
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    db $76
    rst $38
    scf
    rst $38
    scf
    rst $38
    cp $ff
    db $fc
    rst $38
    di
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    dec sp
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
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
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

Jump_061_433c:
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $e3
    rst $38
    pop hl
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld a, l
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
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $00
    ld hl, sp+$0c
    di
    inc b
    rst $38
    dec bc
    db $fc
    scf
    ld hl, sp+$01
    cp $7e
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    set 7, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    ld b, $ff
    ld b, $ff
    and $ff
    or $ff
    db $ec
    rst $38
    jr nc, @+$01

    sub b
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    add sp, -$01
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    ld [$09ff], sp
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ld [$50ff], sp
    rst $38
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
    db $fd
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add d
    db $fd
    sub b
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    ld b, b
    rst $38
    ld bc, $04ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    pop hl
    rst $38
    ld a, [c]
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    ldh a, [rIE]
    cp $ff
    db $ec
    rst $38
    db $f4
    rst $38
    db $ec
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    db $10
    rst $38
    rlca
    rst $38
    ld d, h
    cp e
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    cp $ff
    call c, $98ff
    rst $38
    cp b
    rst $38
    cp $ff
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
    cp $ff
    cp $ff
    db $fd
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_061_44f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_061_44fc

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_061_4514

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_061_4524

jr_061_44f3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_061_4534

    ld a, [hl-]

jr_061_44fc:
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
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_061_4514:
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

jr_061_4524:
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

jr_061_4534:
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
    dec a
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
    ld b, $1a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld a, [de]
    ld de, $1312
    inc d
    ld a, [de]
    dec d
    ld d, $17
    jr jr_061_45f8

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
    jr z, jr_061_4618

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_061_45f8:
    ld a, [de]
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_061_4639

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_061_4618:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_061_4639:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0400
    inc b
    inc b
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0909
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
    add hl, bc
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

Jump_061_472f:
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    di
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
    ccf
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    scf
    rst $38
    ld [bc], a
    rst $38
    ld de, $f0ff
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    ld d, a
    xor a
    inc bc
    rst $38
    add b
    rst $38
    call nz, $e2ff
    rst $38
    ld sp, hl
    rst $38
    cp $ff
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
    rlca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    cp $ff
    add d
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    and e
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    ld d, c
    rst $38
    and c
    rst $38
    ld sp, $01ff
    rst $38
    ld h, c
    rst $38
    ld a, c
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld h, a
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
    di
    rst $38

Call_061_4800:
    dec b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld sp, $38fe
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
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
    adc a
    ld a, a
    add e
    ld a, a
    dec b
    ei
    inc bc
    rst $38
    db $10
    rst $28
    add e
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld a, [hl]
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
    ei
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ei
    rst $38
    di

jr_061_485d:
    rst $38
    di
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld sp, hl
    rst $38
    ld a, [$feff]
    rst $38
    or $ff
    add [hl]
    rst $38
    jp z, $f4ff

    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    inc b
    rst $38
    jr nz, jr_061_485d

    add d
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp h
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor h
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    ccf
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, d
    rst $38
    inc h
    ei
    ld a, [c]
    db $fd
    db $f4
    ei
    ld h, b
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $f7ff
    rst $38
    rra
    rst $38
    dec [hl]
    rr a
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    push af
    rst $38
    rst $08
    rst $38
    rst $38

jr_061_4919:
    rst $38
    rst $38

jr_061_491b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ld [c], a
    rst $38
    ret nz

    rst $38
    jr nz, jr_061_4919

    jr nz, jr_061_491b

    sbc b
    rst $38
    call z, $ffff
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
    cp $ff
    cp $ff
    cp $fd
    ei
    db $fc
    ld a, e
    db $fc
    ld a, c
    cp $7d
    cp $7e
    rst $38
    rst $38
    ld a, a
    jr z, @+$01

    add b
    ld a, a
    ret nz

    ld a, a
    ld b, c
    cp $00
    rst $38
    sub h
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    adc d
    rst $38
    sub e
    rst $38
    or e
    rst $18
    or e
    rst $18
    sbc c
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    cp c
    rst $38
    dec a
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld c, l
    cp a
    dec c
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rla
    rst $38
    add a
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
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
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    jp $cbff


    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    ei
    db $fc
    cp $ff
    rst $38
    rst $38
    db $ec
    rst $38
    ld a, h
    rst $38
    db $fc
    ld a, a
    cp a
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add l
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_061_4a0b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $00
    rst $38
    adc [hl]
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_061_4a0b

    nop
    rst $38
    add b
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    db $f4
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
    rst $38
    rst $38
    cp a
    rst $38
    cp a
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
    inc bc
    rst $38
    add c
    ld a, a
    ld [bc], a
    rst $38
    ldh [$1f], a
    jp nz, $903f

    rst $28
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc de
    rst $38
    db $10
    rst $38
    dec e
    cp $08
    rst $38
    dec de
    rst $38
    or a
    rst $28
    sub c
    rst $38

jr_061_4a74:
    sbc [hl]
    rst $38
    ld d, c
    rst $38
    cp $ff
    cp $ff
    add sp, -$01
    db $fc
    rst $38
    db $fc
    rst $38
    add h
    rst $38
    add $ff
    add [hl]
    rst $38
    ld b, [hl]
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    and [hl]
    rst $18
    and [hl]
    rst $18
    adc $ff
    adc $ff
    adc b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    jr nz, @+$01

    add sp, -$01
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    push bc
    rst $38
    db $fd
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
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], e
    db $fc
    rrca
    ldh a, [$9f]
    ld h, b
    rst $00
    jr c, jr_061_4a74

    cp $7f
    rst $38
    ld a, [hl]
    rst $38
    ei
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ldh a, [rIE]
    add b
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld d, $e9
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld l, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld a, h
    rst $38
    ld c, h
    rst $38
    ld a, [hl+]
    db $fd
    ld a, h
    cp a
    ld a, h
    cp a
    cp [hl]
    rst $38
    ld a, h
    rst $38
    ld a, d
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    pop de
    rst $28
    add b
    rst $38
    adc h
    rst $38
    sbc a
    rst $38
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    ld c, a
    cp a
    rst $08
    ccf
    ld c, a
    cp a
    ld e, a
    cp a
    rra
    rst $38
    ld c, a
    cp a
    rra
    rst $38
    ld sp, $12df
    db $fd
    ld [$08ff], sp
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
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
    rrca
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    jr @+$01

    rra
    rst $38
    ld c, $ff
    ld l, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    db $10
    rst $38
    add c
    cp $f8
    rst $38
    ld h, c
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    ld h, b
    sbc a
    rst $30
    rst $38
    ret nz

    ccf
    ld l, h
    sbc a
    rlca
    rst $38
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    add c
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    rst $10
    ccf
    ld c, c
    cp a
    rrca
    rst $38
    ld c, a
    cp a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    cp b
    rst $38
    sbc h
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
    rst $38
    rst $38
    rst $18
    rst $38
    call $c0ff
    rst $38
    ret nc

    rst $28
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    or b
    rst $38
    add hl, de
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    cp $ff
    ld hl, sp-$01
    ld a, [$83ff]
    rst $38
    inc bc
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ret z

    rst $38
    ret nc

    rst $28
    jp nz, $cafd

    db $fd
    jp z, $e8fd

    rst $38
    db $ed
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $1cff
    rst $38
    inc l
    rst $38
    ld a, l
    rst $38
    ld h, l
    rst $38
    push hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, l
    rst $38
    and a
    rst $38
    scf
    rst $38
    ccf
    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld b, [hl]
    cp a
    xor a
    ld a, a
    adc a
    ld a, a
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld d, $ff
    rla
    rst $38
    sub a
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld a, l
    rst $38
    add c
    ld a, a
    ld [$feff], sp
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    ld bc, $c0ff
    rst $38
    ld d, b
    rst $28
    add b
    rst $38
    sbc b
    rst $38
    sub d
    rst $38
    sbc b
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $28
    sub b
    rst $28
    adc b
    rst $30
    sub b
    rst $28
    sub h
    db $eb
    ld b, d
    db $fd
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    ei
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

Call_061_4d32:
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    xor e
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld c, $ff
    and h
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    adc c
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld h, $df
    and $1f
    call z, $cc3f
    ccf
    inc c
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    inc d
    rst $28
    sub d
    ld l, a
    ld a, [hl+]
    rst $30
    and b
    rst $38
    ld [c], a
    rst $38
    or $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $18
    rst $38
    adc [hl]
    rst $38
    add [hl]
    rst $38
    ld b, d
    rst $38
    rrca
    di
    adc a
    di
    dec bc
    rst $30
    ld e, $ff
    adc $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    cp e
    rst $38
    db $db
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    ld sp, $20ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld c, a
    cp a
    inc sp
    rst $38
    ldh a, [rIE]
    ld [bc], a
    rst $38
    ld [hl], h
    ei
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    rst $38
    pop bc
    rst $38
    ei
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    add b
    rst $38
    ldh [rIE], a
    pop af
    cp $0d
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld e, h
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    dec sp
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr c, @+$01

    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    jr nz, @+$01

    ldh a, [rIE]
    push af
    cp $f9
    cp $f3
    db $fc
    ldh a, [rIE]
    ei
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    scf
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    ld d, e
    rst $28
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    cp $ff
    cp $ff
    ldh [rIE], a
    db $f4
    ei
    db $fc
    di
    ld hl, sp-$09
    di
    rst $38
    ld a, [c]
    rst $38
    or $ff
    ld a, [c]
    rst $38
    db $e3
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, c
    xor $5f
    ldh [$6f], a
    ret nc

    cp h
    ret nz

    sbc h
    ldh [$e0], a
    db $fc
    ldh [$fc], a
    pop af
    db $fc
    or $f8
    db $fd
    ld a, [$fceb]
    ldh [$fc], a
    ldh a, [$fc]
    ld a, $c0
    ld a, [hl-]
    call nz, $c43c
    inc b
    db $fc
    inc c
    db $fc
    sbc $fc
    db $fc
    rst $38
    ld h, b
    rst $38
    inc [hl]
    db $eb
    daa
    ld hl, sp+$00
    cp $80
    cp $ce
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], a
    db $fc
    inc sp
    db $fc
    ld [hl-], a
    db $fc
    cp e
    db $fc
    add l
    cp $8c
    rst $38
    add [hl]
    db $fc
    add a
    db $fc
    cp e
    db $fc
    db $fc
    rst $38
    sbc a
    cp $9f
    cp $1f
    cp $1d
    cp $1f
    db $fc
    dec c
    cp $0d
    cp $9e
    db $fc
    adc [hl]
    db $fc
    db $fc
    cp $fc
    cp $f5
    cp $00
    rst $38
    cpl
    ret nc

    cpl
    pop de
    db $f4
    rrca
    ld hl, sp+$07
    nop
    rst $38
    scf
    rst $38
    add d
    rst $38
    add sp, -$09
    ld hl, sp-$01
    rst $38
    rst $38
    rrca
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
    rst $28
    rst $38
    jp $80ff


    rst $38
    jr nz, @+$01

    ld [$06ff], sp
    rst $38
    jr nz, @+$01

    ret nc

    ld a, a
    ld h, b
    rst $38
    ld l, d
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, l
    cp a
    ld bc, $98ff
    rst $38
    add b
    rst $38

jr_061_4f24:
    add b
    rst $38
    dec b
    ei
    ld b, e
    cp a
    and e
    ld e, a
    ld b, a
    rst $38
    adc b
    rst $38
    ld a, a
    rst $38
    rst $30
    ld a, a
    or a
    ld a, a
    adc a
    ldh a, [rTAC]
    ld hl, sp-$01
    nop
    ld a, a
    add b
    sub e
    db $fc
    sbc $fd
    xor e
    call c, $e01f
    dec de
    ldh [rTMA], a
    ld hl, sp+$16
    ld hl, sp+$29
    sub $ba
    ld b, h
    sub c
    ld l, [hl]
    rst $18
    jr nz, jr_061_4fd3

    ret nz

    jr nc, jr_061_4f24

    ld [hl], $cc
    pop af
    ld c, $a8
    ld b, h
    ld l, h
    sub e
    dec e
    db $e3
    ld c, $f1
    or h
    ld b, b
    add d
    ld h, h
    adc d
    ld h, l
    rst $30
    rrca
    scf
    rrca
    ld b, h
    inc bc
    db $76
    rrca
    cp [hl]
    ld bc, $9867
    add [hl]
    ld a, b
    and $18
    pop bc
    ld a, $09
    or $00
    rst $38
    cp $ff
    push hl
    cp $70
    rst $38
    daa
    ret c

    ld h, c
    ld e, $0a
    rst $18
    adc h
    rst $18
    ld de, $42dc
    add c
    ret nz

    add c
    ldh [$81], a
    call c, $dd81
    add b
    sbc a
    nop
    ld a, [hl]
    nop
    ld l, a
    nop
    ld l, e
    or $16
    rst $28
    sub h
    ld l, a
    xor [hl]
    ld a, a
    cp $ef
    rst $28
    rst $38
    or l
    ld c, b
    scf
    ret z

    pop hl
    nop
    jp hl


    nop
    ldh [rIF], a
    and c
    jp z, $609f

    adc $20
    cp $00
    sbc a
    ldh [$6f], a
    di
    adc $71
    ei
    ld b, b
    rst $08
    ld h, b
    cp $41
    ld l, l
    db $d3
    xor d
    ld d, a
    ld d, b
    ld hl, $209d
    xor a

jr_061_4fd3:
    db $10
    cp a
    rra
    adc h
    ld a, a
    ld [de], a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    pop af
    cp $3e
    rst $38
    ld e, a
    cp a
    rst $30
    rrca
    ret nz

    ccf
    inc c
    rst $38
    sub a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    call nz, $e0fb
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rrca
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
    rst $38
    rst $38
    inc sp
    db $fc
    rra
    ldh [$7e], a
    add c
    ld a, h
    add e
    rst $30
    adc a
    rst $28
    sbc a
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_061_5025:
    rst $38
    rst $30
    rst $38
    xor l
    rst $38
    add l
    rst $38
    adc a
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld sp, hl
    rst $38
    add hl, sp
    rst $38
    ld hl, sp+$3f
    adc c
    ccf
    pop hl
    rra
    ld h, [hl]
    ld sp, hl
    add hl, sp
    rst $00
    rst $28
    inc de
    cp $21
    pop hl
    nop
    inc de
    nop
    db $fc
    inc bc
    add a
    ld a, a
    ld e, a
    rra
    ld e, $ff
    inc e
    rst $38
    add c
    ld a, a
    ret


    ld b, $7b
    add h
    ld a, b
    add a
    jr c, jr_061_5025

    ret nc

    rst $38
    sbc [hl]
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    dec sp
    inc a
    call z, $da33
    add a
    jp c, $df87

    add [hl]
    db $d3
    inc b
    inc c
    ret nz

    add a
    ld [$944b], sp
    ei
    inc b
    pop af
    ld c, $73
    add b
    ld [hl], c
    add b
    ld sp, $88c0
    ld [hl], b
    ld d, l
    ld a, [hl+]
    ei
    inc b
    ld a, h
    add e
    ld a, b
    add a
    db $fd
    ld [bc], a
    cp $01
    call nz, $dc0b
    inc hl
    or h
    ld c, e
    add hl, sp
    ld b, [hl]
    ld sp, hl
    ld b, $f4
    dec bc
    ld h, [hl]
    sbc c
    and $19
    ld h, $db
    ei
    rlca
    cp [hl]
    rlca
    or a
    rrca
    ccf
    sub a
    ld [hl], a
    sbc a
    ld [hl], e
    sbc a
    ld [hl], e
    sbc a
    ld a, c
    adc [hl]
    ld d, b
    rst $28
    ld l, h
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], d
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    pop hl
    rst $38
    ld l, b
    rst $30
    ret z

    scf
    db $db
    daa
    ld e, a
    and e
    ld d, l
    xor e
    ld [hl], b
    adc a
    dec de
    add h
    sbc c
    rst $20
    sbc d
    ld b, l
    ld h, h
    sbc a
    ld l, b
    sbc a
    inc b
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add d
    ld a, l
    ld b, b
    rst $38
    pop af
    cp $f3
    db $fc
    ld [hl], e
    db $fc
    jr c, @+$01

    add h
    ei
    ld [de], a
    db $ed
    ret nz

    rst $38
    ld bc, $05ff
    rst $38
    inc [hl]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc bc
    rst $38
    cp a
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $18
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    cp a
    jp Jump_061_613e


    cp $e3
    db $fc
    rst $00
    ld hl, sp-$7d
    db $fc
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
    ld c, a
    rst $38
    ld a, a
    rst $38
    ldh [$1f], a
    ld [bc], a
    db $fd
    push hl
    ei
    rst $20
    ld sp, hl
    xor $f1
    sbc [hl]
    pop hl
    inc [hl]
    rlc b
    rst $38
    rst $28
    ldh a, [$dd]
    ldh [$67], a
    ld hl, sp-$59
    ld a, b
    cp l
    ld a, [hl]
    ld a, a
    rst $38
    and b
    rst $38
    rst $20
    sbc h
    ld hl, sp+$07
    db $f4
    inc bc
    ldh a, [rIF]
    inc d
    inc bc
    db $e4
    inc bc
    ld hl, $f3ff
    db $fc
    adc c
    ldh a, [rNR24]
    rst $20
    dec bc
    rst $38
    ld a, [bc]
    rst $30
    rla
    rst $38
    ld c, d
    cp a
    and a
    rra
    ei
    rlca
    db $fc
    inc bc
    rlca
    nop
    ld [hl], b
    rrca
    adc b
    ld a, a
    cp d
    rst $38
    ld e, b
    cp a
    dec sp
    nop
    ccf
    nop
    sub [hl]
    ld hl, $639c
    ld c, b
    scf
    inc b
    ccf
    reti


    ld h, $9b
    ld h, h
    or e
    ld c, h
    rst $28
    nop
    ld d, h
    xor e
    ld d, e
    rst $28
    cp b
    ld b, a
    sbc d
    ld b, l

jr_061_5196:
    cp [hl]
    ld b, c
    call c, $de63
    ld h, c
    add hl, sp
    rst $20
    rst $18
    ccf
    rst $08
    ccf
    db $ed
    inc de
    rst $38
    nop
    ld a, l
    add b
    cp c
    ld b, b
    ld b, [hl]
    ld sp, hl
    dec sp
    rst $38
    dec de
    rst $38
    ld e, a
    and b
    ld e, a
    and b
    xor [hl]
    ret nz

    ccf
    ret nz

    ld e, [hl]
    add c
    ld h, b
    sbc a
    jr c, @+$01

    di
    rrca
    sub l
    ld l, e
    sbc l
    ld h, e
    daa
    ei
    push hl
    rst $38
    jp z, $e3f7

    rst $18
    rra
    rst $20
    db $fc
    inc bc
    inc h
    add e
    ld a, [$cd01]
    jr c, jr_061_5196

    ld c, h
    ld e, e
    add a
    ei
    rlca
    add hl, de
    rst $38
    ld e, d
    db $fd
    ld e, a
    ldh [$7e], a
    pop af
    ld d, b
    rst $38
    ret nz

    ccf
    jp Jump_000_033f


    rst $38
    rst $38
    rst $38
    ld a, $ff
    add d
    rst $38
    rst $08
    ldh a, [$91]
    rst $28
    inc c
    rst $38
    sub c
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    rst $38
    rst $38
    add $ff
    rlca
    cp $15
    cp $06
    ld sp, hl
    ld a, h
    db $e3
    jp c, $b6e7

    rst $08
    ld h, l
    sbc a
    ld b, a
    cp a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    di
    rrca
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
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    inc de
    rst $38
    and b
    rst $18
    ld l, e
    sub h
    db $eb
    sub h
    inc l
    di
    ld hl, sp+$07
    di
    inc c
    dec b
    ld hl, sp-$01
    nop
    ldh [$1f], a
    cp $0f
    rst $38
    rlca
    ld [c], a
    dec e
    rst $18
    inc hl
    ld a, a
    add e
    ld a, [$8707]
    ld a, b
    inc l
    di
    db $db
    db $e4
    ld b, [hl]
    ld sp, hl
    ld h, b
    rst $38
    and $f9
    rst $28
    ldh a, [$3d]
    ret nz

    db $e3
    inc e
    rst $20
    ld e, $fc
    rst $38
    db $ec
    rst $38
    ld d, $ff
    ld b, d
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ld [$431d], a
    cp h
    ld [hl], l
    adc [hl]
    ld sp, hl
    ld b, $1c
    db $e3
    ld l, b
    rst $30
    di
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$fbfd]
    db $fc
    rst $30
    db $fc
    di
    db $fc
    ld sp, hl
    cp $00
    rst $38
    db $fc
    dec bc
    xor $19
    db $ed
    ld a, [de]
    ld h, h
    sbc e
    ld h, h
    sbc e
    db $fc
    inc bc
    add d
    ld a, a
    push af
    ld [bc], a
    cp [hl]
    nop
    add hl, sp
    inc b
    ld a, e
    inc b
    ld [$cd17], a
    cp $fd
    rst $38
    cp h
    ld a, a
    ld c, l
    ld a, $35
    ld c, $f5
    ld c, $0f
    db $fc
    dec de
    db $fc
    ld a, l
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld [hl], $ff
    sbc $3f
    sbc h
    ld a, a
    adc [hl]
    ld a, l
    inc b
    rst $38
    db $e4
    ccf
    cp $1f
    cp $1f
    ldh a, [rIF]
    call Call_061_74f2
    ei
    ld sp, hl
    rlca
    ld h, c
    sbc a
    ccf
    jp $8778


    rra
    ldh [$e6], a
    ld sp, hl
    pop hl
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    ld hl, sp-$01
    ld [hl], c

jr_061_52f7:
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $38
    ld [$11f7], sp
    rst $38
    ld e, l
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
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
    ret nz

    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    add $ff
    call c, $ef23
    jr nc, jr_061_52f7

    rst $38
    ld l, a
    sbc a
    cpl
    rst $18
    ld a, a
    rst $28
    rst $30
    rrca
    ld a, c

jr_061_5339:
    add [hl]
    pop bc
    ld a, $bf
    ret z

    adc e
    db $fc
    ld d, e
    xor [hl]
    ld a, [hl]
    add a
    ld a, a
    add a
    ret c

    daa
    sbc $21
    ld hl, $d8df
    rst $38
    cp h
    ld b, e
    or d
    pop bc
    cp a
    ld [hl], b
    and [hl]
    ld a, c
    rst $00
    jr c, jr_061_5339

    rra
    pop af
    ld c, $8f
    ld [hl], b
    inc b
    ei
    dec b
    ld a, [$ff40]
    ld bc, $23ff
    rst $18
    jr nz, @-$1f

    ld h, $d9
    add a
    ld a, b
    add a
    ld a, b
    rra
    ld hl, sp-$13
    cp $d4
    rst $28
    cp $81
    dec e
    jp nz, $c27d

    ld hl, sp+$47
    and e
    ld e, a
    ld a, [hl]
    rst $38
    ld [de], a
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, b
    cp a
    ld d, b
    cp a
    ld d, b
    cp a
    jr c, @+$01

    db $fd
    ccf
    call c, $c033
    ccf
    rst $38
    nop
    or $09
    ld [c], a
    rra
    ld h, b
    sbc a
    db $e4
    sbc a
    inc e
    rst $38
    ret nz

    ccf
    ld a, [c]
    rrca
    rst $30
    rrca
    adc b
    ld a, a
    ld a, [$d07f]
    ccf
    jp nz, $f93f

    rlca
    ret nc

    cpl
    ld hl, $3cfe
    rst $38
    ccf
    rst $38
    call nc, Call_061_5f3f
    cp a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    sbc a
    add hl, sp
    rst $18
    ld d, b
    cp a
    add b
    rst $38
    db $ec
    rst $38
    dec b
    rst $38
    pop hl
    rra
    db $eb
    rla
    ld h, b
    sbc a
    rlca
    ld hl, sp-$03
    rst $38
    jp Jump_000_00ff


    rst $38
    adc h
    ld [hl], e
    ld b, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    adc b
    rst $30
    add e
    rst $38
    ld c, $ff
    ld c, l
    cp a
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ccf
    rst $38
    db $fd
    cp $f0
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
    add sp, -$01
    ldh a, [rIE]
    add b
    rst $38
    and b
    rst $18
    add b
    rst $38
    nop
    rst $38
    ld l, a
    ldh a, [$cf]
    rst $38
    cp $ff
    cp $ff
    rst $30
    rst $38
    ld a, [c]
    rst $38
    ldh a, [$7f]
    sub c
    ld a, [hl]
    ld sp, hl
    cp $fd
    cp $f1
    rst $38
    db $10
    rst $28
    db $fd
    ld c, $cd
    ld a, $e4
    rra
    ret nc

    cpl
    adc $3f
    ld b, $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld c, a
    rst $38
    db $e3
    rst $38
    ld a, h
    add e
    ld sp, hl
    ld b, $f9
    rlca
    pop hl
    rra
    add hl, sp
    rst $00
    ld a, a
    rst $38
    jp $073f


    rst $38
    db $f4
    dec bc
    add sp, $1f
    ld d, $ff
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    call c, $9a3f
    ld a, l
    ld e, b
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    inc a
    rst $38
    cp l
    rst $38
    or h
    rst $38
    ld bc, $66ff
    rst $38
    ld b, d
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    pop bc
    rst $38
    rst $00
    rst $38
    rst $08
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    jp nz, $c3ff

    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    ld a, $ff
    ld sp, hl
    rst $38
    cp $ff
    db $fc
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    rst $38

jr_061_54db:
    rst $38
    call nc, $38ff
    rst $38
    rst $08
    ldh a, [rVBK]
    ldh a, [$ae]
    pop af
    call z, $c3f3
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $e3
    rst $38
    ld de, $78ff
    rst $38
    or c
    cp $c3
    db $fc
    inc bc
    db $fc
    jr nz, jr_061_54db

    ld bc, $00ff
    rst $38
    inc b
    ei
    ld bc, $c6ff
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [$03f7], sp
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $28
    pop bc
    rst $38
    ld b, a
    ld sp, hl
    ld a, $f9
    ld a, $f9
    ld e, d
    db $fd
    ld a, [bc]
    db $fd
    ld c, h
    cp e
    adc $39
    inc h
    ei
    add hl, bc
    rst $30
    db $fc
    inc bc
    adc h
    ld [hl], e
    xor a
    ld [hl], c
    dec c
    di
    inc c
    di
    adc l
    ld [hl], d
    add hl, bc
    or $cc
    di
    inc b
    ei
    inc c
    di
    add hl, bc
    rst $30
    inc hl
    rst $38
    db $e3
    rra
    sbc a
    rst $38
    ld c, l
    cp a
    sub h
    db $eb
    add [hl]
    ld sp, hl
    ld b, [hl]
    cp c
    adc [hl]
    pop af
    ld c, $f1
    dec c
    ld a, [c]
    db $76
    ld sp, hl
    push af
    ei
    db $fd
    ei
    sbc $f9
    ld bc, $07fe
    cp $02
    rst $38
    ld [bc], a
    rst $38
    sub l
    rst $38
    rst $38
    rst $38
    or $ff
    ldh [rIE], a
    ldh [rIE], a
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    db $f4
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
    jp $efff


    rst $38
    set 7, a
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
    sbc $ff
    ret nc

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
    rst $30
    rst $38
    and [hl]
    rst $18
    add h
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ld [hl], e
    rst $38
    or c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    dec d
    rst $38
    ld [bc], a
    db $fd
    add e
    db $fd
    add hl, bc
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld c, $ff
    ld a, a
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    sbc $ff
    ld sp, $e2fe
    db $fd
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    pop af
    cp $c2
    db $fd
    add d
    db $fd
    ld b, h
    rst $38
    call nz, Call_000_15ff
    rst $38
    inc d
    rst $38
    ld d, $ff
    ld c, $ff
    dec bc
    rst $38
    ld c, e
    cp a
    adc l
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    rst $38
    ld a, a
    sbc a
    ld a, a
    rst $20
    rra
    or $1f
    add a
    ld a, a
    inc bc
    rst $38
    ld c, d
    rst $38
    ld b, e
    rst $38
    ld bc, $01ff
    rst $38
    ld [hl], c
    xor a
    dec c
    rst $30
    ld l, e
    rst $10
    daa
    db $db
    ld h, [hl]
    sbc e
    cp h
    ld c, e
    cp b
    ld c, a
    dec a
    rst $08
    pop af
    rst $08
    add l
    rst $38
    ld d, a
    rst $38
    ld a, c
    rst $38
    add hl, hl
    rst $38
    xor l
    rst $38
    and e
    rst $38
    adc l
    ei
    add hl, de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, d
    cp a
    and d
    rst $38
    jp nz, $e3ff

    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    jp $ebff


    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
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
    rst $18
    rst $38
    xor $ff
    cp $ff
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    set 7, a
    set 7, a
    di
    rst $38
    ei
    rst $38
    ld a, [hl-]
    rst $38
    ld d, d
    rst $38
    jp nc, $92ff

    rst $38
    jp c, $ccff

    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    sbc $ff
    ld b, $ff
    rlca
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    ld b, e
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
    sub c
    rst $28
    nop
    rst $38
    ld bc, $02fe
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    inc b
    ei
    ld l, h
    rst $38
    ld h, h
    rst $38
    or c
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    or $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $ed
    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld l, l
    rst $38
    ld e, l
    rst $38
    db $dd
    rst $38
    ld d, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
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
    cp $ff
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    cp e
    rst $38
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
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $20
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
    rst $30
    rst $38
    push af
    rst $38
    push af
    rst $38
    and $ff
    cp $ff
    db $76
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    cp l
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
    ld a, b
    rst $38
    nop
    rst $38
    push de
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $02ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$f6ff]
    rst $38
    or $ff
    db $f4
    rst $38
    db $f4
    rst $38
    db $76
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, [$ffff]
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
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
    rst $28
    rst $38
    db $eb
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld sp, $20ff
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop bc
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
    ld b, b
    rst $38
    ld c, b
    rst $30
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
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
    di
    rst $38
    cp $ff
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
    cp $ff
    ld c, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
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
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    cp h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld a, [$ffff]
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
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld [hl], d
    rst $38
    ld d, d
    rst $38
    jr c, @+$01

    sbc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    cpl
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
    rst $38
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
    pop hl
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    set 7, a
    pop de
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    sub c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add a
    rst $38
    jp $c6ff


    rst $38
    rst $00
    rst $38
    jp $c7ff


    rst $38
    db $e3
    rst $38
    jp $e3ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld a, $ff
    ld a, $ff
    dec a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ld hl, $21ff
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
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
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    set 7, a
    rst $08
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    or a
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rla
    rst $38
    scf
    rst $38
    or a
    rst $38
    or a
    rst $38
    or e
    rst $38
    di
    rst $38
    adc a
    rst $38
    jp $f3ff


    rst $38
    and e
    rst $38
    and e
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    and l
    rst $38
    and [hl]
    rst $38
    sub e
    rst $38
    ld bc, $21ff
    rst $38
    ld de, $45ff
    rst $38
    db $e3
    rst $38
    ld h, c
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    and l
    rst $38
    ld h, l
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    rst $00
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
    jr jr_061_5b13

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_061_5b23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_061_5b33

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_061_5b43

    ld [hl-], a

jr_061_5b13:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_061_5b53

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_061_5b23:
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

jr_061_5b33:
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

jr_061_5b43:
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

jr_061_5b53:
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
    add hl, bc
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
    jr jr_061_5c14

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_061_5c24

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
    jr nc, @+$33

    ld [hl-], a

jr_061_5c14:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld bc, $0101

jr_061_5c24:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, HeaderLogo
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101

jr_061_5cea:
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0400
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0401
    inc c
    inc c
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
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
    ld [$0808], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
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
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_061_5cea

    ld a, h
    add c
    ld a, [hl]
    ld bc, $61fe
    sbc [hl]
    ldh [$9f], a
    cp [hl]
    pop bc
    ld hl, sp-$19
    ld h, l
    ld a, [$fff0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $10
    rst $28
    xor c
    rst $30
    add sp, -$09
    db $ec
    di
    adc a
    di
    add h
    ei
    push bc
    ei
    add h
    ei
    adc $f1
    xor $f1
    and $f9
    ld [c], a
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    sbc b
    ld a, a
    db $db
    ccf
    rra
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    xor $ff
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    jr c, @+$01

    jr @+$01

    ld [$04ff], sp
    rst $38
    ld b, $ff

jr_061_5dcc:
    rrca
    rst $38
    dec bc
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
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    dec l
    rst $38
    dec h
    rst $38
    inc hl
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    ld h, e
    rst $38
    ld a, e
    rst $38
    add sp, -$01
    db $db
    db $ec
    dec a
    add $38
    rst $00
    ccf
    ret nz

    ld a, a
    add b
    rst $00
    jr c, jr_061_5dcc

    ld a, b
    ld c, [hl]
    pop af
    sbc e
    rst $20
    rlca
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    ccf
    rst $38
    rst $08
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    rst $30
    ld hl, sp-$19
    ld hl, sp-$37
    rst $30
    rla
    rst $28
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ret c

    ld [hl+], a
    pop de
    ld [hl+], a
    jp z, $ce30

    ld sp, $39c4
    db $e4
    add hl, de
    and $19
    or $19
    di
    inc e
    di
    inc e
    jp c, $3b3f

    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    ld a, [c]
    ld sp, hl
    ei
    ldh a, [$fe]
    pop af
    db $fd
    ld a, [c]
    ld sp, hl
    ld a, [c]
    ld [hl], c
    ld a, [c]
    ld a, e
    ldh a, [$7a]
    pop af
    ei
    push af
    cp $ff
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    or a
    ld a, a
    ld b, c
    cp a
    ld hl, $85df
    ei
    jp nz, $f0fd

    rst $38
    ld a, [c]
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld h, c
    cp $3d
    ld [c], a
    dec a
    ld [c], a
    dec l
    ld a, [c]
    inc c
    di
    inc l
    di
    inc c
    di
    di
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    nop
    rst $38
    ld bc, $55ff
    ei
    ld a, [hl]
    ld sp, hl
    dec sp
    db $fc
    ccf
    db $fc
    adc l
    cp $cc
    rst $38
    call z, $e8ff
    rst $38
    pop hl
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    add $ff
    add $ff
    call z, $e0ff
    rst $38
    ld [c], a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $28
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    and e
    rst $38
    add e
    rst $38
    sub e
    rst $38
    add e
    rst $38
    jp $e3ff


    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add l
    ld a, e
    ld bc, $7eff
    add a
    ei
    rlca
    rst $38
    rlca
    rst $28
    rra
    or d
    ld a, a
    ld a, h
    rst $38
    ret nz

    rst $38
    add c
    cp $01
    cp $87

Call_061_5f3f:
    ld hl, sp-$62
    pop hl
    sbc c
    rst $20
    adc [hl]
    rst $38
    ld e, [hl]
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    db $fd
    ld a, e
    db $fc
    di
    db $fc
    rst $20
    ld hl, sp-$11
    ldh a, [$bc]
    jp $8778


    ld [hl], b
    adc a
    ld h, l
    sbc a
    push bc
    ccf
    jp $f73f


    rrca
    cp h
    ld b, a
    ld hl, sp+$07

jr_061_5f66:
    ret c

    daa
    pop af
    ld c, $e7
    jr @-$17

    jr jr_061_5f66

    jr @+$1a

    nop
    jr nz, jr_061_5f74

jr_061_5f74:
    db $f4
    nop
    ldh a, [rP1]
    call $fcf0
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, l
    cp $f2
    ld a, h
    ld [hl], d
    db $fc
    xor $f8
    and $f8
    ld [hl], h
    ld hl, sp+$54
    ld hl, sp-$04
    ret c

    db $f4
    cp b
    db $f4
    ld hl, sp-$0c
    ret z

    db $ed
    ld d, d
    pop hl
    sbc $e0
    rst $18
    ldh a, [rIE]
    rst $28
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$e7]
    ld hl, sp-$33
    ld a, [c]
    reti


    and $fb
    call nz, $e9d6
    sub $e9
    db $f4
    set 7, c
    add $7a
    push bc
    ld b, b
    rst $38
    ldh a, [rIE]
    jp hl


    rst $30
    ld h, b
    rst $38
    ld [hl], h
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld [$3cf7], sp
    jp $e013


    rla
    ldh [rNR23], a
    rst $20
    inc c
    di
    adc h
    di
    call nz, $fdff
    rst $38
    push af
    rst $38
    call z, $fcf3
    db $e3
    cp l
    ld h, d
    db $ec
    inc sp
    call $8532
    ld a, d
    dec b
    ld a, [$f70a]
    ld b, b
    rst $38
    push hl
    ld a, [$f8c7]
    rst $00
    ld hl, sp+$03
    db $fc
    ld bc, $13ff

jr_061_5ff7:
    rst $38
    ld bc, $24ff
    rst $38
    db $10
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld bc, $1bff
    rst $38
    rst $38
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

jr_061_6017:
    rst $38

jr_061_6018:
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

Jump_061_6025:
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    di
    db $fc
    adc $f1
    sbc l
    db $e3
    dec a
    jp $c739


jr_061_6036:
    ld [hl], e
    adc a
    ld l, [hl]
    sbc a
    call $9d3e
    ld a, [hl]
    jr c, @+$01

    rst $28
    ldh a, [$8b]
    db $f4
    ld l, d
    sub l
    jr nc, jr_061_6017

    ld h, b
    sbc a
    ldh [$1f], a
    rst $00
    ccf
    add c
    ld a, a
    add e
    ld a, a
    ld c, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    dec hl
    db $10
    ld h, a
    db $10
    rst $00
    jr nc, jr_061_6018

    ld b, b
    ld d, c
    ldh [$5b], a
    ldh [$34], a
    pop bc
    inc a
    pop bc
    ld c, [hl]
    jr nc, jr_061_5ff7

    ld h, b
    jr nz, jr_061_6036

    ld a, b
    add b
    ld d, c
    and b
    sub h
    ld h, c
    ld [$fc15], a
    inc bc
    add e
    ccf
    inc hl
    rra
    inc sp
    rrca
    inc bc
    rra
    ld [de], a
    rrca
    inc de
    rrca
    ccf
    rlca

jr_061_608e:
    ld d, $0f
    db $ed
    add b
    ld hl, $07c0

jr_061_6095:
    ret nz

    ld [hl], a
    add b
    add a
    nop
    ld a, [hl]
    nop
    inc c
    nop
    ld c, $00
    db $d3
    inc l
    rst $28
    jr @-$0f

    jr jr_061_608e

    jr @-$13

    inc e
    ld a, a
    sbc b
    ccf
    ret c

    ld l, l
    sbc d
    ld l, l
    sbc d
    pop hl
    ld e, $61
    sbc [hl]
    ld b, a
    cp b
    ld bc, $00fe
    rst $38
    add h
    rst $38
    rla
    db $ec
    ld e, e
    db $e4
    ld l, a
    add b
    and c
    nop
    sub d
    jr nz, jr_061_60da

    jr nz, jr_061_6104

    nop
    jr jr_061_60ee

    sub b
    jr nz, jr_061_6095

    ccf
    cp $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    dec c
    rst $38

jr_061_60da:
    dec e
    db $e3
    ld a, d
    add c
    ld sp, hl
    nop
    ld b, e
    cp h
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    nop
    rst $38
    add e
    rst $38
    adc c
    rst $38

jr_061_60ee:
    ld b, e
    cp a
    nop
    ld a, a
    ld a, b
    rst $38
    or e
    rst $38
    dec sp
    rst $30
    sbc e
    rst $20
    db $db
    rlca
    cp $03
    ld [de], a
    rst $28
    scf
    rl a
    db $eb

jr_061_6104:
    inc e
    rst $20
    ld a, l
    rst $20
    jp hl


    rst $30
    jp hl


    rst $30
    pop bc
    rst $38
    ret z

    rst $30
    adc $f7
    db $d3
    db $ec
    sub a
    add sp, -$69
    add sp, -$49
    ret z

    add a
    ld hl, sp-$7c
    ei
    add d
    rst $38
    ret z

    rst $38
    db $f4
    ei
    jp $b9fc


    add $00
    rst $38
    ld h, b
    rst $38
    ld l, a
    rst $38
    ld a, [hl]
    rst $38
    ret z

    rst $38
    and b
    rst $18
    ld b, c
    cp [hl]
    add a
    ld a, b
    ld b, $f9
    dec c
    di
    adc d
    ld [hl], a

Jump_061_613e:
    ld e, l
    xor a
    ld l, $df
    ld e, l
    cp [hl]
    cpl
    ld hl, sp+$4f
    ldh a, [$1f]
    ldh [$df], a
    ldh [$f6], a
    ld sp, hl
    ld sp, hl
    rst $38
    db $ed
    rst $38
    cp l
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    and b
    rst $38
    rst $18
    ldh [$6f], a
    sub b
    rst $38
    nop
    add b
    ret nz

    add b
    ret nz

    ld b, l
    add b
    call nz, Call_061_4800
    add l
    ret z

    dec b
    nop
    dec c
    ld [bc], a
    dec c
    rst $08
    db $10
    sbc h
    nop
    db $f4
    ld [$d821], sp
    rla
    add sp, $7d
    add d
    ld [hl], d
    adc h
    ret nc

    inc l
    add d
    add h
    ld [c], a
    rst $20
    add $e1

jr_061_6186:
    call nz, $f0f0
    ldh a, [$b3]
    ret nz

    ld [bc], a
    ret nz

    add d
    add b
    ld [hl], d
    dec c
    add sp, $0f
    ld h, h
    rrca
    ld a, [$7407]
    ld [bc], a
    inc a
    nop
    ld c, $00
    inc b
    nop
    jp $fb3c


    inc h
    rst $18
    jr nz, jr_061_6186

    jr nz, @-$1f

    jr nz, @-$5f

    ld h, b
    adc a
    ld [hl], b
    ld e, a
    ldh [$1f], a
    ldh [$63], a
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld [hl], l
    rst $38
    ld h, b
    rst $38
    sbc h
    ld h, e
    dec sp
    add a
    ld a, [hl]
    add e
    add hl, hl
    add $2a
    push bc
    ld e, e
    db $e4
    ld h, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, h
    ei
    rst $38
    ld h, b
    cp $60
    cp $61
    ld a, [hl]
    pop hl
    rst $38
    ldh [rBCPD], a
    ldh a, [$78]
    ldh a, [$a4]
    ld a, b
    db $d3
    inc a
    ld a, c
    ld d, $dc
    inc sp
    adc $31

jr_061_61e8:
    rrca
    ldh a, [$2f]
    ldh a, [$67]
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $fd
    cp $fd
    cp $7e
    rst $38
    cp $ff
    call c, Call_061_7cff

jr_061_61fd:
    rst $38
    ld sp, hl
    cp $be
    rst $08
    ld a, l
    adc [hl]
    db $fd
    ld c, $75
    adc [hl]
    ld b, l
    cp [hl]
    ret


    or [hl]
    jp z, $8ab7

    rst $30
    daa
    rst $18
    inc sp
    rst $08
    cp a
    ld b, a
    add a
    ld a, a
    ld b, b
    rst $38
    ld [hl], b
    adc a
    jr nz, jr_061_61fd

    dec b
    rst $38
    ld c, e
    rst $30
    daa
    ld hl, sp-$3d
    inc a
    pop hl
    ld e, $f0
    rrca
    ld a, $c1
    inc bc
    db $fc
    db $10
    rst $28
    ld sp, hl
    rlca
    ld [hl], d
    adc l

jr_061_6234:
    ld bc, $0cff
    di
    sbc [hl]
    pop hl
    sbc c
    rst $20
    di
    adc a
    ld l, [hl]
    sbc a
    rst $20
    inc e
    rst $00
    jr c, jr_061_6234

    db $10
    rst $18
    jr nz, jr_061_61e8

    ld h, b
    inc sp
    call z, $cbb4
    ld l, c
    sub [hl]
    cp a
    nop
    adc [hl]
    ld bc, $039c
    ld [c], a
    dec e
    ld d, [hl]
    cp c
    rst $28
    db $10
    sbc $21
    ei
    dec b
    ld l, d
    db $fd
    ld [hl], b
    db $fd
    or b
    ld a, h
    and h
    ld a, b
    nop
    db $fc
    ld [hl], b
    db $fc
    or c
    ld a, h
    ld a, $01
    add hl, bc
    inc bc
    inc a
    inc bc
    ld h, $19
    ld h, d
    dec e
    inc [hl]
    rrca
    jr c, jr_061_6283

    ld [hl], l
    dec bc
    ld [hl], b
    dec bc
    ret z

    inc sp
    ld sp, hl

jr_061_6283:
    ld [bc], a
    cp c
    ld b, d
    ld e, d
    and c
    or c
    ld b, d
    db $fd
    ld [bc], a
    rra
    ldh [$b6], a
    ld b, c
    sbc d
    ld b, l
    ld a, [hl]
    ld bc, $1067
    ld a, $01
    sbc l
    ld [bc], a
    dec d
    jp z, $b04f

    ccf
    ret nz

    rst $28
    rla
    rst $30
    rrca
    rst $30
    rrca
    ld a, [c]
    rrca
    ld a, [$f407]
    rrca
    db $f4
    rrca
    or $0d
    pop af
    ld c, $65
    sbc $9a
    rst $38
    jp c, $c3fd

    db $fc
    db $d3
    db $fc
    inc bc
    db $fc
    cp a
    nop
    add hl, sp
    add $78
    add a
    cp b
    rlca
    jp hl


    rla
    ld de, $f0ef
    rst $28
    inc d
    db $eb
    inc d
    ei
    db $eb
    inc e
    ld [hl], $08
    cp $00
    or e
    ld b, b
    di
    nop
    ret nc

    jr nz, @+$6f

    db $10
    ld l, l
    ld de, $116f
    adc [hl]
    ld [hl], c
    ld d, a
    add sp, $16
    jp hl


    sbc l
    ld h, b
    cp c
    ld b, h
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $24
    rst $18
    inc a
    rst $38
    ld [hl], c
    cp [hl]
    pop hl
    ld a, $f2
    ccf
    jp z, $fe3f

    rra
    cp $1f
    cp $1f
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    inc e
    rst $38
    ld e, $f9
    rra
    ldh a, [rP1]
    rst $38
    daa
    sbc $07
    db $fc
    rra
    db $fc
    ld l, e
    sbc h
    scf
    ret z

    ld a, a
    add b
    cp a
    ret nz

    sbc [hl]
    ld h, c
    ld c, [hl]
    ld sp, $1be5
    di
    rrca
    ld a, [hl]
    add a
    ld [hl], a
    adc a

jr_061_632e:
    rst $08
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    cp b
    ld a, a
    ld a, b
    rst $38
    di
    rst $38
    di
    rst $38
    ld h, $df
    ld l, a
    sbc [hl]
    ld a, h
    sbc [hl]
    sbc $3c
    cp d
    ld a, h
    ld [hl], l
    ld hl, sp-$09
    ld hl, sp-$04
    di
    ld b, b
    rst $38
    rst $30
    add b
    dec sp
    call nz, $e01f
    ld a, $e1
    adc d
    ld [hl], a
    pop bc
    ld a, a
    rra
    db $e3
    ld a, d
    add a
    db $ec
    di
    ld [hl], b
    ld hl, sp-$71
    ld a, b
    ld l, e
    inc e
    ld e, l
    nop
    ldh a, [rP1]
    jr nc, jr_061_632e

    adc d
    ld [hl], b
    ld l, d
    ldh a, [$7d]
    cp $93
    ld a, a
    rlca
    rra
    db $10
    rrca
    dec bc
    nop
    nop
    nop
    ld bc, $6e00
    sub c
    dec a
    ret nz

    ld e, h
    and b
    call c, $9920
    ld b, $fd
    ld [bc], a
    ld [hl], d
    db $fd
    push af
    ld a, [hl]
    ld hl, sp+$07
    inc c
    inc bc
    rrca
    ld bc, $0305
    ld b, a
    inc bc
    ld a, [c]
    dec b
    ld a, a
    add [hl]
    dec c
    rst $38
    inc c
    di
    xor h
    di
    jp nc, $9aff

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ret nz

    ccf
    ld a, [c]
    rrca
    or $0f
    add $3f
    xor $1f
    ld [hl], $cf
    nop
    rst $38
    add b
    ld a, a
    adc c
    ld [hl], a
    db $fd
    inc bc
    inc [hl]
    ld b, e
    or l
    ld b, d
    or h
    ld b, e
    sbc h
    ld h, e
    ld e, [hl]
    and e
    ld h, $93
    inc a
    sub e
    xor a
    db $10
    ld l, a
    sub b
    db $eb
    db $10
    cp e
    nop
    cp h
    inc bc
    ld hl, sp+$07
    ld a, [$d607]
    cpl
    xor a
    ld a, a
    rst $18
    rst $38
    rst $08
    rst $38
    add $ff
    and $ff
    add $ff
    jp nc, Jump_061_7bef

    rst $00
    ld a, e
    rst $00
    ei
    ld b, a
    ld hl, sp+$47
    ld a, d
    push bc
    di
    call z, $ec53

jr_061_63fa:
    sub d
    ld l, l
    ldh [$7f], a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    jp nz, $c23f

    ccf
    pop bc
    ld a, $c3
    inc a
    ld b, e
    cp h
    ld a, [hl-]
    push bc
    add c
    ld a, a
    inc [hl]
    rst $08
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    ld bc, $03fd
    db $fc
    inc bc
    ld hl, sp+$07
    ld [$70f7], sp
    rst $38
    ld a, $ff
    sbc $ff
    sub a
    rst $38
    jp $f93f


    rlca
    ld l, h
    add e
    sub e
    ldh [$cf], a
    ldh a, [$f7]
    ld hl, sp-$03
    cp $8e
    rst $38
    ld h, l
    sbc e
    rst $38
    add b
    add b
    nop
    rst $30
    ld [$1867], sp
    ld b, a
    jr c, @+$11

    ld [hl], b
    add l
    ld a, d
    ld e, $ff
    ccf
    rst $38
    ld a, $ff
    rst $00
    jr c, jr_061_63fa

    ld a, b
    ccf
    ldh a, [$6f]
    ldh a, [$79]
    ret nz

    pop de
    ldh [$79], a
    ldh a, [$7d]
    ld hl, sp+$78
    add b
    sub c

jr_061_6463:
    nop
    ld a, d
    nop
    db $fc
    nop
    ld a, a
    nop
    cp $01
    ld [hl], d
    rlca
    ld a, $03
    jr nz, jr_061_6491

    xor $11
    pop af
    ld hl, sp-$09
    ld hl, sp+$4e
    pop af
    ret nz

    ld [hl], c
    ldh a, [rSTAT]
    sbc [hl]
    ld b, c
    add sp, $17
    jr nz, jr_061_6463

    db $10
    rrca
    ld de, $f90e
    ld b, $bd
    ld b, d
    and $19
    cp e
    ld b, h
    xor [hl]

jr_061_6491:
    ld de, $11ae
    ld a, $81
    inc l
    add c
    call $cf81
    add c
    xor a
    ld b, c
    ld a, a
    add c
    sbc [hl]
    pop hl
    jr c, @+$01

    ld [bc], a
    rst $38
    inc b
    ei
    ret nz

    ccf
    or d
    ld a, a
    db $fc
    ld [hl], a
    ld l, h
    rst $30
    ld l, h
    rst $30
    call nc, $c6ef
    rst $38
    ld c, a
    cp a
    ld b, b
    cp a
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$79
    cp h
    jp $d3af


    ld a, [$dec5]
    pop hl
    ld b, h
    ei
    inc b
    rst $38

jr_061_64cc:
    ret nc

    ccf
    ld d, b
    ccf
    jp nc, $e03d

    rra
    ldh [$1f], a
    jp nc, $b02f

jr_061_64d9:
    ld l, a
    or b
    rst $28
    add c
    cp $4a
    cp l
    ld h, b
    sbc a
    dec l
    db $d3
    dec d
    db $eb
    rst $00
    ccf
    rst $00
    ccf
    nop
    rst $38
    ld h, $df
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    scf
    rst $08
    daa
    rst $18
    jr nz, jr_061_64d9

    sub b
    rst $38
    ld [hl], $ff
    ld [hl], a
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp d
    ld a, l
    dec de
    db $fc
    ld sp, $38ce
    rst $00
    dec sp
    call nz, $c738
    ld a, [hl-]
    push bc
    ld l, $d1
    db $db
    inc b
    ld c, a
    add b
    cpl
    ret nz

    ccf
    ldh [rIF], a
    ldh a, [$d7]
    jr z, @+$01

    nop
    ld a, [hl]
    add c
    sbc h
    db $e3
    ld c, d
    rst $30
    ld a, [$f1f7]
    cp $7c
    cp $03
    db $fc
    ld hl, sp+$07
    db $dd
    inc hl
    cp $01
    ld l, [hl]
    sub c
    add h
    ei
    ld [de], a
    db $fd
    adc c
    ld e, [hl]
    inc d
    ld l, a
    rla
    ld a, b
    ld a, [hl+]
    ld b, c
    add $01
    ret


    nop
    jr jr_061_64cc

    cp h
    nop
    add $20
    jr c, jr_061_6559

    ld [hl], b
    rrca
    ldh a, [rIF]
    jp c, Jump_061_472f

jr_061_6559:
    ld a, $97
    ld a, [hl]
    rst $30
    ld e, $e5
    ld e, $ba
    ld b, b
    or a
    nop
    ld a, [hl]
    nop
    cp a
    nop
    ld h, e
    sbc h
    and [hl]
    ld sp, hl
    add h
    ei
    ld b, d
    rst $38
    ld l, [hl]
    rst $38
    rst $10
    add sp, -$3b
    ld a, [hl-]
    jr nz, jr_061_6597

    ld l, c
    rla
    xor $11
    db $ed
    ld [de], a
    ld h, b
    sbc a
    ld d, d
    xor a
    jp $f83f


    rlca
    rst $38
    nop
    rst $38
    nop
    db $db
    inc b
    di
    inc c
    ld e, d
    xor l
    add sp, -$01
    sub $f9
    sub b
    rst $38
    ld a, [c]

jr_061_6597:
    cp a
    ld d, b
    cp a
    db $76
    cp c
    or h
    ld a, e
    cp h
    ld [hl], e
    add d
    ld a, a
    ld [hl], $ff
    ld [hl], l
    rst $38
    ld d, l
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    and a
    rst $38
    cp a
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    dec l
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc $ff
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ld l, d
    rst $38
    ld l, [hl]
    rst $38
    xor $ff
    ld a, b
    rst $38
    ld hl, sp-$01
    ld e, h
    rst $38
    inc c
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    ld b, $ff
    add a
    rst $38
    ld [$01ff], sp
    cp $ac
    ld d, e
    rst $28
    rla
    push hl
    ld e, $c6
    ccf
    adc a
    rst $38
    cp [hl]
    ld a, a
    rst $28
    rra
    rst $38
    rlca
    cp l
    inc bc
    add hl, de
    ld b, $c9
    ld b, $f6
    rrca
    push af
    ld c, $fb
    inc b
    inc de
    rst $38
    inc de
    db $fc
    ld h, e
    sbc h
    inc a
    ret nz

    add a
    ld hl, sp-$7f
    cp $43
    db $fc
    pop bc
    ld a, $06
    ld bc, $00cc
    scf
    ret nz

    inc hl
    db $fc
    jr c, @-$37

    sbc b
    ld h, a
    ld c, b
    or a
    or b
    ld c, a
    ld [hl], c
    adc [hl]
    scf
    call z, $fc0b
    db $fc

jr_061_6647:
    jr jr_061_6647

    db $10
    add hl, de
    ldh a, [rOBP1]
    or b
    ld b, d
    or b
    or d
    ldh [rSC], a
    ldh [$82], a
    nop
    inc b
    nop
    inc c
    nop
    ld d, l
    nop
    push af
    nop
    xor $01
    ld a, [hl]
    ccf
    jp nz, $9b3d

    nop
    cp a
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld [hl], c
    adc [hl]
    rst $38
    nop
    ld hl, sp+$07
    and $1f
    inc bc
    rst $38
    nop
    rst $38
    jp Jump_000_00fc


    rst $38
    nop
    rst $38
    db $10
    rst $38
    rst $18
    cp a
    sub h
    rst $38
    cp $ff
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, c
    rst $38
    ld e, b
    rst $38
    ld d, $f9
    add $79
    ld b, c
    cp $3c
    di
    xor h
    di
    xor h
    di
    add b
    rst $38
    sbc d
    push hl
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    rst $38
    ldh [$ed], a
    ld a, [c]
    ld e, a
    rst $20
    ld e, b
    rst $20
    ld e, e
    rst $20
    db $db
    rst $20
    db $eb
    rst $30
    and a
    rst $38
    ld h, b
    sbc a
    di
    ld c, $27
    sbc $67
    sbc [hl]
    rst $20
    sbc [hl]
    or [hl]
    rst $18
    sub $bf
    call c, $d8a3
    and a
    xor h
    ld [hl], e
    and d
    ld a, a
    xor d
    ld a, a
    ld a, [hl+]
    rst $38
    ld l, b
    rst $38
    ldh a, [$ef]
    add sp, -$01
    cp e
    rst $38
    ld e, c
    cp a
    ldh [$9f], a
    nop
    rst $38
    add [hl]
    ei
    sbc e
    rst $38
    call c, $b0ff
    rst $08
    cp l
    jp nz, $e00f

    sbc c
    and $88
    rst $30
    xor $ff
    xor $ff
    adc c
    rst $38
    jr z, @+$01

    sub h
    ld a, a
    ld [$00ff], sp
    rst $38
    ld [hl], b
    rst $38
    ld e, [hl]
    cp a
    cpl
    rst $18
    jp Jump_000_3fff


    rst $38
    ld c, [hl]
    cp a
    nop
    rst $38
    add a
    ld a, b
    di
    rrca
    di
    rrca
    cpl
    ret nc

    ld b, a
    ld hl, sp-$04
    add e
    ld a, [hl]
    add c
    rlca
    ld hl, sp-$09
    ld [$03d4], sp
    ld l, [hl]
    add c
    daa
    ret nz

    ccf
    ldh [rIE], a
    rst $38
    cp a
    ld a, a
    adc a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    ccf
    cp [hl]
    ld a, a
    ld a, d
    rst $38
    ld h, l
    ld hl, sp+$54
    jr c, jr_061_679f

    inc d
    call Call_000_3032
    rst $38
    add hl, bc
    cp $53
    xor h
    inc sp
    rst $08
    rla
    rst $28
    inc e
    rst $28
    xor d
    ld e, l
    ld [hl], e
    inc c
    dec a
    ld c, $e7
    rra
    di
    rra
    rra
    ccf
    ld h, d
    ccf
    di
    ld a, a
    db $fc
    ld a, a
    rst $08
    ld a, a
    rrca
    rst $38
    xor [hl]
    reti


    adc [hl]
    pop af
    cp e
    call nz, Call_000_00fc
    ld a, e
    add b
    sbc $20
    ld a, c
    ld b, $e3
    inc e
    ld b, a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rrca
    ldh a, [$e4]
    dec de
    rrca
    ldh a, [$0e]
    pop af
    db $10
    rst $38
    sub b
    ld a, a
    nop
    rst $38
    ld d, b
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ld h, d
    rst $38
    inc b
    rst $38
    ld bc, $2ffe
    jp nc, $a35c

    inc [hl]
    res 3, b
    ld h, a
    ret


    ld [hl], $db
    inc h
    ret nc

    cpl
    sbc e
    ld a, a
    rst $18
    dec sp
    db $dd

jr_061_679f:
    dec sp
    ld [hl], l
    sbc e
    db $f4
    sbc e
    dec d
    ei
    or c
    rst $38
    ret nc

    cp a
    ld [hl], $d9
    cp b
    rst $10
    and b
    rst $18
    sub b
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add hl, sp
    add $c0
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    adc c
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    db $f4
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    adc $ff
    ld e, c
    rst $20
    sbc $21
    cp $01
    and $19
    ldh [$1f], a
    ld hl, sp+$07
    inc [hl]
    rst $08
    ld de, $9ffe
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jr nz, @-$1f

    inc b
    ei
    ret nz

    ccf
    ld b, b
    cp a
    dec c
    ld a, [c]

jr_061_680c:
    ld bc, $97fe
    rrca
    adc a
    inc b
    or a
    ld [$28d7], sp
    rst $08
    jr nz, jr_061_6838

    ldh [$72], a
    pop hl
    add a
    ld h, b
    xor c
    ld b, [hl]
    sub [hl]
    rst $28
    ld b, l
    cp [hl]

jr_061_6824:
    add d
    ld a, h
    ld e, $e0
    and e
    db $fc
    inc hl
    rst $18
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, l
    ld e, $5c
    jr nz, jr_061_6824

    nop
    sbc [hl]
    ld h, c

jr_061_6838:
    ld e, b
    rst $20
    sbc a
    ld h, b
    ld [hl], b
    adc a
    jr @-$17

    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $fc
    inc bc
    ld d, [hl]
    add c
    rst $38
    rst $18
    db $fd
    cp $67
    ld hl, sp+$02
    db $fc
    add sp, -$0c
    or h
    add sp, -$78
    ld hl, sp-$80
    ld hl, sp-$38
    ldh a, [$87]
    ldh a, [$6c]
    nop
    and $00
    ld l, [hl]
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $10
    jr z, jr_061_680c

    ld h, b
    db $e3
    inc e
    rst $38
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld a, b
    rst $38
    db $ed
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
    ld b, b
    rst $38
    inc bc
    db $fc
    jp nz, $c13d

    ld a, $80
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    cp $c1
    add b
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    call Call_061_4d32
    or d
    jr nz, @+$01

    inc a
    rst $38
    sbc $ff
    ld [de], a
    rst $38
    nop
    rst $38
    ld [$60ff], sp
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    adc $ff
    rst $20
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp $ff
    add hl, bc
    rst $38
    dec sp
    rst $38
    ld b, e
    cp a
    db $f4
    ei
    ld a, b
    rst $38
    call nz, $80fb
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    ld de, $e0ff
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    and l
    ld e, [hl]
    nop
    rst $38

jr_061_6906:
    ld [$0eff], sp
    pop af
    cp h
    ld b, e
    db $ed
    ld [de], a
    ld e, l
    and d
    cp $01
    xor $70
    jr z, jr_061_6906

    ld l, a
    ldh a, [$8a]
    ld [hl], b
    pop af
    nop
    ei
    nop

jr_061_691e:
    cp $00
    add hl, bc
    cp $0f
    rst $38
    jp Jump_000_1e3f


    ld bc, $619e
    rst $38
    rst $38
    rst $38
    rst $38
    jp $84ff


    inc bc
    dec e
    ld [bc], a
    ld sp, hl
    ld b, $87
    ei
    ld a, [de]
    rst $20
    ei
    rlca
    inc sp
    rst $08
    rla
    rst $28
    rst $18
    rst $28
    add hl, sp
    rst $08
    add b
    ld a, a
    db $e3
    inc e
    cp h
    nop
    call nz, $bb38
    ld a, h
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $10
    ld l, a
    rst $00
    ld h, e
    ld d, c
    db $e3
    ld sp, $38c0
    ret nz

    jr c, jr_061_691e

    ld [$23c0], sp
    inc e
    ld a, h
    inc bc
    ld bc, $00ff
    rst $38
    inc b
    ei
    nop
    rst $38
    ld bc, $07ff
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    ld e, [hl]
    rst $38
    and [hl]
    rst $38
    ld [$ffff], a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    call z, $82ff
    rst $38
    sbc $ff
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
    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [de], a
    rst $38
    jp z, $d2ff

    rst $38
    jr nc, @+$01

    ld c, h
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, a
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
    dec a
    rst $38
    ld bc, $f1ff
    rst $38
    add d
    rst $38
    pop hl
    rst $38
    jr c, @+$01

    jr @+$01

    inc a
    rst $38
    ld c, a
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld a, c
    cp $7e
    rst $38
    db $10
    rst $28
    ret nz

    ccf
    adc b
    ld [hl], a
    ld b, $ff
    ld hl, sp-$01
    ld a, b
    add a
    push hl
    ld e, $79
    cp $3f
    rst $38
    ccf
    rst $38
    ld l, a
    ldh a, [$60]
    add b
    add b
    nop
    ldh [$1f], a
    di
    adc a
    ld [hl], l
    add e
    rra
    ldh [$80], a
    ld bc, $018a
    ld b, e
    add c
    ld b, d
    add c
    add c
    ld [bc], a
    rst $28
    ld e, $3f
    cp $1f
    cp $bf
    ld a, [hl]
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $e3
    rst $38
    ld c, $f1
    or b
    nop
    ld sp, $3f00
    nop
    db $fd
    inc bc
    add e
    rrca
    daa
    sbc $ff
    cp $fc
    rst $38
    add hl, bc
    or $a8
    rlca
    nop
    rlca
    add hl, bc
    ld b, $09
    ld b, $00
    rst $00
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
    ld hl, sp+$00
    db $f4
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
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
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    xor $ff
    ld [$f6ff], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$2aff], sp
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ret nz

    rst $38
    and $ff
    rst $38
    rst $38
    rst $30
    rst $38
    sub $ff
    jp nc, $c3ff

    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $10
    rst $38
    or $ff
    adc $ff
    ld a, [$90ff]
    rst $38
    ld [hl], e
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    adc $fd
    dec bc
    db $fc
    ld e, $ff
    rra
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld b, a
    ld hl, sp+$02
    rst $38
    ld de, $f6ef
    add hl, bc
    add e
    ld a, a
    add a
    ld a, a
    ld c, a
    ccf
    ld a, h
    rst $38
    adc a
    ld a, h
    ld a, $0c
    dec b
    ld c, $ef
    inc e
    db $fd
    cp $fb
    db $fc
    add sp, -$10
    add c
    cp $ff
    rst $38
    or $cf
    db $ec
    jp $eec1


    rst $38
    ret nz

    cp a
    ret nz

    cp $c0
    inc l
    ret nc

    adc b
    ldh a, [$cc]
    ldh a, [$ad]
    ldh a, [$81]
    ldh a, [rKEY1]
    di
    ld a, a
    rst $38
    adc e
    ld a, h
    dec sp
    nop
    ld a, [$5c04]
    add b
    sub [hl]
    ld [$ff18], sp
    call z, $ec33
    inc de
    db $fc
    inc bc
    ld a, l
    add d
    ld h, h
    sbc e
    inc [hl]
    set 0, l
    ld a, [hl-]
    ld c, $0e
    rlca
    rlca
    sbc a
    sbc a
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add c
    cp $07
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add e
    db $fc
    adc a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$e7]
    ld hl, sp-$0e
    db $fd
    ld hl, sp-$01
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec e
    dec e
    inc d
    inc d
    nop
    rst $38
    nop
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
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    ld a, e
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
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [hl], b
    rst $38
    ld [$f4ff], a
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    add hl, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, l
    rst $38
    cp e
    rst $38
    adc d
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    ld h, b
    rst $38
    ld a, [c]
    rst $38

Jump_061_6bf4:
    di
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and b
    rst $18
    sbc [hl]
    rst $38
    add $3f
    and e
    ld a, h
    ld e, a
    ldh [$73], a
    call z, $d9e6
    add hl, bc
    rst $30
    cp c
    scf
    ld l, $f1
    dec hl
    ret nz

    dec de
    ldh [$3c], a
    pop bc
    rst $10
    add sp, -$59
    ret nz

    jp nz, Jump_000_0b01

    dec b
    rra
    nop
    ret nz

    nop
    ld a, h

jr_061_6c21:
    inc bc
    ld sp, hl
    ld b, $1c
    inc bc
    dec e
    inc bc
    rst $20
    ld bc, $8360
    ei
    rlca
    rla
    ld sp, hl
    add b
    ld bc, $011b
    dec h
    rlca
    rlca
    rlca
    dec bc
    rlca
    inc sp
    rrca
    ld h, e
    rra
    rlca
    ld a, a
    ld a, a
    rst $38
    di
    db $fc
    and b
    ret nz

    nop
    add b
    add d
    nop
    inc b
    nop
    ld sp, $3b08
    nop
    ld b, $ff
    add sp, $1f
    ld [$361f], a
    rst $08
    jr c, jr_061_6c21

    db $10
    rst $28
    db $10
    rst $28
    or b
    rst $08
    nop
    nop
    sbc d
    nop
    cp $00
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld [c], a
    rra
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    and a
    ld e, a
    rrca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    or c
    or c
    nop
    rst $38
    nop
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
    sbc d
    rst $38
    db $dd
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
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr @+$01

    sbc h
    rst $38
    cp h
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    jr @+$01

    xor d
    rst $38
    or $ff
    ld [hl], a
    rst $38
    adc h
    rst $38
    push de
    rst $38
    push af
    rst $38
    db $fc
    rst $38
    sub d
    rst $38
    ld a, [de]
    rst $38
    cp d
    rst $38
    db $eb
    cp $c9
    cp $f9
    cp $e4
    rst $38
    ld hl, sp-$01
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld hl, sp-$01
    and b
    rst $18
    db $f4
    dec bc
    cp l
    inc bc
    ldh a, [rIF]
    adc [hl]
    ld a, a
    ld [hl], l
    adc [hl]
    add l
    cp $84
    ei

jr_061_6cfc:
    ld b, b
    add e
    ld d, c
    cp $19
    add $ab
    or $21
    jp nz, $8043

    ld h, d
    add c
    sub b
    db $e3
    inc a
    jp Jump_061_403b


    cp $01
    call nc, Call_000_2c3b
    inc de
    ld a, b
    add e
    ld a, [$75ff]
    ei
    ret c

    pop af
    pop bc
    ldh a, [$cd]
    ldh a, [$c9]
    ldh a, [$d6]
    jp hl


    ld [c], a
    db $fd

jr_061_6d28:
    rst $00
    pop hl

jr_061_6d2a:
    call nz, $efe3
    db $e3

jr_061_6d2e:
    ei
    rst $20

jr_061_6d30:
    add $e3

jr_061_6d32:
    ld e, e
    rst $20

jr_061_6d34:
    rlca
    ld a, a
    ld a, e
    scf

jr_061_6d38:
    ld a, [bc]
    scf
    ld d, $2f
    inc d
    cpl
    scf
    inc c
    add a
    inc b
    nop
    rlca
    adc b
    rlca
    add b
    rlca
    ret z

    rlca
    ret nz

    rlca
    pop af
    ld c, $c0
    ccf
    ld c, b
    nop
    ld l, b
    nop
    ld l, b
    add b
    add sp, $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$50], a
    ld h, b
    sub b
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, b
    add b
    jr c, jr_061_6d28

    jr c, jr_061_6d2a

    jr c, @-$3e

    jr c, jr_061_6d2e

    jr c, jr_061_6d30

    jr nc, jr_061_6d32

    jr nc, jr_061_6d34

    ld [hl], b
    add b
    jr c, jr_061_6d38

    jr c, jr_061_6dba

    jr c, jr_061_6cfc

    jr c, @-$6e

    jr c, @-$7e

    cp a
    ld b, a
    dec sp
    rst $00
    add hl, de
    rst $20
    inc e
    pop hl
    ld [bc], a
    db $fd
    ld [$88ff], sp
    rst $38
    call nc, $4cfb
    di
    ret c

    rst $20
    reti


    and $8b
    or $ab
    or $af
    ld a, [c]
    xor a
    ld a, [c]
    adc a
    ld a, [c]
    jp z, $e4f7

    rst $38
    call nz, $8cff
    rst $38
    adc l
    rst $38
    xor h
    rst $38
    rst $28
    cp $a3
    cp $5c
    and d
    rra
    ldh [$27], a
    ret nz

    inc [hl]
    pop bc
    inc a
    pop bc

jr_061_6dba:
    ld c, $d1
    rla
    pop bc
    ld a, [hl+]
    push de
    ld a, [$721d]
    sbc l
    ld a, d
    sbc l
    inc a
    sbc e
    push hl
    ld a, [de]
    ld sp, hl
    ld b, $53
    and [hl]
    cp [hl]
    jp nz, $fac5

    ret nc

    rst $28
    ret nz

    rst $38
    and h
    ei
    ld [hl], $f9
    inc h
    ei
    ld b, d
    db $fd
    pop bc
    rst $38
    rst $30
    ld b, b
    ld a, e
    call nz, $c532
    sub b
    rst $28
    ret nz

    cp a
    ld d, b
    xor a
    call nc, $d1af
    xor [hl]
    jr c, @-$2f

    cp h
    rst $08
    db $ec
    sbc a
    ld a, h
    adc a
    ld l, h
    sbc a
    xor h
    ld e, a
    xor [hl]
    ld e, a
    sbc $3f
    ld [hl], h
    cp a
    ld l, d
    cp a
    ld l, e
    cp [hl]
    ei
    ld a, $e9
    ld a, $f9
    ld a, $f3
    inc a
    and $39
    adc $31
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $10
    jr c, jr_061_6e54

    db $fc
    ld a, [hl+]
    db $fd
    ld a, [hl+]
    db $fd
    ld a, h
    cp a
    ld a, h
    cp a
    ld e, h
    cp a
    ld a, h
    sbc a
    ld h, $df
    daa
    rst $18
    inc hl
    rst $18
    inc h
    rst $18
    ld l, h
    rst $18
    adc $ff
    ld c, [hl]
    rst $38
    rst $28
    rst $18
    xor a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    inc b
    rst $38
    nop
    rst $38

jr_061_6e54:
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld de, $30fe
    rst $38
    jr nc, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld [hl], $ff
    ld l, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    and b
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
    ld a, a
    db $10
    rst $38
    jr @+$01

    jr @+$01

    ld d, b
    cp a
    scf
    ld [$08f7], sp
    rst $30
    ld [$28d7], sp
    sub a
    ld l, b
    jp Jump_061_433c


    cp h
    db $e4
    rra
    rst $28
    ld d, $fa
    rlca
    db $fd
    ld [bc], a
    dec l
    jp nc, $926d

    pop bc
    ld e, $00
    rra
    dec de
    rlca
    dec sp
    rlca
    dec sp
    rlca
    dec sp
    rlca
    jr nc, jr_061_6ed7

    db $10
    cpl
    ld d, b
    cpl
    inc [hl]
    ld c, e
    sub h
    ld l, e
    add b
    ld a, a
    inc h
    db $db
    rlca
    ld hl, sp-$79

jr_061_6ed7:
    ld a, b
    and a
    ld e, b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, l
    ld a, [$fff8]
    ld a, b
    rst $38
    inc de
    cp $19
    cp $1d
    cp $1d
    cp $1f
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    daa
    rst $18
    and e
    ld e, a
    inc bc
    rst $38
    rlca
    rst $38
    daa
    rst $18
    daa
    rst $18
    ld a, a
    adc a
    rst $38
    rrca
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    ld sp, hl
    rlca
    rst $38
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    cp b
    ld b, a
    dec sp
    rst $00
    cp e
    ld b, a
    cp l
    ld b, e
    dec a
    jp $c33d


    dec a
    jp $e31d


    dec c
    di
    ld b, l
    ei
    rlca
    ld sp, hl
    dec b
    ei
    ld b, h
    ei
    add c
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $ff
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$0b
    ld a, [$ffee]
    ld b, $ff
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc b
    ld [hl], a
    ret


    scf
    db $fc
    inc bc
    call c, $dc23
    inc hl
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    ld a, $c1
    ld b, c
    rst $38
    ld bc, $09ff
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $feff
    ld bc, $01fe
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp l
    ld b, e
    cp c
    ld b, a
    cp c
    ld b, a
    ld a, c
    rst $00
    jp Jump_061_7b7f


    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc $ff
    db $dd
    cp $8c
    rst $38
    set 7, h
    dec bc
    db $fc
    dec c
    cp $34
    rst $08
    ld [hl+], a
    db $dd
    cp a
    ld c, b
    ld a, b
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ret nc

    rst $28
    ret nc

    rst $28
    and b
    rst $18
    ldh a, [$bf]
    ld h, b
    cp a
    rst $18
    jr nz, jr_061_6ffa

    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    rst $38
    add b
    cp $80
    ld a, e
    add h
    ld a, c
    add [hl]
    ld e, b
    add a
    ld [hl], b
    adc a
    or b
    rst $08
    ldh a, [$cf]

jr_061_6ffa:
    add sp, -$29
    ret nz

    rst $38
    ldh a, [$ef]
    and $fb
    ld [$fbf7], a
    rst $30
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
    db $fc
    rst $38
    ld sp, hl
    cp $f9
    cp $f8
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $ec
    di
    db $ec
    di
    add sp, -$09
    ld hl, sp-$09
    ret nc

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    adc d
    push af
    sbc [hl]
    pop hl
    cp [hl]
    pop bc
    cp h
    jp $ffc3


    ld bc, $01ff
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sub a
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    add e
    ld a, a
    add c
    ld a, a
    db $d3
    cpl
    add e
    ld a, a
    inc bc
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    inc l
    rst $38
    ldh [$7f], a
    ld bc, $79ff
    add a

jr_061_708e:
    ld a, c
    add a
    ld a, l
    add e
    ld a, l
    add e
    ld a, a
    add e
    ld a, a
    add e
    ei
    rlca
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp+$07
    ld a, c
    add [hl]
    ld hl, sp+$06
    ei
    ld b, $ff
    ld b, $fb
    ld b, $7f
    add [hl]
    ld e, e
    and [hl]
    ld e, c
    and [hl]
    ld d, b
    xor [hl]
    ld h, c
    adc [hl]
    ld a, e
    adc h
    ccf
    call z, $cc3f

jr_061_70ba:
    scf
    call z, Call_000_1ce3
    db $e3
    inc e
    db $e3
    inc e
    di
    inc c
    rst $30
    ld [$03fc], sp

jr_061_70c8:
    cp $01
    ld h, $d9
    ld h, [hl]
    ld sp, hl
    jr c, @-$07

    db $ed
    inc sp
    add l
    ld a, e
    and e
    ld a, a
    xor a
    ld [hl], a
    sbc a
    ld h, a
    or e
    ld b, a

jr_061_70dc:
    ld a, e
    add a
    db $d3
    daa
    swap a
    ld d, h
    cp e
    rst $08
    jr nc, @-$1f

    jr nc, jr_061_70c8

    jr nc, jr_061_70ba

    jr nc, jr_061_70dc

    jr nc, jr_061_708e

    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$97], a
    add sp, -$19
    ld hl, sp-$19
    ld hl, sp-$11
    ld hl, sp-$1a
    ld sp, hl
    rst $38
    ldh a, [rOCPS]
    push af
    sbc c
    ld h, [hl]
    pop af
    ld c, $f3
    inc c
    ld a, a
    add h
    inc sp
    call z, $dca3
    rst $00
    ld hl, sp-$72
    pop af
    adc [hl]
    pop af
    call c, $ece3
    db $d3
    ret c

    rst $20
    ret nc

    rst $28
    ld h, b
    rst $18
    ld hl, $20de
    rst $18
    ld hl, $00de
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl-]
    rst $38
    inc sp
    rst $38
    dec a
    rst $38
    rra
    rst $38
    xor [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
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
    jr jr_061_7183

    rlca
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_061_7194

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_061_71a4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_061_71b4

jr_061_7183:
    ld [hl-], a
    inc sp
    inc [hl]
    rlca
    dec [hl]
    rlca
    ld [hl], $37
    jr c, jr_061_71c6

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_061_7194:
    ld b, c
    ld b, d
    daa
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

jr_061_71a4:
    ld d, b
    ld d, c
    rlca
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
    rlca
    rlca

jr_061_71b4:
    ld e, l
    rlca
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
    rlca
    rlca
    rlca
    rlca

jr_061_71c6:
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
    jr jr_061_728f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_061_729f

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
    jr nc, @+$33

    ld [hl-], a

jr_061_728f:
    inc sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_061_729f:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0401
    nop
    inc b
    nop
    ld bc, $0001
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0401
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0401
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
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
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
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
    cp e
    rst $38
    cp e
    rst $38
    ld a, [$f0ff]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    jp nc, $e0ff

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
    rst $08
    rst $38
    adc [hl]
    rst $38
    sbc e
    rst $38
    ret


    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $dd
    rst $38
    cp $ff
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc $ff
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ld hl, sp-$01
    ld a, a
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
    sub b
    rst $38
    add e
    rst $38
    rrca
    rst $38
    ld bc, $21ff
    rst $38
    jr nc, @+$01

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
    scf
    rst $38
    ld b, a
    cp a
    ld d, $fd
    sbc l
    cp $fe
    rst $38
    ld a, $ff
    rrca
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    cp b
    rst $30
    ldh a, [rIE]
    ld d, c
    rst $38
    ld e, h
    rst $38

Call_061_74f2:
    sbc h
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    inc e
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    scf
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
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
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
    di
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $e4
    rst $38
    ret nc

    rst $38
    ld c, b
    rst $38
    ld e, b
    rst $38
    ld [hl], c
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    ei
    add e
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
    rst $38
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
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    call z, $bfff
    ret nz

    and $f9
    pop af
    rst $38
    db $fd
    rst $38
    cp a
    ld a, a
    add sp, $1f
    ld c, b
    cp a
    jp hl


    rst $38
    add hl, sp
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
    ld l, a
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    sub c
    rst $38
    pop af
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
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
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld a, a
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    xor $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    rla
    rst $38
    ld [hl], $ff
    ld [hl-], a
    rst $38
    or e
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ldh [rIE], a
    jp nz, $c4fd

    ei
    ldh [rIE], a
    push bc
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld b, h
    cp a
    jp nz, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    dec b
    ld a, [$fe01]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    call nz, $dcfb
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    cp $ff
    cp $ff
    add d
    db $fd
    jp c, Jump_061_6bf4

    db $f4
    ld a, [$d2fd]
    db $fd
    pop bc
    cp $c9
    or $c3
    cp $f8
    rst $38
    or b
    rst $38
    add b
    rst $38
    add c
    cp $98
    rst $20
    db $db
    and $58
    rst $20
    ld l, b
    rst $30
    add hl, sp
    rst $38
    ld a, c
    rst $38
    dec de
    rst $38
    sub c
    rst $38
    add e
    rst $38
    set 6, a
    set 6, a
    adc e
    rst $30
    adc [hl]
    di
    and $fb
    ld [c], a
    rst $38
    cp $ff
    sub [hl]
    rst $38
    and d
    rst $38
    ld d, $ff
    sbc a
    rst $38
    ld e, $ff
    dec a
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
    cp $ff
    cp $ff
    xor $ff
    adc $ff
    add $ff
    add $ff
    rst $20
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ret z

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
    db $fd
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], b
    rst $38
    db $e4
    rst $38
    call nz, $cfff
    rst $38
    ld a, $ff
    ld [hl], c
    cp $71
    cp $fd
    rst $38
    pop af
    rst $38
    adc $ff
    adc e
    rst $38
    add b
    rst $38
    pop hl
    cp $31
    cp $1d
    cp $1e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    push hl
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld [hl], c
    cp $00
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    rst $38
    ld hl, sp+$7e
    rst $38
    daa
    rst $38
    inc b
    ei
    add h
    ld a, e
    sub h
    ld a, e
    jp nc, Jump_000_137f

    rst $38
    rla
    rst $38
    dec l
    jp nc, $d02f

    ld a, e
    add h
    ld d, b
    xor a
    ld e, d
    xor l
    adc $3d
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp d
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    cp c
    ld a, a
    ld sp, hl
    ld a, a
    ld a, [$7d7f]
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, b
    rst $38
    reti


    rst $38
    ld a, a
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
    di
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
    rst $38
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
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    push af
    rst $38
    rst $28
    rst $38
    ld c, [hl]
    rst $38
    ld e, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], b
    rst $38
    inc hl
    rst $38
    and a
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $33ff


    rst $08
    inc bc
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    jr @+$01

    rst $38
    rst $38
    nop
    rst $38
    pop af
    cp $fc
    rst $38
    sbc d
    ld a, a
    rst $08
    ccf
    rst $18
    ccf
    adc a
    ld a, a
    call z, $feff
    rst $38
    ld a, e
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $30
    ld hl, sp-$3f
    rst $38
    rrca
    ldh a, [$de]
    ld hl, $ff79
    rst $38
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    sub c
    ld a, [hl]
    ld a, [de]
    push hl
    sbc b
    rst $20
    add b
    rst $38
    adc a
    rst $38
    rst $28
    rst $18
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    rst $28
    rst $38
    rst $28
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
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ldh a, [rIE]
    add a
    rst $38
    ld b, b
    rst $38
    ld h, h
    rst $38
    ld h, a
    rst $38
    ld a, c
    rst $38
    ld sp, $31ff
    rst $38
    ld de, $1eff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$09
    ldh [rIE], a
    jp nz, $d1ff

    xor $d3
    db $ec
    add d
    db $fd
    add c
    rst $38
    add a
    rst $38
    add hl, de
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    or b
    rst $38
    ldh [rIE], a
    rst $08
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $e3
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
    rst $38
    rst $38
    pop af
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    ld bc, $03ff
    rst $38
    ld h, $df
    rst $30
    ld hl, sp+$79
    cp $7f
    rst $38
    rst $38
    rst $38
    cp $ff
    ld c, $f1
    rst $08
    ldh a, [$7e]
    rst $38
    ld a, $ff
    ld a, [hl+]
    rst $30
    inc bc
    rst $38
    ld [$f1ff], sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $eb
    rst $38
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
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ld h, b
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    ld b, b
    rst $38
    dec de
    rst $38
    ld [$82ff], sp
    db $fd
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld c, h
    rst $38
    ld bc, $81fe
    cp $84
    ei
    ld c, $f3
    ld a, b
    add a
    ld [hl], h
    adc a
    ld [hl], a
    adc a
    scf
    ret z

    or a
    ld c, b
    rra
    add sp, $1f
    ldh [$7f], a
    ret nz

    cp a
    ld b, b
    ccf
    ret nz

    cp a
    ret nz

    pop bc
    cp $ef
    rst $38
    jp hl


    rst $38
    adc h
    ld a, a
    ld h, a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    nop
    rst $38
    ret nz

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
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    db $fc
    rlca
    nop
    rst $38
    inc c
    di
    ld b, b
    cp a
    ld a, $f1
    ld [hl], l
    ld a, [$5caf]
    or a
    ld c, a
    ld [$c0ff], sp
    rst $38
    ld a, d
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    ld sp, hl
    rst $38
    ld a, [$e1ff]
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    call z, $dcff
    rst $38
    sbc $ff
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
    cp a
    rst $38
    ld a, [$f1ff]
    cp $65
    cp $8b
    rst $30
    ld sp, hl
    cp $17
    ld hl, sp+$69
    or $20
    rst $38
    ld a, b
    rst $38
    rla
    ld hl, sp-$09
    ld hl, sp-$7f
    cp $06
    ld sp, hl
    cp a
    ld a, a
    db $fd
    cp $04
    rst $38
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    di
    inc c
    db $76
    adc a
    add c
    ld a, [hl]
    xor a
    ld d, b
    add hl, de
    rst $38
    adc h
    rst $38
    db $db
    and [hl]
    ld sp, hl
    ld b, $c9
    ld [hl], $e1
    ld e, $ce
    rst $38
    call nc, $07fb
    ld hl, sp-$59
    ld a, b
    ld h, e
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld de, $1fef
    ldh [$7f], a
    add b
    sbc h
    db $e3
    add c
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
    and e
    rst $18
    ld b, b
    cp a
    rrca
    rst $38
    ld sp, $21ff
    rst $38
    ld e, e
    add h
    dec sp
    db $fc
    ei
    db $fc
    rst $38
    cp $1a
    db $fc
    cp h
    inc bc
    ret nz

    ccf
    nop
    rst $38
    ld b, h
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fd
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc $ff
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rlca

Jump_061_7b7f:
    rst $38
    and h
    ld a, a

jr_061_7b82:
    ld l, h
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    rst $38
    ld a, [de]
    rst $38
    or c
    rst $38
    di
    rst $38
    inc l
    rst $38
    inc h
    rst $38

jr_061_7b92:
    cp c
    rst $38
    rst $00
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    db $10
    rst $28
    nop
    rst $38
    xor [hl]
    ld [hl], c
    db $d3
    rst $38
    inc h
    db $db
    rst $38
    nop
    ret nc

    ld a, [hl]
    ld e, a
    and a
    db $f4
    rrca
    push hl
    ld e, $f9
    ld b, $f9
    ld b, $11
    cp $e0
    rst $38
    di
    ld h, b
    ld hl, sp+$60
    ld hl, sp-$20
    ret z

    jr nc, jr_061_7b92

    jr nc, jr_061_7b82

    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc a
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    xor $1f
    db $ec
    inc bc
    rst $38
    ld bc, $07fb
    call c, $df27
    daa
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_061_7bef:
    rst $38
    rst $38
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    ld e, $ff
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
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$bffd]
    ld e, a
    ldh [$1f], a
    ld hl, sp+$07
    pop hl
    inc e
    reti


    nop
    inc de
    call z, $c42f
    cp e
    call nz, $c6e1
    add h
    jp nz, $c314

    adc c
    ld a, [c]
    ld [c], a
    rst $18
    rst $38
    ret nz

    ld a, [hl]
    pop bc
    adc $f1
    ret c

    rst $38
    ld a, b
    rst $38
    ld sp, hl
    cp $b2
    db $fc
    db $f4
    ld hl, sp+$35
    ld hl, sp+$35
    ld hl, sp+$3a
    rst $38
    inc l
    rst $38
    ld h, e
    db $fc
    ld h, d
    db $fc
    rst $38
    ldh [$60], a
    ldh [$c0], a
    ld h, b
    add b
    ld h, b
    and h
    jp $e3dc


    ld a, a
    db $fc
    ld h, c
    cp $5d
    and $2d
    cp $7c
    cp a
    ld a, l
    cp [hl]
    cp l
    ld a, [hl]
    ld a, l
    cp $3d
    cp $fc
    ccf
    ld c, b
    or a
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    sub b
    ld a, a
    ld [de], a
    rst $38
    sub l
    ld a, d
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    cp [hl]
    inc d
    ld a, [$fe18]
    db $10
    cp $99
    ld a, $94
    ld a, [hl-]
    ld hl, $61be
    cp [hl]
    db $e3

jr_061_7c87:
    cp $ab
    rst $38
    ld sp, hl
    cp a
    di
    cp a
    ld de, $c1bf
    cp a
    push hl
    sbc e
    sub l
    ei
    push de
    ei
    or c
    rst $38
    db $d3
    cp a
    rst $10
    cp e
    push af
    sbc e
    or e
    rst $18
    rlca
    ei
    ld bc, $05ff
    ei

jr_061_7ca8:
    call c, $c803
    rst $30
    cpl
    rst $38
    ld d, l
    inc bc
    ld [hl-], a
    rrca
    adc a
    rst $38
    rst $28
    rra
    rst $30
    rrca
    add $3f
    ld a, $ff
    ret nz

    ccf
    cpl
    ret nc

    or d
    ld b, c
    ld e, c
    nop
    ld a, d
    ld bc, $0068
    db $e4
    jr jr_061_7c87

    nop
    jp $befc


    rst $38
    ld sp, hl
    rst $38
    cp $f9
    push hl
    ld hl, sp-$63
    ldh a, [$97]
    add sp, -$3e
    cp l
    ret nz

    cp a
    sub d
    rst $38
    ld [hl], a
    ld [$00fe], sp
    dec b
    ld hl, sp+$41
    cp b
    sbc l
    ldh [$e3], a
    db $fc
    cp a
    ret nz

    ld [hl], e
    adc h
    ld [hl], b
    adc a
    ld a, h
    add e
    ld e, $e0
    ld b, a
    cp b
    pop af
    ld c, $f9
    rlca
    ld a, [hl]
    add c
    cp a

Call_061_7cff:
    ret nz

    adc $f1
    rst $08
    ldh a, [$cf]
    ldh a, [$e3]
    db $fc
    ldh [rIE], a

jr_061_7d0a:
    ret nz

    rst $38
    ccf
    ret nz

    add hl, sp
    add $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    rst $10
    cpl
    db $e3
    inc c
    rst $08
    jr jr_061_7ca8

    jr jr_061_7d0a

    jr jr_061_7d7c

    cp b
    cp $e0
    di
    xor h
    rst $38
    rlca
    rst $18
    xor a
    rst $18
    rst $38
    cp a
    rst $18
    db $fd
    sbc a
    ld e, a
    cp [hl]
    cp d
    ld a, h
    call nc, $1078
    ld hl, sp+$1d
    ld a, [$9f7c]
    adc d
    dec e
    ld a, [bc]
    rra
    cpl
    rra
    ld c, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, [hl-]
    ld a, a
    sbc $7f
    dec e
    rst $38

jr_061_7d52:
    call c, $c420
    jr c, jr_061_7d52

    inc e
    pop de
    ld e, $81
    ld e, $a9
    ld d, $d1
    ld a, $db
    inc a
    jp nc, $bd3d

    cp $03
    db $fc
    ld [hl], b
    adc a
    db $10
    rst $38
    inc de
    db $fd
    ld de, $91fe
    cp $89

jr_061_7d73:
    cp $41
    cp $55
    xor $97
    ld l, [hl]
    inc d
    rst $28

jr_061_7d7c:
    add hl, de
    xor $bb
    ld c, h
    inc hl
    call c, $dd32
    ld b, c
    cp a
    ld hl, $ffff
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $28
    rst $30
    rst $08
    xor a
    rst $18
    xor a
    rst $18
    and a
    rst $18
    and a
    rst $18
    add a
    rst $38
    ld b, $ff
    add h
    rst $38
    add l
    cp $45
    cp $14
    rst $38
    inc d
    rst $38
    add b
    ld a, a
    jr c, jr_061_7d73

    ld e, c
    add [hl]
    inc b
    add e
    rlc b
    add $81
    db $e3
    ret nz

    ld [hl-], a
    ret nz

    db $fc
    inc bc
    rst $38
    ld bc, $b34d
    ei
    rlca
    call z, $fab3
    sub l
    adc [hl]
    pop af
    sbc d
    ld [hl], c
    adc $31
    ld a, h
    ld bc, $8977
    jp $febf


    rst $38
    ccf
    cp $df
    ld a, $5f
    ld a, $27
    ld e, $e7
    ld e, $c2
    ld a, $cf
    ld a, $ed
    ld e, $1d
    ld c, $6d
    ld e, $c7
    jr c, @-$34

    jr nc, @-$73

    ld [hl], b
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rTMA]
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, $ff
    sbc d
    ld a, a
    nop
    rst $38
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld c, [hl]
    pop af
    ld h, e
    db $fc
    ld a, [hl]
    rst $38
    ldh a, [$3f]
    jp hl


    or $e0
    rst $38
    inc e
    db $e3
    xor [hl]
    ld d, c
    db $fc
    ld bc, $08f7
    ei
    inc b

jr_061_7e20:
    ld e, d
    inc h
    ld d, b
    jr nz, @+$74

    jr nz, jr_061_7ea4

    ld h, $3c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $9e
    db $fc
    rst $20
    jr jr_061_7e20

    inc d
    ld a, e
    inc b
    ccf
    ld bc, $033d
    ld a, [$6807]
    sub a
    db $db
    inc b
    rst $08
    ccf
    rra
    rst $28
    cp $e1
    rst $38
    ldh [$8e], a
    pop hl
    rra
    ldh [$5c], a
    db $e3
    ret nz

    rst $38
    pop bc
    ld a, a
    db $dd
    ld h, e
    ld e, a
    pop hl
    ld e, a
    pop hl
    ld c, [hl]
    pop af
    ccf
    pop bc
    rst $38
    ld bc, $8177
    cp a
    pop bc
    and c
    ld a, a
    dec c
    ldh a, [rNR23]
    ldh [rLY], a
    ld hl, sp+$54
    cp a
    ld d, a
    cp a
    or [hl]
    dec de
    call nc, $df3b
    scf
    ret z

    scf
    rst $10
    ccf
    sub [hl]
    ld a, c
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    db $10
    ldh [$f0], a
    ldh [$c2], a
    pop af
    push de
    ei
    jp nc, $c4fd

jr_061_7e8d:
    ld sp, hl
    call c, $fee1
    ret nz

    db $fd
    ret nz

    push hl
    ret nz

    cp $c1
    jp nc, $c1fd

    ld hl, sp+$11
    add sp, $19
    ldh [$b9], a
    ld b, b
    cp l
    ld b, b

jr_061_7ea4:
    ld a, l
    ret nz

    rra
    ldh [$36], a
    ld sp, hl
    cp c
    ld a, [hl]
    inc c
    di
    dec b
    ei
    adc $3f
    ld bc, $c2fe
    inc a
    inc c
    inc bc
    db $d3
    rrca
    ld [hl], c
    rst $38
    ld sp, hl
    rst $30
    ld [hl], d
    rst $38
    sbc $38
    db $10

jr_061_7ec3:
    ld hl, sp+$4c
    add b
    inc d
    adc c
    pop af
    adc c
    jr c, jr_061_7e8d

    ld [hl], b
    add c
    or c
    pop bc
    jr c, jr_061_7ec3

    xor $10
    xor $10
    ld l, h
    ld [de], a
    ld h, b
    rra
    ld hl, sp+$0f
    or a
    ld [$902f], sp
    dec l
    sub b
    ld e, a
    add b
    ld a, [hl]
    add c
    ld d, e
    xor a
    ld [bc], a
    rst $38
    dec c
    cp $fe
    rst $38
    rla
    rst $38
    adc e
    rst $30
    rst $38
    pop af
    rst $20
    ld sp, hl
    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    or b
    rst $38
    ld c, c
    or [hl]
    ld hl, $cffe
    ld a, $ef
    ld e, $e3
    ld e, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ccf
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    db $10
    rst $38

jr_061_7f16:
    cpl
    ldh a, [$e9]
    ld [hl], b
    ld [hl], a
    ld hl, sp+$7a
    add b
    add hl, de
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, sp
    ld b, $21
    ld e, $d9
    ld [hl], $33
    db $fc
    rst $28
    db $fc
    rst $38
    cp $6f
    ld a, a
    db $76
    ld c, c
    cp $41
    ld c, [hl]

jr_061_7f35:
    pop af
    adc $f1

jr_061_7f38:
    ld c, e
    ldh a, [$ef]
    ldh a, [$ed]
    ldh a, [$2e]
    pop af
    sbc [hl]
    db $f4
    call nz, $c0f8
    ld hl, sp-$20
    ld hl, sp+$68
    ldh a, [$60]
    ldh a, [rLCDC]
    ldh a, [rHDMA1]
    ldh [$f0], a
    pop hl
    rst $28
    rst $30
    di
    rst $38
    di
    db $fd
    pop hl
    rst $38
    rst $08
    ld sp, hl
    db $e3
    ld sp, hl
    db $db
    pop hl
    sub e
    pop hl
    sub e
    pop hl
    pop de
    db $e3
    rst $38
    db $e3
    ld a, e
    or a
    or c
    ld b, c
    sbc a
    pop bc
    rst $18
    add b
    reti


    ld a, $87
    jr c, jr_061_7f35

    jr nz, jr_061_7f16

    jr nz, jr_061_7f38

    nop
    and e
    nop
    rst $30
    nop
    ld [hl], $00
    ld a, $c1
    ld d, e
    cp h
    add $38
    cp e
    call z, $87df
    rst $08
    sub a
    ld [c], a
    sbc a
    ldh [$bf], a
    jp nz, $f220

    nop
    ld l, a
    nop
    ld a, h
    inc bc
    jp nc, $bf2f

    ld a, [hl]
    inc bc
    cp $89
    ld a, [hl]
    db $ec
    ld e, $bd
    ld e, $fd
    ld a, $bd
    ld a, [hl]
    ld a, l
    cp $f3
    inc c
    pop af
    jr c, jr_061_7fef

    rst $28
    rra
    nop
    cp a
    nop
    rlca
    nop
    ld sp, $f100
    nop
    ret nz

    nop
    pop hl
    nop
    add hl, hl
    rlca
    ret nz

    nop
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    ld b, $f9
    ld e, b
    and b
    ld [hl], b
    add b
    ld a, b
    add b
    jp hl


    ld b, $01
    ld [hl-], a
    inc d
    cp b
    inc hl
    sbc h
    ld hl, $001e
    ld a, $80
    ld a, $81
    ld a, $01
    ret nz

    ld b, c
    ldh [rIE], a
    rst $38
    db $ed
    rst $38
    ld a, e
    db $fd
    add a
    ld a, a
    inc de
    rst $28
    rst $28

jr_061_7fef:
    rst $38
    dec e
    rst $38
    ld e, $ff
    inc d
    adc a
    ld c, $83
    ld c, [hl]
    add c
    cp $01
    rst $38
    nop
    ld [c], a
    nop
