SECTION "ROM Bank $0a7", ROMX[$4000], BANK[$a7]

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    jr jr_0a7_4092

    jr nz, jr_0a7_4067

    dec l
    ld [hl], b
    rrca
    pop bc
    rra
    add d
    rra
    db $fc
    dec bc
    cp e
    ld c, h
    ld a, [de]
    push hl
    ld sp, hl
    and [hl]
    db $dd
    and [hl]
    ld a, c
    add [hl]
    db $f4
    dec bc
    ccf
    ld b, c
    ld a, $41
    ld h, e
    inc e
    xor $19
    ld l, $13
    push af
    ld c, $67
    sbc b
    xor $31
    db $db
    ld h, a
    db $76
    adc a
    ld e, b
    ccf
    ldh [$7f], a
    ld a, [c]
    adc l
    add hl, sp
    add [hl]
    ld sp, hl
    ld b, $ec
    inc bc
    db $fc
    inc bc
    ld a, l
    ld [bc], a
    ldh a, [rIF]
    ld a, [c]
    dec c
    sub h
    ld l, a
    ld bc, $05fe
    cp $25
    sbc $4c
    rst $38
    call $8bff
    rst $38
    xor e
    rst $38
    and e
    rst $38
    ld a, a
    rst $30
    ld [hl], a

jr_0a7_4067:
    rst $38
    ld [hl], a
    rst $38
    ld l, e
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    sbc b
    rst $38
    sbc a
    db $fd
    sbc l
    rst $38
    sbc c
    rst $38
    jp c, $faff

    rst $38
    db $76
    rst $38
    and $ff
    xor $ff
    rst $28
    rst $38
    or $ff
    sub $ff
    sub $ff
    cp l
    rst $38
    cp c
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38

jr_0a7_4092:
    ei
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    call $efff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
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
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $dd
    db $76
    db $dd
    db $e3
    ld e, l
    add c
    ld a, a
    call z, $e43b
    dec sp
    call nc, $bb3b
    ld d, a
    cp [hl]
    ld d, a
    scf
    call z, $e906
    ld e, $e3
    push af
    adc $ef
    sbc b
    rst $28
    jr nc, jr_0a7_413e

    pop hl
    ei
    add a
    db $fd
    rrca
    ret c

    ccf
    ld sp, hl
    ld a, [hl]
    pop af
    cp $6c
    rst $30
    inc hl
    db $fc
    ld l, a
    or b
    ld [hl], a
    xor b
    ld l, d
    sbc l
    db $e3
    inc e
    pop hl
    ld e, $51
    xor [hl]
    ld [hl], d
    xor l
    inc sp
    db $ed
    xor b
    ld [hl], a
    xor h
    ld [hl], e
    ld a, $f3
    scf
    ei
    pop hl
    rst $38
    pop hl
    rst $38
    ld l, l
    rst $38
    ld l, h
    rst $38
    call c, Call_0a7_5f7f
    cp $5e
    cp a
    cp $bf
    inc e
    rst $38
    dec e
    rst $38
    ld e, c
    rst $38
    db $db
    rst $38
    set 7, a
    rst $20
    rst $38
    rst $28
    rst $30
    rst $20
    rst $38
    rst $00
    rst $38
    add $ff
    sub d
    rst $38
    sbc d
    rst $38
    cp d
    rst $38
    jr z, @+$01

    ld a, l
    cp $7c
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp d
    rst $38
    or $ff

jr_0a7_413e:
    rst $10
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    or $ff
    ld sp, hl
    rst $38
    db $fd
    ei
    ld a, e
    rst $38
    di
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp [hl]
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
    cp $ff
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    jp hl


    ld [hl], a
    xor a
    ld [hl], a
    rst $38
    ld l, $5b
    xor h
    ld b, [hl]
    sbc c
    ld a, a
    add e
    or a
    adc $6b
    sbc h
    rst $38
    jr nc, jr_0a7_4222

    ldh [$bd], a
    jp Jump_000_07ff


    db $ed
    rra
    ld sp, hl
    ld a, $71
    cp $f5
    cp $ec
    rst $30
    call nc, $9aef
    db $ed
    adc $f1
    ld l, [hl]
    pop de
    xor [hl]
    ld d, c
    sub $39
    jp c, Jump_0a7_453d

    cp [hl]
    and l
    ld e, [hl]
    ld [hl+], a
    db $dd
    and e
    db $dd
    sub l
    db $eb
    sub l
    db $eb
    rst $18
    db $e3
    ld [$eff7], a
    di
    push af
    db $eb
    set 7, l
    db $db
    db $fd
    sbc [hl]
    db $fd
    sbc l
    cp $bd
    cp $3e
    rst $38
    cp $7f
    cp $7f
    ld a, h
    rst $38
    dec a
    rst $38
    add hl, sp
    rst $38
    cp e
    rst $38
    or e
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $28
    rst $08
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc l
    rst $30
    ld hl, $63ff
    rst $38
    ld [hl+], a
    rst $38

jr_0a7_4222:
    jr z, @+$01

    cp d
    db $fd
    cp c
    cp $f8
    rst $38
    ld hl, sp-$01
    ld [hl], d
    rst $38
    db $76
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    adc a
    rst $38
    cp a
    rst $18
    sbc a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    or $ff
    or $ff
    pop af
    rst $38
    push af
    ei
    di
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    db $dd
    rst $38
    ld e, l
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $28
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
    rst $38
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
    or a
    adc $6b
    sbc h
    rst $30
    jr c, jr_0a7_4326

    ldh [$be], a
    pop bc
    ld a, a
    add e
    rst $30
    rrca
    cp $1f
    cp h
    ld a, a
    db $fc
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    rst $20
    ei
    ret


    or $6b
    db $f4
    rst $30
    ld l, b
    or a
    ld l, b
    rst $10
    jr z, @+$4d

    sbc h
    ld l, h
    sbc a
    ld a, [hl]
    adc a
    or l
    ld c, a
    cp b
    ld b, a
    adc b
    ld [hl], a
    ld c, $f3
    add [hl]
    ei
    add a
    ld hl, sp-$3f
    db $fc
    rst $30
    ld hl, sp-$0c
    ei
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $28
    rst $30
    rst $20
    rst $38
    rst $18
    rst $28
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    cp a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    cp a
    rra
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $18
    adc $ff
    call c, $dcef
    rst $28
    push hl
    ei
    jp hl


    di
    jp $c5ff


    ei
    jp $81fd


    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $44
    rst $38
    ld c, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    cp b
    rst $38

jr_0a7_4326:
    cp c
    rst $38
    sub e
    rst $38
    add e
    rst $38
    rst $10
    rst $28
    adc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    cpl
    rst $38
    rst $08
    cp a
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    cp $fd
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
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
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec b
    dec b
    dec c
    dec b
    dec b
    ld c, $05
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $05
    dec b
    dec b
    rla
    dec b
    dec b
    jr jr_0a7_43d3

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e

jr_0a7_43d3:
    ld e, $1f
    jr nz, jr_0a7_43f8

    ld [hl+], a
    dec b
    inc hl
    dec b
    inc h
    dec h
    dec b
    ld h, $27
    jr z, jr_0a7_440b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    dec b
    jr nc, jr_0a7_441c

    dec b
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec b
    ld [hl], $37
    jr c, jr_0a7_442e

    ld a, [hl-]
    dec sp
    inc a

jr_0a7_43f8:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec b
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

jr_0a7_440b:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec b
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

jr_0a7_441c:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    dec b
    dec b
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    dec b
    ld l, d
    ld l, e
    ld l, h
    ld h, c

jr_0a7_442e:
    ld l, l
    ld l, [hl]
    dec b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    dec b
    ld [hl], a
    ld a, b
    ld a, c
    ld h, c
    ld a, d
    ld a, e
    dec b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    dec b
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
    ld h, c
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
    ld h, c
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    dec b
    xor [hl]
    xor a
    dec b
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
    dec b
    dec b
    dec b
    cp e
    dec b
    cp h
    cp l
    cp [hl]
    cp a
    or h
    ret nz

    pop bc
    jp nz, $05c3

    dec b
    dec b
    call nz, $c505
    add $05
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    dec b
    dec b
    dec b
    pop de
    jp nc, $d305

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    dec b
    dec b
    dec b
    db $dd
    dec b
    dec b
    sbc $df
    call nc, $e1e0
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [c], a
    dec b
    dec b
    db $e3
    db $e4
    call nc, $e6e5
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rst $20
    dec b
    dec b
    add sp, -$17
    ld [$eceb], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0a7_453d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    di
    ei
    pop af
    ei
    di
    ei
    pop af
    ei
    pop af
    ei
    di
    ei
    pop af
    ei
    di
    ei
    di
    di
    db $e3
    di
    pop hl
    di
    db $e3
    pop hl
    ret nz

    rst $20
    jp nz, $c5e5

    adc $c5
    adc $8f
    rst $08
    adc a
    rst $08
    adc a
    adc a
    rrca
    sbc a
    rra
    sbc a
    dec de
    scf
    inc hl
    ccf
    ld hl, $6e7f
    ld de, $1f6c
    ld e, c
    and [hl]
    rst $00
    and [hl]
    rst $38
    and $ff
    rst $38
    ccf
    rst $38
    dec d
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $f7
    ld hl, sp-$40
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $fc
    db $fc
    cp $dc
    cp [hl]
    inc e
    cp [hl]
    cp $9e
    cp $3e
    cp [hl]
    ld a, $1e
    cp [hl]
    cp [hl]
    ld e, $be
    sbc [hl]
    cp a
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    sbc [hl]
    rst $38
    sbc [hl]
    rst $18
    adc [hl]
    rst $38
    adc [hl]
    adc $cf
    rst $08
    adc $cf
    cp $fe
    rst $20
    ld a, a
    and $2a
    rla
    ld h, $df
    or $ff
    or $ff
    ei
    rst $38
    ei
    rst $38
    cp a
    ei
    rst $38
    ei
    db $fd
    ei
    pop af
    rrca
    rst $18
    rst $20
    scf
    rst $38
    ld b, a
    cp a
    rst $20
    dec e
    ld e, e
    and a
    db $e3
    rst $38
    rst $38
    rst $38
    cp $00
    add l
    ld a, [$fffe]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rTAC], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ef
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $01
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ld a, a
    ld bc, $477f
    ld a, a
    ld bc, $417f
    ld a, a
    ld bc, $5f7f
    ld a, a
    rla
    ld a, a
    ld e, a
    ld a, a
    db $76
    ld a, a
    cp $7f
    sbc $7f
    rst $08
    ld l, a
    cpl
    rst $20
    ld b, b
    or a
    ld h, e
    sub d
    ld e, d
    add c
    add d
    pop bc
    ldh [$c1], a
    rst $38
    ret nz

    pop af
    adc $c5
    jp nz, $c0e1

    ld e, h
    ldh [$e2], a
    nop
    ret nz

    nop
    ld e, $e0
    ld sp, hl
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
    add b
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
    ldh [rIE], a
    cp $01
    rst $38
    rst $38
    rst $38
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
    db $e3
    db $fc
    cp a
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
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    cp $8b
    cp $87
    cp $8f
    cp $8f
    cp $8e
    rst $38
    adc [hl]
    rst $38
    add [hl]
    rst $38
    rst $08
    add [hl]
    rst $08
    add $cf
    add $cf
    add $cf
    add $cf
    add $cf
    add $cf
    rst $00
    rst $00
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    rst $00
    rst $20
    add a
    rst $20
    db $e3
    rst $20
    db $e3
    rst $20
    jp $83e7


    rst $20
    ld b, e
    rst $20
    ld b, e
    rst $20
    ld b, e
    db $e3
    pop bc
    ld h, a
    ld b, c
    di
    ld b, c
    di
    ld b, c
    di
    ld b, c
    ld [hl], e
    ld h, e
    inc sp
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc a
    ldh [$e2], a
    db $fd
    db $e4
    ei
    db $e3
    db $fc
    ret c

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [c]
    db $fd
    jp nc, $e3fd

    db $fc
    add b
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
    rst $38
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
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38

Call_0a7_4873:
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    ld b, c
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
    rst $20
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    reti


    nop
    db $e4
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    ld [$11f7], sp
    rst $28
    ld bc, $6bff
    db $fd
    ld a, c
    rst $38
    ei
    ld a, l
    dec sp
    ld a, l
    ld a, e
    dec a
    ld a, a
    dec e
    cpl
    ld e, l
    ld e, a
    ld l, l
    ld h, a
    ld a, l
    ld h, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, c
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, a
    ld a, a
    ccf
    ld a, a
    rrca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    inc h
    ld e, a
    sbc h
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    or h
    nop
    or h
    nop
    cp h
    nop
    cp l
    nop
    cp l
    add b
    cp [hl]
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    dec hl
    sub h
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rSTAT], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    add sp, -$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, $fffd

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
    db $fd
    rst $38
    db $fd

