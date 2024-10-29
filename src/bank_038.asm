SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    sub h
    ld l, e
    db $fc
    inc bc
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    reti


    ld b, $a7
    nop
    ret c

    daa
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
    dec b
    rst $38
    ld de, $5dff
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
    db $fd
    rst $38
    cp $ff
    ei
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    nop
    rst $38
    add b
    ld a, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    ldh a, [rIE]
    nop
    ld b, [hl]
    add b
    ldh [rP1], a
    ld b, h
    nop
    add e
    ld a, h
    and h
    ld e, e
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
    dec bc
    rst $38
    inc bc
    rst $38
    ld bc, $43ff
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    and b
    rst $38
    add e
    rst $38
    adc [hl]
    cp $38
    ld hl, sp-$20
    ldh [$80], a
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
    db $fc
    inc bc
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
    db $10
    rst $28
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$3f
    ld b, b
    ld hl, sp+$04
    push bc
    ld a, [bc]
    ld a, a
    nop
    sbc h
    nop
    ldh [rP1], a
    rst $30
    ld [$ff00], sp
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
    dec b
    rst $38
    ld b, b
    rst $38
    daa
    rst $38
    ccf
    rst $38
    ld e, a
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
    xor $ff
    cp b
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop

Call_038_413b:
    rst $38

jr_038_413c:
    nop
    rst $38
    rlca
    rst $38
    ld c, $fe
    jr c, jr_038_413c

    ldh [$e0], a
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
    ld sp, hl
    ld b, $f0
    rrca
    ldh [$1f], a
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc c
    di
    add b
    rra
    ldh a, [$08]
    ld a, h
    ld [bc], a
    adc h
    ld b, c
    pop af
    ld c, $36
    ld c, c
    ccf
    ld b, b
    push af
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
    nop
    nop
    nop
    ld bc, $0202
    nop
    nop
    nop
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
    dec b
    ld b, $02
    ld [bc], a
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
    ld [$0202], sp
    add hl, bc
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
    dec b
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    ld de, $0212
    ld [bc], a
    ld [bc], a
    inc de

Jump_038_41fe:
    inc d
    dec d
    ld d, $17
    jr jr_038_421d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_038_4230

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_038_4240

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_038_421d:
    jr nc, jr_038_4250

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_038_4260

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_038_4230:
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

jr_038_4240:
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

jr_038_4250:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld e, b
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

jr_038_4260:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld e, b
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
    ld e, b
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
    sub b
    sub b
    sub b
    sub c
    ld e, b
    ld e, b
    ld e, b
    sub d
    sub e
    sub e
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    sbc b
    sub e
    sub e
    sub e
    sbc c
    sbc d
    sbc e
    sbc h
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    sbc l
    sub e
    sub e
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    and [hl]
    and a
    sub e
    xor b
    xor c
    xor d
    xor e
    xor h
    ld [bc], a
    ld [bc], a
    xor l
    xor [hl]
    xor a
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    or b
    sub e
    sub e
    or c
    or d
    or e
    or h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or l
    or [hl]
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    or a
    sub e
    sub e
    cp b
    cp c
    cp d
    nop
    nop
    nop
    nop
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $06
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    inc b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101

Jump_038_43c3:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0404
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0404
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    rrca
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
    ld bc, $0701
    rlca
    ld e, $1f
    ld a, b
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
    nop
    ld bc, $0300
    nop
    rrca
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
    ld bc, $0601
    rlca
    inc e
    rra
    ld [hl], c
    ld a, a
    rst $00
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
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
    ld bc, $0601
    rlca
    jr jr_038_44dd

    ld h, e
    ld a, a
    adc a
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a

jr_038_44dd:
    nop
    rst $38

Call_038_44df:
    nop
    inc bc
    inc bc
    ld c, $0f
    add hl, sp
    ccf
    ld h, a
    ld a, a
    sbc [hl]
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld [$00ff], sp
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
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
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
    inc bc
    inc bc
    inc c
    rrca
    ld sp, $c73f
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    add d
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
    ld bc, $08fe
    rst $30
    ld b, $f9
    ld b, $7f
    rlca
    ld a, a
    inc bc
    ld a, a
    nop
    ld a, a
    add b
    ccf
    add b
    ccf
    add d
    ccf
    add b
    ccf
    sub b
    ccf
    add c
    ccf
    add d
    ccf
    add b
    ccf
    pop bc
    rra
    sbc $1f
    ret z

    rra
    jp nz, $c51f

    rra
    jp z, $c21f

    rra
    jp $e31f


    rrca
    push hl
    rrca
    add sp, $0f
    push hl
    rrca
    ld h, l
    adc a
    ld h, e
    adc a
    ld h, a
    adc a
    ld h, l
    adc a
    ld h, c
    sub a
    ld [hl], c
    add a
    ld [hl], e
    add a
    inc sp
    ld b, a
    inc sp
    ld b, a
    inc sp
    ld b, a
    inc sp
    ld b, a
    inc sp
    ld b, a
    add hl, sp
    ld b, e
    add hl, sp
    ld b, e
    add hl, de
    inc hl
    add hl, de
    inc hl
    add hl, de
    inc hl
    add hl, de
    inc hl
    add hl, de
    inc hl
    add hl, de
    inc hl
    inc c
    ld de, $110c
    inc c
    ld de, $110c
    inc c
    ld de, $110c
    inc c
    ld de, $0904
    ld b, $08
    ld b, $08
    ld b, $08
    ld b, $08
    ld b, $08
    ld b, $08
    ld a, [de]
    inc b
    ld a, [de]
    inc b
    dec de
    inc b
    dec sp
    inc b
    dec sp
    inc b
    ld a, e
    inc b
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
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
    inc bc
    inc bc
    rrca
    rrca
    ccf

jr_038_4625:
    ccf
    cp $ff
    ld a, b
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld [$88ff], sp
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
    add b
    ld a, a
    jr nz, jr_038_4625

    nop
    rst $38
    ld b, d
    cp l
    ld [hl], c
    adc [hl]
    inc a
    jp Jump_000_00ff


    db $fc
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld l, e
    rst $38
    sub b
    ld l, a
    nop
    cp $08
    ldh a, [$09]
    ldh [rDIV], a
    ret nz

    inc b
    pop de
    db $10
    push hl
    nop
    rst $30
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $01fe
    db $fc
    inc bc
    ld hl, sp+$03
    ld hl, sp-$39
    ld hl, sp-$40
    cp $40
    rst $38
    add hl, hl
    or $e1
    cp [hl]
    xor d
    db $f4
    ldh a, [$5e]
    ldh a, [$3f]
    call c, $d2ff
    rst $38
    ld a, [$6eff]
    rst $38
    db $e3
    ld a, a
    db $d3
    ld a, a
    ld a, [$8a7f]
    ld a, a
    pop bc
    ld a, [hl]
    ldh [$7f], a
    ldh a, [$3f]
    di
    inc e
    ld a, c
    ld e, $7c
    ccf
    ld a, [hl]
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    cp a
    ccf
    sbc a
    ccf
    rst $18
    rra
    rst $18
    rra
    db $ed
    rrca
    pop hl
    rrca
    db $e3
    rrca
    rst $30
    rlca
    di
    rlca
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    db $fc
    ld bc, $01fc

jr_038_46ec:
    ld e, h
    and c

jr_038_46ee:
    ld h, [hl]
    sbc b
    ld h, d
    sbc h
    inc sp
    call z, $e619
    inc e
    db $e3
    ld c, h
    or e
    and [hl]
    ld e, c
    or a
    ld c, b
    cp e
    ld b, h
    cp e
    ld b, h
    cp l
    ld b, d
    cp [hl]
    ld b, c
    sbc $21
    rst $18
    jr nz, @-$1f

    jr nz, jr_038_46ec

    jr nz, jr_038_46ee

    jr nz, jr_038_4731

    nop
    jr nz, jr_038_4714

jr_038_4714:
    stop
    stop
    stop
    db $10
    ld c, $30
    ccf
    ldh a, [rIE]
    ld a, b

jr_038_4721:
    rst $30
    add sp, -$01
    adc b
    rst $38
    ld b, [hl]
    db $fd
    add a
    db $fc
    jp Jump_038_41fe


    rst $38
    pop bc
    rst $38
    ld h, b

