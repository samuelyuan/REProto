SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld e, a
    ldh [rTIMA], a
    ld hl, sp+$04
    rst $38
    add c
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
    cp a
    rst $38
    xor l
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    cp $1f
    cp $0f
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp b
    rst $38
    xor [hl]
    rst $38
    xor a
    rst $38
    jp hl


    rst $38
    add hl, hl
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld e, d
    ld a, a
    ld d, d
    rst $38
    ld d, $df
    ld d, $f7
    inc b
    rst $30
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
    add b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    cp a
    jr jr_04e_40a5

    inc c
    ld a, a
    ld b, $6f
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    rst $28
    rrca
    rst $38
    ld c, a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cpl
    rst $38
    ld a, a
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
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a

jr_04e_40a5:
    rst $38
    sbc a
    rst $38
    cp a
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
    ld a, a
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    ld c, e
    rst $38
    rst $38
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
    inc d
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    ld hl, $69ff
    rst $38
    ld l, c
    rst $38
    dec bc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld bc, $00ff
    rra
    inc b
    ld [de], a
    nop
    nop
    or b
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    reti


    nop
    ld c, d
    nop
    ld c, l
    nop
    xor c
    nop
    call nz, $f200
    nop
    or [hl]
    nop
    cp $00
    ld l, $c0
    dec l
    ldh a, [$08]
    cp $07
    rst $38
    call nz, $f1ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld a, c
    rst $38
    ld e, a
    rst $38
    ld e, e
    rst $38
    db $db
    rst $38
    db $d3
    cp $fb
    db $fc
    rst $30
    db $fc
    or a
    db $fd
    cp a
    db $fd
    and a
    ld sp, hl
    rst $20
    add hl, sp
    rst $38
    dec de
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    ld c, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $bf
    ld a, $ff
    ld a, $fe
    inc a
    rst $38
    inc e
    rst $38
    dec c
    db $fd
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld b, $14
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04e_41b5

    ld [hl+], a
    ld b, $23
    inc h
    dec h
    ld h, $27
    jr z, jr_04e_41c6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $06
    cpl
    jr nc, jr_04e_41d7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04e_41e7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_04e_41b5:
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
    ld c, d
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_04e_41c6:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, d
    ld c, d
    ld e, b
    ld c, d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_04e_41d7:
    ld e, a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld h, b
    ld h, c
    ld h, d
    ld c, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_04e_41e7:
    ld l, c
    ld l, d
    ld l, e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld l, h
    ld l, l
    ld c, d
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld c, d
    ld c, d
    ld c, d
    ld [hl], a
    ld a, b
    ld a, c
    ld c, d
    ld a, d
    ld a, e
    ld [hl], b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld c, d
    ld c, d
    ld c, d
    add d
    add e
    add h
    ld c, d
    add l
    add [hl]
    ld [hl], b
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld c, d
    ld c, d
    adc [hl]
    adc a
    sub b
    ld c, d
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
    ld c, d
    ld c, d
    sbc e
    sbc h
    sbc l
    ld c, d
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
    ld c, d
    ld c, d
    xor b
    xor c
    xor d
    ld c, d
    xor e
    ld c, d
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    ld c, d
    ld c, d
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
    db $db
    db $db
    db $db
    call c, $efee
    ldh a, [$f1]
    ld a, [c]
    di
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $f4
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    push af
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0103
    ld bc, $0201
    ld bc, $0202
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0302
    ld bc, $0202
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $01
    ld [bc], a
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0601
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0204
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld bc, $0202
    ld bc, $0102
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0106
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    jr nz, jr_04e_43cc

jr_04e_43cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    sbc a
    rlca
    and a
    inc b
    sub l
    inc b
    call nc, $c404
    nop
    add $00
    jp nz, $ca02

    ld [bc], a
    ld [c], a
    ld [bc], a
    ld [c], a
    nop
    db $e3
    nop
    pop hl
    ld bc, $01a1
    push hl
    db $dd
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    db $e4
    rst $38
    ldh [$f6], a
    ldh a, [$f4]
    ldh a, [$f2]
    ld a, [c]
    cp $b2
    cp $f0
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    add b
    rst $38
    cpl
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    rlca
    jp nz, Jump_000_0ff3

    ld a, a
    rra
    rra
    inc a
    ld a, $32
    ld a, e
    ld [hl], b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc c

jr_04e_447f:
    rst $38
    jr jr_04e_447f

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    jr nc, @+$01

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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    add hl, de
    rst $38
    ld [hl], l
    rst $38
    push bc
    rst $38
    call $a5ff
    rst $38
    ld h, [hl]
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    or $ff
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
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
    ld a, a
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
    db $fc
    rst $38
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, $7f
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
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
    ld hl, $aa00
    nop
    xor e
    xor d
    xor d
    ld [bc], a
    cp $00
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fc
    db $fc
    ld hl, sp-$18
    ldh a, [$bf]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    ld e, [hl]
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
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
    scf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    or b
    rst $38
    and b
    cp a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, [de]
    rst $38
    dec sp
    rst $38
    ret


    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    push af
    rst $38
    db $f4
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    add hl, de
    ei
    add hl, sp
    ld sp, hl
    ld a, b
    ld sp, hl
    ld hl, sp-$03
    ld hl, sp-$04
    db $fc
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $07
    db $fc
    rrca
    ld hl, sp+$1d
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ret nz

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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    ld a, a
    db $76
    ld a, a
    ld [hl], h
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ret nz

    ret c

    add b
    db $fd
    add a
    rst $38
    daa
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld e, a
    ld [bc], a
    ld e, a
    inc de
    rst $38
    rra
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
    cp $fe
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    rst $38
    rst $38
    rst $38
    ld bc, $0300
    ld bc, $0107
    ld c, $07
    cp h
    rra
    ldh a, [$1f]
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    cp $08
    db $fc
    db $10
    ld sp, hl
    ld hl, $66f3
    rst $20
    call z, $98cf
    sbc a
    and b
    rst $38
    ld b, b
    rst $38
    ld bc, $03ff
    rst $38

jr_04e_4658:
    rlca
    rst $38
    inc e
    rst $38
    jr nc, jr_04e_4658

    ld a, b
    ld sp, hl
    ldh [$f7], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    adc c
    ei
    adc b
    rst $38
    call z, $c8ff
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    cp $03
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$7f], a
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
    cp $00
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
    rst $38
    rst $38
    rst $38
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
    rst $10
    rst $38
    ccf
    cp a
    cp a
    rst $38
    add l
    rst $38
    call $d9ff
    rst $38
    ld c, a
    rst $38
    ld c, b
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    ld l, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$e0], a
    ret nz

    add b
    nop
    nop
    nop
    nop
    ei
    nop
    ei
    ld bc, $fffc
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ei
    sub $f3
    ld l, b
    rst $38
    jr z, jr_04e_47b3

    jr nc, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_04e_473e:
    jr jr_04e_473e

    inc h
    rst $20
    call z, $28cc
    db $fd
    ld a, d
    rst $38
    call nz, $80e7
    add a
    nop
    ccf
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, [$feff]
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    sbc $ff
    sbc h
    rst $38
    cp b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld h, h
    rst $38
    db $e4
    rst $38
    sub b
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
    ld bc, $03ff
    cp $07
    db $fc
    dec bc
    db $fc
    rla
    ld hl, sp+$2f
    ldh a, [$5f]
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
    nop
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
    pop de
    ld l, $56
    xor c
    nop
    rst $38
    nop

jr_04e_47b3:
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
    ld hl, sp-$01
    rst $38
    cp $ff
    cp $df
    rst $38
    cp a
    cp $f7
    cp $9f
    cp $fb
    rst $38
    sbc d
    rst $38
    ld a, [$dfff]
    rst $38
    ei
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
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
    rrca
    dec e
    rrca
    ld a, d
    rra
    pop hl
    ld a, a
    add e
    rst $38
    rlca
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
    db $fd
    rst $38
    ldh a, [rIE]
    ret nz

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
    ld c, a
    rst $28
    inc bc
    rst $30
    inc bc
    ld h, a
    inc bc
    sub a
    ld [bc], a
    ld b, a
    inc c
    rra
    jr nz, @+$01

    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp l
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    ld bc, $07fe
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38