jr_0a7_495d:
    ei
    xor $f3
    jp c, $fee7

    ld b, $fe
    inc b
    call z, $fa0c
    inc c
    db $fc
    jr jr_0a7_495d

    jr jr_0a7_49c7

    jr nc, jr_0a7_49d1

    jr nc, jr_0a7_49a3

    ld h, b
    di
    ld h, b
    ld l, l
    ld a, [c]
    rst $18
    ldh [$d7], a
    add sp, -$61
    ldh [$81], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a

jr_0a7_49a3:
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    rst $18
    cp a
    rst $08
    add b
    adc a
    ret nz

    cp a
    rst $18
    rst $38
    rst $18
    rst $08
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    ld l, e
    rst $38
    or l
    ei
    ldh a, [$39]
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_0a7_49c7:
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop

jr_0a7_49d1:
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nc

    nop
    cp $00
    jp nc, $f400

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
    ld hl, sp-$01
    db $fc
    rst $38
    adc h
    rst $38
    add [hl]
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $88
    inc bc
    rst $38
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
    or $81
    add a
    add c
    and a
    rst $18
    rst $38
    rst $38
    and $ff
    add d
    rst $38
    add h
    rst $38
    adc l
    cp $88
    ld h, b
    ld [$9075], a
    rst $38
    sub a
    ld hl, sp-$41
    ldh a, [rIE]
    ldh [$f7], a
    add sp, -$21
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    xor $01
    add b
    ld bc, HeaderCGBFlag
    add e
    ld bc, $0103
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $0e
    inc b
    inc c
    inc b
    inc b
    inc c
    ei
    inc c
    db $eb
    inc e
    cp $19
    reti


    ccf
    db $fd
    ld a, $ff
    ld hl, sp-$01
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld a, b
    db $fc
    ld a, h
    db $fc
    call c, $ccfc
    db $ec
    db $e4
    db $f4
    db $e4
    db $fc
    db $fc
    db $fc
    call z, $d8fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$05
    ld [hl], b
    ld a, a
    jr nc, jr_0a7_4b35

    inc h
    ld a, $3c
    inc a
    inc e
    inc a
    db $10
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    cp $3c
    cp $dc
    cp $cc
    cp $cc
    cp $dc
    cp $dc
    cp $dc
    cp $dc
    cp [hl]
    sbc $9e
    cp $be
    cp $fc
    cp $fc
    db $fc
    db $fc
    ld hl, sp-$10
    ld a, [$f6f2]
    and $e6
    ld h, $ce
    adc [hl]
    ld c, $ff
    adc $ee
    rst $38

jr_0a7_4afa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a7_4aff:
    rst $38
    db $fd
    cp $fd
    cp $fa
    db $fd
    ld a, [$fffd]
    ld hl, sp-$0e
    ld hl, sp-$06
    ldh a, [$f7]
    ld hl, sp-$0f
    db $fc
    cp b
    push af
    inc [hl]
    sbc c
    jp c, $f939

    ld a, [$f0fb]
    inc de
    ldh a, [$57]
    or b
    rst $08
    jr nc, jr_0a7_4afa

    jr c, jr_0a7_4b5b

    ld sp, hl
    or $f9
    ld e, [hl]
    cp c
    call nc, $f63b
    add hl, sp
    or [hl]
    ld a, c
    or e
    ld a, h

jr_0a7_4b32:
    sub $79
    rst $30

jr_0a7_4b35:
    ld e, b
    ld a, a
    ret c

    or a
    ret c

    or a
    ret c

    rst $30
    sbc b
    scf
    sbc b
    rst $38

jr_0a7_4b41:
    jr jr_0a7_4b32

    jr jr_0a7_4bb4

    jr jr_0a7_4b76

    jr jr_0a7_4b78

    jr jr_0a7_4b5a

    jr @+$51

    jr jr_0a7_4bbe

    jr jr_0a7_4b60

    jr jr_0a7_4b82

    jr jr_0a7_4b41

    jr jr_0a7_4aff

    ld [hl], b
    cp b
    ret nz

jr_0a7_4b5a:
    ld a, b

jr_0a7_4b5b:
    add b
    ldh a, [rP1]
    ldh a, [rP1]

jr_0a7_4b60:
    rst $38
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
    ld a, a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    cp a

jr_0a7_4b76:
    cp a
    cp a

jr_0a7_4b78:
    sbc a
    cp a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38

jr_0a7_4b82:
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $30
    ldh a, [$e3]
    jp nz, $d0e1

    db $d3
    and b
    ld a, e
    ld c, b
    daa
    sub b
    cpl
    add b
    rst $38
    add b
    rst $38
    add c
    cp $81
    cp $80
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld [hl], b
    rst $38
    rla
    add sp, $00
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    ld a, a

jr_0a7_4bb4:
    ld e, h
    rst $38
    ld hl, sp+$7f
    ld a, b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_0a7_4bbe:
    db $fd
    ld a, a
    db $fd
    ld a, a
    ld sp, hl
    ld a, a
    db $fd
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld [hl], a
    push bc
    ld a, a
    rst $28
    ld d, a
    push bc
    ccf
    ld b, l
    cpl
    ld [hl], l
    ld l, a
    rst $20
    ld a, a
    rst $20
    ld a, a
    ld h, [hl]
    ld a, a
    ld h, [hl]
    ld a, a
    rst $20
    ld a, a
    ld h, a
    ld a, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    ld b, a

jr_0a7_4be5:
    rst $38
    rst $20
    rst $18
    rst $30
    rst $08
    sub a
    rst $28
    rst $20
    cp a
    rst $38
    cp a
    ld l, a
    cp a
    xor d
    ld a, a
    ld l, b
    ld a, a
    ld l, c
    ld a, a
    and b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $38
    add l
    ld a, d
    nop
    rst $38
    adc d
    ld [hl], l
    ld a, [bc]
    push af
    dec d
    ld [$ea15], a
    jr nz, jr_0a7_4be5

    daa
    ret c

    db $10
    ld [$e817], a
    ld h, b
    sub l
    inc bc
    call nc, $c23d
    sub a
    ld l, b
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rra
    dec e
    ld a, $1b
    dec l
    rst $38
    rst $38
    rst $38
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
    cp $ff
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
    add [hl]
    ld a, c
    ld c, $f0
    ld d, $e8
    ld l, $d0
    ld l, $d0
    ld e, $e0
    ld a, [hl]
    add b
    ld a, $c0
    cp $00
    cp $00
    ld a, [hl]
    add b
    ldh a, [rP1]
    ld [hl], b
    add b
    ld a, [hl-]
    ret nz

    ld a, [hl]
    add b
    ld a, [hl-]
    ret nz

    ld a, $c0
    ret nz

    ld a, [bc]
    jp z, Jump_000_2e20

    ret nc

    inc c
    ld a, [c]
    ld b, $f8
    ld e, $e1
    inc l
    jp nc, $fe01

    pop bc
    cp $a1
    cp $f5
    cp $fe
    rst $38
    rst $38
    cp $fe
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
    sbc a
    rst $38
    ld a, a
    rst $38
    ld [hl+], a
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
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    ld a, a
    ld b, d
    cp l
    nop
    rst $38
    adc d
    ld [hl], l
    ld a, l
    ld [bc], a
    ld l, e
    sub h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    or [hl]
    nop
    ld a, [$ae00]
    nop
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    inc bc
    ld a, a
    di
    jp hl


    ld [hl], a
    dec a
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    add $ff
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [$f708]
    ld a, [bc]
    push af
    rst $38
    add b
    rst $38
    nop
    rst $38
    or h
    rst $38
    and $e7
    inc bc
    db $e3
    nop
    jp Jump_000_0300


    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rlca
    nop
    ld bc, $df00
    nop
    ld c, a
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $01fe
    ld a, a
    nop
    inc bc
    inc e
    ld a, a
    nop
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld hl, $07ff
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
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
    db $fd
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
    ld [bc], a
    db $fd
    dec d
    ld [$31ce], a
    cp e
    ld b, h
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
    db $ed
    nop
    xor $00
    or l
    nop
    sub $00
    or l
    nop
    xor d
    nop
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec a
    sbc $ee
    sbc l
    ld [hl], c
    xor a
    rst $38
    ld [hl], e
    cp $ff
    rst $30
    rst $38
    db $fd
    rst $38
    adc h
    rst $38
    ld h, e
    rst $38
    dec de
    rst $38
    add $ff
    scf
    rst $38
    adc h
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]

jr_0a7_4df5:
    db $fd
    inc bc
    db $fc
    inc b
    ld hl, sp+$0c
    ldh a, [$98]
    ld h, b
    db $10
    ldh [$f8], a
    nop
    ld hl, sp+$00
    ld hl, sp+$40
    db $fc
    ldh a, [$f8]
    ld [hl], b
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$d600]
    jr z, jr_0a7_4df5

    inc e
    adc c
    ld [hl], h
    ld a, [c]
    dec c
    pop af
    rrca
    xor b
    ld d, a
    call nz, $d03b
    cpl
    ld [hl], b
    rrca
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    cpl
    add c
    ld a, a
    ld e, $41
    and $19
    add c
    ld a, a
    rlca
    rst $38
    add a
    ld a, a
    ld [c], a
    rra
    add h
    ld a, [hl]
    inc e
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    db $fd
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $10
    rst $38
    nop
    rst $38

jr_0a7_4e6a:
    nop
    rst $38

jr_0a7_4e6c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a7_4e7e:
    dec c
    ld a, [c]
    inc hl
    call c, $fa05
    or l
    ld c, d
    rra
    ldh [$df], a
    jr nz, jr_0a7_4e6a

    jr nz, jr_0a7_4e6c

    jr nz, jr_0a7_4e7e

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
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
    ld a, l
    ld [bc], a
    xor e
    nop
    db $db
    nop
    ld c, d
    ld bc, $004b
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
    add e
    ld a, a
    ld l, a
    di
    cp e
    ld l, l
    rst $28
    sbc [hl]
    or [hl]
    call $feff
    rst $38
    rst $38
    rst $28
    rst $38
    di
    rst $38
    ei
    rst $38
    cp [hl]
    rst $38
    xor $ff
    rst $28
    rst $38
    ld hl, sp+$70
    rst $38
    cp a
    rst $38
    ret c

    ld hl, sp-$08
    ld hl, sp+$70
    ld hl, sp-$60
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    adc b
    ldh a, [$08]
    inc [hl]
    ld [$1824], sp
    inc h
    jr jr_0a7_4f5b

    ld [$007c], sp
    cp h
    nop
    jr jr_0a7_4ef6

    ld a, [de]
    inc b
    jr jr_0a7_4efc

jr_0a7_4ef6:
    jr c, jr_0a7_4efe

    jr jr_0a7_4f00

    ld e, $03

jr_0a7_4efc:
    rlca
    rrca

jr_0a7_4efe:
    rrca
    rra

jr_0a7_4f00:
    ccf
    ld e, $7e
    inc a
    cp $7c
    cp $fc
    cp $fc
    cp $f8
    cp $f8
    cp $78
    dec e
    cp $3f
    cp $fc
    cp $7c
    cp $f9
    cp $f9
    cp $00
    cp $32
    cp $e2
    ret nz

    jp nz, $bc80

    inc d
    inc e
    db $10
    ld [de], a
    nop
    or $00
    cp $f8
    cp $f8
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$fef9]
    or $ff
    rst $08
    di
    ld sp, hl
    di
    db $fd
    rst $38
    push de
    rst $38
    push de
    rst $38
    pop af
    rst $38
    di
    db $fd
    ld sp, hl
    push af
    push af
    ld sp, hl
    ei
    db $fd
    ldh a, [$fd]
    db $e3
    db $fd
    ei
    push af
    di
    db $fd
    rst $38

jr_0a7_4f5b:
    db $fd
    rst $30
    db $fd
    ld [hl], l
    rst $38
    cpl
    or $57
    rst $38
    rlca
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
    inc b
    ei
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld sp, $24ce
    db $db
    ld l, d
    sub l
    rst $18

jr_0a7_4f87:
    jr nz, jr_0a7_4f87

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    dec a
    nop
    ld e, d
    nop
    cp l
    nop
    xor e
    nop
    xor $00
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    dec bc
    ld a, a
    sbc h
    ld c, b
    cp a
    rst $28
    ld [hl], e
    ld a, [$d575]
    xor [hl]
    ld sp, hl
    rst $38
    ccf
    db $fd
    sbc $bf
    adc $ff
    db $fd
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    nop
    rst $38
    ldh a, [rIE]
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    nop
    inc bc
    nop
    rlca
    ld [$1007], sp
    rrca
    nop
    rra
    nop
    rra
    jr nz, jr_0a7_4ffd

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
    ld bc, $887e
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [$f0]
    nop
    jr nc, jr_0a7_4ff4

jr_0a7_4ff4:
    jr nc, jr_0a7_4ff6

jr_0a7_4ff6:
    jr nc, @+$22

    jr nc, @+$22

    jr nc, @+$22

    ccf