jr_038_4731:
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $01de
    cp $10
    rst $28
    jr nz, jr_038_4721

    ld [$88f7], sp
    ld [hl], a
    ld h, l
    sbc d
    xor [hl]

jr_038_4749:
    ld d, c
    ld h, $d9
    xor a
    ld d, b
    rst $38
    nop
    ret c

    jr nz, jr_038_476b

    ldh [rNR24], a
    ldh [rNR33], a
    ldh [rNR23], a
    ldh [rNR34], a
    ldh [rDIV], a
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    cp $02
    db $fc
    ld a, [bc]
    db $f4
    ld c, $f0
    rrca

jr_038_476b:
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    sbc a
    ccf
    rst $08
    ccf
    rst $08
    ld a, a
    rrca
    ccf
    rrca
    ld c, a
    rlca
    adc a
    rlca
    rst $18
    rlca
    rlca
    rst $38
    ld b, a
    and e
    ld h, h
    add e
    jr nc, @-$7b

    add d
    ld bc, $0162
    add b
    ld bc, $01a0
    ld hl, $6f00
    nop
    ld e, $e1
    rrca
    ldh a, [$1f]

jr_038_47a5:
    ldh [$8f], a

jr_038_47a7:
    ld [hl], b
    sbc a
    ld h, b
    and $19
    ld h, a
    sbc b
    db $eb
    inc d
    ld e, e
    add b
    db $10
    add b
    ld a, c
    add b
    ld a, $c0
    ld c, $c0
    dec c
    ldh a, [rNR32]
    ldh [$28], a
    ret nc

    add c
    ld a, h
    ld a, [bc]
    db $f4
    dec b
    ld [hl-], a
    add a
    jr nc, jr_038_4749

    ld [hl], a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    cp $01
    ld a, [c]
    dec c
    ei
    inc b
    jr c, jr_038_47a5

    jr c, jr_038_47a7

    ld a, $c1
    ld a, [hl]
    add c
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    call c, Call_038_4803
    rlca
    ld h, b

Call_038_4803:
    inc c
    ld [hl], b
    nop
    jr nc, jr_038_4808

jr_038_4808:
    stop
    ld b, b
    nop
    jr nz, jr_038_480e

jr_038_480e:
    jr nc, jr_038_4810

jr_038_4810:
    inc d
    nop
    stop
    nop
    nop
    nop
    jr nz, jr_038_4819

jr_038_4819:
    ld h, b
    nop
    ld h, b
    nop
    jr nz, jr_038_481f

jr_038_481f:
    jr nc, jr_038_4821

jr_038_4821:
    or b
    nop
    sub b
    nop
    ret c

    nop
    ld hl, sp+$00

jr_038_4829:
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    add b
    ld a, b
    ret nz

    cp b
    ret nz

    cp h
    ld h, b
    call c, $cf70
    jr nc, jr_038_4829

    rla
    ld hl, sp+$1f
    ldh a, [$2f]
    reti


    adc a
    ld a, a
    or $0f
    ld [hl], h
    adc e
    inc a
    jp $c13e


    cp b
    ld b, a
    reti


    ld h, $77
    adc b
    ldh a, [rIF]
    rst $18
    jr nz, jr_038_485c

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b

jr_038_485c:
    rst $20

jr_038_485d:
    jr jr_038_485d

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $0ff0


    add c
    ld a, a
    add a
    ld a, a
    rra
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
    db $fc
    rst $38
    di
    db $fc
    rst $28
    ldh a, [$df]
    ldh [$df], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$06
    db $fd
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $7f
    cp $7f
    cp $7f
    ld a, [hl]
    ccf
    ld a, a
    ccf
    ccf
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    ld l, a
    sbc a
    adc a
    ld a, a
    ld a, a
    rrca
    cpl
    rra
    cpl
    sbc a
    ld d, a
    xor a
    inc bc
    rst $38
    nop
    rst $38
    inc a
    jp $f708


    rla
    add sp, $1f
    ldh [$0b], a
    db $f4
    ld [bc], a
    db $fd
    ld b, $f9
    add a
    ld a, b
    rst $20
    jr jr_038_4921

    cp l
    ld hl, sp-$01
    db $fc
    rst $38
    cp h
    rst $28
    cp h
    rst $38
    sub h
    rst $38
    inc [hl]
    rst $38
    inc d
    rst $38
    ld b, $ff
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    inc a
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc c
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
    rrca
    inc c

jr_038_4921:
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    add hl, bc
    ld c, $09
    ld c, $0c
    rrca
    ld [$080f], sp
    cp a
    add hl, de
    rst $28
    rst $38
    adc a
    ld a, h
    adc a
    ld hl, sp+$3f
    ldh a, [$7f]
    pop bc
    cp $a4
    db $db
    and [hl]
    ld e, c
    or l

jr_038_4945:
    ld c, d
    ld [hl], e
    adc h
    ld e, a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_038_4945

    dec bc
    pop af
    ld c, $f6
    add hl, bc
    cp $01
    db $fc
    inc bc
    ld a, [c]
    dec c
    call nc, $f82b
    rlca
    ldh [$1f], a
    pop bc
    ccf
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
    cp $ff
    db $fc
    rst $38
    di
    db $fc
    rst $08
    ldh a, [$3e]
    pop bc
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    ld a, [$f805]
    rlca
    ld sp, hl
    ld b, $f8
    rlca
    pop hl
    ld e, $e0
    rra
    ldh [$1f], a
    and b
    ld e, a
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $87ff
    rst $38
    adc a
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
    db $fc
    or $f9
    call nz, $a8fb
    rst $10
    inc d
    db $eb
    ld [bc], a
    db $fd
    nop
    rst $38
    add hl, bc
    or $7f
    ld [$e43f], a
    ccf
    or $ff
    db $fc
    rst $38
    ld hl, sp+$6f
    ld hl, sp-$71
    db $fc
    add e
    cp $41
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    rst $38
    ldh a, [rIF]
    ret nz

    inc a
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    add c
    db $fd
    ld [bc], a
    ld a, b
    add a
    ld l, h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld [hl], a
    ld hl, sp-$01
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $0f
    cp $1f
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00df
    rst $38
    and b
    ld e, a
    ld c, b
    or a
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    db $ed
    ld [de], a
    ei
    inc b
    rst $38
    nop
    nop
    rst $38
    ld h, b
    sbc a
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
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $f4
    dec bc
    ld hl, sp+$07
    ldh [$1f], a
    and b
    ld e, a
    ret nz

jr_038_4a8d:
    ccf
    add b

jr_038_4a8f:
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [$cf]
    jr nz, jr_038_4a8d

    jr nz, jr_038_4a8f

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
    ei
    rst $38
    ld [hl], h
    rst $38
    or d
    rst $38
    ld bc, $05ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    rra
    db $fc
    ld a, a
    ldh a, [rIE]
    ret nz

    ld bc, $0701
    rlca
    rrca
    rrca
    ld a, $3f
    ld hl, sp-$01
    ld [c], a
    db $fd
    rst $20
    ret c

    rst $30
    ld [$1ae5], sp
    db $e4
    dec de
    or d
    ld c, l
    dec d
    ld [$c03f], a
    adc [hl]
    ld [hl], c
    dec [hl]
    jp z, Jump_038_7b84

    nop
    rst $38
    ld b, h
    cp e
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $18
    ldh a, [rIF]
    ld sp, hl
    rlca
    rst $38
    inc bc
    rst $30
    rrca
    db $fd
    rrca
    ld a, [$e03f]
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    jr nz, @-$1f

    nop
    rst $38
    db $10
    rst $28
    add hl, bc
    rst $30
    rst $20
    ld e, $cf

jr_038_4b3f:
    jr c, jr_038_4b42

    rst $38

jr_038_4b42:
    rlca
    rst $38
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
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jr jr_038_4b3f

    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [$f8]

jr_038_4b91:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $30
    db $fc
    rst $08
    db $fc
    jp $c1fe


    cp $e1
    xor b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld b, b

jr_038_4ba9:
    rst $38
    ld [bc], a
    rst $38
    ld d, $ff
    dec h
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rrca
    db $fc
    cp h
    ldh a, [$f0]
    ret nz

jr_038_4bc7:
    ret nz

    ld bc, $0601