jr_04e_4887:
    nop
    rst $38

jr_04e_4889:
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
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    add b
    ld a, a
    jr nz, jr_04e_4887

    jr nz, jr_04e_4889

    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
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
    nop
    nop
    nop
    ld a, $ff
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld d, d
    rst $28
    ld b, $ff
    rlca
    rst $38
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ret nz

    rst $18
    ret z

    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    call c, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    rst $28
    rst $30
    rst $28
    db $f4
    rst $28
    rst $30
    rst $20
    db $fd
    rst $38
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [$3f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$1f
    ld hl, sp+$7f
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
    db $fc
    rrca
    db $fc
    rra
    db $fc
    ccf
    db $fc
    ld a, a
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $08
    rst $38
    inc b
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ldh [$7f], a
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
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    dec b
    ld a, [$ee11]
    daa
    ret c

    dec h
    jp c, $ff00

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
    nop
    nop
    nop
    inc b
    rst $38
    rst $20
    rst $38
    db $10
    rst $28
    dec bc
    rst $30
    rst $18
    di
    sbc a
    pop af
    sub c
    pop af
    sub c
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    xor d
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld bc, $01ef
    rst $38
    ld bc, $01f7
    ld sp, hl
    ldh a, [rIE]
    ccf
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    ld e, a
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add d
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04e_49ed:
    nop
    rst $38

jr_04e_49ef:
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
    nop
    rst $38
    jr nz, jr_04e_49ed

    jr nz, jr_04e_49ef

    add b
    ld a, a
    dec h
    jp c, Jump_04e_7f80

    adc b
    ld [hl], a
    and b
    ld e, a
    add a
    ld a, b
    ld e, d
    and l
    ld c, c
    or [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    pop af
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ldh a, [rIE]
    ldh a, [$f1]
    ldh a, [$f1]
    ld [hl], b
    rst $38
    ld [hl], b
    pop af
    ld [hl], b
    pop af
    ld [hl], b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    cp $7f
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    ld d, e
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
    rst $38
    rst $38
    ld a, [$3fff]
    rst $38
    cp l
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
    db $fd
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    ld a, l
    ld a, a
    ld e, $1f
    rrca
    inc c
    ld c, $0f
    dec c
    rrca
    rrca
    rrca
    rrca

jr_04e_4a95:
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0d
    inc c
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    cp $0f
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    ld de, $00ee
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$eb14]
    jr z, jr_04e_4a95

    ld sp, $45ce
    cp d
    ld b, l
    cp d
    xor a
    ld d, b
    ld b, l
    cp d
    sub d
    ld l, l
    dec c
    ld a, [c]
    xor c
    ld d, [hl]
    dec [hl]
    jp z, Jump_000_00ff

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    cp $ff
    xor $ff
    jp nz, $42ff

    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld de, $1100
    nop
    rst $38
    nop
    ld de, $1100
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    db $fc
    rst $38
    db $10
    ld a, [hl]
    db $f4
    rst $38
    ld [hl], h
    rst $38
    ld l, l
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    ld b, a
    ld e, a
    inc b

jr_04e_4b4f:
    rst $18
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec e
    rst $38
    db $fd
    rst $38
    rst $38
    rlca
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
    jr nz, jr_04e_4b4f

    nop
    rst $38
    inc d
    db $eb
    add b
    ld a, a
    ld [bc], a
    db $fd
    inc b
    ei
    add hl, bc
    or $21
    sbc $52
    xor l
    ld c, c
    or [hl]
    ld c, d
    or l
    xor [hl]
    ld d, c
    ld d, l
    xor d
    xor [hl]
    ld d, c
    ld a, l
    add d
    ld e, a
    and b
    ld a, l
    add d
    rst $38
    nop
    rst $38
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
    ld c, a
    rst $38
    adc a
    ld sp, hl
    adc a
    rst $38
    adc a
    rst $38
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    ld c, a
    rst $38
    rst $08
    ld sp, hl
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    jr @+$01

    rst $38
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc h
    sbc h
    ld hl, sp-$05
    ei
    ei
    dec b
    rst $38
    di
    ei
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
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    nop
    cp $e0
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $30
    di
    rst $38
    rst $38
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
    ld hl, sp-$01
    rst $38
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
    adc b
    ld [hl], a
    ld c, d
    or l
    inc bc
    db $fc
    inc h
    db $db
    swap h
    dec l
    jp nc, $d22d

    sbc a
    ld h, b
    cp [hl]
    ld b, c
    sub [hl]
    ld l, c
    xor e
    ld d, h
    xor d
    ld d, l
    xor d
    ld d, l
    or l
    ld c, d
    push de
    ld a, [hl+]
    ld l, [hl]
    sub c
    db $ed
    ld [de], a
    nop
    rst $38
    rst $38
    rst $38
    nop
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
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    cp a
    rra
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    ld c, h
    rst $38
    ret c

    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    cp $00
    ld a, [$ef00]
    nop
    db $eb
    ld [$7fff], a
    rst $38
    ld a, d
    rst $38
    ld a, a
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
    ldh a, [rIE]
    cp $ff
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $fbff
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc h
    db $db
    ld [bc], a
    db $fd
    adc b
    ld [hl], a
    dec h
    jp c, $a55a

    ld [de], a
    db $ed
    sub h
    ld l, e
    sub d
    ld l, l
    cp e
    ld b, h
    ld [hl-], a
    call $06f9
    and $19
    ld h, l
    sbc d
    ld a, [$5505]
    xor d
    push de
    ld a, [hl+]
    or h
    ld c, e
    ld [$d515], a
    ld a, [hl+]
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld de, $1100
    nop
    rst $38
    nop
    ld de, $1100
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    nop
    cp $ff
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

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
    dec [hl]
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    nop
    cp a
    ld [bc], a
    rst $38
    nop
    sub d
    nop
    sub d
    nop
    dec b
    nop
    sub e
    ld [de], a
    inc de
    nop
    pop af
    cp $ff
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    nop
    rst $38

jr_04e_4d7c:
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    ldh [$fc], a
    and $ff
    rst $20
    rst $38
    and $ff
    xor $ff
    rst $28
    rst $38
    cp $ff
    sub $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, h
    cp e
    inc h
    db $db
    xor c
    ld d, [hl]
    sub h
    ld l, e
    xor d
    ld d, l
    jr nz, @-$1f

    adc d
    ld [hl], l
    sub l
    ld l, d
    ld e, h
    and e
    ld a, [bc]
    push af
    and b
    ld e, a
    ld a, h
    add e
    ld [$dd15], a
    ld [hl+], a
    ld a, d
    add l
    sub l
    ld l, d
    ld e, l
    and d
    ld d, [hl]
    xor c
    rst $18
    jr nz, jr_04e_4d7c

    ld d, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret z

    rst $38
    ret z

    rst $38
    ret z

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
    ld de, $1100
    nop
    rst $38
    nop
    ld de, $1100
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    db $10
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fd]
    ldh a, [rIE]
    inc b
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    xor l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    ld c, l
    rst $18
    rrca
    ld a, a
    rrca
    rst $38
    rrca
    ld l, a
    dec b
    rst $38
    inc b
    rst $28
    inc b
    rst $38
    call nz, $0fff

jr_04e_4e53:
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    cp b
    rst $38
    cp a
    rst $38
    ld [$ffff], a
    nop
    rst $38
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
    jr z, jr_04e_4e53

    add h
    ld a, e
    ld c, b
    or a
    and c
    ld e, [hl]
    ld de, $12ee
    db $ed
    ld b, c
    cp [hl]
    ld d, c
    xor [hl]
    ld l, d
    sub l
    add c
    ld a, [hl]
    ld c, b
    or a
    ld a, e
    add h
    xor e
    ld d, h
    ld l, l
    sub d