jr_0a7_4ffd:
    nop
    ld a, a
    dec a
    ld a, b
    jr c, jr_0a7_507b

    jr nc, jr_0a7_503d

    jr nz, jr_0a7_503e

    jr nz, jr_0a7_5082

    jr nc, jr_0a7_5084

    jr nc, jr_0a7_5085

    jr nc, jr_0a7_5088

    jr nc, jr_0a7_508a

    jr nc, jr_0a7_504c

    jr nc, jr_0a7_504e

    jr nc, @+$3b

    jr nz, jr_0a7_5052

    jr nz, jr_0a7_5054

    jr nz, jr_0a7_5096

    jr nz, jr_0a7_508f

    jr nz, jr_0a7_5099

    jr nz, jr_0a7_5093

    jr nc, jr_0a7_509d

    jr nc, @+$72

    jr nc, jr_0a7_50a1

    jr nc, @+$7b

    jr nc, @-$05

    nop
    ld sp, hl
    ld h, b
    rst $38
    ld a, b
    inc e
    jp hl


    push bc
    jp hl


    db $e3
    db $fd
    push af
    ei
    rst $30
    ei
    di

jr_0a7_503d:
    ei

jr_0a7_503e:
    pop af
    ei
    db $fd
    ei
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $10
    rst $28
    ei
    rst $30

jr_0a7_504c:
    rst $38
    ld sp, hl

jr_0a7_504e:
    db $fd
    cp $3d
    rst $38

jr_0a7_5052:
    rst $30
    rst $38

jr_0a7_5054:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    nop
    rst $38
    or b
    ld c, a
    inc e
    db $e3
    xor b
    ld d, a
    ld a, $c1
    ld d, l
    xor d
    adc [hl]
    ld d, c
    sub l
    ld l, d
    sbc b
    ld h, a
    push de
    ld a, [hl+]
    cp l

jr_0a7_507b:
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a7_5082:
    rst $38
    nop

jr_0a7_5084:
    rst $38

jr_0a7_5085:
    nop

jr_0a7_5086:
    ld e, a
    nop

jr_0a7_5088:
    cp $00

jr_0a7_508a:
    add sp, $00
    nop
    nop
    nop

jr_0a7_508f:
    nop
    nop
    nop
    dec e

jr_0a7_5093:
    ld [bc], a
    sbc $e7

jr_0a7_5096:
    jp nc, $2bef

jr_0a7_5099:
    call c, $9dee
    ld l, e

jr_0a7_509d:
    or l
    rst $10
    add hl, sp
    add b

jr_0a7_50a1:
    add b
    rst $38
    jr nc, @+$01

    ld a, b
    ldh a, [$c0]
    ret nz

    add b
    add b
    nop
    add c
    nop
    add e
    nop
    add d
    dec b
    add l
    ld a, [bc]
    and e
    inc e
    inc bc
    inc a
    ld b, a
    jr c, jr_0a7_50c9

    ldh a, [$0e]
    ldh a, [$0c]
    ldh a, [rNR32]
    ldh [$3c], a
    ret nz

    jr c, jr_0a7_5086

    jr c, jr_0a7_5088

    ld a, b

jr_0a7_50c9:
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld hl, sp+$00
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    ld a, a
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    adc a
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld l, a
    sbc a
    push de
    db $e3
    ld a, [$fefc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    sbc a
    rst $28
    rst $08
    db $e3
    rst $30
    ei
    ld sp, hl
    cp $fc
    rst $38
    cp $f0
    rst $38
    jr nz, @+$01

    jr @+$01

    inc c
    rst $38
    add [hl]
    rst $38
    ld b, e
    rst $38
    ld hl, $10ff
    rst $38
    ld [$04ff], sp

jr_0a7_5141:
    rst $38
    add d
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    xor d
    ld d, l
    ld b, b
    cp a
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
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    nop
    scf
    ei
    or $39
    adc $77
    ei
    rst $20
    cp b
    ld l, a
    cp a
    adc $ef
    sub $c1
    ld e, $f3
    inc c
    inc b
    ld hl, sp+$4c
    jr nc, jr_0a7_5141

    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    add sp, $00
    di
    nop
    di
    rrca
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
    db $fc
    di
    db $fd
    ld a, [c]
    or c
    ld a, a
    sbc a
    rrca
    push bc
    db $e3
    db $fc
    ld hl, sp-$02
    rst $38
    rst $38
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
    dec a
    ld a, a
    ccf
    sbc a
    ld bc, $11cf
    rst $20
    ld a, [bc]
    pop af
    nop
    db $fc
    nop
    cp $80
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ret z

    ccf
    ld d, h
    xor a
    jp nc, $f92f

    rlca
    ret z

    scf
    db $ed
    ld [de], a
    cp $01
    rst $38
    nop
    ld e, [hl]
    cp h
    rst $38
    sbc h
    rst $00
    cp l
    cp $39
    call z, $ef3b
    ld [hl], e
    cp h
    ld [hl], e
    cp [hl]
    rst $10
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $28
    rra
    cp a
    ld c, a
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
    ld a, a
    add h
    dec de
    jp nz, $dfc7

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
    ccf
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    ld [hl], d
    rra
    sub d
    dec a
    ld a, [hl-]
    db $fd
    inc a
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld l, b
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    pop hl
    rst $38
    ld d, b
    rst $28
    ld [c], a
    ld a, l
    db $ec
    ld [hl], e
    call z, $c27b
    ld a, l
    call nc, $d26f
    ld l, a
    call Call_0a7_4873
    ccf
    ld sp, $1e0f
    ld bc, $000f
    rlca
    nop
    add e
    nop
    add e
    add b
    ld bc, $e0c0
    add b
    ret nc

    and b
    ldh a, [$30]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, [$fafc]
    db $fc
    ld sp, hl
    db $fc
    ld a, [$f8fc]
    db $fc
    ld a, [$f8fc]
    db $fc
    ld hl, sp-$04
    rst $30
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e0]
    ldh a, [$e7]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    dec d
    ld [$ff03], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    ld a, a
    ret nz

    ld b, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a7_5369:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    inc b
    rst $38
    and d
    ld e, a
    add c
    ld a, a
    jr nz, jr_0a7_5369

    sub b
    rst $28
    ldh [rIE], a
    ld a, a
    rst $38
    call z, $e93f
    rla
    db $f4
    dec bc
    push af
    ld a, [bc]
    ld a, [$fe05]
    ld bc, $007f
    ld a, $01
    pop bc
    rlca
    pop bc
    rlca
    pop bc
    rrca
    pop bc
    rrca
    pop bc
    rrca
    jp $c10f


    rrca
    jp $c30f


    rra
    add e
    rrca
    jp $830f


    rrca
    jp $830f


    rrca
    add e
    rra
    and e
    rrca
    add a
    rra
    inc bc
    rra
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rrca
    ccf
    ld bc, $fc7f
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    add hl, sp
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc [hl]
    ld [hl], c
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
    ld hl, sp+$07
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    add [hl]
    rst $38
    scf
    rst $38
    rrca
    rst $38
    and c
    ld e, a
    add b
    ld a, a
    ld d, d
    xor l
    and b
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
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    rlca
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
    cpl
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld c, a
    rst $38
    dec h
    rst $38
    inc b
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
    rrca
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
    rlca
    rst $38
    rst $38
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
    jr jr_0a7_5513

    add hl, bc
    add hl, bc
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

jr_0a7_5513:
    jr nz, jr_0a7_5536

    ld [hl+], a
    inc hl
    inc h
    add hl, bc
    add hl, bc
    add hl, bc
    dec h
    ld h, $27
    jr z, jr_0a7_5549

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a7_5559

    add hl, bc
    add hl, bc
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a7_556b

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0a7_5536:
    ld a, $3f
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc

jr_0a7_5549:
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
    add hl, bc
    add hl, bc
    ld e, d

jr_0a7_5559:
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, [hl]
    ld h, a
    ld l, b

jr_0a7_556b:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    add hl, bc
    ld c, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    dec h
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
    add hl, bc
    or a
    add hl, bc
    add hl, bc
    cp b
    sbc [hl]
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

    add hl, bc
    add hl, bc
    add hl, bc
    push bc
    add $9e
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    add hl, bc
    ret nc

    add hl, bc
    add hl, bc
    add hl, bc
    pop de
    jp nc, $d4d3

    push de
    sub $1d
    rst $10
    ret c

    reti


    jp c, $dcdb

    add hl, bc
    add hl, bc
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $0a
    jp hl


    ld [$eceb], a
    db $ed
    xor $09
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a7_570a

jr_0a7_570a:
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
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
    dec b
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
    jr nz, jr_0a7_5758

jr_0a7_5758:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a7_576b:
    nop
    nop
    nop
    nop
    ld [$d020], sp
    ld d, c
    nop
    add b
    ld [$0830], sp
    inc a
    nop
    inc a
    nop
    ld a, [hl-]
    nop
    ld [hl-], a
    nop
    inc de
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    add b
    ld bc, $009d
    jr nz, jr_0a7_57b5

    ld b, [hl]
    jr c, jr_0a7_5809

    nop
    add h
    nop
    jr nz, jr_0a7_579e

jr_0a7_579e:
    ld bc, $0300
    rlca
    rra
    ccf
    add sp, -$09
    ld l, c
    add a
    ld d, e
    add b
    ld b, c
    sbc [hl]
    ld a, [hl]
    sbc a
    sbc $3f
    db $dd
    ld a, $f3
    inc c
    ld c, a

jr_0a7_57b5:
    ldh a, [$f7]
    ld hl, sp-$31
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    ld c, a
    or b
    rst $18
    jr nz, jr_0a7_576b

    ld e, l
    ret c

    rlca
    reti


    ld b, $b0
    rrca
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add hl, bc
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    nop
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $eb
    rst $38
    sbc a
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
    db $fc
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

jr_0a7_5809:
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
    rst $38
    rst $38
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
    rst $18
    cp a
    cpl
    rst $18
    rst $18
    ld l, a
    scf
    ld l, a
    dec hl
    scf
    dec d
    sbc e
    rst $18
    adc c
    adc [hl]
    call $e6c5
    rst $30
    ld [c], a
    pop hl
    di
    pop af
    ld sp, hl
    db $fd
    ld hl, sp-$08
    db $fc
    db $fc
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38

jr_0a7_5857:
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    cp $ff
    or $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    ldh [rIE], a
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
    ld b, b
    nop
    nop
    nop
    jr nz, jr_0a7_5882

jr_0a7_5882:
    jr nz, jr_0a7_5884

jr_0a7_5884:
    nop
    nop
    db $10
    add b
    add b
    nop
    ld c, b
    nop
    adc b
    ld b, b
    and l
    ld b, b
    ld b, h
    and b
    ret nz

    jr nz, jr_0a7_5857

    nop
    ld [de], a
    nop
    or b
    nop
    ld [bc], a
    ld bc, $182c
    ld [hl], h
    db $fc
    sbc d
    db $e4
    add b
    cp $ee
    sbc $8e
    rst $18
    ld e, a
    sbc a
    or a
    rrca
    ld e, b
    daa
    db $fc
    ld a, a
    ld [hl], h
    ei
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop af
    nop
    rst $30
    ld [$00ff], sp
    ld a, h
    add e
    inc a
    jp $ff00


    nop
    rst $38
    ret nz

    ccf
    add hl, bc
    rst $38
    rrca
    rst $38
    ld e, $ff
    nop
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add e
    rst $38
    rrca
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
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    cp $3f
    ld e, h
    cp a
    cp $9f
    ld a, a
    rst $08

jr_0a7_5910:
    ld b, a
    ld l, a
    ld a, e
    daa
    rra
    inc sp
    add e
    add hl, de
    ret z

    adc l
    adc [hl]
    call nz, $c6e4
    ld b, $e3
    add c
    di
    ld bc, $01f9
    ld hl, sp+$00
    db $fc
    add [hl]
    db $fc
    call nz, $c6fe
    rst $38
    pop hl
    rst $38
    db $e4
    rst $38
    ld [hl], b
    rst $38
    or b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    ld c, $ff
    ld c, $ff
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
    ld bc, $0000
    nop
    ld h, b
    nop
    ld b, a
    nop
    ld c, c
    ld b, $1c
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    db $10
    rrca
    jr nz, jr_0a7_59e5

    ld [hl+], a
    ld b, c
    add h
    jr nz, jr_0a7_5910

    ld c, $1f
    rrca
    ld c, [hl]
    rra
    ld c, c
    ld b, $2e
    nop
    ld bc, $af2c
    nop
    add a
    sub b
    ld d, a
    add b
    sbc e
    ld b, b
    and e
    ld c, b
    call z, $e820
    inc h
    add d
    ld [hl], h
    add h
    ld [hl], d
    ld a, b
    add d
    db $eb
    nop
    ld h, [hl]
    adc c
    ret nz

    dec a
    rst $00
    inc a
    ld b, l
    cp [hl]
    rra
    cp $1e
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    add c
    rst $38
    ld b, l
    ei
    rlca
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
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add c
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    add [hl]
    ld sp, hl
    add [hl]