jr_038_4bcb:
    ld b, $18

jr_038_4bcd:
    jr jr_038_4c47

jr_038_4bcf:
    ld a, b
    ldh a, [$f8]
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    ld b, b
    cp b
    ret nz

    jr c, @-$1e

    jr jr_038_4bc7

    jr jr_038_4ba9

    jr c, jr_038_4bcb

    jr jr_038_4bcd

    jr jr_038_4bcf

    jr jr_038_4b91

    ld e, b
    and c
    ld e, c
    jp $0f3b


    rst $38
    rra
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    ld e, b
    rst $38
    db $dd
    rst $38
    ld a, h
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $30
    rst $38
    ld b, e
    rst $38
    ld hl, $10ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra

jr_038_4c47:
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
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [$cf]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$3f]
    ldh a, [$3f]
    ret nz

    rst $08
    di
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
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
    xor $ff
    rst $20
    rst $38
    ld h, e
    rst $38
    inc sp
    rst $38
    sbc h
    rst $38
    call z, Call_038_6aff
    rst $38
    or c
    rst $38
    sub c
    rst $38
    add sp, -$01
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $07fe
    ld hl, sp+$0e
    ldh a, [rNR23]
    ldh [$2a], a
    ret nz

    ld [hl], l
    add b
    jp c, $db00

    inc b
    ld e, [hl]
    ld bc, $ff80
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
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_038_4d54:
    rst $38

jr_038_4d55:
    rst $38
    rst $38
    rst $38

jr_038_4d58:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $08

jr_038_4d6d:
    rst $38
    scf
    rst $38
    di
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    cp $7f
    db $fc
    ccf
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    ld bc, $03fe
    db $fc
    add hl, bc
    or $18
    db $e4
    add hl, bc
    ldh a, [rNR13]
    ldh [$6e], a
    add b
    adc h
    ld [bc], a
    jr c, jr_038_4d96

    ld e, l
    jr nz, jr_038_4d54

    ld b, b

jr_038_4d96:
    or a
    ld b, b
    db $dd
    jr nz, jr_038_4d6d

    jr nz, jr_038_4d55

    ld b, b
    db $fd
    nop
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
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$0b
    db $f4
    ccf
    ret nz

    rst $18
    jr nz, jr_038_4d58

    ld b, b
    xor a
    nop
    ld a, $00
    ld a, a
    nop
    cp a
    nop
    ld a, [hl]
    ld bc, $02fd
    ld a, c
    ld b, $bb
    inc b
    rst $30
    ld [$10af], sp
    rst $28
    db $10
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    ld b, b
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $03
    db $fc
    rrca
    ldh a, [rNR23]
    ldh [rNR11], a
    ret nz

    ld c, l
    add b
    xor a
    nop
    db $fc
    nop
    ld l, b
    db $10
    ld a, c

jr_038_4e29:
    nop
    ld a, [c]
    nop
    add sp, $00
    rl b
    ld hl, sp+$00
    ld e, h
    ld bc, $04b9
    ld b, l
    cp d
    ld l, a
    sub b
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld l, a
    add b

jr_038_4e40:
    rst $18
    jr nz, jr_038_4e29

    add hl, de
    inc a
    add e
    dec d
    ld a, [hl+]
    ld a, l
    ld [bc], a
    db $db
    jr nz, jr_038_4e40

    nop
    adc l
    ld [hl], b
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    ld b, b
    ccf
    jr nz, jr_038_4edd

    ld [$f007], sp
    inc bc
    ld [c], a
    ld bc, $0865
    cp a
    ld b, b
    cp [hl]
    ld b, b
    ld a, a
    nop
    or a
    ld b, b
    or a
    ld c, b
    rlc h
    sbc a
    nop
    ld [hl], l
    adc b
    and l
    ld e, b
    ld l, h
    sub b
    ld a, [$be04]

jr_038_4edd:
    ld b, b
    cp h
    nop
    db $f4
    ld [$906c], sp
    ei
    inc b
    or d
    ld c, c
    push af
    ld [$18e6], sp
    inc sp
    inc c
    and a
    ld e, b
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
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
    ret nz

    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    call nc, $fd03
    nop
    db $fc
    nop
    ld a, [$3100]
    nop
    ld a, b
    nop
    ld sp, $3f00
    nop

jr_038_4f60:
    ld e, a
    jr nz, jr_038_4f60

    ld [bc], a
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $28
    db $10
    ld [hl], a
    ld [$14eb], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    ccf
    jr nz, jr_038_4fd9

    jr nc, jr_038_4fcb

    ld d, h
    xor e
    add b
    ld a, a
    adc b
    ld [hl], a
    add b
    ld a, a
    ld h, b
    rra
    pop hl
    ld e, $74
    adc d
    or h

jr_038_4fcb:
    ld c, d
    pop hl
    ld c, $dd
    ld [hl+], a
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    dec b

jr_038_4fd9:
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0808], sp
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    dec b
    dec b
    db $10
    ld de, $0808
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1312], sp
    inc d
    dec d
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1608], sp
    rlca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1817], sp
    rlca
    add hl, de
    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld a, [de]
    ld e, $1f
    ld [$0808], sp
    jr nz, jr_038_504f

    ld [hl+], a
    rlca
    inc hl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc h
    dec h
    ld h, $27
    jr z, jr_038_5068

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    rlca
    rlca
    rlca
    rlca
    rlca
    jr nc, jr_038_507d

    ld [hl-], a
    inc sp
    inc [hl]

jr_038_504f:
    dec [hl]
    ld [hl], $37
    jr c, jr_038_508d

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
    ld [$4608], sp
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_038_5068:
    ld c, h
    rlca
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld [$5308], sp
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

jr_038_507d:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [$6362], sp
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_038_508d:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [hl], c
    rlca
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    xor [hl]
    xor a
    xor d
    xor e
    or b
    or c
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
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0202
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0000
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
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
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ldh [rIE], a
    ldh a, [rIE]
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fc
    rst $38
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$fe]
    pop af
    ld a, h
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    scf
    ld a, a
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    cp $ff
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    di
    rrca
    rst $30
    rrca
    rst $38
    rra
    rst $38
    ld h, $3f
    ld c, c
    ld a, a
    sbc b
    rst $38
    jr nc, @+$01

    ld a, c
    rst $38
    ld a, [$f7ff]
    cp $ee
    db $fd
    ei
    ld [bc], a
    rst $30
    inc b
    rst $28
    ld [$20ef], sp
    rst $18
    ld b, b
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld [$11ff], sp
    rst $38
    inc hl
    cp $06
    rst $38
    rrca
    rst $38
    ld c, $ff
    nop
    rst $38
    add hl, bc
    rst $38
    inc bc
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
    ccf
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
    ldh a, [rIF]
    ld a, [$f705]
    add hl, bc
    rst $30
    dec c
    rst $30
    rrca
    rst $30
    ld c, $f5
    ld c, $f7
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    adc $01
    add $01
    add $01
    add d
    ld bc, $0182
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $8100
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    jp $e300


    nop
    rst $20
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ei
    rra
    ld a, [c]
    ccf
    call nz, $887f
    rst $38
    ld de, $e1ff
    rst $38
    pop hl
    rst $38
    ld c, c
    rst $38
    rst $30
    ld h, h
    rst $20
    jp nz, $8dcf

    sbc a
    inc de
    ccf
    daa
    ld a, a
    ld h, [hl]
    ei
    adc b
    rst $30
    db $10