jr_04e_4e96:
    ld a, a
    add b
    ei
    inc b
    ld [hl], a
    adc b
    rst $10
    jr z, jr_04e_4e96

    ld [$00ff], sp
    rst $38
    rst $38
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
    jp nc, Jump_000_00ff

    rst $38
    ld l, e
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    ld e, a
    ld b, b
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
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
    add c
    rst $38
    adc c
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    ld b, l
    rst $38
    ldh [$f5], a
    db $fc
    rst $38
    db $fc
    rst $38
    ld b, $ff
    ld c, $ff
    ld e, $ff
    ld a, $fe
    ld [de], a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    xor b
    rst $38
    jr z, @+$01

    nop

jr_04e_4f1d:
    rst $38

jr_04e_4f1e:
    nop
    rst $38
    call nz, Call_04e_4fff
    rst $38
    rst $30
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
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    jr nz, jr_04e_4f1d

    inc h
    db $db
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    and b
    ld e, a
    ld b, d
    cp l
    inc h
    db $db
    or l
    ld c, d
    ld l, b
    sub a
    dec d
    ld [$7f80], a
    db $eb
    inc d
    ld l, a
    sub b
    ld [hl], a
    adc b
    xor $11
    ld a, a
    add b
    rst $10
    jr z, jr_04e_4f1e

    ld b, b
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
    ld c, $ff
    inc c
    rst $38
    rst $38
    inc e
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    cp $ff
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
    sub h
    rst $38
    inc b
    rst $38
    add b
    rst $38
    db $10
    rst $28
    cp b
    xor $18
    xor $10
    xor $00
    cp $00
    cp $c0
    cp $00
    cp $b8
    cp $00
    cp $02
    db $fc
    ld a, [c]
    db $ec
    ld a, [$faec]
    db $ec

jr_04e_4fb2:
    ld a, [hl-]
    db $ec
    jr c, jr_04e_4fb2

    add hl, sp
    db $ec
    add hl, sp
    db $ec
    add hl, sp
    db $ec
    ld sp, hl
    db $fc
    push af
    ld hl, sp+$15
    ld hl, sp+$15
    ld hl, sp+$1d
    ld hl, sp+$1f
    ld hl, sp+$17
    ld hl, sp+$37
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp+$37
    ld hl, sp+$73
    cp b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$a0]
    ldh a, [$60]
    ldh a, [$a0]
    ld [hl], b
    and b
    ld h, b
    ldh [$60], a
    ld h, b
    ldh [$e0], a
    ld h, b
    ld h, b
    ldh [$7f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38

Call_04e_4fff:
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38

jr_04e_5004:
    ret nz

    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $10fe
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    add b
    ld a, a
    or d
    ld c, a
    ld b, d
    cp a
    or d
    ld c, a
    ld b, d
    cp a
    and b
    ld e, a
    sub d
    ld l, a
    ld de, $51ef
    xor a
    sub c
    ld l, a
    ld d, c
    xor a
    reti


    daa
    ld bc, $69ff
    sub a
    ld a, b
    add a
    or b
    ld c, a
    call nc, $b82b
    ld b, a
    db $f4
    dec bc
    xor $f1
    adc $f1
    adc $f1
    adc d
    push af
    rlca
    ld hl, sp+$12
    db $ed
    ld d, $e9
    inc sp
    call z, Call_000_00cb
    sub l
    nop
    push de
    nop
    reti


    add b
    ld d, [hl]
    add b
    ld e, d
    add b
    ld e, $80
    inc e
    add b
    inc l
    add b
    jr c, jr_04e_5004

    inc a
    add b
    or c
    nop
    xor c
    nop
    xor c
    nop
    or b
    nop
    cp d
    nop
    adc $31
    sbc $21
    adc e
    ld [hl], h
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rVBK]
    or b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, $0b
    db $f4
    rlca
    ld hl, sp+$03
    db $fc
    and a
    ld e, b
    add a
    ld a, b
    dec bc
    db $f4
    rlca
    ld hl, sp+$17
    add sp, $27
    ret c

    rlca
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [$27]
    ret c

    ld c, $f1
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rNR22], a
    add sp, $0f
    ldh a, [$5f]
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$37], a
    ret z

    rra
    ldh [rNR22], a
    add sp, $17
    add sp, $1f
    ldh [rNR33], a
    ld [c], a
    dec e
    ld [c], a
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    xor a
    ld d, b
    ld [de], a
    db $ed
    ld a, [de]
    push hl
    sub d
    ld l, l
    rla
    add sp, $13
    db $ec
    inc de
    db $ec
    sub a
    ld l, b
    inc de
    db $ec
    dec bc
    db $f4
    dec bc
    db $f4
    rlca
    ld hl, sp-$7d
    ld a, h
    dec b
    ld a, [$fc03]
    ld b, e
    cp h
    adc e
    ld [hl], h
    ld b, a
    cp b
    rlca
    ld hl, sp+$46
    cp c
    ld b, $f9
    rlca
    ld sp, hl
    cpl
    pop de
    ld b, a
    cp c
    inc hl
    db $dd
    inc bc
    db $fd
    dec b
    ei
    inc hl
    rst $18
    rlca
    ei
    ld a, [hl+]
    rst $10
    rlca
    ld a, [$f30e]
    inc de
    xor $07
    cp $0f
    or $0f
    or $05
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    dec bc
    db $fc
    adc c
    cp $89
    cp $9d
    ld a, [$fe99]
    sbc h
    ei
    db $fd
    ld [bc], a
    ld [hl], a
    adc b
    rra
    ldh [$8f], a
    ld [hl], b
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$2f], a
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    ld a, e
    add h
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    ei
    inc b
    cp a
    ld b, b
    rst $30
    ld [$807f], sp
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    rst $30
    ld [$18e7], sp
    rst $28
    db $10
    rst $20
    jr jr_04e_5214

    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    inc b
    nop
    nop
    nop
    nop
    ld hl, $0100
    nop
    nop
    ld bc, $0100

jr_04e_51cc:
    nop
    ld bc, $0101
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b

jr_04e_51e4:
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0804], sp
    inc b
    inc c
    ld [$0cfb], sp
    ei
    inc c
    rst $38
    ld [$18ef], sp

jr_04e_51f8:
    rst $28
    jr @+$01

    jr jr_04e_5274

    sbc b
    rst $30
    jr @+$01

    db $10
    rst $18
    jr nc, jr_04e_51e4

    jr nc, @+$01

    jr nc, jr_04e_51f8

    jr nc, @-$0f

    jr nc, @+$01

    jr nz, jr_04e_51cc

    ld h, d
    cp l
    ld h, d
    cp a
    ld h, b

jr_04e_5214:
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld l, a
    ret nc

    ld l, a
    ret nc

    rst $28
    ret nc

    adc a
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ccf
    ret nz

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
    cp $01
    cp $01
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

jr_04e_5252:
    db $db
    inc h
    rst $18
    jr nz, jr_04e_5214

    ld b, d
    ld e, [hl]
    and c
    cp [hl]
    ld b, c
    ld e, a
    and b
    ld a, [hl-]
    push bc
    rst $38
    nop
    cp $01
    cp $01
    cp a
    ld b, c
    ld a, a
    add c

jr_04e_526a:
    ld a, a
    add c
    rst $38
    ld bc, $837d
    db $fd
    inc bc
    rst $38
    inc bc

jr_04e_5274:
    cp $03
    cp $03
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    ld b, $ff
    ld b, $fd
    ld b, $fd
    ld b, $ff
    inc b
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    ei
    inc c
    ei
    inc c
    rst $38
    ld [$08ff], sp
    rst $28
    jr @+$01

    jr @+$01

    jr jr_04e_5252

    ld e, b
    rst $38
    db $10
    rst $38
    db $10
    rst $18
    jr nc, @-$1f

    jr nc, @+$01

    jr nc, @-$0f

    jr nc, @+$01

    jr nz, jr_04e_526a

    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    rst $38
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    ret nz

    add b