jr_0a7_59e5:
    ld sp, hl
    adc l
    ld a, [c]
    add $f9
    push af
    ld a, [$78ff]
    ccf
    ld a, h
    sub c
    ld a, $29
    sbc [hl]
    sbc h
    rst $08
    ldh [rVBK], a
    ld [$2467], sp
    inc sp
    jr z, jr_0a7_5a11

    sub b
    add hl, bc
    ld bc, $828c
    call nz, $c265
    db $10
    db $e3
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $02

jr_0a7_5a11:
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
    ld bc, $2000
    nop
    db $e4
    nop
    ret z

    rlca
    ld b, $08
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0f06
    ld c, $71
    and d
    pop bc
    add hl, bc
    ldh [rNR44], a
    call z, $ce15
    call Call_000_171e
    inc c
    ld l, h
    ld de, $78c7
    ld l, l
    ld a, [c]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ei
    nop
    pop hl
    nop
    jp $ff00


    nop
    dec de
    nop
    add hl, bc
    nop
    jr jr_0a7_5a5a

jr_0a7_5a5a:
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, b
    rlca
    pop bc
    ccf
    ld sp, hl
    ccf
    dec de
    cp a
    ld b, b
    cp a
    sub h
    ld a, a
    and d
    ld e, a
    add b
    ld a, a
    ld [hl], b
    xor a
    pop bc
    or a
    add a
    rst $38
    rst $30
    rst $18
    jp $cbff


    rst $38
    db $eb
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    di
    rst $38
    ld a, [$bbff]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $e3
    db $fc
    jp nz, $85fd

    ei
    ld b, $ff
    rrca
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    sbc l
    ld a, a
    ld a, b
    sbc a
    rst $28
    rra
    ei
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    inc bc
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    rlca
    ld a, b
    ld b, e
    inc a
    and c
    ld e, $00
    rra
    ld b, b
    rrca
    ret z

    rlca
    stop
    inc c
    nop
    dec bc
    nop
    inc bc
    nop
    inc bc
    db $10
    ld b, $01
    ld l, b
    ld bc, $0cc2
    pop bc
    ld e, $28
    inc d
    add d
    nop
    nop
    ld [$0102], sp
    dec bc
    rlca
    ld d, a
    ccf
    cp a
    rst $00
    ld c, d
    add a
    rlca
    ret c

    ld a, a
    sbc h
    cp e
    dec a
    ld c, l
    dec sp
    cp l
    ld b, e
    ld l, [hl]
    pop af
    ld sp, hl
    and $11
    xor $f3
    inc c
    cp $00
    rst $38
    nop
    rst $30
    nop
    add a

Call_0a7_5b2b:
    nop
    adc [hl]
    nop
    rra
    nop
    rra
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    add b
    ld a, a
    rlca
    rst $38
    ld [hl], a
    rst $38
    ld l, $ff
    ret nz

    rst $38
    call nc, $dbff
    db $fc
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $ff
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    dec sp
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
    cp $ff
    db $fd
    cp $f3
    db $fc
    db $ed
    ld a, [c]
    rst $10
    jp hl


    cp e
    rst $00
    ld h, l
    sbc a
    rst $38
    rra
    cp a
    ld a, a
    ld c, l
    rst $38
    rst $38
    rst $38

jr_0a7_5b86:
    rst $38
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld e, c
    rst $38
    db $db
    rst $38
    ei
    rst $38
    db $db
    rst $38
    call nc, $fbfb
    rst $38
    ei
    rst $38
    jr @+$01

Call_0a7_5ba4:
    cp d
    rst $38
    cp e
    rst $38
    sbc e
    rst $38
    ld b, l
    cp e
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld b, h
    cp e
    cp e
    rst $38
    or a
    rst $38
    cp a
    rst $38
    pop bc
    ccf
    or e
    ld a, a
    rst $10
    ccf
    rst $30
    rra
    pop af
    rrca
    ld hl, sp+$07
    ei
    rlca
    db $fd
    inc bc
    ei
    ld bc, $807b
    ld a, l
    add b
    adc e
    ld [hl], h
    ret c

    daa
    ld d, b
    cpl
    ld d, a
    adc [hl]
    ld a, c
    add [hl]
    ld d, [hl]
    cp c
    rst $30
    jr c, jr_0a7_5b86

    ld b, b
    rra
    add b
    db $e3
    ld [$e70b], sp
    ld e, l
    ld a, $5c
    rst $38
    rst $38
    dec e
    ld [hl], c
    adc a
    xor l
    ld [hl], e
    pop af
    ld a, [hl]
    ld h, [hl]
    rst $38
    sbc [hl]
    ld l, a
    or h
    rst $08
    and b
    rst $18
    nop
    rst $38
    ld b, h
    cp e
    jp nz, $bd3c

    ld b, d
    db $fc
    inc bc
    sub $01
    xor a
    nop
    pop af
    ld c, $c0
    ccf
    ret nc

    cpl
    sub d
    ld l, a
    ld b, $ff
    rlca
    rst $38
    add hl, de
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rla
    rst $38
    ld h, b
    rst $38
    push hl
    ei
    add a
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
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
    cp $ff
    db $fd
    cp $f5
    ld a, [$f5ea]
    push af
    set 5, d
    sub a
    rst $18
    cpl
    ld d, [hl]
    cp a
    ld [hl], $ff
    cp $ff
    or h
    rst $38
    cp $ff
    or [hl]
    rst $38
    or d
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    cp $ff
    or [hl]
    rst $38
    or h
    rst $38
    or $ff
    or [hl]
    rst $38
    xor c
    or $f6
    rst $38
    or h
    rst $38
    add hl, bc
    or $b6
    rst $38
    or a
    rst $38
    ld c, d
    or a
    inc [hl]
    rst $38
    ld [hl], $ff
    scf
    rst $38
    ld [$76f7], sp
    rst $38
    ld [hl], a
    rst $38
    rla
    rst $38
    ld [$77f7], sp
    rst $38
    ld [hl], a
    rst $38
    rla
    rst $38
    ld [$77f7], sp
    rst $38
    ld [hl], a
    rst $38
    rla
    rst $38
    adc h
    ld [hl], e
    db $76
    rst $38
    ld a, a
    rst $30
    ld [hl], h
    rst $38
    adc h
    ld [hl], e
    ld l, b
    rst $30
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    adc a
    ld [hl], a
    sbc h
    ld h, e
    ld e, b
    cp a
    db $db
    ccf
    add e
    ld a, a
    ld b, b
    rst $38
    db $ec
    di
    ld [hl], e
    adc h
    cp a
    ld b, b
    ei
    rlca
    ld e, a
    cp a
    di
    rst $38
    ld [hl], h
    rst $38
    db $76
    rst $38
    ld c, $ff
    rst $08
    rst $38
    pop de
    rst $38
    cp b
    rst $38
    dec sp
    rst $38
    sub a
    ld a, a
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    ld h, a
    ldh [$1f], a
    or b
    ld c, a
    nop
    rst $38
    dec b
    rst $38
    add a
    ld a, a
    inc bc
    rst $38
    ccf
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
    sub a
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    db $fc
    push af
    ld a, [$f3ec]
    rst $30
    swap [hl]
    rst $08
    xor a
    ld e, a
    ld e, [hl]
    cp a
    rst $38
    ld a, a
    jp nc, $ffff

    rst $38
    db $db
    rst $38
    ei
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    ld e, e
    rst $38
    reti


    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ld [bc], a
    db $fd
    ret z

    rst $38
    pop bc
    rst $38
    ld [de], a
    db $ed
    call Call_0a7_6dff
    rst $38
    ld [de], a
    db $ed
    ld l, a
    db $fd
    ld l, l
    rst $38
    dec [hl]
    rst $28
    ld e, b
    rst $28
    db $ed
    rst $38
    ld l, l
    rst $38
    sbc c
    ld h, [hl]
    db $ec
    rst $38
    ld l, h
    rst $38
    sub e
    ld l, [hl]
    ld d, c
    xor $6e
    rst $38
    ld l, [hl]
    rst $38
    add e
    ld a, [hl]
    ld h, c
    cp $67
    cp $60
    rst $38
    sbc c
    ld h, [hl]
    ld b, c
    cp $62
    rst $38
    ld b, [hl]
    rst $38
    adc $37
    adc c
    db $76
    scf
    rst $38
    rst $30
    ld a, a
    rst $38
    ld [hl], a
    adc [hl]
    ld [hl], c
    ld [hl], a
    rst $38
    rst $38
    ld [hl], a
    rst $30
    ld a, a
    sbc e
    ld [hl], a
    ld e, h
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc de
    rst $28
    rst $18
    ccf
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    or e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    ld a, $ff
    ld c, h
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rrca
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
    rst $38
    rst $38
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
    ld a, [bc]
    rst $38
    ldh [$1f], a
    ld e, b
    and a
    inc a
    jp $e0ff


    rst $30
    ld hl, sp-$25
    db $fc
    rst $18
    cp $da
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    db $ed
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld l, c
    rst $38
    db $10
    rst $28
    ld h, h
    rst $38
    ld b, $ff
    add hl, bc
    or $b6
    rst $38
    ld d, [hl]
    cp a
    add hl, hl
    or $b6
    rst $38
    sub a
    rst $38
    ld c, b
    or a
    or [hl]
    rst $38
    sbc e
    rst $38
    ld b, h
    cp e
    cp e
    rst $38
    set 7, a
    inc h
    db $db
    sbc h
    ei
    ret c

    rst $38
    jr c, @-$1f

    and [hl]
    reti


    pop de
    rst $38
    pop bc
    rst $38
    ld [hl], $c9
    add d
    db $fd
    add l
    rst $38
    dec e
    rst $28
    ld [hl], e
    adc h
    ld l, h
    rst $38
    ld a, [hl]
    rst $28
    ld a, [hl]
    rst $28
    add hl, sp
    add $ff
    xor $6f
    cp $66
    rst $38
    db $fc
    inc bc
    ld h, l
    cp $76
    rst $38
    ld [hl], a
    rst $38
    sbc a
    ld [hl], a
    adc e
    ld [hl], h
    ld a, [hl]
    rst $30
    ld a, h
    rst $30
    ld [hl], b
    rst $38
    jr c, @+$01

    add e
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
    pop af
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, $c1
    ld e, l
    ldh [$0e], a
    ldh a, [$ed]
    ld hl, sp+$04
    cp $b4
    rst $38
    ld [hl], $ff
    ld c, b
    or a
    or [hl]
    rst $38
    sbc e
    rst $38
    sub b
    rst $38
    db $db
    rst $38
    ld hl, $d8df
    rst $38
    db $db
    rst $38
    nop
    rst $38
    adc $fd
    ld l, l
    rst $38
    sub d
    ld l, l
    ld h, d
    db $fd
    ld h, b
    rst $38
    sbc b
    ld h, a
    ld c, c
    or $0e
    rst $30
    ld c, [hl]
    or a
    ret


    ld [hl], $77
    cp a
    ld [hl], e
    cp a
    call z, $f033
    cp a
    sbc e
    rst $38
    sbc a
    ei
    ld [hl], $c9
    rst $18
    ei
    ld sp, hl
    rst $18
    cpl
    db $dd
    ld h, $d9
    rst $18
    db $fd
    call z, Call_000_1cff
    rst $28
    rla
    add sp, -$03
    xor $f9
    xor $71
    xor $bf
    ld b, b
    ld h, c
    cp $48
    rst $30
    adc b
    ld [hl], a
    ld hl, sp+$07
    adc c
    db $76
    adc a
    ld [hl], a
    add e
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
    ld a, [$20ff]
    rst $38
    ldh [rIE], a
    and b
    rst $38
    db $10
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
    adc b
    ld [hl], a
    db $ed
    ld [de], a
    ld l, h

Call_0a7_5f0f:
    inc de
    dec c
    ld [bc], a
    add a
    nop
    jp Jump_000_2080


    ret nz

    ret nz

    ldh a, [$6c]
    ld hl, sp-$6e
    ld l, h
    ld l, a
    db $fc
    ld h, b
    rst $38
    add hl, de
    and $a6
    rst $38
    ld c, [hl]
    or a
    ld c, c
    or [hl]
    dec sp
    rst $38
    dec de
    rst $38
    ld h, [hl]
    sbc c
    db $db
    rst $38
    ld sp, hl
    rst $18
    ld [hl-], a
    call $fdcf
    ld l, l
    rst $38
    sub h
    ld l, a
    ld [hl], c
    xor $ef
    ld a, [hl]
    or a
    ld a, [hl]
    sbc l
    ld h, d
    ld a, h
    rst $30
    or b
    rst $38
    ld c, h
    or e
    adc $b1
    db $e4
    cp e
    add h
    ei
    or $09
    and [hl]
    reti


    inc hl
    db $dd
    inc hl
    db $dd
    ld a, [c]
    dec c
    ld [hl-], a
    call $ff0c
    ld a, $ef
    rst $10
    ld l, $13
    db $ec
    ld l, a
    cp $f2
    ld a, a
    cp $77
    cp [hl]
    ld b, c
    add sp, $77
    db $10
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38