jr_038_5580:
    rst $38
    jr c, @+$01

    jr nc, jr_038_5580

    ld h, b
    or c
    add b
    ld [hl], e
    nop
    ld [c], a
    nop
    add $02
    adc b
    nop
    sbc b
    nop
    or b
    nop
    ldh [$80], a
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add c
    add b
    pop hl
    ldh [$fb], a
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    nop
    rst $38
    nop
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
    sub b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    ldh a, [rIE]
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    rst $38
    add a
    add a
    add a
    add d
    add a
    add b
    add a
    ret z

    add a
    or b
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld a, a
    and h
    ld a, a
    sub l
    ld a, a
    and h
    ld a, a
    sub h
    ld a, a
    and h
    ld a, a
    sub l
    ld a, a
    sub h
    ld a, a
    and l
    ld a, a
    or h
    rst $38
    sub [hl]
    cp $f7
    rst $38
    rst $38
    rst $38
    rst $10
    cp $df
    rst $38
    rst $18
    rst $38
    rst $10
    cp $5f
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld d, d
    ld a, a
    ld d, d
    ld a, a
    ld d, d
    ld a, a
    ld c, d
    dec a
    ld e, d
    ld a, l
    ld e, d
    dec a
    ld e, d
    dec a
    ld e, d
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, d
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    dec a
    ld e, e
    ld a, h
    ld l, e
    ld a, h
    ld e, e
    ld a, h
    ld a, e
    ld a, h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ld a, a
    ld a, b
    ccf
    ld hl, sp+$3f
    call c, $d43f
    ccf
    inc hl
    inc hl
    daa
    daa
    ld l, a
    rrca
    inc hl
    db $d3
    ld l, a
    sbc a
    rst $28
    rra
    rst $08
    cpl
    xor a
    ld l, a
    rst $28
    rst $28
    cp a
    rst $38
    cpl
    rst $28
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    add e
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    rst $28
    ldh [rLCDC], a
    ret z

    nop
    ret nz

    nop
    add b
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
    jr nz, jr_038_5698

jr_038_5698:
    jr nz, jr_038_569a

jr_038_569a:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add c
    add b
    pop bc
    ret nz

    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
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
    add b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ldh a, [rIF]
    cp $1f
    rst $38

jr_038_56c7:
    inc a
    rst $38
    jr nc, jr_038_56c7

    jr nz, jr_038_5749

    ldh [rIE], a
    ld h, [hl]
    rst $38
    ldh [rIE], a
    ld sp, hl
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    or $ff
    ld b, [hl]
    rst $38
    push de
    rst $38
    ld b, l
    rst $38
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    or $ff
    db $e4
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, h
    rst $38
    inc h
    rst $38
    db $10
    rst $38
    ld bc, $21ff
    rst $38
    ld hl, $01ff
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
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld l, l
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38

jr_038_5749:
    rst $28
    rst $38
    rst $28
    jr nz, jr_038_574e

jr_038_574e:
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add c
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
    jr nz, jr_038_576a

jr_038_576a:
    jr nz, jr_038_576c

jr_038_576c:
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0d
    ld a, [c]
    inc c
    di
    inc e
    db $e3
    db $dd
    ld [c], a
    ld a, a
    ld hl, sp+$0f
    db $fc
    ld c, $fc
    adc $3c
    adc $3c
    ld c, $fc
    ldh a, [$9c]
    ldh a, [$ac]
    ldh a, [$bc]
    ld [hl], b
    db $fc
    ld [hl], b
    cp h
    ld [hl], b
    db $fc
    ld [hl], b
    cp h
    ld [hl], b
    db $fc
    ldh a, [$fc]
    ldh a, [$dc]
    ldh a, [$9c]
    ldh a, [$dc]
    ldh a, [$9c]
    ldh a, [$fc]
    ldh a, [$9c]
    ldh a, [$9c]
    ldh a, [$9c]
    ldh a, [$9c]
    ldh a, [$9c]
    ldh a, [$9c]
    ldh a, [$bc]
    ldh a, [$dc]
    ldh [$dc], a
    ld [hl], b
    call c, $dc60
    ld [hl], b
    call c, $dc70
    ldh a, [$bc]
    ld [hl], b
    cp h
    ldh a, [$bc]
    ldh a, [$bd]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [rIE]
    and b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    sbc [hl]
    sbc a
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    cp $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    rst $38
    ld c, $ff
    ld e, $ff
    dec a
    rst $38
    ld a, l
    rst $38
    ld e, e
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    ldh a, [$d0]
    ret nz

    add b
    ld b, b
    nop
    add b
    nop
    add h
    nop
    nop
    nop
    add hl, bc
    nop
    ld bc, $a100
    nop
    add d
    nop
    add d
    nop
    inc b
    nop
    inc b
    nop
    ld b, h
    nop
    inc c
    inc b
    ld [$0800], sp
    nop
    stop
    stop
    stop
    jr nz, jr_038_5854

jr_038_5854:
    jr nz, jr_038_5856

jr_038_5856:
    ld b, b
    nop
    ld b, b
    nop
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    jr nc, @-$2f

    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    or b
    ld c, a
    ldh a, [rVBK]
    ldh a, [$6f]
    sub b
    rrca
    sub b
    rrca
    sub b
    ld l, a
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    inc a
    inc bc
    rst $08
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    cp a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld c, $e2
    nop
    and $00
    add $00
    adc d
    nop
    adc b
    nop
    ld de, $2100
    nop
    ld [hl+], a
    nop
    cp $bc
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sub $ff
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, l
    rst $38
    ld e, l
    rst $38
    db $fd
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    db $fd
    db $dd
    ld b, a
    rlca
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [de], a
    db $10
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc c
    ld [$0004], sp
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    stop
    rra
    rrca
    ccf
    cpl
    rst $18
    rst $08
    rst $38
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    or [hl]
    rst $38
    db $76
    rst $38
    ld l, l
    rst $38
    ld l, l
    ccf
    dec e
    inc h
    nop
    ld b, h
    nop
    ld c, b
    nop
    adc b
    nop
    adc b
    nop
    ld de, $1100
    nop
    ld de, $2100
    nop
    and $c0
    rst $38
    db $dd
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    ld a, e
    rst $38
    ld a, d
    rst $38
    ld l, e
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    or $ff
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    xor $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    adc a
    rrca
    add e
    ld [bc], a
    add c
    nop
    add c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    ld bc, $0307
    ld a, a
    ld a, e
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ret nz

    rst $38
    db $db
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    ld a, a
    scf
    xor a
    rlca
    adc b
    nop
    adc b
    nop
    adc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
    rra
    rrca
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    or [hl]
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $33
    ld sp, $0002
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0103
    rlca
    dec b
    rrca
    dec c
    rra
    dec c
    rst $38
    db $fd
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    ld bc, $0301
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0003
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    ld b, [hl]
    cp $56
    cp $56
    cp $47
    rst $38
    ld b, a
    rst $38
    ld d, e
    rst $38
    ld b, e
    rst $38
    ld a, a
    inc a
    cp a
    inc a
    cp a
    inc l
    cp a
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ccf
    inc a
    ccf
    inc a
    scf
    inc [hl]
    scf
    inc [hl]
    inc de
    db $10
    rra
    inc e
    rra
    inc e
    sub a
    sub h
    sub a
    sub h
    sbc a
    sbc h
    rst $18
    call c, $dcdf
    ld e, a
    ld e, h
    rst $18
    call c, $fcff
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

Jump_038_5b3f:
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    pop hl
    pop hl
    pop hl
    pop hl
    ldh [$e1], a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_038_5ba0

    jr nc, jr_038_5ba2

    ld [hl], b
    ld [hl], b
    jr nc, jr_038_5be6

    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    rra
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff

jr_038_5ba0:
    add c
    ret nz

jr_038_5ba2:
    add c
    ret nz

    add c
    add b
    add d
    add c
    add b
    add e
    ld [bc], a
    add c
    add b
    rlca
    add h
    inc bc
    add b
    add a
    add h
    add e
    nop
    add a
    nop
    add a
    dec b
    inc bc
    nop
    rlca
    dec b
    inc bc
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    dec b
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    rrca
    ccf
    rrca
    ld a, a
    jr @+$71

    rla
    ld l, b
    scf
    ld c, b
    ld a, a
    add b
    ld l, a
    sub b
    sbc c
    sbc c
    sbc a
    sub b
    sbc a
    sub b