jr_04e_52c2:
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    rst $18
    jr nz, jr_04e_52c2

    db $10

jr_04e_52d4:
    rst $18
    jr nz, @-$3f

    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp [hl]
    ld b, c
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a

jr_04e_52e7:
    add b
    ld e, a
    and b
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18
    jr nz, jr_04e_52d4

    jr nz, @-$1f

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    swap h
    db $d3
    inc l
    ld a, [$d505]
    ld a, [hl+]
    call $dd32
    ld [hl+], a
    ld [$f515], a
    ld a, [bc]
    rst $20
    jr jr_04e_52e7

    dec l
    db $eb
    inc d
    db $e3
    inc e
    push af
    ld a, [bc]
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    ld a, a
    add b
    cp a
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
    rst $18
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
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec b
    dec b
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1209
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_04e_5397

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04e_53a7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04e_53b7

    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04e_53c8

jr_04e_5397:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $09
    scf
    jr c, jr_04e_53ca

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_04e_53a7:
    ld b, b
    ld b, c
    ld b, d
    inc h
    ld [de], a
    ld b, e
    inc [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_04e_53b7:
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
    add hl, bc

jr_04e_53c8:
    add hl, bc
    ld e, l

jr_04e_53ca:
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
    add hl, bc
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld a, [hl+]
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    add hl, bc
    ld a, c
    ld a, d
    ld a, [hl+]
    ld a, e
    ld a, [hl+]
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add hl, bc
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld a, [hl+]

Jump_04e_53ff:
    ld a, [hl+]
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
    ld a, [hl+]
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
    ld a, [hl+]
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
    jp nc, $d32a

    call nc, $d6d5
    rst $10
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
    xor $09
    add hl, bc
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$0909]
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $09
    add hl, bc
    add hl, bc
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    ld bc, $0500
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
    ld bc, $0101
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2121
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    ld bc, $0001
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
    nop
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
    ld bc, $0101
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld b, $03
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    inc bc
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld bc, $0101
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec c
    rst $38
    rst $30
    rlca
    db $e3
    inc bc
    jp $c303


    rlca
    add a
    rlca
    adc a
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    ld e, $0f
    scf
    rrca
    ld a, $07
    ld a, [hl]
    rlca
    ld l, [hl]
    inc bc
    db $e4
    inc bc
    jp nz, $c001

    ld bc, $0081
    add d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    sbc $ff
    db $ec
    rst $38
    and h
    rst $38
    and h
    rst $38
    jp nz, $40ff

    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    or b
    rst $38
    jr @+$01

    ld [$0cff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    pop bc
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    rra
    ld [hl], b
    rrca
    jr z, @+$09

    ld [$0c07], sp
    inc bc
    inc c
    inc bc
    ld b, $01
    ld b, $01
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    di
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    reti


    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    and b
    rst $38
    and c
    rst $38
    nop
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
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
    jr nz, @+$01

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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    dec b
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr c, @+$09

    dec de
    ld b, $0c
    nop
    inc c
    nop
    ld [$1000], sp
    nop
    stop
    stop
    stop
    ld de, $1100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld b, c
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    cp $ff
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld e, $ff
    ld a, h
    rst $38
    ld a, l
    rst $38
    xor l
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    sbc e
    rst $38
    dec de
    rst $38
    ld d, a
    rst $38
    sbc b
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sub c
    rst $38
    or c
    rst $38
    and c
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $02ff
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
    inc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    ret z

    ccf
    ldh [$1f], a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    jp Jump_04e_53ff


    rst $38
    add a
    rst $38
    add a
    rst $38
    ld c, e
    rst $38
    rlca
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    jr nz, @+$01

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
    ld b, b
    rst $38
    ld b, b
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
    ld [bc], a
    rst $38
    add b
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
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    inc b
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
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
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
    rra
    rst $38
    adc a
    rst $38
    and $ff
    ld hl, sp-$01
    sbc h
    rst $38
    inc [hl]
    rst $38
    jr @+$01

    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
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
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    ld bc, $81ff
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld bc, $89ff
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    rst $30
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    add hl, de
    rst $38
    ld a, e
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    db $ec
    rst $38
    ret nz

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
    ld sp, hl
    rst $38
    ld sp, hl
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
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    rst $38
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
    rst $38
    rst $38
    call nz, $c3ff
    db $fc
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

jr_04e_5aa2:
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    jr c, jr_04e_5aa2

    inc [hl]
    ret nz

    ld h, b
    add b
    ld c, c
    add b
    ld c, c
    add b
    ld b, h
    add b
    ld b, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld l, a
    add b
    ld a, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld c, a
    add b
    ld [hl], b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    xor b
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl-], a
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
    call z, $80ff
    rst $38
    xor a
    rst $38
    db $ec
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $ffff
    rst $38
    push af
    rst $38
    and b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    ld [hl-], a
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld b, b
    rst $38
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    dec b
    rst $38
    rst $18
    db $fd
    rst $18
    push af
    ld e, a
    push af
    rst $18
    push af
    rst $18
    rst $30
    ld hl, sp-$01
    jr nz, @+$01

    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $d0ff
    rst $38
    add d
    rst $38
    inc bc
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
    nop
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $07fe
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    ld a, e
    add h
    ld d, e
    xor h
    dec de
    db $e4
    ld c, l
    or d
    ld c, l
    or d
    ld a, l
    add d
    ld e, a
    and b
    scf
    ret z

    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, $c1
    ld h, b
    sbc a
    rra
    ldh [$7f], a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b

jr_04e_5bde:
    cp a
    ld b, b

jr_04e_5be0:
    cp a
    ld b, b

jr_04e_5be2:
    cp a
    ld b, b

jr_04e_5be4:
    cp a
    ld b, b

jr_04e_5be6:
    cp a
    ld b, b

jr_04e_5be8:
    cp a
    ld b, b

jr_04e_5bea:
    cp a
    ld b, b

jr_04e_5bec:
    cp a
    ld b, b

jr_04e_5bee:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp b
    ld b, a
    rlca
    ld hl, sp-$41
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_5bde

    jr nz, jr_04e_5be0

    jr nz, jr_04e_5be2

    jr nz, jr_04e_5be4

    jr nz, jr_04e_5be6

    jr nz, jr_04e_5be8

    jr nz, jr_04e_5bea

    jr nz, jr_04e_5bec

    jr nz, jr_04e_5bee

    jr nz, jr_04e_5c19

    rst $38
    ret nz

    rst $08
    pop bc
    rst $18
    ld sp, hl
    rst $38
    ld sp, hl

jr_04e_5c19:
    rst $38
    ld a, [hl]
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
    sbc $ff
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    nop
    rst $38
    ld e, [hl]
    rst $38
    ldh a, [rIE]
    ldh a, [$5f]
    ldh a, [$5f]
    ld hl, sp+$5f
    ld hl, sp-$21
    rst $38
    rst $38
    or l
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    cp a
    cp $bf
    ld l, d
    cp a
    ld l, d
    cp a
    ld l, d
    cp a
    ld l, e
    cp $ff
    nop
    rst $38
    dec b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    db $db
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
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
    nop
    rst $38
    nop
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
    ld hl, sp+$04
    ei
    dec b
    ld a, [$7887]
    rst $00
    jr c, jr_04e_5cff

    sbc c
    and a
    ld e, b
    ld l, a
    sub b
    jp nz, $a73d

    ld e, b
    rst $30
    ld [$08f7], sp
    di
    inc c
    rst $30
    ld [$4cb3], sp
    rst $30
    ld [$04fb], sp
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
    ld hl, sp+$07
    dec b
    ld a, [$02fd]
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
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    jp Jump_000_3f3c


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
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    jp nc, $d200

    add b
    jp nc, $5200

    add b