Call_0a7_5f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add hl, bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    add d
    ld a, l
    ld sp, hl
    ld b, $6b
    sub h
    and [hl]
    ld e, c
    db $dd
    ld [hl+], a
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    add c
    add b
    nop
    ret nz

    ret nc

    ldh [$c0], a
    ld hl, sp+$18
    db $ec
    rst $38
    ld l, h
    ld l, [hl]
    rst $38
    swap [hl]
    add hl, hl
    or $b4
    rst $38
    ld b, b
    cp a
    call $9cb2
    ei
    db $e4
    db $db
    db $76
    adc c
    db $e3
    db $dd
    add a
    db $fd
    ret nc

    cpl
    inc de
    db $ec
    sub a
    ld l, [hl]
    add [hl]
    ld a, a
    jp hl


    ld d, $3c
    rst $30
    ld [hl], c
    cp a
    ld a, a
    cp e
    xor $11
    or a
    ei
    ret


    rst $38
    rst $28
    db $dd
    ld a, d
    add l
    ld a, [$4cdd]
    rst $38
    rst $38
    xor $f9
    ld b, $f1
    xor $66
    rst $38
    ei
    ld [hl], a
    cp a
    ld [hl], a
    sbc a
    ld h, b
    di
    ld a, a
    db $fd
    cp $db
    db $fd
    db $e3
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    dec sp
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    db $fd
    rst $30
    ei
    and $ff
    sbc $ff
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    di
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    cp $ff
    db $fd
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
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38

jr_0a7_6062:
    ld c, e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld l, b
    sub a
    or b
    ld c, a
    and b
    ld e, a
    db $76
    adc c
    db $db
    inc h
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $8080
    ret nz

    jr nz, jr_0a7_6062

    ld l, b
    ldh a, [$a8]
    ld a, h
    sbc b
    ld h, [hl]
    dec h
    cp $72
    cp a
    ld d, e
    cp a
    ld b, h
    cp e
    rst $08
    ei
    ld sp, hl
    rst $18
    ld [hl+], a
    db $dd
    adc a
    db $fd
    ld a, h
    rst $28
    ccf
    xor $9b
    ld h, h
    or $7f
    ccf
    rst $30
    db $d3
    ccf
    ld c, h
    or e
    rst $38
    cp e
    sbc e
    rst $38
    add hl, hl
    rst $18
    daa
    ret c

    rst $38
    db $dd
    db $ec
    rst $38
    ld a, l
    xor $3f
    ret nz

    ld [hl], c
    xor $e8
    ld [hl], a
    add sp, $77
    db $ec
    inc de
    rrca
    ldh a, [$73]
    rst $38
    ld a, e
    cp $7a
    db $fd
    xor d
    rst $30
    sbc [hl]
    rst $28
    rst $08
    cp a
    ld l, a
    rst $38
    add $ff
    add h
    rst $38
    ld c, c
    rst $30
    ld d, l
    rst $28
    dec e
    rst $38
    ld a, h
    rst $38
    cp $ff
    db $ec
    rst $38
    di
    rst $38
    adc a
    rst $38
    dec de
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    rst $08
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a7_612d:
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    sbc a
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
    rst $18
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld l, a
    jp nz, $e03d

    rra
    xor b
    ld d, a
    ld e, b
    and a
    db $eb
    inc d
    rst $18
    jr nz, jr_0a7_612d

    ld b, l
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
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    add c
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ret nz

    jr nc, jr_0a7_61c5

    ld hl, sp-$10
    cp [hl]
    ld e, [hl]
    cp e
    ld h, $d9
    ld hl, sp-$21
    rst $08
    db $fd
    ld [de], a
    db $ed
    db $d3
    db $ec
    db $e3
    ld a, [hl]
    ld hl, sp+$77
    add sp, $17
    ld c, h
    or e
    rst $00
    cp e
    add l
    ei
    ld [hl], d
    adc l
    ld a, [c]
    db $dd
    ld e, a
    db $fd
    inc l
    rst $38
    sub a
    ld l, [hl]
    add hl, de
    and $a6
    ld a, a
    rst $38
    ld [hl], a
    or e
    ld a, a
    cp $01
    rst $20
    ld a, b
    ld h, [hl]
    rst $38
    rst $30

jr_0a7_61c5:
    cp $f3
    db $fc
    db $ed
    di
    ld d, l
    rst $28
    ld a, $df
    sbc $7f
    sbc $ff
    call $abfe
    db $dd
    or d
    rst $08
    xor e
    rst $18
    add hl, sp
    rst $38
    ld sp, hl
    rst $38
    cp b
    rst $38
    reti


    rst $38
    jp $8fff


    rst $38
    scf
    cp $ef
    cp $fb
    cp $f1
    cp $e7
    db $fc
    rra
    db $fc
    cp $fc
    sbc h
    ld hl, sp-$08
    ldh a, [$d0]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    ldh [$80], a
    ld hl, sp-$20
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
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18

jr_0a7_621f:
    rst $38
    add hl, bc

Jump_0a7_6221:
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
    jr nz, jr_0a7_621f

    ld c, b
    or a
    ldh [$1f], a
    ld [hl], b
    adc a
    xor b
    ld d, a
    ld a, [$ad05]
    ld d, d
    db $eb
    inc d
    or $09
    ei
    inc b
    rst $38
    nop
    jp c, $fe25

    ld bc, $00ff
    rst $38
    nop
    ld l, a
    db $10
    rra
    nop
    rrca
    nop
    rlca
    nop
    add c
    nop
    add b
    nop
    ld h, b
    add b
    ld [$7cf0], sp
    ret c

    ld [hl], d
    adc h
    db $ec
    rst $38
    ld l, [hl]
    rst $38
    or [hl]
    ld a, a
    ret z

    scf
    ld [hl], $ff
    ei
    cp a
    sbc [hl]
    ei
    ld a, a
    add b
    ld a, [$c8dd]
    rst $38
    db $fd
    xor $b9
    ld b, [hl]
    ld c, c
    or $ef
    ld [hl], a
    dec bc
    rst $30
    ld e, a
    cp e
    adc a
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $83
    db $fc
    add e
    db $fc
    add e
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$df]
    ldh a, [rIE]
    ldh a, [$df]
    ldh a, [$df]
    cp $ff
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    jr jr_0a7_62c2

jr_0a7_62c2:
    sbc d
    nop
    inc bc
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
    ret nz

    nop
    ld hl, sp-$40
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld e, $ff
    dec bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a7_6302:
    nop
    rst $38
    nop
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
    ld b, b
    cp a
    ld h, b
    sbc a
    ret nz

    ccf
    and b
    ld e, a
    or b
    ld c, a
    ld h, b
    sbc a
    ld b, h
    cp e
    and h
    ld e, e
    adc a
    ld [hl], b
    call nc, $8e2b
    ld [hl], c
    cp d
    ld b, l
    ld l, a
    db $10
    ld a, [de]
    dec b
    ld [$0507], sp
    ld [bc], a
    inc bc
    nop
    pop bc
    add b

jr_0a7_6334:
    ld h, b
    ret nz

    add c
    ld [hl], b
    adc b
    ld [hl], b
    jr nc, jr_0a7_6334

    ldh a, [$b8]
    ld e, b
    or b
    jr nc, jr_0a7_6302

    ret nc

    ldh [$c0], a
    ldh [$60], a
    ret nz

    ret nz

    nop
    pop bc
    nop
    add b
    ld bc, $0102
    ret nz

    rst $38
    ld a, a
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
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    cp $03
    cp $cf
    cp $ff
    db $fd
    rst $38
    ld a, l
    nop
    sbc l
    nop
    inc c
    nop
    ld e, d
    nop
    add hl, de
    nop
    dec b
    ld [$007f], sp
    dec h
    nop
    ld d, [hl]
    nop
    add h
    nop
    dec b
    nop
    adc d
    nop
    inc b
    nop
    call nz, $f800
    ret nz

    cp $f8
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    pop bc
    ccf
    ld h, d
    rra
    or [hl]
    rrca
    db $db
    rlca
    ld h, h
    dec de
    and d
    dec e
    sbc b
    daa
    adc $31
    inc hl
    ld e, h
    cp b
    ld b, a
    ld c, $f1
    db $e3
    inc e
    ld hl, sp+$07
    sbc [hl]
    ld h, c
    ld b, h
    cp b
    nop
    ldh a, [rNR23]
    ldh [$c1], a
    ld a, $fc
    inc bc
    rrca
    nop
    call nz, $fc00
    nop
    add sp, -$01
    add sp, $7f
    ret nc

    ld a, a
    ret nc

    ld a, a
    ret nc

    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    ld b, b
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $18
    nop
    ld a, e
    nop
    ldh a, [rP1]
    stop
    nop
    nop
    nop
    nop
    ld bc, $c100
    ld bc, $c3f9
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
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
    rra
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

jr_0a7_6491:
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    inc bc
    cp $00
    cp $02
    db $fc
    ld bc, $06fc

jr_0a7_649f:
    ld sp, hl
    dec h
    ei
    ld e, $f3
    inc c
    di
    inc d
    rst $38
    dec de
    db $fc
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    ei
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    ld a, a
    ldh [$1f], a
    jr c, jr_0a7_6491

    adc h
    ld [hl], e
    db $eb
    inc e
    jr nc, jr_0a7_649f

    jp nz, Jump_0a7_6221

    dec b
    ld d, c
    ld l, $90
    ld l, h
    ld a, [bc]
    db $f4
    ldh [$1f], a
    ld a, [hl]
    ld bc, $0007
    nop
    nop
    ld [$0000], sp
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
    ld d, b
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0303
    inc bc
    rlca
    inc bc
    ld h, a
    rlca
    adc l
    ld b, a
    call $8f0e
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    cp $ff
    rst $38
    cp $fd
    cp $fe
    db $fd
    ei
    db $fd
    db $fd
    ei
    rst $30
    ei
    ld a, [$eef7]
    or $f6
    db $ec
    call nz, $fcec
    ret z

    add b
    ret c

    db $f4
    sbc e
    rlca
    cp a
    rst $08
    ccf
    rra
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, e
    ccf
    add a
    rra
    ld l, l
    rst $00
    ld h, c
    di
    push hl
    ld hl, sp-$1c
    cp $c2
    rst $38
    push bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    add e
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld b, c
    cp a
    cp b
    ld c, h
    inc a
    ret nz

    adc h
    db $10
    ld c, $00
    ld c, $01
    ldh [$1f], a
    inc b
    ei
    db $f4
    rrca
    ccf
    nop
    inc bc
    nop
    ld bc, $0702
    inc bc
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    ld e, $1f
    ld sp, $1d1f
    ccf
    ld a, l
    ccf
    ld a, $7f
    cp $7f
    cp $7f
    ld hl, sp-$01
    and e
    rst $38
    ccf
    rst $08
    rst $08
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    or $ff
    ld [c], a
    db $fd
    dec c
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    cp h
    rst $38
    or c
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    call Call_0a7_7dff
    rst $38
    ld a, [c]
    rst $38
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
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    rst $38
    or $e6
    cp $f6
    db $ec
    db $ed
    db $fc
    call $fbf9
    reti


    sbc c
    di
    di
    or e
    inc hl
    rst $30
    rst $20
    ld h, [hl]
    rst $08
    ld h, [hl]
    db $ed
    adc $df
    call z, $9fcc
    sbc a
    sbc a
    sbc a
    ccf
    ld a, $3f
    ld a, [hl]
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    ccf
    sbc a
    rrca
    or e
    rst $00
    di
    pop af
    db $fc
    ld hl, sp-$03
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
    ld a, a
    rst $38
    cp a
    ld a, a
    xor a
    rra
    sub a
    rst $08
    rst $10
    db $e3
    ld [hl], e
    ld sp, hl
    cp $fc
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
    rst $18
    rst $38
    rst $38
    rst $38
    add hl, de
    nop
    ld [bc], a
    dec c
    ld a, e
    inc b
    or b
    ld c, a
    adc d
    ld [hl], c
    and b
    pop bc
    ld bc, $7a80
    add c
    ld h, $f9
    ld sp, hl
    rlca
    rst $38
    nop
    rst $08
    ldh a, [$cc]
    rst $38
    rst $08
    rst $38
    and $ff
    ldh [rIE], a
    pop bc
    rst $38
    ld a, l
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], c
    rst $38
    ld c, a
    rst $38
    dec b
    ei
    adc a
    pop af
    inc b
    ei
    adc a
    rst $38
    db $e4
    rst $38
    call nz, Call_000_1bfb
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    sbc h
    rst $38
    ld bc, $0fff
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld sp, $b2ff
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
    cp $ff
    rst $30
    cp $fd
    cp $ff
    db $fc
    ld a, [$f2fd]
    db $fd
    di
    db $fd
    db $ed
    ei
    rst $00
    ei
    db $db
    rst $30
    cpl
    rst $30
    ld a, a
    and a
    ld h, a
    rst $28
    ld a, a
    rst $08
    rst $08
    rst $18
    sbc a
    rst $18
    sbc [hl]
    cp a
    ld a, $bf
    ld a, [hl]
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    scf
    rst $38
    rst $38
    inc sp
    ld a, a
    inc sp
    ccf
    ld [hl], e
    rst $28
    ld [hl], e
    cp a
    db $e3
    cpl
    di
    cpl
    di
    ld l, a
    di
    ld h, e
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    pop af
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
    rra
    ccf
    rla
    adc a
    rst $20
    jp $f1f8


    ld hl, sp-$04
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    rst $08
    sbc a
    db $db
    rst $20
    db $ed
    di
    ei
    db $fc
    db $fd
    cp $ff
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
    ld b, $07
    ld [$0a09], sp
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
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_0a7_67dc

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a7_6800

    ld a, [hl+]
    dec hl
    nop
    nop
    inc l