jr_038_5be6:
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld a, a
    ld [hl], b
    ccf
    jr nz, @+$41

    nop
    ccf
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
    nop
    rst $38
    ret z

    rst $30
    ret nz

    rst $30
    ld b, b
    cp a
    ld [$80b7], sp
    cp a
    ld [$acbf], sp
    cp a
    inc l
    sbc a
    add h
    sbc a
    inc b
    rst $18
    ld b, h
    rst $18
    call nz, Call_038_44df
    cp a
    rst $18
    cp e
    rst $18
    cp h
    call c, $dcfc
    call z, $ccfc
    db $fc
    sbc h
    db $fc
    db $ec
    db $fc
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
    push hl
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    add b
    rst $38
    adc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld [$19df], sp
    rst $18
    add hl, de
    sbc a
    add hl, de
    rra
    add hl, de
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    inc de
    ccf
    dec bc
    scf
    dec bc
    scf
    dec bc
    scf
    rra
    daa
    dec sp
    daa
    inc sp
    cpl
    rla
    cpl
    rla
    cpl
    rla
    cpl
    scf
    rrca
    ccf
    rrca
    cpl
    ld e, a
    daa
    ld e, a
    cpl
    ld e, a
    ld l, a
    rra
    ld l, a
    rra
    ld e, a
    ccf
    sbc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    rst $38
    ret nz

    ld a, a
    ld b, b
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
    db $fc
    db $fc
    db $fc
    db $fc
    inc h
    call c, $08f0
    add sp, $18
    add sp, $18
    ld [hl], b
    adc b
    ldh a, [$08]
    ld [$f8f8], sp
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rIF]
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
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_038_5dd9

    ld a, [de]
    dec de
    inc e
    dec e
    dec c
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_038_5dfa

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_038_5e0a

jr_038_5dd9:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_038_5e1a

    add hl, sp
    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_038_5dec:
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    add hl, sp
    add hl, sp
    ld b, h
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_038_5dfa:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    add hl, sp
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_038_5e0a:
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

jr_038_5e1a:
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [hl]
    add hl, sp
    ld a, a
    add b
    add c
    add d
    add e
    add h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
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
    ld l, [hl]
    sub d
    jr jr_038_5dec

    sub h
    nop
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    nop
    nop
    nop
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
    nop
    xor d
    xor e
    xor h
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    xor l
    xor [hl]
    xor a
    or b
    or c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    or d
    or e
    or h
    or l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    or [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
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
    inc b
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0404
    inc b
    inc b
    inc b
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
    ld bc, $0101
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
    ld bc, $0404
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
    ld bc, $0504
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    inc b
    ld bc, $0004
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    db $10
    rra
    db $10
    rra
    nop
    rra
    nop
    rra
    db $10
    rra
    nop
    rra
    nop
    rra
    ld [$181f], sp
    rra
    nop
    rra
    ld [$081f], sp
    rra
    ld [$081f], sp
    rra
    ld [$080f], sp
    rrca
    ld [$0c0f], sp
    rrca
    inc b
    rrca
    nop
    rrca
    ld [$040f], sp
    rrca
    inc b
    rrca
    inc b
    rrca
    nop
    rrca
    ld [$040f], sp
    rrca
    inc b
    rrca
    inc b
    rrca
    dec b
    ld c, $05
    ld b, $07
    ld b, $04
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
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
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $30
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    ei
    ei
    db $db
    db $db
    cp a
    cp a
    ei
    ei
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $ec
    db $ec
    ld a, [$fefa]
    cp $fe
    ld a, [hl]
    db $fc
    ld a, h
    cp $7e
    or $36
    db $fd
    ld a, l
    cp $7e
    ei
    dec de
    cp $3e
    rst $38
    rra
    db $fd
    adc l
    rst $38
    rrca
    db $fd
    dec b
    rst $38
    add a
    db $fd
    push bc
    ld a, b
    rst $38
    ld a, [hl]
    db $fd
    ld a, l
    ld a, [hl]
    ld a, h
    ld a, a
    dec a
    ld a, [hl]
    inc a
    ld a, a
    dec a
    ld a, [hl]
    ccf
    ld a, [hl]
    ld a, $3f
    ld a, $3f
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
    rra
    rra
    rrca
    rra
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0c0f], sp
    rrca
    ld c, $0f
    rst $30
    rra
    rst $20
    ccf
    rst $00
    ccf
    rst $00
    ld a, a
    add a
    ld a, a
    add a
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $7e
    cp $7e
    cp $7e
    cp $1e
    rst $38
    ld e, $ff
    ld l, $ff
    ld c, $ff
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
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
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $30
    or a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08

jr_038_61e6:
    rst $38
    adc a
    ei
    bit 7, a
    ld c, a

jr_038_61ec:
    ld a, e
    ld c, e
    ld a, a
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    cp a
    add a
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    cp a
    add [hl]
    ld a, a
    ld h, [hl]
    cp a
    add [hl]
    cp a
    and [hl]
    rst $38
    and $ff
    and $7f
    ld h, [hl]
    rst $38
    rst $20
    ld a, [hl]
    ld h, [hl]
    rst $38
    rst $20
    cp [hl]
    and [hl]
    ld a, e
    ld h, b
    ei
    ldh [$7f], a
    ld h, h
    cp a
    xor h
    cp a
    xor h
    rst $38
    db $ec
    cp a
    xor h
    rst $38
    add sp, -$09
    ldh [$bf], a
    xor b
    rst $38
    ld l, b
    cp a
    ld [$18bf], sp
    or a
    jr nc, jr_038_61ec

    jr c, jr_038_61e6

    jr nc, @-$07

    ldh a, [$b7]
    or b
    rst $30
    db $f4
    rst $30
    db $f4
    cp a
    or b
    di
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $8101
    nop
    add e
    ld [bc], a
    db $e3
    ld [bc], a
    db $fd
    inc c
    cp $06
    xor $62
    rst $28
    ld l, e
    rst $38
    ld a, a
    rst $30
    ld [hl], e
    rst $30
    ld [hl], e
    rst $30
    ld [hl], a
    rst $30
    rst $30
    rst $10
    rst $10
    di
    pop af
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $db
    db $db
    pop de
    pop de
    pop de
    pop de
    pop de
    pop de
    pop de
    pop de
    pop bc
    pop bc
    ret


    ret


    pop bc
    pop bc
    ret


    ret


    pop bc
    pop bc
    ret


    ret


    ret


    ret


    inc bc
    jp $c3c3


    jp Jump_038_43c3


    jp $e3c3


    jp Jump_000_01e3


    ld h, c
    ld bc, $0101
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
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
    ld hl, sp-$80
    ldh a, [$a0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [rP1]
    ldh a, [$f8]
    nop
    db $fc
    nop
    db $fc
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $f7
    rst $38
    or $ff
    rst $30
    rst $38
    or $ff
    ldh a, [rIE]
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    ei
    dec sp
    ei
    dec sp
    ei
    dec sp
    ei
    dec sp
    rst $30
    scf
    rst $38
    ccf
    db $eb
    dec hl
    db $eb
    dec hl
    rst $28
    cpl
    db $eb
    dec hl
    rst $20
    daa
    db $db
    dec de
    db $e3
    ld [hl+], a
    db $e3
    ld [hl+], a
    db $e3
    ld [hl+], a
    db $d3
    ld [de], a
    rst $10
    inc d
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and b
    rst $18
    ret nc

    rst $08
    pop bc
    rst $28
    pop hl
    rst $20
    pop hl
    rst $20
    pop hl
    or $f0
    or $f4
    ld a, [c]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f2]
    ldh a, [$f3]
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    rst $20
    and $e7
    ld [c], a
    rst $28
    xor $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
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
    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
    rra
    ld a, a
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    inc h
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    call nz, $ffff
    dec sp
    rst $38
    dec sp
    rst $38
    cp e
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38