jr_04e_5cff:
    jp nc, $d280

    jp $fedf


    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    or d
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    db $fd
    rst $18
    or $ff
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    nop
    rst $38
    rla
    rst $38
    ld a, [c]
    rst $38
    sub b
    rst $38
    rla
    rst $38
    add a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0fe
    rra
    add b
    ld a, a
    pop bc
    ld a, $a2
    ld e, l
    ld [c], a
    dec e
    xor [hl]
    ld d, c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    nop
    cp $01
    ld d, a
    xor b
    cp a
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
    ldh [$1f], a
    rra
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

jr_04e_5d9a:
    ld a, a
    add b

jr_04e_5d9c:
    ld a, [hl]
    add c

jr_04e_5d9e:
    ld h, c
    sbc [hl]
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_5d9a

    jr nz, jr_04e_5d9c

    jr nz, jr_04e_5d9e

    jr nz, @+$01

    rst $38
    ldh a, [rIE]
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    ld l, e
    sub h
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    cpl
    rst $38
    xor $ef
    ld [$eaef], a
    rst $28
    ld a, [de]
    rst $28
    ld a, [de]
    rst $28
    ld a, [de]
    rst $28
    rrca
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ld bc, $cfff
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
    ldh a, [rIE]
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
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    or b
    rst $38
    ret nz

    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_04e_5e1c:
    inc de
    rst $38
    adc a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    dec d
    ld [$e01f], a
    cp e
    ld b, h
    rst $38
    nop

jr_04e_5e38:
    ld a, a
    add b

jr_04e_5e3a:
    rst $18
    jr nz, jr_04e_5e1c

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b

jr_04e_5e4e:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_5e38

    jr nz, jr_04e_5e3a

    jr nz, @-$1f

    jr nz, jr_04e_5e4e

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $ec
    inc de
    inc bc
    db $fc
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
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
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    add b
    add h
    ld c, a
    rst $38
    ld [hl], b
    rst $38
    ld b, e
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    rlca
    rst $38
    cp $ff
    ld l, b
    rst $38
    ld h, h
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld l, l
    rst $38
    ld l, a
    rst $38
    call nz, Call_000_00ff
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
    rst $38
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    nop
    rst $38
    ld bc, $faff
    rst $38
    ld [$3aff], sp
    rst $38
    cp $ff
    or b
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rst $08
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04e_5ef8:
    nop
    rst $38

jr_04e_5efa:
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $0f
    ldh a, [rNR31]
    db $e4
    rra
    ldh [$b7], a
    ld c, b
    ld a, [hl]
    add c
    ld e, a
    and b

jr_04e_5f0c:
    ld a, a
    add b
    ld a, [hl+]
    push de
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_5ef8

    jr nz, jr_04e_5efa

    jr nz, jr_04e_5f0c

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld a, [c]
    dec c
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    rst $38
    nop

jr_04e_5f4c:
    rst $38
    nop

jr_04e_5f4e:
    rst $38
    nop

jr_04e_5f50:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rlca
    ld hl, sp+$7f
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a

jr_04e_5f61:
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_5f4c

    jr nz, jr_04e_5f4e

    jr nz, jr_04e_5f50

    jr nz, jr_04e_5f61

    ld de, $10ef
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$8f07], sp
    rst $38
    rst $38
    ld b, $ff
    ld a, a
    rst $38
    cp $ff
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add b
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    ld e, l
    rst $38
    or c
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    nop

jr_04e_5fc9:
    rst $38
    ld bc, $3eff
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    cpl
    rst $38
    rst $18
    ldh [rIE], a
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
    dec b
    ld a, [$a25d]
    ld e, l
    and d
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_04e_5fc9

    ld sp, $a25d
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    ld [hl+], a
    db $dd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04e_601c:
    rst $38
    nop

jr_04e_601e:
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_04e_6030:
    ld a, h
    add e
    inc bc
    db $fc
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_601c

    jr nz, jr_04e_601e

    jr nz, jr_04e_6030

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ld a, [$c105]
    ld a, $3d
    jp nz, Jump_000_02fd

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    rst $38
    rst $38
    add b
    rst $38
    rra
    rst $38
    db $fd
    rst $38
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    nop
    db $fd
    nop
    dec h
    nop
    dec h
    ld bc, $0125
    dec h
    ld bc, $3f25
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    adc $ff
    call z, $ccff
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
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
    ld bc, $00ff
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38

jr_04e_60e4:
    inc h
    db $db
    ld de, $2aee
    push de
    and b
    ld e, a
    or h
    ld c, e
    adc $31
    rst $08
    jr nc, @-$17

    jr jr_04e_60e4

    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fc
    inc bc

jr_04e_6102:
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
    push af
    ld a, [bc]
    ld c, a
    or b

jr_04e_6114:
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
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_6102

    jr nz, jr_04e_6114

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ldh [$1f], a
    dec de
    db $e4
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
    nop

jr_04e_6140:
    ldh [$1f], a

jr_04e_6142:
    rra
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
    ld a, a
    add b
    ld a, a
    add b

jr_04e_6156:
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_6140

    jr nz, jr_04e_6142

    jr nz, @-$1f

    jr nz, jr_04e_6156

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    db $fd
    rst $38
    rlca
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
    ld e, a
    rst $38
    nop
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    cp $ff
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
    dec bc
    rst $38
    rlca
    cp $ff
    cp $7f
    cp $ff
    cp $7f
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $df
    rst $18
    rst $28
    rst $08
    rst $28
    jp $80f7


    di
    add b
    cp e
    nop
    cp l
    nop
    call c, $ce00
    nop
    rst $28
    nop
    rst $20
    nop
    rst $30
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fc
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    ld a, [$d405]
    dec hl
    db $76
    adc c
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
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    jp z, $9f35

    ld h, b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
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

jr_04e_621a:
    db $fc
    inc bc
    add e

jr_04e_621d:
    ld a, h
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
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_621a

    jr nz, jr_04e_621d

    rra
    rrca
    ldh a, [$f7]
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc b
    ld bc, $0305
    ld bc, $0507
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
    nop
    rra
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    inc bc
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    cp $ff
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
    dec sp
    ccf
    rst $38
    ccf
    rst $38
    jr @+$01

    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    nop
    di
    nop
    ld a, e
    nop
    add hl, sp
    nop
    cp h
    nop
    sbc h
    nop
    sbc $00
    rst $08
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop

jr_04e_62f2:
    ld a, $01
    rrca
    ld bc, $0304
    ld bc, $0007
    inc bc
    ld e, b
    ld bc, $0180
    rst $38
    nop
    rst $38
    nop

jr_04e_6304:
    rst $38
    nop
    rst $38
    nop
    ld h, b
    sbc a
    rra
    ldh [$bf], a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04e_62f2

    jr nz, jr_04e_6304

    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ld a, [$f805]
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    add b
    ld a, a
    ld [hl], b
    adc a
    ldh a, [rIF]
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $037d
    ld a, e
    rlca
    rst $38
    rlca
    rst $38
    rrca
    cp $1f
    cp $3f
    rst $38
    ld a, a
    ld a, h
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    ld a, a
    db $e4
    rra
    call nz, $c43f
    ccf
    and $3f
    adc b
    ld a, a
    call $f57f
    ld a, a
    ld sp, hl
    ld a, a
    ld a, [$fefe]
    cp $ff
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
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    ccf
    db $fc
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
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    and b
    rra
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
    rst $38
    nop
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
    db $10
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    ld bc, $011f
    rrca
    inc bc
    rlca
    rlca
    rlca
    nop
    inc bc
    rlca
    nop
    ld a, a
    nop
    adc a
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    add h
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $81ff
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

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$40ff], sp
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, l
    rst $38
    ld e, [hl]
    rst $38
    nop