jr_0a7_67dc:
    dec l
    ld l, $2f
    jr nc, jr_0a7_6812

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a7_6822

    ld a, [hl-]
    nop
    dec sp
    nop
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
    nop
    ld c, e
    ld c, h
    ld c, l

jr_0a7_6800:
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
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_0a7_6812:
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

jr_0a7_6822:
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
    nop
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_00c3

    nop
    nop
    nop
    call nz, Call_000_00c5
    nop
    add $c7
    ret z

    ret


    jp z, $cccb

    call RST_00
    nop
    nop
    nop
    adc $00
    nop
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, RST_00

    nop
    nop
    db $db
    pop de
    pop de
    jp nc, $dddc

    sbc $df
    ldh [$e1], a
    nop
    ld [c], a
    db $e3
    nop
    nop
    nop
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    db $fc
    pop hl
    cp $e3
    db $fc
    db $e3
    db $fc
    di
    db $fc
    db $e3
    db $fc
    di
    db $fc
    di
    db $fc
    pop af
    cp $f3
    db $fc
    ldh a, [rIE]
    ld sp, hl
    cp $f1
    cp $f8
    rst $38
    ld sp, hl
    cp $fb
    cp $fa
    rst $38
    cp $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    cp [hl]
    ret nz

    ld e, l
    ldh [$ec], a
    ld [hl], b
    sub $38
    db $eb
    inc e
    push af
    ld c, $cf
    inc bc
    ld [c], a
    ld bc, $00c1
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ldh a, [rP1]
    ld a, b
    add b
    ld hl, sp+$00
    ld a, h
    add b
    jr c, @-$3e

    ld a, $c0
    sbc l
    ldh [$9e], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$d3]
    db $ec
    rst $00
    ld hl, sp-$3d
    db $fc
    rst $00
    ld hl, sp-$1f
    cp $e3
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    adc b
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    ldh a, [rLCDC]
    ld a, b
    jr nz, jr_0a7_6b05

    db $10
    ld c, $08
    rlca
    ld b, $07
    ld [bc], a
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $06
    ld c, $06
    ld c, $06
    ld c, $06
    ld c, $06
    adc [hl]
    ld b, $cc
    ld b, $ec
    ld b, $fc
    ld b, $f5
    ld c, $f5
    ld c, $f5
    ld c, $f7
    inc c
    rst $30
    inc c
    rst $30
    inc c
    db $fd
    ld c, $6f
    sbc h
    dec l
    sbc $2d

jr_0a7_6b05:
    sbc $0d
    cp $0d
    cp $0c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
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
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    adc h
    rst $38
    call z, $c8ff
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
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
    ld sp, hl
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$7a
    nop
    ld b, $00
    ld [bc], a
    nop
    jr z, jr_0a7_6b78

jr_0a7_6b78:
    add hl, de
    ld [$1819], sp
    add hl, de
    jr @+$1d

    jr jr_0a7_6b9c

    jr @+$1a

    ld [$0818], sp
    jr jr_0a7_6b90

    jr @+$0a

    jr jr_0a7_6b94

    inc e
    ld [$0888], sp

jr_0a7_6b90:
    ld c, h
    ld [$084c], sp

jr_0a7_6b94:
    ld c, h
    ld [$084c], sp
    ld l, h
    ld [$086d], sp

jr_0a7_6b9c:
    dec l
    ld [$082d], sp
    inc l
    inc c
    ld c, h
    dec l
    ld b, l
    inc l
    ld h, l
    inc l
    ld h, [hl]
    dec l
    ld h, a
    inc l
    daa
    ld l, h
    cpl
    ld h, h
    ld [hl], a
    inc l
    dec a
    ld h, [hl]
    scf
    ld l, h
    cp l
    ld h, [hl]
    db $ed
    db $76
    db $fc
    ld h, [hl]

jr_0a7_6bbc:
    db $ed
    db $76
    db $ed
    db $76
    db $ed
    db $76
    rst $28
    db $76
    rst $38
    db $76
    cp a
    db $76
    cp a
    db $76
    rst $38
    db $76
    ccf
    or $3a
    rst $30
    ld a, [hl-]
    rst $30
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38

jr_0a7_6bd6:
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ld l, e
    rst $30
    ld l, a
    di
    rst $28
    ld [hl], e
    rst $38
    ld sp, $31ff
    rst $38
    ld sp, $10fb
    ld sp, hl
    db $10
    ld sp, hl
    jr jr_0a7_6bd6

    jr jr_0a7_6bbc

    ld [$08dd], sp
    dec e
    ld [$0c9d], sp
    add l
    inc c
    adc $04
    adc [hl]
    inc b
    jp z, $9c0c

    ld [$ff00], sp
    ld sp, $f6df
    dec e
    cp $15
    ld [c], a
    dec e
    or b
    rrca
    ld hl, $7a0e
    rlca
    ld c, l
    ld [bc], a
    ld e, h
    inc bc
    ld e, $01
    ld b, $01
    dec b
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    inc b
    inc c
    ld [bc], a
    dec b
    ld a, [bc]
    inc [hl]
    dec bc
    ld d, h
    dec hl
    jr nz, jr_0a7_6cb9

    and b
    ld e, a
    xor b
    ld d, a
    xor d
    ld d, l
    xor d
    ld d, l
    push hl
    ld a, [de]
    ld [hl], c
    adc [hl]
    sub c
    ld l, [hl]
    ld b, b
    cp a
    ld d, d
    db $ed
    adc b
    ld [hl], a
    jp hl


    rra
    sbc c
    ld h, [hl]
    and l
    ld e, e
    and d
    ld e, l
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    ld b, l
    cp a
    and h
    rst $38
    ld h, $ff
    ld d, $ff
    ld e, e
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld bc, $2fff
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a

jr_0a7_6cb9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
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
    sbc a
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $18
    rrca
    cp $0f
    call c, Call_0a7_5f0f
    ld [$0867], sp
    ld l, a
    rrca
    ld l, d
    rlca
    xor b
    rlca
    ld l, c
    rlca
    cpl
    ld [bc], a
    ld a, [hl+]
    ld h, $3e
    ld h, $3f
    ld b, $1f
    rlca
    ld a, d
    dec b
    ld hl, $b1ff
    ld l, a
    ld [hl], e
    xor l
    ld hl, $25ff
    ld a, [$fc23]
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    inc de
    db $ec
    and b
    ld a, a
    inc h
    ei
    ld d, b
    cp a
    ld b, h
    cp e
    ld bc, $39fe
    add $60
    sbc a
    ld l, b
    sub a
    ld b, b
    sbc a
    add sp, $17
    jp hl


jr_0a7_6d39:
    ld d, $25
    jp nc, $d328

    ld [bc], a
    pop af
    ld c, $f1
    adc a
    ld [hl], b
    add e
    ld a, h
    adc c
    halt
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add b
    rst $38
    jr nz, @+$01

    jr nz, jr_0a7_6d39

    inc b
    rst $38
    ld bc, $00ff
    rst $38
    and a
    rst $38
    or l
    rst $38
    or $ff
    inc sp
    rst $38
    ld h, a
    rst $38
    sub $ff
    inc hl
    rst $38
    ld [hl], c
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    inc de
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    rra
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$c0], a
    nop
    rst $38
    nop
    adc b
    rst $30
    adc c
    ld a, [hl]
    inc a
    jp $01ff


    rst $38
    ld bc, $01ff
    rst $38
    inc bc

jr_0a7_6dea:
    ld a, [$0c07]
    rst $38
    ld h, b
    rst $38
    rst $20
    rst $38
    cp $ff
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

Call_0a7_6dff:
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    jr jr_0a7_6dea

    or c
    call z, $c23d
    ld a, [hl]
    jp $9c6b


jr_0a7_6e12:
    cp a
    ld b, b
    sbc a
    ld h, e
    ld [hl], e
    adc h
    inc de
    db $ec
    inc e
    db $e3
    ld a, [hl-]
    pop bc
    ld [de], a
    db $ec
    inc e
    db $e3
    dec e
    db $e3
    sub a
    ld l, h
    ld a, [de]
    push hl
    sbc c
    ld h, e
    ld d, a
    and b
    jr jr_0a7_6e12

    ld a, [de]
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    sub l
    db $eb
    ld a, [de]
    push hl
    ld d, $e8
    ld d, [hl]
    jp hl


    sub l
    db $eb
    ld [$79f4], a
    or $28
    rst $30
    call $80f2
    rst $38
    push hl
    ei
    and $ff
    db $e4
    rst $38
    ld h, $f9
    push bc
    ld a, [$f9c6]
    ldh [rIE], a
    and $ff
    and $ff
    ld [c], a
    db $fd
    rst $20
    rst $38
    and $ff
    ldh a, [rIE]
    or $ff
    pop af
    cp $f1
    cp $fb
    rst $38
    rst $30
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
    ldh a, [rIE]
    rst $38
    di
    db $eb
    rst $30
    add sp, -$09
    ld sp, hl
    rst $20
    ret c

    rst $20
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a7_6ea9:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    ld hl, sp-$01
    ld bc, $01fe
    cp $f0
    nop
    ld bc, $da00
    ccf
    nop
    rst $38
    ld c, b
    or a
    ld d, d
    xor l
    and h
    db $db
    jr c, @-$37

    sub h
    db $eb
    jr nc, jr_0a7_6ea9

    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    adc [hl]
    rst $38
    ldh a, [rIE]
    xor $ff
    db $fc
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
    ld [hl], b
    nop
    ld e, h
    add b
    rst $10
    jr z, jr_0a7_6f65

    inc sp
    xor $88
    cp [hl]
    ld c, b
    inc h
    inc sp
    ld a, a
    add b
    dec l
    ret z

    ret


    ld [hl-], a
    cp b
    nop
    nop
    call z, Call_000_30cf
    adc $33
    ld a, e
    call z, $cc33
    adc b
    inc sp
    adc b
    nop
    nop
    nop
    ld hl, $de10
    nop
    inc sp
    call z, $b35c
    reti


    ld [hl+], a
    and b
    ld b, b
    ld c, h
    or e
    ld d, h
    cp e
    jp nz, $bf00

    ld b, b
    ld l, d
    add h
    ld h, d
    adc h
    ld [hl+], a
    db $dd
    push de
    cp e
    ld d, l
    xor $40
    rst $38
    pop af
    ld [$22c4], sp
    ld a, e
    add b
    and $99
    ld h, [hl]
    rst $38
    ld h, h
    rst $38
    ld l, $d9
    and $ff
    ld h, [hl]
    rst $38
    adc d
    db $fd
    ld h, [hl]
    rst $38
    inc d
    ld [$4cb3], a
    ld h, $ff
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38

jr_0a7_6f65:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    call c, $ddff
    rst $38
    ld d, $e9
    nop
    rst $38
    ld [bc], a
    db $fd
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
    ld a, a
    add b
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    db $f4
    db $dd
    ld [hl+], a
    ld a, a
    add b
    ld bc, $fc00
    inc bc
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    jr c, @+$01

    ret nz

    rst $38
    db $10
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    db $e4
    rst $38
    ld hl, sp-$01
    db $fc
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
    nop
    nop
    nop
    ld l, a
    adc b
    ld h, a
    ld [hl-], a
    ld h, b
    adc d
    ld d, l
    adc b
    ld d, l
    ld [hl+], a
    cp b
    ld [bc], a
    db $dd
    adc b
    cp d
    nop
    nop
    nop
    call z, $d200
    jr z, jr_0a7_706a

    ld [hl-], a
    scf
    ret z

    ld [hl], a
    adc b
    ld b, l
    ld [hl-], a
    jr nz, jr_0a7_700c

jr_0a7_700c:
    add b
    nop
    ld [bc], a
    nop
    ld [hl], b
    nop
    inc a
    pop bc
    call z, $f233
    nop
    inc c
    add b
    rst $28
    db $10
    call z, $c833
    nop
    rst $38
    nop
    db $fc
    ld bc, $00f5
    add h
    ld a, e
    ld e, d
    or a
    ld [hl], d
    call $ff00
    add hl, de
    add b
    ld h, [hl]
    nop
    db $dd
    nop
    ld h, [hl]
    sbc c
    ld c, h
    rst $38
    ld b, h
    rst $38
    ld h, [hl]
    sbc c
    ld b, h
    rst $38
    ld h, h
    rst $38
    and $99
    call nz, $5bff
    and h
    ld [hl], h
    adc c
    ld b, h
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld l, l
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    ld [$1cff], sp
    rst $38
    jr @+$01

    ld e, $ff
    adc b
    rst $38
    rst $28
    stop
    rst $38