Jump_038_63ff:
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
    db $fd
    rst $38
    db $fd
    adc a
    adc l
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    or a
    rst $38
    or a
    db $fc
    cp b
    db $e4
    and b
    call nz, $fc80
    cp b
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    db $dd
    rst $38
    db $dd
    db $fd
    call c, $d0f1
    pop hl
    ret nz

    ldh [$c0], a
    ldh a, [$d0]
    ld hl, sp-$28
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    db $fc
    ld hl, sp-$04
    ld hl, sp-$1c
    ldh [$c4], a
    ret nz

    add d
    add b
    add d
    add b
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0002
    inc bc
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0302
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    rrca
    rst $38
    rrca
    pop af
    dec bc
    pop af
    dec b
    ei
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $fff1
    pop af
    rst $38
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp [hl]
    rst $38
    ret nz

    rst $38
    sbc $ff
    ldh [rIE], a
    ld l, [hl]
    rst $38
    ld [hl], b
    adc c
    nop
    ld b, l
    nop
    ld b, h
    nop
    inc hl
    ld bc, $ddff
    rst $38
    sbc $fd
    db $ec
    stop
    ld [$0800], sp
    nop
    inc b
    nop
    add h
    nop
    add h
    nop
    add d
    nop
    ld [c], a
    ld h, b
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
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
    rst $30
    rst $38
    rst $30
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
    ei
    ccf
    dec a
    rra
    dec e
    inc bc
    ld bc, $0002
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    add b
    add b
    sbc b
    sbc b
    inc e
    inc a
    ld c, $7e
    rrca
    ld a, a
    dec de
    ld a, a
    sub a
    rst $38
    rst $18
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$c6]
    ld hl, sp+$1c
    ldh [$f8], a
    nop
    pop af
    ld bc, $c525
    rra
    push hl
    ld e, a
    push af
    ld e, a
    push af
    ld e, a
    push af
    ld e, a
    push af
    ld e, a
    push af
    ld e, a
    rst $30
    ld d, h
    db $fc
    ld e, h
    db $f4
    ld a, h
    db $fc
    rra
    rst $30
    ld a, [hl]
    db $fd
    ld e, [hl]
    db $fd
    ld e, [hl]
    push af
    cp $f7
    cp $ff
    or l
    ld e, h
    or l
    ld e, [hl]
    ld d, l
    db $fc
    ld a, l
    cp $dd
    ld a, [hl]
    db $dd
    ld a, [hl]
    dec d
    cp $35
    sbc $fe
    xor d
    cp $a2
    cp $a2
    cp $82
    cp $82
    rst $38
    and c
    rst $38
    and c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $a0
    cp $20
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
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    pop bc
    rra
    ld bc, $009f
    adc a
    nop
    ld b, a
    nop
    inc hl
    nop
    inc hl
    nop
    ld de, $1100
    ld bc, $171f
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
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
    db $fd
    cp $fc
    pop hl
    ldh [$c1], a
    ret nz

    ld bc, $0000
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_038_66be

jr_038_66be:
    jr nz, jr_038_66c0

jr_038_66c0:
    jr nz, jr_038_66c2

jr_038_66c2:
    jr nz, jr_038_66c4

jr_038_66c4:
    stop
    stop
    stop
    stop
    ld [$0800], sp
    nop
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
    ccf
    rst $00
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    ccf
    rst $00
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ld c, a
    ccf
    ld c, a
    rra
    ld c, a
    rra
    rst $08
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08

jr_038_672a:
    ccf
    rst $08

jr_038_672c:
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
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
    rst $18
    ccf
    rst $18
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ccf
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    nop
    sbc a
    nop
    rst $18
    ld b, d
    rst $18
    ld b, b
    cp a
    jr nz, jr_038_672a

    jr nz, jr_038_672c

    and b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    jr nz, @+$01

    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    add a
    add l
    inc bc
    ld bc, $0001
    ld bc, $0000
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_038_67b0

jr_038_67b0:
    jr nz, jr_038_67b2

jr_038_67b2:
    jr nz, jr_038_67b4

jr_038_67b4:
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0400], sp
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    rra
    rra
    push af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    ccf
    ccf
    add a
    rlca
    add a
    rlca
    ld b, c
    ld bc, $0040
    jr nz, jr_038_681e

jr_038_681e:
    stop
    stop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    rst $38
    rst $38
    inc b
    rst $38
    dec bc
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
    rra
    rst $38
    db $76
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    cp b
    rst $38
    sub $ff
    rst $10
    ld a, a
    ld h, a
    rrca
    rlca
    rrca
    dec b
    rlca
    ld [bc], a
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
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_038_68bc

jr_038_68bc:
    jr nz, jr_038_68be

jr_038_68be:
    stop
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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh [rLCDC], a
    ldh a, [$c0]
    ld hl, sp+$40
    db $fc
    ret nz

    cp $c1
    rst $38
    rst $38
    ld e, $ff
    rrca
    rst $38
    ld b, $ff
    rlca
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld e, b
    rst $38
    jr nc, @+$81

    jr jr_038_69be

    dec c
    ccf
    db $10
    rra
    ld [$040f], sp
    rrca
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0103
    ld bc, $8000
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    ldh a, [$80]
    ld hl, sp+$00
    db $fc
    nop
    cp $d0
    rst $38
    ld a, [$fe1a]
    ld e, $ff
    rra
    cp $1e
    cp $0e
    cp $0c
    rst $38
    ld bc, $02ff
    rst $38
    ld [$09ff], sp
    rst $38
    inc c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    inc bc

jr_038_69be:
    rst $38
    add hl, bc
    rst $38
    inc d
    rst $38
    ld c, $ff
    jp Jump_038_63ff


    rst $38
    di
    rst $38
    ld a, c
    rst $38
    cp h
    rst $38
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    add b
    cp h
    ld b, b
    ld e, [hl]
    and b
    rst $38
    nop
    ld a, [hl]
    add c
    jp nz, $c242

    ld [bc], a
    ld a, [c]
    ld [hl-], a
    di
    ld [hl], e
    db $fd
    dec a
    rst $38
    sbc a
    cp $ee
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $30
    scf
    db $fd
    cp l
    db $fc
    sbc h
    db $fc
    xor h
    cp $76
    nop
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
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld a, a
    add b
    ld a, a
    add b
    add b
    adc d
    ld b, b
    ld b, c
    ldh [$e0], a
    or b
    or b
    ret nc

    ret nc

    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    jr nc, jr_038_6b20

    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a

Call_038_6aff:
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    rst $38

jr_038_6b20:
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $ec
    db $10
    ld a, [c]
    inc c
    di
    inc c
    ld sp, hl
    ld b, $fd
    ld [bc], a
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

    nop
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
    rlca
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_038_6bc9

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_038_6be0

    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_038_6bf1

    ld a, [hl+]

jr_038_6bc9:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_038_6c01

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl-], a
    inc hl
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_038_6c19

jr_038_6be0:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    inc hl

jr_038_6bf1:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    inc hl

jr_038_6c01:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, h

jr_038_6c19:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    ld [hl], e
    inc hl
    inc hl
    inc hl
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld a, [hl]
    ld a, a
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
    add c
    add d
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
    add e
    add h
    add b
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
    add l
    add [hl]
    add b
    add b
    add b
    add b
    add b
    add b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
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
    inc b
    inc b
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
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rra
    ldh [rIF], a
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
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, @-$7e

    sbc h
    ldh [$ee], a
    ret nz

    rst $00
    ret nc

    db $d3
    db $fc
    db $fd
    cp $fe
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ret nz

    nop
    ld [hl], b
    add b
    cp b
    ret nz

    call c, $a8a0
    ldh a, [$f6]
    ldh a, [$f2]
    db $fc
    db $fd
    ld c, $0e
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld a, [hl-]
    ld a, [hl-]
    xor $ee
    xor [hl]
    xor [hl]
    or a
    or a
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop bc
    ccf
    db $e3
    rra
    db $e3
    rra
    rst $30
    adc a
    rst $38
    rst $28
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld bc, $0281
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add h
    nop
    add d
    nop
    add h
    nop
    inc c
    ld b, b
    ret nz

    ld sp, hl
    ld sp, hl
    ld c, a
    ld c, a
    inc h
    inc h
    or a
    or a
    jp c, $ffda

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
    ld bc, $0300
    ld [bc], a
    inc bc
    ld b, $07
    inc c
    rrca
    dec c
    ld a, [bc]
    ld a, [de]
    dec e
    scf
    jr c, jr_038_6f23

    add hl, sp
    ld [hl], b
    ld a, a
    ld a, b
    ld [hl], a
    ld hl, sp-$19
    cp b
    rst $00
    ldh a, [$8f]
    ret nz

    cp a
    xor h
    db $d3
    call nz, Call_038_413b
    cp [hl]
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    inc e
    inc e
    jr @+$1a

    nop
    nop
    add b
    add b
    add c
    add b
    add c
    add b
    add $c4
    ld [hl], $34
    call nc, $f8d0
    ld hl, sp+$00
    nop
    nop

jr_038_6f23:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    ld bc, $001e
    ccf
    nop
    ld a, a
    ld [$0077], sp
    rst $38
    ld bc, $02ff
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
    or a
    or a
    rst $30
    or $e7
    and $c2
    ret nz

    call nz, $94c0
    sub b
    ld [$2800], sp
    jr nz, jr_038_6f79

    nop
    jr nz, jr_038_6f6c