jr_04e_648b:
    rst $30
    nop
    xor $02
    jp $ca48


    inc b
    db $fd
    pop bc
    rst $38
    call nc, $d4fc

jr_04e_6499:
    db $fd
    ldh [$f9], a
    jr nz, jr_04e_6499

    jr nz, jr_04e_648b

    xor b
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ld h, h
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add e
    rst $38
    add b
    rst $38
    rlca
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
    nop
    rst $38
    nop
    rst $38

jr_04e_64f5:
    nop
    cp $01
    db $fd
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp b
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    rlca
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
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    cp a
    jr nz, jr_04e_64f5

    jr nz, @+$01

    db $10
    rst $18
    nop
    rst $38
    jr @+$01

    nop
    rst $30
    nop
    rst $38
    ld [de], a
    rst $38
    or [hl]
    cp $00
    nop
    ccf
    ccf
    ld hl, sp-$08
    inc sp
    inc sp
    ld hl, sp-$08
    daa
    daa
    rst $38
    rst $38
    ld a, [c]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
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
    rlca
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    add hl, de
    rst $38
    ld [hl], $ff
    ld [hl], b
    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rrca
    rst $38
    ld a, [de]
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    inc e
    rst $38
    ld bc, $28ff
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld e, h
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $08
    ccf
    and a
    ld a, a
    or e
    ld a, a
    rst $30
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    add hl, sp
    rst $38
    ld de, $13ff
    rst $38
    rrca
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $fdff
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $fc
    rst $38
    inc b
    rlca
    ld hl, sp-$01
    jr z, @+$31

    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [rIE], a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    rra
    rst $38
    ccf
    rst $38
    ld a, d
    cp $75
    rst $38
    ret nz

    db $fd
    rst $38
    rst $38
    set 7, a
    push af
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
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
    jr nz, @+$01

    ldh [$fe], a
    pop hl
    db $fd
    db $e3
    ei
    add b
    rst $38
    inc e
    rst $38
    add d
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh a, [$1f]
    ret z

    ccf
    and b
    ld a, a
    ld h, b
    rst $38
    or $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    cp $f8
    cp $f0
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $01ff
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
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld e, b
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    inc c
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    scf
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld b, $fe
    ld [bc], a
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld [bc], a
    dec bc
    dec bc
    ld c, $0f
    db $10
    ld de, $1312
    dec bc
    dec bc
    dec bc
    inc d
    dec d
    ld d, $17
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr jr_04e_6731

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr nz, jr_04e_674a

    ld [hl+], a
    inc hl
    inc h
    dec bc
    dec h
    ld h, $27
    dec bc

jr_04e_6731:
    jr z, jr_04e_675c

    ld a, [hl+]
    dec hl
    inc l
    dec bc
    dec bc
    dec bc
    dec l
    ld l, $2f
    jr nc, jr_04e_676f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04e_677f

    ld a, [hl-]
    dec sp
    dec bc
    dec bc

jr_04e_674a:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    inc a
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

jr_04e_675c:
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

jr_04e_676f:
    ld c, [hl]
    ld h, b
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
    ld c, [hl]
    ld c, [hl]
    ld l, d
    ld l, e

jr_04e_677f:
    ld c, [hl]
    ld h, b
    ld h, b
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
    ld c, [hl]
    ld h, b
    ld h, b
    ld h, b
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
    ld c, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
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
    ld c, [hl]
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
    ld h, b
    sbc d
    sbc e
    sbc h
    sbc l
    ld c, [hl]
    sbc [hl]
    ld h, b
    ld h, b
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
    ld c, [hl]
    ld h, b
    ld h, b
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


    jp c, $db0b

    call c, $dedd
    rst $18
    inc c
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $0b
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    dec bc
    dec bc
    ldh a, [$f1]
    ld a, [c]
    di
    dec bc
    dec bc
    dec bc
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    push hl
    cp $ff
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0000
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0404
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld b, c
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    inc bc
    nop
    inc bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld b, $01
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc bc
    ld b, $06
    ld bc, $0006
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld b, $06
    ld b, $00
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0206
    ld b, $00
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
    ld bc, $0202
    ld [bc], a
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
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    ld [bc], a
    ld b, $01
    ld bc, $2100
    ld bc, $0404
    inc b
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $00ff
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ei
    inc b
    ld [$1415], a
    nop
    ld d, l
    nop
    dec h
    nop
    ld b, d
    ld bc, $0305
    ld c, e
    rlca
    scf
    rrca
    rrca
    rra
    ld e, a
    ccf
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $30
    rrca
    ld a, e
    rlca
    cpl
    inc bc
    ld d, c
    inc bc
    inc bc
    ld bc, $0122
    and a
    nop
    and e
    add b
    db $d3
    ld b, b
    pop hl
    ld b, b
    ld a, $e1
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$17
    db $ec
    ld e, a
    and d
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld a, a
    rst $38
    add b
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    adc a
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
    dec d
    nop
    ld [$4500], sp
    nop
    adc d
    ld bc, $01c7
    and e
    rlca
    rst $20
    rrca
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
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    sbc a
    ccf
    ccf
    rra
    sbc a
    rrca
    rst $38
    rrca
    ld [hl], a
    rrca
    dec sp
    rlca
    ld e, a
    inc bc
    rlca
    ld bc, $0027
    call c, $96a3
    jp hl


    ld d, c
    xor $3c
    db $e3
    rra
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    dec b
    cp $03
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

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
    jp $c1ff


    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    rra
    ccf
    ld e, a
    rra
    cpl
    rra
    ld e, a
    rrca
    rra
    rlca
    sub e
    rlca
    sub a
    inc bc
    adc l

jr_04e_6b05:
    inc bc
    adc a
    ld bc, $8097
    bit 0, b
    rst $20