jr_0a7_706a:
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    and b
    sbc a
    ld h, b
    ld [de], a
    db $ed
    cpl
    ret nc

    dec bc
    db $f4
    dec bc
    db $f4
    rlca
    ld hl, sp+$01
    cp $4b
    or h
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    db $fd
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
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    rst $30
    rst $38
    ret z

    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a7_70b7:
    ld bc, $ffc4
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
    ld h, b
    rst $38
    jr z, @+$01

    dec d
    rst $38
    ld a, $ff
    add $f8
    dec e
    ld [c], a
    dec c
    ldh a, [rNR23]
    and $0f
    ldh a, [rSC]
    db $fc
    inc c
    di
    rrca
    rst $38
    rst $38
    rra
    rst $38
    call z, $f8fc
    db $fc
    ld hl, sp-$04
    nop
    nop
    nop
    sbc b
    add b
    ld h, h
    nop
    rlca
    xor b
    ld bc, $4799
    jr nz, jr_0a7_70b7

    ld h, $91
    adc b
    rlca
    nop
    nop
    nop
    ld bc, $2300
    nop
    nop
    ld h, [hl]
    ld [hl], a
    adc b
    ld d, b
    adc c
    ld d, c
    ld h, $4e
    nop
    ld bc, $2000
    nop
    ld c, b
    nop
    ld d, h
    adc c
    adc l
    ld [hl], d
    ld [hl], l
    ld [bc], a
    ld de, $5e00
    ld hl, $6699
    ld c, e
    nop
    ld a, a
    nop
    ld e, a
    add b
    ld c, d
    add h
    ld bc, $abfe
    db $76
    xor d

jr_0a7_712b:
    db $dd
    ld d, b
    xor a
    ld de, $6400
    nop
    ei
    nop
    sbc h
    ld h, e
    ld l, c
    rst $18
    ld [$eeff], sp
    ld de, $ffc8
    ld b, $ff
    ld l, [hl]
    sub c
    jr jr_0a7_712b

    db $fc
    ld [bc], a
    ld l, d
    sub c
    ld c, b
    rst $38
    xor $ff
    ld [hl], $ff
    reti


    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    sub c
    rst $38
    jr nz, @+$01

    ld [$30ff], sp
    rst $38
    rst $28
    db $10
    inc sp
    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $28
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
    dec a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $08
    ccf
    rst $38
    rst $38
    ld b, b
    rst $38
    jr @+$01

    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38

jr_0a7_71ca:
    ld [c], a
    rst $38
    db $fd
    rst $38
    db $eb
    rst $38

jr_0a7_71d0:
    or b
    ld b, a
    scf
    ld [$04cb], sp
    ld l, h
    inc de
    sub e
    inc c
    cp b
    ld b, a
    ld [$d015], a
    rst $28
    rst $38
    ldh [rIE], a
    ld b, b
    ld a, a
    inc c
    ld a, a
    dec sp
    ld a, a
    add hl, bc
    nop
    nop
    dec de
    nop
    scf
    nop
    ld a, $04
    ld a, [de]
    sub c
    ld d, $01
    ld l, $04
    ld c, $91
    adc [hl]
    ld de, $000c
    ld bc, $ae10
    ld de, $240e
    xor d
    dec d
    add hl, sp
    sub e
    rra
    inc h
    dec a
    nop
    ld [hl+], a
    nop
    ld c, $20
    dec sp
    nop
    adc d
    ld sp, $2c93
    rlca
    jr z, jr_0a7_71ca

    ld [bc], a
    cp c
    ld b, $97
    inc l
    inc de
    jr z, jr_0a7_71d0

    nop
    jp nz, Jump_000_0a31

    ld sp, $3d82
    sub l
    ld l, $17
    cp e
    add b
    ccf
    dec sp
    nop
    ld l, $00
    rst $38
    nop
    call nc, Call_0a7_5b2b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ld d, e
    cp a
    ld d, l
    cp a
    add h
    ld a, e
    ld e, a
    cp e
    ld [de], a
    db $ed
    inc c
    di
    inc de
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    cp e
    rst $38
    xor l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    xor h
    di
    ld [c], a
    ld sp, hl
    pop hl
    db $fc
    ld b, h
    cp $01
    cp $fd
    ld [bc], a
    ld d, [hl]
    xor c
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$0ef1], sp
    rst $30
    ld [$01fe], sp
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $20df
    ret nz

    nop
    ret nz

    ccf
    push af
    rst $38
    or $ff
    ld a, l
    rst $38
    db $76
    rst $38
    db $fd
    rst $38
    ld a, $ff
    cp e
    rst $38
    ld h, a
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    sbc $ff
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    ld bc, $ffff
    rst $38
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, b
    sbc a
    ld d, d
    rst $28
    add b
    ld a, a
    ld c, b
    cp a
    ld [bc], a

jr_0a7_72d9:
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    inc hl
    rst $38
    ld e, b
    cp a
    rst $38
    dec hl
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, a
    nop
    cp a
    nop
    cp c
    ld b, [hl]
    db $ed
    ld c, h
    adc $33
    db $ed
    ld [de], a
    db $eb
    ld c, h
    db $ed
    ld [de], a
    rst $08
    ld [hl-], a
    ld e, e
    adc h
    add hl, sp
    ld [bc], a
    rst $08
    ld [hl-], a
    ld a, e
    call z, Call_0a7_5ba4
    xor $33
    jr c, jr_0a7_72d9

    ld d, $c9
    dec hl
    nop
    jr nc, jr_0a7_7311

    ld d, e

jr_0a7_7311:
    ld [$06fb], sp
    db $10
    rst $28
    ld [hl+], a
    db $dd
    ld c, a
    jr nc, jr_0a7_731f

    ei
    xor d
    db $dd
    db $fc

jr_0a7_731f:
    inc bc
    adc $31
    pop bc
    ld a, $e9
    ld d, $00
    rst $38
    jp hl


    rst $18
    ld [hl-], a
    rst $38
    jr nz, @+$01

    cp $01
    ei
    inc b
    db $ec
    inc de
    nop
    rst $38
    ld [hl], $ff
    ld [bc], a
    rst $38
    ld bc, $76ff
    rst $38
    db $ec
    di
    rlca
    ld hl, sp+$32
    rst $38
    add c
    ld a, [hl]
    add b
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], $ff
    rst $18
    rst $38
    ldh [rIE], a
    rst $38
    di
    ld a, [$fffd]
    cp $7f

jr_0a7_735b:
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    ld d, b
    ccf
    ret nz

    ccf
    and d
    ld e, a
    reti


    daa
    and h
    ld e, e
    ld a, [$f005]
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
    jr nz, jr_0a7_735b

    or l
    ld c, d
    ld c, a
    nop
    rra
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    sbc e
    rst $38
    ld c, a
    rst $38
    di
    rst $38
    push hl
    rst $38
    cp e
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rrca
    ldh a, [rIE]
    nop
    db $f4
    dec bc

jr_0a7_73b2:
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
    ld bc, $06ff
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    inc de
    rst $38
    sub l
    rst $38
    ld c, [hl]
    rst $38
    inc de
    rst $38
    adc l
    rst $38
    ld c, [hl]
    rst $38
    inc sp
    db $fc
    ret z

    db $fc
    ld a, [$f6f8]
    ld hl, sp-$04
    ldh a, [$f4]
    ldh a, [$0c]
    ldh a, [$f8]
    nop
    ld l, b
    and b
    sub b
    ret z

    ldh [$28], a
    and b
    ld l, b
    and b
    ret z

    ld c, b
    xor b
    and b
    ld l, b
    add sp, -$80

jr_0a7_73fe:
    ld b, b
    xor b
    db $10
    ld l, b
    ld a, b
    add b
    ld c, b
    and b
    add b
    ld l, b
    jr @-$1e

    ld h, c
    sub b
    ld [hl-], a
    ld b, b
    ld e, d
    add b
    ldh a, [rP1]
    add l
    ld [bc], a
    jr nz, jr_0a7_73b2

    nop
    ld hl, sp-$58
    ld d, b
    ld [$08d0], sp
    ret nc

    adc b
    ld d, b
    add hl, bc
    ret nc

    ld c, c
    ret nc

    pop bc
    ld d, b
    ld e, c
    ret nc

    sbc c
    ret nc

    ld l, c
    ret nc

    jr nc, jr_0a7_73fe

    ld c, d
    sub b
    ld l, e
    sub b
    ld l, a
    sub b
    nop
    rst $38
    rra
    ldh [$03], a
    db $fc
    ccf
    rst $38
    inc bc
    rst $38
    rlca
    ld hl, sp-$65
    ld a, h
    ld [hl], a
    adc a
    rrca
    ldh a, [rP1]
    cp $b9
    cp $be
    rst $38
    add [hl]
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp [hl]
    rst $38
    xor [hl]
    rst $38
    cp b
    rst $38
    cp h
    ld a, a
    ld a, [hl]
    sbc a
    ld d, [hl]
    rst $28
    ld a, h
    di
    ld c, [hl]
    db $fd
    ld b, e
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    daa
    rst $38
    ld de, $09ff
    rst $38
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    ld [hl], l
    adc e
    xor $11
    ei
    db $fc
    ld a, l
    cp $de
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
    xor $ff
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
    rst $08
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ld bc, $05ff
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    dec b
    rst $38
    ld c, a
    rst $38
    xor a
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
    dec sp
    rst $38
    sbc h
    rst $38
    adc $ff
    ld h, e
    rst $38
    sbc c
    rst $38
    db $dd
    db $e3
    ld a, [c]
    rst $08
    ldh a, [$7f]
    nop
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    ld b, a
    jr c, jr_0a7_7534

    jr c, jr_0a7_753e

    jr nc, jr_0a7_7540

    jr nc, jr_0a7_7552

    jr nz, jr_0a7_7554

    jr nz, jr_0a7_7556

    jr nz, jr_0a7_7558

    jr nz, jr_0a7_755a

    jr nz, jr_0a7_755c

    jr nz, jr_0a7_753e

    ld b, b
    rra
    ld h, b
    ccf
    ld b, b
    cp a
    ld b, b
    rra
    ldh [$3c], a
    ret nz

    ld [hl], b
    add b
    add l
    nop
    ld sp, $fc0c
    nop
    db $fd
    nop
    ld a, l
    nop
    dec a
    nop
    dec e
    nop
    add hl, sp
    nop
    inc a
    ld bc, $0178
    reti


    nop
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    add c
    ld a, c

jr_0a7_7534:
    inc bc
    ld sp, hl
    db $ec
    inc de
    call c, $a003
    rst $18
    rst $38
    ei

jr_0a7_753e:
    di
    dec de

jr_0a7_7540:
    add sp, $17
    ld c, b
    or a
    inc sp
    rst $38
    sub a
    ld a, e
    ld b, e
    cp a
    daa
    rst $18
    rst $18
    rst $38
    rst $38
    rst $30
    dec sp
    rst $30

jr_0a7_7552:
    inc hl
    rst $38

jr_0a7_7554:
    db $e3
    rst $38

jr_0a7_7556:
    rst $30
    rst $38

jr_0a7_7558:
    ccf
    rst $30

jr_0a7_755a:
    scf
    rst $38

jr_0a7_755c:
    and a
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rst $30
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
    ld l, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    or a
    rst $38
    ei
    ld a, a
    rst $38
    ccf
    rst $08
    ccf
    ld h, a
    sbc a
    or a
    rst $08
    db $d3
    rst $28
    pop af
    rst $38
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
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    or b
    ld c, a
    ldh [$1f], a
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
    adc $ff
    rst $20
    rst $38
    db $76
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $fb
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    ld b, e
    cp h
    jp $e33c


    inc e
    ld h, e
    sbc h
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, h
    add b
    nop
    nop
    ldh [rP1], a
    ld e, b
    add a
    adc h
    add e
    adc h
    add e
    adc a
    add b
    rra
    add b
    rra
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    rst $38
    nop
    ld a, l
    add d
    db $fc
    inc bc
    add sp, $17
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    cpl
    rst $18
    sbc a
    rst $38
    ld b, b
    cp a
    dec d
    ld [$ff00], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    db $e3