jr_038_6f6c:
    jr nz, jr_038_6f6e

jr_038_6f6e:
    ld b, b
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

jr_038_6f79:
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
    rlca
    rst $38

jr_038_6f85:
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0001
    ld [bc], a
    dec b
    inc bc
    inc b
    ld bc, $0f0e
    db $10
    ld [$1817], sp
    daa
    db $10
    ld l, a
    jr nz, jr_038_7013

    jr nc, jr_038_6f85

    jr nz, @-$1f

    ld b, b
    cp a
    ld b, b
    cp a
    add b
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
    cp $fe
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    ei
    ld a, [$f9fb]
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ldh a, [$f7]
    ldh [$f0], a
    ldh [$fc], a
    ret nz

    ld [$c0c0], a
    add b
    add b
    nop
    ret nz

    nop
    nop
    nop
    jr z, jr_038_6fee

jr_038_6fee:
    ld e, $00
    inc bc
    nop
    ld [bc], a
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
    ld bc, $0800
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rst $38
    rst $38
    rst $38

jr_038_7013:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rrca
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

jr_038_706f:
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    jr nz, jr_038_70a9

    nop
    ld a, a
    nop
    ld a, a
    jr nz, jr_038_706f

    ccf
    dec sp
    cp a
    cp a
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
    ei
    ei
    ei
    ld a, [$feff]
    rst $30

jr_038_70a9:
    push af
    rst $10
    call nc, $c9cf
    rst $08
    push bc
    sbc a
    sub a
    ld e, a
    ld c, a
    ld a, a
    ld l, a
    ld a, a
    ld c, a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld e, a
    rst $38
    ld a, e
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
    ld e, [hl]
    rst $38
    ld a, [bc]
    ccf
    ld bc, $00bf
    dec h
    nop
    ld a, [hl-]
    nop
    ld e, $00
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    ld [hl+], a
    nop
    ld hl, $0100
    nop
    inc hl
    nop
    ld b, e
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    jr jr_038_70fa

jr_038_70fa:
    inc d
    nop
    jr nz, jr_038_70fe

jr_038_70fe:
    jr jr_038_7100

jr_038_7100:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$80]
    ld a, a
    ldh [$1f], a
    sbc b
    ld h, a
    rst $18
    rst $18
    rst $18
    rst $18
    and e
    and e
    cp a
    cp a
    rst $38
    db $e3
    cp a
    sbc h
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld l, [hl]
    rst $38
    xor l
    rst $38
    or $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
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
    cp [hl]
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    and [hl]
    rst $38
    or e
    cp $34
    or $f0
    sub h
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $08
    nop
    push de
    nop
    ld bc, $0500
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    nop
    xor b
    nop
    sub $00
    inc a
    nop
    ld a, [$7600]
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    nop
    ld c, b
    nop
    jr nc, jr_038_717a

jr_038_717a:
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
    add b
    ld d, b
    ld hl, sp+$01
    rst $38
    rst $28
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $3e
    rst $38
    jp $fcff


    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld l, e
    rst $38
    db $e4
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    rst $20
    ld a, [$3222]
    nop
    ld h, $00
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    cp $00
    rst $18
    nop
    rst $08
    nop
    rst $08
    nop
    ccf
    nop
    scf
    nop
    ld bc, $4000
    nop
    nop
    nop
    add b
    nop
    ld d, b
    nop
    and e
    nop
    call z, $f300
    nop
    or [hl]
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_038_7220:
    jr jr_038_7220

    add sp, $17
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    add l
    add l
    call c, $ffdc
    rra
    rst $38
    jp $fcff


    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    dec b
    rst $38
    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $18
    rla
    dec de
    ld [bc], a
    ld b, e
    nop
    ld bc, $0000
    nop
    nop
    nop
    stop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $38
    nop
    rla
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld d, a
    nop
    rst $10
    nop
    ld b, l
    nop
    ld bc, $0c00
    nop
    rrca
    nop
    add b
    nop
    nop
    nop
    nop
    ldh a, [$80]
    ld a, a
    jr c, @-$37

    ld a, $c1
    add d
    db $fd
    jr nz, @+$01

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
    rst $30
    rst $30
    add $c6
    ret nz

    ret nz

    db $fd
    dec e
    rst $38
    jp $f8ff


    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [bc], a
    rst $38
    or b
    rst $38
    ret nc

    rst $38
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rra
    sub a
    rlca
    rlca
    inc bc
    inc de
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_038_72fa

jr_038_72fa:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld d, h
    nop
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld a, d
    nop
    xor a
    nop
    dec h
    nop
    ld d, c
    nop
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$40
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    jr nz, @+$01

    add b
    rst $38
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    cp b
    rst $38
    xor a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    ld a, a
    rla
    ld e, a
    add hl, bc
    rrca
    inc c
    rrca
    ld c, $0f
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $c101
    ld bc, $017d
    ld a, a
    nop
    sbc a
    nop
    rlc b
    ld l, a
    nop
    ld h, e
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    jr c, jr_038_739e

jr_038_739e:
    ld d, $00
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
    db $fc
    ld [$07f7], sp
    ld hl, sp-$0d
    di
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $10
    rst $10
    ret nz

    ret nz

    ld hl, sp-$08
    cp $3e
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    inc de
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $10
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
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
    or $ff
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
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rla
    rst $38
    daa
    rst $38
    daa
    rst $38
    dec b
    rst $28
    rlca
    rst $28
    ld bc, $0003
    add hl, de
    nop
    ld bc, $0300
    nop
    add l
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    ld a, $41
    ld b, c
    rra
    rra
    pop bc
    pop bc
    cp $fe
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
    ld a, a
    ld a, a
    rrca
    rrca
    inc sp
    inc sp
    add a
    add a
    rst $38
    ccf
    rst $38
    rst $00
    cp $f6
    cp $f6
    cp $f6
    cp $6e
    cp $8e
    rst $38
    rst $08
    db $fd
    call $efff
    db $fd
    db $ed
    cp $ee
    db $fc
    adc h
    db $fc
    inc e
    db $fd
    sbc l
    rst $38
    rst $18
    db $f4
    call nc, $d4f4
    rst $20
    rst $00
    push hl
    push bc
    ld sp, hl
    reti


    rst $38
    cp a
    db $eb
    xor e
    push hl
    and l
    db $e3
    and e
    rst $18
    sbc a
    ei
    cp e
    rst $10
    sub a
    rst $30
    or a
    rst $10
    ld d, [hl]
    rst $10
    ld d, a
    rst $30
    ld [hl], a
    rst $30
    ld [hl], a
    adc b
    rst $30
    adc [hl]
    pop af
    jp z, $dab5

    and l
    ld c, d
    or h
    inc e
    ld [c], a
    inc e
    ld [c], a
    inc e
    ld [c], a
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rP1], a
    ret nz

    nop
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
    ret nz

    add b
    nop
    nop
    add b
    add b
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
    nop
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
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
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
    nop
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
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    stop
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld de, $0c12
    inc c
    inc c
    inc c
    inc de
    inc d
    inc d
    dec d
    ld d, $17
    jr jr_038_76c5

    add hl, de
    inc c
    inc c
    ld a, [de]
    dec de
    inc c
    inc c
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld hl, $2121
    ld hl, $2221
    ld hl, $0c23
    inc c
    inc c

jr_038_76c5:
    inc c
    inc c
    inc h
    dec h
    ld h, $27
    jr z, jr_038_76f6

    ld a, [hl+]
    dec hl
    inc l
    ld hl, $0c2d
    inc c
    inc c
    inc c
    inc c
    ld l, $21
    cpl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld hl, $0c36
    inc c
    scf
    jr c, jr_038_76f3

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld hl, $0c42

jr_038_76f3:
    ld b, e
    ld b, h
    ld b, l