jr_04e_6b0d:
    jr nz, jr_04e_6b0d

    jr nz, jr_04e_6b05

    ei
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    add a
    rst $38
    jp $e1ff


    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    sbc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    daa
    rst $18
    inc bc
    rst $38
    inc de
    rst $28
    sub c
    rst $28
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [rTAC]
    ld hl, sp+$63
    db $fc
    ld [hl], c
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
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
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    di
    rst $38
    db $eb
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $18
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
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    and $fb
    rst $00
    ld sp, hl
    rst $08
    push af
    sbc a
    push af
    rra
    ldh [$1f], a
    ldh [$9f], a
    ld [$e09f], a
    adc a
    pop af
    rst $08
    push af
    rst $08
    pop af
    rst $20
    ld hl, sp-$19
    ld a, [$f8e7]
    di
    db $fd
    di
    db $fc
    pop af
    cp $f9
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ld hl, $20ff
    rst $38
    db $10
    rst $38
    rst $38
    ld [$04fe], sp
    cp $04
    rst $38
    cp $7f
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ldh [$8f], a
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $ec
    rst $38
    adc $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    pop hl
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    jp Jump_000_02ff


    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    db $e3
    rst $38
    push hl
    rst $38
    rst $08
    rst $38
    adc e
    rst $38
    sub a
    rst $30
    ccf
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    cp $7f
    cp $7f
    cp $bf
    db $fc
    cp a
    db $fc
    ccf
    ld hl, sp+$7f
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ei
    ld b, b
    rst $30
    nop
    cp $00
    db $fd
    nop
    db $db
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    add c
    rst $38
    add c
    rst $30
    pop bc
    rst $38
    jp $c3ff


    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and $ff
    or $ff
    pop af
    rst $38
    ld hl, sp-$01
    ld a, [$f9ff]
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ret nz

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
    ld a, a
    add b
    nop
    add b
    ld a, h
    ldh a, [$bf]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $df
    cp $9f
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    sbc $ff
    sbc $ff
    db $dd
    rst $38
    db $dd
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $01fb
    rst $38
    ld bc, $01f7
    rst $38
    inc bc
    rst $28
    inc bc
    rst $38
    ld b, $5f
    ld b, $ff
    ld c, $bf
    inc c
    rst $38
    ld e, $ff
    ld e, $7f
    dec de
    rst $38
    add hl, sp
    rst $38
    db $76
    rst $38
    ld [hl], d
    rst $38
    ld h, e
    rst $38
    ld l, e
    rst $38
    ld l, l
    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    xor $ff
    cp $ff
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp h
    rst $38
    inc l
    rst $38
    cp b
    rst $38
    ld e, b
    rst $38
    ld d, h
    rst $38
    ld [hl], b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld h, h
    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    ld l, b
    rst $38
    ld a, [hl-]
    rst $38
    ld e, b
    rst $38
    ld e, d
    rst $38
    jp c, $f2ff

    rst $38
    db $f4
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $38
    nop
    rst $38
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
    add b
    ldh [$fc], a
    rst $30
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    dec e
    rst $38
    add hl, de
    cp $11
    cp $13
    cp $03
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    and b
    ld a, a
    and b
    ld a, e
    and h
    ld a, e
    add h
    ei
    add h
    db $10
    sub b
    ret nc

    sub b
    ret nz

    add b
    ret nz

    add b
    ldh a, [$90]
    ld hl, sp-$40
    add sp, -$40
    add sp, -$38
    add sp, -$38
    db $ec
    ret nz

    xor $c0
    rst $28
    ldh [$f6], a
    ldh [$f5], a
    db $e4
    rst $30
    db $e4
    sub $e4
    or $e0
    or a
    db $f4
    or a
    ldh a, [rIE]
    ld a, [c]
    ld a, d
    ld a, [c]
    ld a, e
    ld a, [c]
    ei
    ld a, [c]
    ld a, e
    ld a, [$fb7b]
    rst $38
    ei
    rst $38
    ei
    rst $28
    ld sp, hl
    ld c, l
    ld sp, hl
    db $ed
    db $fd
    xor l
    db $fd
    cp a
    db $fc
    rst $18
    db $fc
    sbc a
    db $fc
    ccf
    db $fc
    ccf
    cp $3f
    cp $43
    cp $03
    cp $03
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $11ff
    rst $38
    ld bc, $23ff
    rst $38
    add hl, hl
    rst $38
    dec c
    db $fd
    ld d, e
    rst $18
    ld d, b
    rst $38
    db $10
    ei
    ld [hl-], a
    ei
    cp d
    rst $38
    cp d
    cp a
    jr nc, @+$01

    jr nc, jr_04e_6f89

    jr nc, jr_04e_6f8b

    inc sp
    ld a, a
    ld [hl], e
    rst $38
    rst $28
    ld a, a
    dec hl
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld e, [hl]
    cp $5e
    cp $5e
    cp $1f
    cp $8f
    cp $a7
    cp $f5
    cp $f1
    cp $f1
    cp $a1
    cp $c3
    db $fc
    di
    db $fc
    ei
    db $fc
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld l, d
    sub l
    rst $28
    db $10
    rst $38

jr_04e_6f89:
    nop
    ld a, a

jr_04e_6f8b:
    add b
    rst $30
    ld [$946b], sp
    sub h
    ld l, e
    ld d, l
    xor d
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
    rst $38
    nop
    ld hl, sp+$00
    rst $30
    nop
    di
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $e1
    cp $f3
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$fe]
    ld a, [c]
    cp $b0
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop af
    cp $f1
    cp $f3
    db $f4
    ldh [$f3], a
    ldh [$eb], a
    ld hl, sp-$0b
    ld [hl], a
    ld hl, sp+$7f
    ld hl, sp+$7f
    db $fc
    ld [hl], c
    ldh a, [$f3]
    ld a, [$fdfe]
    di
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    pop af
    rra
    add hl, bc
    rrca
    dec b
    rlca
    rlca
    dec b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rrca
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

jr_04e_7020:
    rst $38
    nop
    rra
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

jr_04e_7035:
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, [hl]
    and c
    rst $38
    nop
    db $fd
    ld [bc], a
    ld l, a
    sub b
    dec a
    jp nz, $f807

    ld bc, $00fe
    rst $38
    ret nz

    ccf
    jr nz, jr_04e_7035

    ld h, b
    sbc a
    ret nc

    rrca
    db $10
    rrca
    rla
    rrca
    rrca
    rlca
    rst $30
    rrca
    rst $38
    rlca
    cp $06
    rst $30
    rrca
    and $1e
    adc a
    ld a, a
    ld a, a

jr_04e_706d:
    rst $38
    jr nc, jr_04e_7020

    db $d3
    inc sp
    add b
    ld a, a
    ld hl, $3fff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$9800], sp
    nop
    rst $38
    add b
    rst $38
    adc a
    rst $38
    db $10
    ldh [$d0], a
    jr z, jr_04e_706d

    inc e
    db $e4
    inc e
    cp $0e
    ld a, h
    cp [hl]
    and e
    call nz, $8344
    ret


    sub l
    rst $00
    ld a, e
    or a
    ld b, a
    ld h, a
    rrca
    cpl
    rra
    adc h
    ccf
    db $10
    ld l, a
    add c
    cp [hl]
    add c
    cp $8f
    ldh a, [$8f]
    ldh a, [$bf]
    ret nz

    db $fd
    add e
    ld a, a
    add a
    db $fc
    adc h
    ld a, b
    cp b
    ldh a, [rSVBK]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $00
    ld hl, sp+$05
    ld a, [$fd02]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
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
    rst $38
    nop
    inc bc
    nop
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
    nop
    rrca
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
    ld e, a
    and b
    rst $38
    nop
    ld a, c
    add [hl]
    rst $10
    jr z, jr_04e_7151

    nop
    sbc a
    nop
    xor c
    nop
    and $00
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a

jr_04e_7125:
    ld l, [hl]
    ld bc, $05ff
    ld h, a
    inc c
    rst $38
    adc h
    rst $28
    nop
    rlca
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld l, a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    rlca
    rlca
    ld hl, sp+$03
    db $fc
    ldh [rIE], a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04e_7151:
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
    ret nz

    add b
    ldh [$a0], a
    ret nc

    nop
    ld hl, sp+$18
    db $e4
    ld [hl], h
    adc d
    ld a, [$fc06]
    nop
    ret c

    jr c, jr_04e_7125

    ld a, b
    ret c

    ret c

    sbc d
    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$5d]
    and d
    rst $30
    ld [$40bf], sp
    ei
    inc b
    cp l
    ld b, d
    db $dd
    ld [hl+], a
    or b
    ld c, a
    cp $01
    ld a, a
    add b
    db $76
    adc c
    rst $28
    db $10
    cp a
    ld b, b
    ld a, [c]
    dec c
    rst $38
    nop
    cp c
    ld b, [hl]
    rst $38
    nop
    ld e, l
    and d
    ldh [$1f], a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop
    ld bc, $fc00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, h
    nop
    ei
    nop
    rst $18
    nop
    pop af
    nop
    rst $10
    nop
    scf
    ret nz

    ld l, $c1
    ld e, h
    db $e3
    pop hl
    ld h, d
    or e
    ld [hl], d
    inc de
    ld a, [c]

jr_04e_71d6:
    dec de
    cp $8e
    rst $38
    call z, $d7ff
    db $fd
    daa
    db $fd
    daa
    rst $38
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
    db $f4
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, jr_04e_728a

    sub d
    rst $28
    db $10
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
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_04e_71d6

    ld h, b
    jp c, $fd25

    ld [bc], a
    cp l
    ld b, d
    db $dd
    ld [hl+], a
    adc l
    ld [hl], d
    db $ed
    ld [de], a
    db $fc
    inc bc
    db $f4
    dec bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ld e, l
    and d
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04e_7286:
    rst $38
    inc bc
    cp $03