jr_0a7_764b:
    rst $38
    pop af
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    ld [hl], c
    rst $38
    sub c
    rst $38
    dec a
    jp nz, Jump_000_00ff

    rst $38
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
    ei
    nop
    db $fd
    nop
    or $00
    ld a, [c]
    nop
    ret nc

    nop
    ret nc

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    db $ec
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    rst $38
    ld bc, $ffff
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
    rst $10
    jr z, jr_0a7_764b

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
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc d
    ld h, l
    ld l, a
    sub b
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

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
    sbc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rlca
    jp $df8f


    sbc a
    rst $38
    rst $38
    rst $38
    rst $20
    rra
    rst $10
    ld bc, $00a0
    add b
    nop
    ld b, b
    nop
    ld b, b
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
    cp a
    ld b, b
    inc de
    db $ec
    ld [bc], a
    db $fd
    ld bc, $00fe
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
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rSB]
    cp $12
    db $ed
    rst $38
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
    ei
    db $fc
    ld a, [$f6ff]
    rst $38
    rst $30
    rst $38
    cp $ff
    or a
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
    db $eb
    rst $30
    ei
    db $fd
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ldh a, [$fc]
    ldh a, [rIE]
    ld hl, sp-$08
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f0], a
    ld h, b
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add sp, $00
    db $ed
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
    ccf
    ret nz

    ld l, l
    sub d
    ld [hl+], a
    db $dd
    ld hl, $26df
    sbc $9e
    db $fd
    rst $38
    sbc a
    ld e, a
    xor a
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $38
    rst $38
    add hl, bc
    or $ff
    nop
    ld l, d
    sub l
    rst $30
    ld [$ff1d], sp
    ld a, [hl+]
    push de
    dec b
    ld a, [$ffcf]
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
    rst $20
    rra
    adc $f1
    dec c
    cp $00
    rst $38
    cp a
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a

jr_0a7_782c:
    rst $28
    rst $18
    db $eb
    rst $30
    ei
    db $fd
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
    ccf
    rra
    ccf
    rra
    cp a
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
    ccf
    ccf
    rla
    rra
    rla
    rra
    rla
    rra
    rra
    ccf
    rra
    ccf
    dec c
    ccf
    dec c
    ccf
    dec c
    ccf
    add hl, de
    ccf
    dec e
    ccf
    add hl, de
    ccf
    add hl, de
    ccf
    jr jr_0a7_78aa

    jr @+$41

    jr c, jr_0a7_786f

jr_0a7_786f:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ldh [rP1], a
    or h
    nop
    ld a, [$ff00]
    nop
    db $fd
    ld [bc], a
    ld [c], a
    jr jr_0a7_782c

    ld h, b
    rrca
    ret nz

    xor a
    db $10
    rla
    ld l, b
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    nop

jr_0a7_78aa:
    dec d
    ld [$ffff], a
    ld d, d
    xor l
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld [$ffff], sp
    nop
    rst $38
    nop
    db $ed
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    ld c, $ff
    rst $28
    rra
    sbc l
    ld h, d
    db $fd
    cp $08
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
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
    rst $38
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
    ld e, a
    cp a
    rst $08
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    cp $ff
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0f
    rra
    jr nz, jr_0a7_7954

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a7_7964

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0f
    cpl
    jr nc, jr_0a7_7975

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a7_7985

    ld a, [hl-]
    dec sp
    inc a
    dec a
    rrca
    ld a, $3f
    ld b, b

jr_0a7_7954:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rrca
    rrca
    ld b, l
    ld b, [hl]
    rrca
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0a7_7964:
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
    rrca
    rrca
    ld e, d
    ld e, e
    ld e, h

jr_0a7_7975:
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
    ld l, d
    ld l, e
    ld l, h

jr_0a7_7985:
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
    rrca
    rrca
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
    rrca
    rrca
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
    rrca
    sbc l
    sbc [hl]
    sub b
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
    rrca
    xor e
    sub b
    sub b
    xor h
    xor l
    and c
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    rrca
    or a
    cp b
    sub b
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
    ld a, [$dffb]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $8d
    rlca
    ld [$0a09], sp
    dec bc
    rst $18
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    rrca
    ld d, $17
    jr jr_0a7_7a5b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a7_7a6b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    nop
    nop
    nop
    nop

jr_0a7_7a5b:
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    nop
    nop

jr_0a7_7a6b:
    inc b
    nop
    dec b
    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    daa
    rst $38
    reti


    rst $38
    rst $20
    rst $38
    ei
    rst $38
    cp $ff
    db $eb
    rst $30
    add d
    pop bc
    ld bc, $0100
    nop
    inc bc
    ld bc, $03e7
    sbc a
    ld bc, $0087
    add c
    nop
    add b
    nop
    add b
    nop
    adc h
    nop
    ld c, [hl]
    nop
    ld c, h
    inc b
    ld c, [hl]
    inc b
    ld c, [hl]
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_0a7_7bc0

jr_0a7_7bc0:
    inc b
    jr jr_0a7_7bca

    nop
    inc [hl]
    ld a, b
    db $fc
    ld a, [hl]
    cp $fc

jr_0a7_7bca:
    rst $30
    ei
    ld [c], a
    di
    jp nz, $ffe2

    jp nz, $82fc

    cp $03
    ld a, [$f707]
    rrca
    rst $28
    rra
    rst $18
    ccf
    ccf
    cp $7c
    rst $38
    ld hl, sp-$01
    db $eb
    db $fc
    set 7, h
    add e
    db $fc
    cpl
    db $fc
    rra
    db $fc
    rla
    db $fc
    rla
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld bc, $83fe
    cp $83
    cp $c0
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $08
    ccf
    rst $08
    ccf
    add a
    ld a, a
    rlca

jr_0a7_7c23:
    rst $38
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
    ld bc, $01ff
    cp $03
    db $fc
    dec b
    ld hl, sp+$12
    ldh [$09], a
    ret nz

    add b
    nop
    ld [bc], a
    db $fd
    jr nz, jr_0a7_7c23

    inc b
    ei
    ld d, l
    xor d
    cp d
    ld b, l
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld sp, hl
    rlca
    db $fd
    inc bc
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ret nz

    ccf
    rst $08
    jr nc, @-$5f

    ld h, b
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    or $e7
    inc bc
    add $82
    rlca
    ld h, a
    inc bc
    rra
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    ld hl, $b382
    nop
    ld l, e
    sub a
    rst $00
    rla
    rra
    rlca
    rlca
    inc bc
    ld bc, $8101
    nop

jr_0a7_7cc4:
    ld a, c
    nop
    rrca
    ld bc, $001d
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    ccf
    rst $20
    ccf
    daa
    cp a
    jr nz, @+$01

jr_0a7_7cd6:
    ld h, h
    cp e
    ld [hl+], a
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    xor $1f
    inc e
    rst $38
    jr c, @+$01

    inc l
    di

jr_0a7_7ce6:
    db $ed
    ld [hl], d
    rst $28
    ld [hl], b

jr_0a7_7cea:
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    xor a
    ld [hl], b

jr_0a7_7cf0:
    xor a
    ld [hl], b

jr_0a7_7cf2:
    xor a
    ld [hl], b
    rst $38
    jr nc, jr_0a7_7ce6

    jr nc, jr_0a7_7cf0

    jr c, jr_0a7_7cf2

    jr c, jr_0a7_7cc4

    jr c, jr_0a7_7cd6

    jr c, @-$37

    jr c, jr_0a7_7cea

    sbc b
    daa
    ret c

    rlca
    ld hl, sp+$67
    ld hl, sp+$33
    db $fc
    inc de
    db $fc
    dec sp
    db $fc
    dec de
    db $fc
    rra
    db $fc
    rrca
    db $fc
    dec e
    cp $9f
    cp $9e
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
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
    pop af
    cp $62
    cp $08
    or $db
    daa
    ld sp, hl
    rlca
    ei
    inc b
    db $fc
    nop
    ret c

    nop
    xor b
    nop
    xor a
    ld e, b
    ld e, a
    cp a
    sbc a
    ld a, a
    ccf
    rst $18
    sbc a
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    nop
    scf
    ld c, b
    ld a, [hl+]
    ld d, l
    db $db
    inc h
    db $ed
    ld [de], a
    ld [hl], $c9
    ld [$87f7], sp
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld e, a
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
    cp a
    ld a, a
    rst $38

jr_0a7_7d73:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rra
    rlca
    rra
    rrca
    rra
    rlca
    rra
    rrca
    sbc a
    rrca
    adc a
    inc bc
    adc a
    ld [$098f], sp
    adc a
    add d
    adc a
    adc h
    adc a
    add c
    adc a
    add [hl]
    adc a
    add d
    rst $08
    add l
    rst $00
    add d
    or d

jr_0a7_7da1:
    rst $08
    or h

jr_0a7_7da3:
    rst $08
    inc [hl]
    rst $08
    ld a, [hl]
    rst $00
    ld a, h
    rst $00
    jr c, jr_0a7_7d73

    ret c

    rst $20
    ld a, b
    rst $00

jr_0a7_7db0:
    ld a, [de]
    rst $20

jr_0a7_7db2:
    ld a, [de]
    rst $20
    ld a, [de]
    rst $20
    ld a, [de]
    rst $20
    jr jr_0a7_7da1

    jr jr_0a7_7da3

    inc e
    db $e3
    call c, $e3e3
    pop hl
    di
    pop hl
    db $e3
    pop bc
    db $e3
    ld bc, $00e3
    pop hl
    ret nz

jr_0a7_7dcc:
    pop af
    ldh [$f1], a
    nop
    pop af
    rst $38
    pop af
    rst $38
    rst $30
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $30
    ld a, c
    rst $30
    add hl, sp
    add a
    ld a, b
    rst $00
    jr c, jr_0a7_7dcc

    jr @-$17

    jr jr_0a7_7db0

    jr c, jr_0a7_7db2

    ld hl, sp-$19
    ld hl, sp-$01
    ld hl, sp+$3f
    ld hl, sp-$05
    inc a
    ld e, e
    cp h
    ld e, e
    cp h
    db $db
    inc a
    db $d3
    inc a
    rst $38
    db $10
    ei

Call_0a7_7dff:
    inc e
    rst $38
    inc e
    rst $28
    inc e
    rst $38
    inc e
    db $fd
    ld e, $bd
    ld a, [hl]
    db $fd
    ld a, $fd
    ld a, $fd
    cp [hl]
    cp l
    cp $9f
    cp $9f
    cp $5f
    cp [hl]
    ld e, a
    cp [hl]
    rst $18
    ld a, $de
    ccf
    cp [hl]
    ld a, a
    or h
    ld a, a
    nop
    rst $38
    ld a, [$feff]
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $18
    rst $38
    ld hl, sp-$01
    dec bc
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    add a
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
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    add hl, hl
    rst $38
    db $d3
    rst $38
    sub [hl]
    rst $38
    dec l
    rst $38
    ld c, a
    rst $38
    ld e, e
    rst $38
    and l
    rst $38
    dec h
    rst $38
    ld c, e
    rst $38
    add l
    rst $38
    ld b, h
    cp a
    cp l
    ld c, e
    inc h
    db $db
    ld sp, hl
    sub [hl]
    daa
    ld c, c
    dec l
    nop
    nop
    nop
    ld bc, $0100
    nop
    push de
    ld [bc], a
    inc bc
    nop
    jr nz, jr_0a7_7eac

jr_0a7_7eac:
    inc b
    nop
    nop
    inc b
    add h
    nop
    inc b
    nop
    inc b
    nop
    add b
    nop
    ld l, e
    nop
    dec hl
    ret nc

    add hl, hl
    jp nc, $aa55

    rst $00
    ld a, [$fa87]
    add e
    cp $02
    rst $38
    ld l, b
    rst $38
    cp h
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    sub l
    rst $38
    add hl, sp
    rst $28
    ccf
    rst $38
    db $d3
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    or h
    ld a, a
    cp h
    ld a, a
    cp d
    ld a, a
    rst $18
    dec a
    rst $18
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $10
    ccf
    rst $18
    ccf
    rst $18
    ccf
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
    db $ed
    rra
    db $ec
    rra
    xor $13
    rst $30
    ld [$09f6], sp
    rst $30
    ld [$0cfb], sp
    ld [hl], c
    adc [hl]
    ld [hl], b
    adc a
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld b, [hl]
    cp c
    ld h, a
    sbc c
    rst $28
    dec de
    db $e3
    rra
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rra
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
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
    cp $ff
    ld hl, sp-$01
    add sp, -$01
    rst $38
    rst $38
    ldh [rIE], a
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
    db $10
    rst $38
    nop
    rst $38
    and c
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    ld a, a
    rst $00
    ccf
    db $e3
    rra
    ld [hl], c
    rrca
    pop af
    rrca
    and e
    ld e, a
    add e
    ld a, a
    jr c, @+$09

    ld [hl], b
    rrca
    inc c
    inc bc
    inc c
    inc bc
    jr c, jr_0a7_7fab

    ld e, h
    inc bc
    ld c, [hl]
    ld bc, $012e
    sbc h

jr_0a7_7fab:
    inc hl
    cp h
    inc bc
    ld l, l
    sub e
    ld h, c
    sbc a
    db $e3
    sbc a
    dec hl
    rst $18
    adc a
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
    rst $28
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    db $db
    ld a, a
    and b
    ld e, a
    ld e, l
    rst $38
    rst $38
    db $fc
    ld a, a
    db $fc
    db $ed
    rra
    sbc l
    rrca
    sbc [hl]
    add hl, bc
    ld sp, hl
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    add c
    rst $38
    ld c, e
    scf
    and e
    rra
    rst $10
    rrca
    rst $18
    rrca
    cpl
    rst $18
    rra
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