jr_038_76f6:
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
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld hl, $5b25
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
    ld l, d
    ld l, e
    ld hl, $6d6c
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
    inc c
    inc c
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
    inc c
    inc c
    inc c
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    add hl, bc
    ld a, [bc]
    sub d
    nop
    nop
    sub e
    inc c
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    ld hl, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0404
    dec b
    dec b
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
    ld bc, $0004
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
    ld bc, $0404
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
    ld bc, $0101
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $06
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld hl, sp-$01
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh [$03], a
    rst $38
    inc bc
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_038_7a8d:
    rst $38
    nop

jr_038_7a8f:
    rst $38
    nop

jr_038_7a91:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr jr_038_7a8d

    jr jr_038_7a8f

    jr jr_038_7a91

    ld [$08f7], sp
    rst $30
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ret z

    scf
    call z, $cc33
    inc sp
    call z, $cc33
    inc sp
    db $ec
    inc de
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
    nop
    nop
    nop
    nop
    nop
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
    or [hl]
    ld a, a
    ld [hl], $7f
    ld [hl], $7f
    ld [hl], $7f
    ld [hl], $7f
    scf
    ld a, a
    scf
    ld a, a
    scf
    ld a, a
    scf
    ld a, a
    dec sp
    ld a, a
    dec sp
    ld a, a
    ld a, [hl-]
    ld a, a
    dec sp
    rst $38
    db $db
    cp a
    sbc e
    rst $38
    db $db
    cp $da
    cp [hl]
    sbc d
    cp $da
    cp [hl]
    sbc d
    cp $da
    cp $5a
    cp $5a
    cp $1a
    cp $1a
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    ld e, l
    rst $38
    ld e, l
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    ccf
    dec e
    ccf
    dec e
    ccf
    dec e

Jump_038_7b84:
    rst $38
    db $dd
    rst $38
    call $cdff
    rst $38
    call $edff
    rst $38
    xor $bf
    xor [hl]
    cp a
    xor [hl]
    cp a
    xor [hl]
    cp a
    xor [hl]
    sbc a
    adc [hl]
    sbc a
    adc [hl]
    sbc a
    adc [hl]
    sbc a
    adc [hl]
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
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $dbff
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    ld sp, hl
    ld [hl], b
    jp hl


    ld h, b
    adc b
    nop
    adc b
    nop
    ret z

    add b
    ld c, b
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld hl, $a100
    add b
    and c
    add b
    pop hl
    ret nz

    pop af
    ldh [$f1], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f4], a
    db $e4
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    rst $38
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp c
    rst $38
    cp e
    rst $38
    call c, $ddff
    rst $38
    db $dd
    rst $38
    sbc $ff
    xor $ff
    xor $d7
    add $10
    nop
    ld [$0800], sp
    nop
    adc b
    nop
    add h
    nop
    add h
    nop
    add h
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    stop
    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    sbc [hl]
    ld a, [de]
    cp a
    dec sp
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    sbc $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    db $fc
    call c, $e0f0
    ret nc

    ret nz

    sub b
    add b
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $0dff
    di
    dec e
    db $e3
    ld a, l
    add e
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    nop
    rlca
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    nop
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    db $e3
    inc bc
    rst $20
    inc bc
    rst $38
    rra
    ld a, a
    add e
    ccf
    jp Jump_000_0302


    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $fb
    rlca
    ld a, [$fbfb]
    ei
    dec de
    ei
    inc bc
    ei
    inc de
    ei
    ld bc, $11fb
    ei
    inc bc
    ei
    ld bc, $11fb
    ei
    add hl, bc
    ei
    add hl, de
    ei
    ld sp, hl
    ei
    ld sp, hl
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    dec b
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    add h
    cp a
    inc a
    adc a
    inc c
    cp a
    inc b
    ld b, a
    inc b
    ld b, a
    inc b
    ld a, a
    inc b
    daa
    inc b
    daa
    inc b
    daa
    inc b
    rla
    inc b
    rla
    inc b
    rla
    inc b
    inc de
    ld [bc], a
    dec bc
    ld [bc], a
    dec bc
    ld [bc], a
    add hl, bc
    ld bc, $0185
    add h
    nop
    add h
    nop
    ld b, d
    nop
    ld b, e
    ld bc, HeaderCGBFlag
    ld c, e
    ld a, [bc]
    cpl
    ld c, $3f
    ld e, $ff
    sbc $ff
    rst $18
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
    ld a, e
    rst $38
    ld a, l
    ld a, [c]
    ld [hl], b
    add d
    nop
    ld b, d
    nop
    ld b, c
    nop
    ld b, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_038_7dd6:
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

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $0d
    ld c, $0d
    ld c, $0f
    inc c
    ld c, $1d
    ld de, $1b3f
    dec a
    ld [hl+], a
    ld e, l
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    sbc h
    ldh [$5c], a
    and b
    ld e, b
    and h
    ld e, h
    and b
    jr c, jr_038_7dd6

    inc c
    ldh a, [$28]
    ret nc

    inc h
    call c, $dc24
    inc [hl]
    call c, $fc04
    jr nz, @-$22

    db $ec
    ld de, $14e8
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$00
    cp b
    ld b, h
    add sp, $15
    jp hl


    rla
    ld hl, sp+$07
    cp b
    ld b, c
    ld hl, sp+$05
    pop hl
    dec e
    pop af
    rrca
    pop af
    dec c
    pop af
    add hl, bc
    pop af
    dec c
    ld [hl], c
    adc e
    ld e, c
    xor a
    jr @-$13

    ld b, c
    cp e
    ret nc

    ccf
    ret


    ccf
    jp z, Jump_038_5b3f

    xor a
    xor a
    and h
    rst $28
    db $ec
    cp a
    cp h
    cp a
    cp h
    rst $38
    db $ed
    rst $38
    push bc
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    ldh a, [rIE]
    ldh a, [$bf]
    or b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add sp, -$01
    ret nz

    rst $38
    call nz, $e0ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ret nz

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
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp h
    rst $38
    call c, $dcff
    rst $38
    sbc $ff
    xor $ff
    xor $ff
    rst $28
    ldh a, [$e0]
    ld [$0800], sp
    nop
    ld [$0400], sp
    nop
    inc b
    nop
    rst $38
    rst $38
    rst $38

jr_038_7eb3:
    rst $38
    rst $38
    rst $38

jr_038_7eb6:
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
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
    ld b, $06
    ccf
    adc [hl]
    rst $38
    xor $ff
    rst $18
    ccf
    rra
    nop
    rrca
    ld b, b
    rra
    ret nc

    ccf
    jr nc, jr_038_7f58

    ld [hl], b
    ld a, a
    ld a, e
    ld a, a
    ld a, b
    rst $38
    jr c, @-$37

    rst $38
    add $ff
    rst $00
    rst $38
    rst $38
    rst $38
    rlca
    rra
    nop
    nop
    nop
    nop
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
    add c
    add b
    and c
    jr nz, jr_038_7eb3

    ld [hl+], a
    or d
    jr nz, jr_038_7eb6

    ld [hl+], a
    and e
    inc hl
    and e
    ld [hl+], a
    and d
    ld [hl+], a
    and d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld h, d
    and $60
    ld l, [hl]
    ld h, b
    ld a, [hl]
    ld b, b
    ld h, [hl]
    ld h, d
    ld h, a
    ld h, h
    and $44
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld h, h
    ld b, h
    db $e4
    ld b, h
    rst $20
    ld b, h
    call c, $fd54
    ret nz

    call $cdc4
    call $c9cf
    db $ed
    ret


    db $fd
    jp hl


    db $fd
    db $dd
    rst $38
    reti


    rst $38
    call z, $ffff
    ld h, l
    rst $38
    ld h, c
    rst $38
    inc [hl]
    rst $38
    inc h
    rst $38
    ld hl, $05ff
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_038_7f58:
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
    inc c
    rst $38
    ld [$00ff], sp
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc b
    ccf
    nop
    ccf
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    nop
    nop
    nop
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$80], a
    ldh [rP1], a
    ld hl, sp+$78
    ld hl, sp-$08
    db $fc
    cp h
    call c, $9f6c
    jr nc, @+$01

    db $fc
    rst $38
    ld [$feff], a
    rst $38
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_038_7fef

jr_038_7fef:
    ld hl, $6100
    nop
    ld b, c
    nop
    ld b, c
    ld b, b
    ld b, e
    ld b, c
    ld h, d
    nop
    db $e3
    nop
    ld b, a
    ld b, b
    ld b, a