jr_04e_728a:
    ld a, [$fb07]
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $fd
    ld b, $f5
    ld c, $f7
    inc c
    rst $30
    inc c
    rst $38
    inc c
    rst $38
    inc c
    ei
    inc c
    db $eb
    inc e
    rst $28
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr jr_04e_7286

    jr c, jr_04e_72e1

    db $10
    jr nc, jr_04e_72e4

    jr nc, jr_04e_72e6

    ld [hl-], a
    jr nc, jr_04e_72ed

    jr nc, jr_04e_7337

    and b
    rst $38
    and b
    nop
    rst $38
    nop
    sbc $00
    sbc $00
    adc $00
    add $00
    jp $c700


    nop
    rst $00
    nop
    rst $00
    nop
    rst $28
    inc b
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    call $f700
    nop
    rst $10
    nop
    ccf
    nop

jr_04e_72e1:
    ld a, a
    nop
    rst $38

jr_04e_72e4:
    nop
    rst $38

jr_04e_72e6:
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_04e_72ed:
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    ld a, [hl]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04e_7321:
    nop
    rst $28
    db $10
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_04e_7321

    add hl, bc
    cp c
    ld b, [hl]
    inc e
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_04e_7337:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04e_7340:
    rst $38
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
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0100
    nop
    nop
    nop
    stop
    ld [de], a
    nop
    ldh [rP1], a
    jr nc, jr_04e_7340

    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld a, [hl]
    add c
    ld a, $c1
    ccf
    pop bc
    dec a
    jp $c33d


    ccf
    jp $c33f


    ccf
    rst $00
    dec a
    rst $38
    dec b
    rst $00
    dec c
    rst $08
    rlca
    rst $08
    rrca
    rst $18
    adc $df
    adc [hl]
    adc a
    ld b, $0f
    ld b, $0f
    ld b, $0f
    add [hl]
    rrca
    add [hl]
    rrca
    add d
    rrca
    add e
    rrca
    add e
    rrca
    add a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0907
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    nop
    inc bc
    add b
    inc bc
    ld [$0003], sp
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld [$0001], sp
    ld bc, $0180
    inc d
    ld bc, $0105
    ld h, e
    ld bc, $01ff
    cp $01
    cp $01
    cp $01
    ld a, $01
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
    ld bc, $fe00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld bc, $0101
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    rlca
    inc bc
    ld bc, $0607
    rlca
    ld c, $07
    ld b, $0f
    ld c, $0f
    rra
    rrca
    ld c, a
    rra
    rra
    rra
    rra
    rra
    ld l, a
    rra
    rst $08
    ccf
    rst $20
    ccf
    or a
    ld a, a
    or a
    ld a, a
    rst $30
    ld a, a
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    sbc $ff
    sbc $ff
    adc $ff
    xor $ff
    xor $ff
    xor $ff
    rst $28
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    scf
    rst $38
    or a
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    push de
    rst $38
    push de
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    jp nz, $e2ff

    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld bc, $01ff
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    adc e
    ld a, a
    adc e
    ld a, a
    add e
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    cp [hl]
    ld a, a
    inc a
    rst $38
    or c
    rst $38
    nop
    rst $38
    ld bc, $0301
    ld bc, $0301
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, $07
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    ld a, $3f
    ccf
    ld e, a
    ccf
    rra
    ld a, a
    ld a, a
    ld a, a
    rst $28
    ld a, a
    ld h, a
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    push hl
    rst $38
    rst $30
    rst $38
    db $db
    rst $38
    set 7, a
    add e
    cp $89
    cp $85
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    cp l
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    sbc a
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    cp $ff
    or $ff
    xor $ff
    rst $28
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $10
    rst $38
    ld e, a
    ei
    cp a
    ei
    cp a
    ei
    ld a, a
    ei
    ld a, a
    ld sp, hl
    ld sp, hl
    di
    di
    or b
    or $ed
    di
    rst $10
    jp hl


    cp [hl]
    pop hl
    xor l
    jp nc, $c877

    ld e, d
    and l
    ld c, e
    or h
    ld l, a
    jp nc, $e817

    adc e
    push af
    cp l
    jp nc, $eabd

    ld a, [hl-]
    push hl
    ld c, $f5
    ld d, l
    ld [$fa4d], a
    rst $18
    push af
    ld a, [$eff5]
    ld a, [$fee1]
    rst $38
    db $fd
    ld hl, sp-$01
    di
    cp $f5
    cp $ff
    db $fd
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    rst $38
    db $fd
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
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    di
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    push af
    rst $38
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
    inc bc
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    db $fd
    db $fd
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
    ld a, [c]
    rst $38
    ld a, [c]
    cp $e0
    cp $e0
    cp $e0
    db $fd
    ret nc

    rst $38
    db $e4
    ei
    ld a, d
    push af
    ld a, [$74f5]
    ei
    push af
    ld a, [$fc7b]
    ld a, [hl-]
    dec a
    ld a, h
    rst $38
    sbc l
    ld e, [hl]
    cp l
    ld a, [hl]
    ld a, [hl]
    xor a
    ld a, [hl]
    xor a
    sbc [hl]
    ld a, a
    cp a
    ld d, a
    rst $18
    cp a
    ei
    xor a
    cp a
    ld c, e
    rst $30
    ld e, a
    ld c, a
    cp e
    rst $28
    cp c
    sbc l
    ld a, a
    rst $38
    ld l, h
    cp a
    cp $ff
    sbc $de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    ld a, a
    rst $18
    rst $38
    rst $18
    rst $28
    rst $38
    xor a
    rst $28
    ld a, a
    rst $30
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
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
    cp $ff
    ld hl, sp-$01
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
    ld bc, $07ff
    rst $38
    inc e
    rst $38
    ld [hl], b
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
    rst $38
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
    cp a
    cp a
    rst $38
    sbc a
    rst $18
    adc a
    rst $18
    rst $08
    rst $28
    ld c, a
    rst $28
    adc a
    rst $18
    add a
    rst $18
    add a
    sbc a
    rlca
    xor a
    inc bc
    adc a
    ld bc, $0157
    ld [hl], a
    nop
    xor a
    nop
    cp e
    nop
    ld l, a
    nop
    ld e, e
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
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
    cp a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ldh a, [$7f]
    ld hl, sp+$7f
    cp b
    ld a, a
    ld hl, sp+$3f
    db $fc
    cp a
    db $fd
    sbc a
    cp $9f
    rst $38
    rst $18
    rst $38
    rst $08
    rst $18
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $28
    rst $30
    rst $38
    di
    di
    rst $38
    rst $38
    di
    ei
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    db $fc
    rst $38
    db $fd
    cp $fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld e, $ff
    jr c, @+$01

    ld h, b
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
    ld bc, $0ffe
    ldh a, [$7f]
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    sbc $ff
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    rst $38
    ccf
    rst $38
    rst $38
    rst $18
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $30
    rst $28
    rst $28
    rst $30
    rst $38
    rst $20
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    rlca
    rst $38
    rrca
    rst $38
    ld a, b
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
    ld bc, $07fe
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr jr_04e_799d

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

jr_04e_799d:
    inc h
    dec h
    ld h, $27
    jr z, jr_04e_79cc

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04e_79e0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04e_79f0

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

jr_04e_79cc:
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

jr_04e_79e0:
    inc h
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
    ld l, l

jr_04e_79f0:
    inc h
    ld h, c
    ld h, c
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
    ld a, c
    inc h
    ld h, c
    ld h, c
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
    ld l, l
    add l
    ld l, l
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
    ld l, l
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
    ld l, l
    inc h
    inc h
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
    inc h
    jp nz, $c4c3

    ld [bc], a
    ld [bc], a
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_24ce
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
    ld l, l
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
    jr jr_04e_7ac6

    ld a, [de]
    dec de
    dec d
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

jr_04e_7ac6:
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0102
    inc b
    inc b
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    jr nz, jr_04e_7da7

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

jr_04e_7da7:
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
    jr nz, jr_04e_7e79

    nop
    rst $38
    nop
    rst $38
    nop
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

jr_04e_7e79:
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

Jump_04e_7f80:
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
