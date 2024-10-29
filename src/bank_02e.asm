SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02e_400b

    ld [bc], a
    ld [bc], a

jr_02e_400b:
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_02e_403d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, $2f
    jr nc, jr_02e_4050

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02e_4060

    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    inc [hl]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]

Jump_02e_403d:
jr_02e_403d:
    ld b, a
    ccf
    ccf
    ld b, b
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, [hl]
    ld c, a
    ccf
    ccf

jr_02e_4050:
    ld d, b
    ld d, c
    ld d, d
    ld c, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, a
    ccf
    ccf
    ccf

jr_02e_4060:
    ld e, b
    ld d, c
    ld e, c
    ld c, d
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc [hl]
    ld e, a
    ccf
    ccf
    nop
    ld h, b
    ld h, c
    ld c, d
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld h, a
    ccf
    ccf
    ld l, b
    ld h, b
    ld h, [hl]
    ld c, d
    ld b, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, [hl]
    ccf
    ccf
    ld l, a
    ld [hl], b
    ld [hl], c
    ld c, d
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $3f77
    ccf
    ld a, b
    ld a, c
    ld [bc], a
    ld c, d
    ld a, d
    nop
    ld a, e
    ld a, h
    ld a, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    add b
    ccf
    ld a, b
    ld a, c
    ld [bc], a
    add c
    add d
    nop
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ccf
    adc h
    adc l
    ld [bc], a
    adc [hl]
    ld a, b
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    sub a
    sbc b
    nop
    ld [bc], a
    adc [hl]
    ld a, b
    nop
    sbc c
    sbc d
    sbc e
    ld [bc], a
    sbc h
    ld [bc], a
    ld [bc], a
    sbc l
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc a
    and b
    nop
    and c
    and d
    sub l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    nop
    nop
    nop
    nop
    and e
    and h
    and l
    and [hl]
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, c
    nop
    nop
    and a
    nop
    xor b
    xor c
    xor d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor e
    nop
    nop
    nop
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
    ld [bc], a
    ld b, $04
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
    dec b
    dec b
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $04
    inc b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    ld b, $05
    inc b
    nop
    nop
    nop
    nop
    ld b, $04
    inc b
    nop
    dec b
    nop
    nop
    nop
    dec b
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld b, $04
    inc b
    nop
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc bc
    nop
    nop
    nop
    nop
    ld b, $02
    inc b
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
    inc b
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
    nop
    inc b
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
    nop
    inc b
    ld [bc], a
    inc b
    dec b
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
    nop
    nop
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc b
    inc b
    dec b
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
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    dec b
    dec b
    ld b, $05
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
    inc b
    inc bc
    dec b
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
    dec b
    dec b
    dec b
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
    nop
    ld b, $25
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
    nop
    nop
    nop
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
    rrca
    rrca
    ld [hl], b
    ld a, a
    add b
    rst $38
    ld a, a
    nop
    rst $18
    nop
    ld a, a
    ld bc, $007f
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    jr nz, @+$01

    nop
    rst $38
    inc bc
    rst $38
    ld a, $fc
    ld hl, sp-$20
    pop af
    ld bc, $0ffe
    ldh a, [rIE]
    db $fd
    nop
    dec sp
    nop
    cp a
    nop
    xor a
    nop
    cp $01
    sbc $01
    inc a
    jp $ffff


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
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

jr_02e_42e6:
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    jr c, jr_02e_42e6

    inc e
    db $fc
    ld c, $fe
    sbc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$41
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    nop
    ld a, a
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld a, h
    rst $38
    ldh a, [rIE]
    inc bc
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
    ldh a, [rIE]
    ldh [rIE], a
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
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [hl]
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
    rrca
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
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    rrca
    ld a, a
    rrca
    ld a, a
    rlca
    ccf
    rlca
    ccf
    nop
    rra
    rlca
    jr jr_02e_4389

jr_02e_4389:
    rrca
    ld bc, $010f
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
    di
    di
    rst $38
    db $fc
    cp $f9
    ei
    db $f4
    rst $38
    ldh [$ef], a
    ldh a, [$c0]
    ret z

    ld b, b
    ret z

    ld b, b
    db $dd
    ld b, b
    rst $08
    ld h, b
    rst $20
    ld l, b
    jp hl


    jr nc, @-$0e

    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    ld a, [c]
    db $10
    ldh a, [$30]
    ld hl, sp+$38
    ld hl, sp-$08
    db $fc
    cp $fc
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
    cp $ff
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
    jr c, @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [$ef]
    db $f4
    ldh [$f0], a
    ldh [$f1], a
    ldh [rIE], a
    rst $38
    ld bc, $07ff
    nop
    nop
    ld hl, sp-$01
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
    rra
    ld a, a
    cpl
    ld e, a
    rrca
    ccf
    rla
    cpl
    rlca
    rra
    ld c, $11
    rlca
    ld [$0707], sp
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [rIE], a
    nop
    rst $38
    ret nz

    ccf
    ld b, c
    cp a
    inc bc
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
    ld b, b
    rst $38
    ld bc, $07ff
    cp $7f
    ld hl, sp-$39
    pop bc
    inc bc
    ld [bc], a
    rra
    inc e
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
    nop
    inc bc
    nop
    add c
    rst $38
    rst $38
    ldh [$fc], a
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    rst $30
    inc c
    ld a, [hl]
    inc b
    ld l, $04
    rst $38
    cp $ff
    rst $38
    db $fc
    inc bc
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
    pop af
    cp $f1
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld bc, $feff
    ld bc, $c0df
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$38], a
    ld hl, sp+$1c
    db $fc
    ld a, $fe
    rra
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    rst $38
    inc a
    rst $28
    inc l
    rst $08
    ld c, b
    adc a
    adc b
    rra
    db $10
    ccf
    jr nz, jr_02e_45cc

    ld b, b
    rst $38
    add b
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    ld bc, $031f
    ccf
    rlca
    rra
    ld e, $be
    inc a
    rst $38
    ld hl, sp-$05
    pop hl
    rst $20
    rlca
    ccf
    rra
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rLCDC], a
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

jr_02e_45cc:
    ret nz

    ccf
    add d
    ld bc, $000d
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    rrca
    nop
    ldh a, [rP1]
    rst $30
    ld hl, sp-$04
    rst $38
    rst $18
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rst $00
    ccf
    ld b, a
    cp a
    ld b, a
    cp a
    ld l, a
    sbc a
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    cp a
    rra
    rst $38
    rra
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rIE]
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    nop
    nop
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
    rra
    rst $38
    ldh [$1f], a
    ccf
    nop
    nop
    nop
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rla
    nop
    ldh [rP1], a
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [$f0], a
    ldh [$f0], a
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $38
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
    nop
    cp $00
    cp $fe
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    inc b
    rst $38
    ldh [$1f], a
    inc bc
    inc c
    nop
    inc c
    ldh a, [$8c]
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
    rlca
    rst $38
    rlca
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
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc c
    inc bc
    nop
    nop
    ld [$ff08], sp
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    inc bc
    rst $38
    ld bc, $ffff
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
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
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    nop
    db $fc
    nop
    rst $38
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
    jp $c7ff


    rst $38
    rst $08
    rst $38
    ret z

    add b
    ret nz

    add b
    push bc
    add b
    rst $38
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
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    add b
    nop
    rst $38
    ldh [$7f], a
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
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld e, $1f
    ld a, $1c
    sbc h
    inc e
    rst $38
    db $fc
    ld a, a
    rst $38
    add b
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
    nop
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
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rst $38
    nop
    rst $38
    db $ec
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
    add c
    rra
    dec c
    ld bc, $0109
    set 0, c
    nop
    rst $38
    ld hl, sp+$07
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
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_02e_49ff:
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
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
    rst $38
    ld sp, hl
    ei
    ei
    ld a, [$36fa]
    or $05
    push af
    dec b
    db $fd
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld bc, $fe00
    add b
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $0dff
    rst $38
    dec bc
    rst $38
    cp e
    dec de
    cp a
    inc de
    ld a, a
    rla
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
    ccf
    rst $38
    ret nz

    ccf
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
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $70
    ld a, [hl]
    rst $38
    rst $38
    rra
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
    nop
    nop
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
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$080e], sp
    ld c, $f0
    db $fc
    di
    rst $38
    rst $20
    rst $38
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    ld h, e
    rst $38

Jump_02e_4afb:
    ld c, e
    rst $38
    db $db
    rst $18
    rst $10
    or a
    or a
    or a
    or a
    xor a
    xor a
    ld l, a
    rst $28
    rra
    rst $38
    rlca
    rst $38
    inc bc
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_4b1f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    jr z, jr_02e_4b1f

    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld [c], a
    db $fd
    pop hl
    cp $c6
    ld sp, hl
    and $d9
    add l
    ei
    adc l
    di
    adc a
    di
    jp $ffff


    rst $38
    inc bc
    rst $38
    db $fc
    inc bc
    ld bc, $0060
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

    ld hl, sp-$40
    ld a, a
    sbc b
    rst $38
    sbc a
    rst $20
    sbc a
    pop hl
    ld c, h
    ld a, a
    jr nz, jr_02e_4bcc

    jr nz, jr_02e_4bc8

    jr nz, jr_02e_4bca

    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    add b
    ldh [$80], a
    ldh [$80], a
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
    nop
    nop
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
    rst $38
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

jr_02e_4bc8:
    rrca
    rst $38

jr_02e_4bca:
    rlca
    rst $38

jr_02e_4bcc:
    rlca
    rst $38
    inc bc
    rst $38
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
    inc bc
    db $fc
    nop
    ld a, [c]
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
    dec c
    dec c
    db $dd
    db $dd
    cp e
    cp e
    cp e
    cp e
    cp a
    cp a
    ld a, a
    ld a, [hl]
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $fc
    ld [bc], a
    ld a, b
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$80], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr c, @+$01

    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
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
    cp $ff
    ld [bc], a
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    ld hl, sp-$01
    ldh a, [$fe]
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$f8], a
    ret nz

    ld hl, sp-$80
    ldh a, [$80]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

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
    ld bc, $0700
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $80
    db $fc
    add b
    db $fc
    ret nz

    ld hl, sp-$40
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ldh a, [$80]
    ldh [rP1], a
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0700
    nop
    ld e, $00
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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
    ret nz

    ret nz

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
    inc d
    dec d
    ld d, $17
    jr jr_02e_4d47

    ld a, [de]
    inc c
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02e_4d5b

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc c
    ld h, $00
    nop
    nop
    daa
    jr z, jr_02e_4d6f

    ld a, [hl+]

jr_02e_4d47:
    dec hl
    inc l
    dec l
    ld l, $2f
    inc c
    jr nc, jr_02e_4d80

    inc c
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02e_4d91

    ld a, [hl-]
    dec sp
    inc a

jr_02e_4d5b:
    dec a
    ld a, $3f
    ld b, b
    inc c
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld a, [de]
    ld c, d
    ld c, e
    ld c, h
    inc c
    ld c, l

jr_02e_4d6f:
    ld c, [hl]
    nop
    nop
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

jr_02e_4d80:
    nop
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc c
    ld h, l
    ld h, [hl]
    inc c
    inc c
    ld h, a
    nop

jr_02e_4d91:
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc c
    ld l, [hl]
    ld l, a
    inc c
    ld [hl], b
    ld c, d
    ld [hl], c
    ld [hl], d
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    inc c
    add a
    ld a, e
    ld [hl], c
    nop
    nop
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld a, c
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    inc c
    nop
    nop
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    inc c
    inc c
    sbc h
    inc c
    nop
    nop
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    inc c
    and e
    inc c
    and h
    and l
    and [hl]
    nop
    nop
    nop
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ld c, h
    or b
    or c
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_14c3

    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    ld l, b
    call nz, $c6c5
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    rst $00
    ret z

    ret


    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    jp z, $cccb

    call $cfce
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
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
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld b, $02
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0707
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
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
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [rNR34]
    pop hl
    dec e
    ld [c], a
    ccf
    ret nz

    ld [hl], e
    adc h
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    ld bc, $0300
    inc bc
    rlca
    rlca
    dec de
    rrca
    ld [hl], d
    ccf
    call nz, $887f
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr c, @+$01

    ld [hl], c
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    inc sp
    rst $38
    di
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    add hl, sp
    rst $38

Call_02e_5000:
    sbc c
    rst $38
    cp l
    rst $38
    sbc $ff
    call c, $deff
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $28
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $28
    rla
    rst $28
    add a
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop hl
    cp $f1
    cp $f0
    rst $38
    db $fc
    ei
    ei
    db $fc
    db $fc
    db $fc
    rst $30
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_5034:
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fcfe
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_02e_5052:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_02e_5052

    jr nz, jr_02e_5034

    ld b, b
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
    add b
    nop
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
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
    ld bc, $0200
    inc bc
    inc b
    rlca
    nop
    rrca
    ld [hl+], a
    ccf
    ld b, b
    ld a, a
    ret nc

    ccf
    and b
    rra
    add b
    rra
    cp c
    rra
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    cp l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]

jr_02e_50f0:
    ldh [$df], a
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    ccf
    add b
    rra
    nop
    rra
    jr c, jr_02e_511d

    db $fc
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

jr_02e_510e:
    ccf
    rst $38
    ld bc, $0ffe
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08

jr_02e_511d:
    jr nc, @-$0b

    inc c
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_02e_510e

    jr nz, jr_02e_50f0

    ld b, b
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
    nop
    db $76
    adc b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    rlca
    rst $38
    rra
    jr nz, @+$41

    adc b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    rst $38
    nop
    cp $00
    cp $04
    cp $08
    cp $32
    cp $43
    rst $38
    add e
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    ld d, $ff
    ld d, d
    rst $38
    reti


    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    or $bf
    ld a, e
    cp a
    db $dd
    rst $18
    call c, $cfdf
    rst $28
    rst $30
    rst $20
    rst $38
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    db $fc
    cp $ff
    rst $38
    cp $ff
    cp $fe
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01

jr_02e_519c:
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR32]
    db $e3
    nop
    rst $38
    nop
    cp $fd
    db $fc
    ei
    ld hl, sp-$01
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a

Jump_02e_51cb:
    ret nz

    cp [hl]
    add c
    ld a, l
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp

jr_02e_51d8:
    rst $18
    jr nz, @-$1f

    jr nz, jr_02e_519c

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    rst $08
    jr nc, jr_02e_51d8

    ld c, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_5201

jr_02e_5201:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8300
    add b
    adc a
    add b
    sbc a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    cp $e1
    db $fc
    db $e3
    ld hl, sp-$19
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    ld c, $c0
    adc [hl]
    ret nz

    xor [hl]
    ldh [$e7], a
    ldh [$67], a
    ldh [$f7], a

jr_02e_523b:
    ldh a, [$f7]
    db $f4
    rst $38
    db $fc
    db $fc

jr_02e_5241:
    rst $38
    db $fc
    rst $38
    cp $fe
    cp $fe

jr_02e_5248:
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_524c:
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
    rla
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    jr nz, jr_02e_5241

    ld [$36f7], sp
    ret


jr_02e_5266:
    inc [hl]
    srl b
    rst $00

jr_02e_526a:
    jr nc, jr_02e_523b

    jr nz, jr_02e_524c

    jr nz, jr_02e_524c

    db $fd
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$d2], a
    call $83bc
    ld a, l
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_02e_5266

    jr nz, jr_02e_5248

    ld b, b
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
    ld a, [hl]
    add c
    sbc [hl]
    ld h, c
    push hl
    ld a, [de]
    ld sp, hl
    ld b, $f6
    add hl, bc
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @-$1f

    jr nz, jr_02e_526a

    ld b, b
    ld a, a
    add b
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
    nop
    ld bc, $0301
    inc bc
    nop
    rrca
    nop
    rra
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
    ld a, [bc]
    ld a, a
    dec c
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    dec b
    ld a, a
    inc bc
    ccf
    inc bc
    ccf
    ld bc, $063f
    ccf
    dec b
    rra
    inc bc
    rra
    ld de, $300f
    rrca
    push af
    dec bc
    db $f4
    dec bc
    ldh a, [rIF]
    rst $30
    rrca
    rst $20
    rra
    rst $00
    ccf
    add a
    ld a, a
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
    db $fd
    dec b
    ei
    dec bc
    push af
    dec [hl]
    bit 1, e
    or a
    sub a
    ld l, a
    ld l, $df
    ld e, h
    cp a
    cp b
    ld a, a

jr_02e_5314:
    ld [hl], b
    rst $38
    ld hl, sp-$01
    rst $20
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    add c
    cp a
    inc bc
    ld a, $47
    ld a, h
    ld l, a
    ld a, b
    cp a
    ldh a, [$bf]
    ldh [$bf], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f9]
    cp $fe
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$09
    ldh a, [$ee]
    pop hl
    sbc $c1
    cp l
    add d
    ld a, e
    inc b
    ld [hl], a
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_5314

    ld b, b
    ld a, a
    add b
    rst $38

jr_02e_5359:
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_02e_5359

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
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
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
    rst $38
    nop

jr_02e_5390:
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_02e_5390

    ld b, $fe
    ld bc, $00ff
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
    jr nz, jr_02e_53ca

    ld h, b
    ld h, b
    or b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$50]
    ldh a, [$d0]
    ldh a, [$a8]
    ld hl, sp-$48
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_02e_53ca:
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    pop af
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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    adc h
    ei
    ld a, a
    ldh a, [rNR44]
    db $fc

jr_02e_540e:
    ld a, h
    jp $80ff


    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    scf
    ret z

    rst $08
    jr nc, jr_02e_540e

    ld e, $de
    ld hl, $00ff
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

jr_02e_543e:
    db $fd
    ld [bc], a
    ei
    inc b
    scf
    ret z

    rst $00
    jr c, @-$15

    ld d, $de
    ld hl, $20df
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

jr_02e_545c:
    rst $38
    nop
    rst $38
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
    adc [hl]
    ld [hl], c
    pop af
    ld c, $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_545c

    jr nz, jr_02e_543e

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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

jr_02e_549c:
    nop
    rst $38
    ldh [$9f], a
    sbc [hl]
    pop hl
    pop hl
    sbc [hl]
    sbc [hl]
    pop hl
    pop hl
    cp $fe
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    db $e4
    rst $38
    inc e
    rst $38
    inc de
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

jr_02e_54c4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    ld a, $c1
    push bc
    ld a, [hl-]
    ld hl, sp+$07
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_549c

    ld b, b
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

jr_02e_54ec:
    rst $38
    nop
    ccf
    ret nz

    rst $00
    jr c, jr_02e_54ec

    ld b, $fe
    ld bc, $02fd
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10

jr_02e_5502:
    rst $18
    jr nz, jr_02e_54c4

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop

jr_02e_550e:
    rst $38
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

    rst $08
    jr nc, jr_02e_550e

    ld c, $fe
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
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, @-$1f

    jr nz, jr_02e_5502

    ld b, b
    ld a, a
    add b
    ld a, a
    add b

jr_02e_5548:
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

    rst $08
    jr nc, jr_02e_5548

    inc c
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    ldh [$1f], a
    ld e, $e1
    pop hl
    ld e, $1c
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38

jr_02e_558e:
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
    ret nz

    rst $38
    add hl, sp
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38

jr_02e_55ac:
    add b
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rra
    ldh [$e3], a
    inc e
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_55ac

    jr nz, jr_02e_558e

    ld b, b
    ld a, a

jr_02e_55d1:
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $00
    jr c, jr_02e_55d1

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    ld l, a
    sub b
    adc a
    ld [hl], b
    jp $dc3c


    inc hl
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_02e_55ff:
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

    rst $08
    jr nc, jr_02e_55ff

    dec c
    db $fc
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
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    ret nz

    ccf
    inc a
    jp Jump_000_3cc3


    inc a
    jp $fcc3


    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add e
    rst $38

jr_02e_5648:
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    ldh [$3f], a
    cp [hl]
    ld b, c
    ccf
    ret nz

    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_02e_5674:
    cp $01
    cp $01
    db $fd
    ld [bc], a
    dec sp
    call nz, Call_000_3cc3
    ldh a, [rIF]
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_5648

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_02e_5692:
    rst $38

jr_02e_5693:
    nop
    rst $38
    nop
    rra
    ldh [$e7], a
    jr jr_02e_5693

    rlca
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30

jr_02e_56a9:
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_5692

    jr nz, jr_02e_5674

    ld b, b
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
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf

jr_02e_56dc:
    inc a
    jp Jump_000_3cc3


    jr c, jr_02e_56a9

    rst $00
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ldh [rIE], a
    sbc [hl]
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
    pop bc
    ccf
    db $fc
    inc bc
    db $fd
    ld [bc], a
    dec de
    db $e4
    db $e3
    inc e
    db $f4
    dec bc
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_56dc

    ld b, b
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

jr_02e_572d:
    nop
    rst $38
    nop
    rra
    ldh [$e7], a
    jr jr_02e_572d

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
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    cpl
    ret nc

    rst $08
    jr nc, @-$2d

    ld l, $be
    ld b, c
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ret z

    rst $38
    inc a
    rst $38
    inc de
    rst $38
    db $10
    rst $38

jr_02e_57ae:
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    add b
    adc a
    ld [hl], b
    pop af
    ld c, $fe
    ld bc, $00ff
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rrca
    ldh a, [$e3]
    inc e
    call c, $df23
    jr nz, jr_02e_57ae

    ld b, b
    cp a
    ld b, b
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
    ld a, a
    add b
    adc a
    ld [hl], b
    di
    inc c
    db $fc
    inc bc
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
    add b
    nop
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
    ld a, a
    ld a, b
    add a
    rlca
    ld hl, sp-$10
    rrca
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    adc b
    ld a, a
    ld hl, sp+$0f
    rst $28
    db $10
    rst $28
    db $10
    rra
    ldh [$c3], a
    inc a
    cp h
    ld b, e
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
    rra
    ldh [$e3], a
    inc e
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
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    ld e, a
    and b
    sbc a
    ld h, b
    and a
    ld e, b
    cp b
    ld b, a
    cp a
    ld b, b
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
    ldh [rP1], a
    cp $00
    rst $38
    nop
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
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    rrca
    ld c, $f1
    pop af
    cp $fe
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld hl, $20ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    adc [hl]
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
    ldh [$1f], a
    cp $01
    rst $38
    nop
    ld a, a
    add b

jr_02e_591e:
    adc a
    ld [hl], b
    pop af
    ld c, $fe
    ld bc, $01fe
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_591e

    jr nz, jr_02e_59a0

    and b
    sbc a
    ld h, b
    and e
    ld e, h
    cp h
    ld b, e
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_02e_594e:
    rst $38
    nop
    ccf
    ret nz

    rst $00
    jr c, jr_02e_594e

    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [$e0]
    rra
    ld e, $e1
    pop hl
    cp $fe
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    db $e4
    rst $38
    inc e
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38

jr_02e_59a0:
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    ld a, a
    ld a, h
    add e
    ld a, a

jr_02e_59af:
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $00
    jr c, jr_02e_59af

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
    ld a, a
    add b
    adc a
    ld [hl], b
    di
    inc c
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a

jr_02e_59dc:
    db $fd
    ld [bc], a

jr_02e_59de:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    dec sp
    call nz, Call_000_34cb
    pop af
    ld c, $f6
    add hl, bc
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_59dc

    jr nz, jr_02e_59de

    jr nz, jr_02e_5a01

jr_02e_5a01:
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ldh [$1f], a
    ld e, $e1
    pop bc
    ld a, $3c
    jp $fcc3


    db $fc
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
    nop
    rst $38
    ret nz

    rst $38
    jr c, @+$01

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
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    cp $01
    cp $01
    ld c, $f1
    pop af
    ld c, $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, @+$61

    and b
    adc a
    ld [hl], b
    pop de
    ld l, $be
    ld b, c
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    db $e3
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    ldh [$1f], a
    ld e, $e1
    pop bc
    ld a, $3c
    jp $fcc3


    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld [hl], b
    rst $38
    cpl
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    cp $01
    rst $38
    nop

jr_02e_5b0a:
    rst $38
    nop
    ccf
    ret nz

    rst $00
    jr c, jr_02e_5b0a

    ld b, $ff
    ld bc, $03ff
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    adc a
    ld [hl], e
    di
    rrca
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
    nop
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    ret nz

    ccf
    inc a
    jp Jump_02e_7c83


    ld a, b
    add a
    add a
    ld hl, sp-$08
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
    rst $38
    ldh [rIE], a
    ld e, $ff
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
    rlca
    rst $38
    rst $20
    rra
    rst $38
    rlca
    rst $38
    rrca
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
    ld a, a
    add b
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
    ret nz

    ccf
    inc a
    jp Jump_02e_7c83


    ld a, h
    sbc a
    sbc a
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
    nop
    nop
    ldh a, [rP1]
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, b
    add a
    inc b
    rst $38
    add hl, bc
    cp $09
    cp $11
    cp $12
    db $fd
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $f1
    cp $ff
    cp $ff
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca

jr_02e_5c3e:
    ld bc, $0106
    ld c, $01
    ld c, $03
    inc e
    inc bc
    inc e
    rlca
    jr c, jr_02e_5c52

    jr c, jr_02e_5c5c

    ld [hl], b
    ld c, $71
    dec e
    ld [c], a

jr_02e_5c52:
    add hl, de
    and $19
    and $33
    call z, $c03f
    rst $28
    db $10

jr_02e_5c5c:
    rst $10
    jr z, jr_02e_5c3e

    jr nz, @-$1f

    jr nz, jr_02e_5c81

    ldh [$3e], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld hl, sp+$00
    ld a, b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_02e_5c81:
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    ld b, $0c
    dec c
    ld c, $06
    ld b, $06
    ld b, $0f
    db $10
    rlca
    rlca
    rlca
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_02e_5cd5

    ld a, [de]
    dec de
    inc e
    dec e
    rlca
    rlca
    rlca
    rlca
    rlca
    ld e, $1f
    dec e
    jr nz, jr_02e_5ceb

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    rlca
    rlca
    rlca
    rlca
    rlca

jr_02e_5cd5:
    ld e, $1f
    dec e
    jr z, jr_02e_5d03

    inc h
    ld a, [hl+]
    dec e
    dec hl
    dec e
    dec e
    rlca
    inc l
    dec l
    ld l, $2e
    cpl
    rra
    dec e
    jr nc, jr_02e_5d1b

    dec e

jr_02e_5ceb:
    ld [hl-], a
    dec e
    inc sp
    dec e
    dec e
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02e_5d2f

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
    dec e

jr_02e_5d03:
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
    ld d, c
    ld b, h
    ld d, d
    ld d, e
    rlca
    rlca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_02e_5d1b:
    ld e, d
    ld d, c
    ld e, e
    ld e, h
    ld e, l
    ld b, h
    ld e, [hl]
    ld e, a
    rlca
    rlca
    ld h, b
    ld d, l
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld d, c
    ld h, l
    ld h, [hl]
    ld d, c

jr_02e_5d2f:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    rlca
    rlca
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld d, c
    ld d, c
    ld d, c
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
    ld d, c
    ld a, [hl]
    ld e, d
    ld d, c
    ld d, c
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
    ld d, c
    adc d
    adc e
    ld e, d
    ld d, c
    rlca
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
    ld d, c
    sbc b
    sbc c
    rlca
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
    ld d, c
    ld d, c
    and [hl]
    and a
    xor b
    rlca
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
    ld d, c
    ld d, c
    or e
    or h
    rlca
    rlca
    or l
    or [hl]
    or a
    cp b
    ld b, $b9
    cp d
    cp e
    cp h
    ld d, c
    cp l
    cp [hl]
    cp a
    ret nz

    rlca
    rlca
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    ld d, c
    jp z, Jump_02e_51cb

    call z, Call_000_0707
    rlca
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld d, c
    sub $66
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld b, $e0
    pop hl
    ld [c], a
    ld e, d
    db $e3
    db $e4
    ld bc, $0301
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
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $2101
    ld bc, $0101
    ld bc, $0001
    dec b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0000
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0000
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0000
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0000
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld hl, $0101
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $2101
    ld bc, $0500
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    nop
    dec b
    ld b, $06
    ld b, $01
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0021
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
    ld hl, $0101
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    xor [hl]
    rst $38
    rst $10
    rst $38
    sbc l
    rst $38
    db $d3
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ret z

    rst $38
    db $ec
    rst $38
    call $fbff
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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $38
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
    add b
    add b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    cp $7f
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    cp $ff
    add b
    add b
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

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    ldh a, [$f0]
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    rra
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
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
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $3fff
    rst $38
    pop bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc a
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
    ccf
    rst $38
    ret nz

    rst $38
    inc bc
    inc bc
    inc b
    rlca
    rrca
    rrca
    rrca
    dec c
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $00ff
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
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
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
    ret nz

    rst $38
    nop
    rst $38
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
    rlca
    rst $38
    ld a, b
    rst $38
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
    nop
    nop
    nop
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    ld c, b
    ccf
    ld c, b
    ccf
    ld b, b
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld h, b
    ccf
    ld l, b
    ccf
    adc b
    ccf
    adc b
    ccf
    adc b
    ccf
    adc b
    ccf
    adc b
    ccf
    xor b
    rra
    xor b
    rra
    ldh [$1f], a
    or b
    rra
    xor b
    rra
    or b
    rra
    ld hl, sp+$1f
    or c
    rra
    pop af
    rra
    pop af
    rra
    ld [$e21f], a
    rra
    ld [c], a
    sbc a
    ld [$ee9f], a
    sbc a
    ld [$ed9f], a
    sbc a
    and $9f
    db $eb
    sbc a
    adc $bf
    sbc [hl]
    cp $fb
    db $fc
    ld hl, sp-$10
    sbc a
    sub b
    rst $18
    rst $38
    cp a
    rst $38
    rst $18
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$ef]
    ld hl, sp-$19
    rst $38
    rst $30
    db $fc
    rst $20
    cp $e3
    cp $f3
    rst $38
    di
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    db $10
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b

jr_02e_62f7:
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld a, [hl]
    add c
    nop
    rst $38
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    jr nc, jr_02e_62f7

    rst $08
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ret nz

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
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    inc b
    cp $28
    cp $24
    db $fc
    ld d, b
    db $fc
    ld d, b
    ld hl, sp-$60
    ld hl, sp-$51
    ldh a, [$5f]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    cp $00
    ld bc, $ff00
    rlca
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
    db $fc
    rst $38
    inc bc
    cp $ff
    pop hl
    rst $38
    rst $28
    rst $38
    db $ec
    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    add sp, $7f
    db $ec
    ld a, a
    rst $28
    ld a, a
    xor $7f
    pop hl
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $7fff
    rst $38
    rst $38

jr_02e_63de:
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
    db $fc
    rst $38
    nop

jr_02e_63f0:
    add b
    ld a, a
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
    jr nz, jr_02e_63de

    jr nz, jr_02e_63f0

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
    db $fd
    ld [bc], a
    cp $01
    ret nz

    ccf
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
    rst $38
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
    nop
    ld h, b
    nop
    sub [hl]
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
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
    inc bc
    db $fc
    rst $38
    nop
    add b
    ld a, a

jr_02e_64b0:
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
    ld hl, sp+$07

jr_02e_64c2:
    rlca
    ld hl, sp-$01
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_02e_64b0

    jr nz, jr_02e_64c2

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
    ldh [$1f], a
    rst $38
    ldh [rIE], a
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
    nop
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
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    ld hl, sp-$01
    add a
    rst $38
    cp a
    rst $38
    or e
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    or e
    rst $38
    cp a
    rst $38
    cp b
    rst $38
    add a
    rst $38
    rst $38
    ret nz

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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    dec bc
    db $fc
    ei
    inc b
    add b
    ld a, a
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
    ret nz

    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    db $10
    rra
    pop af
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
    ld bc, $4700
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
    ccf
    ret nz

    ret nz

    ccf
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
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
    ld hl, sp-$01
    dec b
    rst $38
    cp $ff
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

jr_02e_6616:
    inc bc
    db $fc
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_02e_6616

    db $10
    rst $30
    ld [$04fb], sp
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
    ld hl, sp+$07
    rlca
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$20
    db $fc
    db $10
    db $fc
    db $10
    rst $38
    db $10
    rst $38
    and b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rra
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $ff
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    rra
    rra
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
    ldh [rIE], a
    rra
    ldh a, [rIE]
    ld c, $ff
    ld a, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    nop
    rst $38
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
    jr nz, @-$0f

    db $10
    ldh [$1f], a
    dec de
    db $e4
    ei
    inc b
    db $fd
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
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, b
    ld a, a
    rst $38
    add b
    db $fd
    ld [bc], a
    ldh a, [rIF]
    nop
    rst $38
    nop
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
    add b
    ld a, a
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    cp $81
    ld a, [hl]
    ld bc, $83fe
    cp $83
    ld a, [hl]
    jp $037e


    cp $07
    cp $87
    cp $a7
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fc
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
    db $fc
    rst $38
    rst $38
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
    add c
    cp $bf
    ld b, b
    nop
    rst $38
    rst $30
    ld [$04fb], sp
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    inc bc
    db $fc

jr_02e_67b8:
    rst $38
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
    jr nz, jr_02e_67b8

    db $10
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    sub $ff
    ld b, [hl]
    rst $38
    ld d, $ff
    sub h
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    ret nz

    ccf
    ret z

    ccf
    ret z

    ccf
    ret


    ccf
    jp hl


    ccf
    jp hl


    ccf
    ret z

    ccf
    ld [$c43f], a
    ccf
    adc $3f
    call nc, $963f
    ccf
    adc e
    ccf
    dec bc
    rra
    dec c
    rra
    dec d
    rrca
    ld e, $07
    rra
    inc bc
    rra
    dec bc
    rra
    ld de, $021f
    rra
    inc de
    ld e, a
    ld d, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    jp $3bff


    rst $38
    ei
    rst $38
    sbc e
    cp $0b
    ld bc, $010b
    dec bc
    ld bc, $010b
    sbc e
    inc bc
    cp $07
    rst $00
    rlca
    ccf
    rra
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld [$06ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $fffe
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
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$06f9], sp
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

jr_02e_6888:
    rst $38
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
    jr nz, jr_02e_6888

    db $10
    rst $30
    ld [$04fb], sp
    ei
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
    cp $01
    pop hl
    ld e, $9f
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    rst $38
    rlca
    rst $38
    rst $38
    rrca
    rst $38
    ld b, $a3
    ld sp, hl
    sub e
    ld sp, hl
    and e
    ld sp, hl
    and e
    ld sp, hl
    add e
    ld sp, hl
    inc hl
    ld sp, hl
    and a
    ld sp, hl
    rra
    pop af
    xor d
    ld a, [c]
    cp d
    ld a, [c]
    ld a, [hl+]
    ld a, [c]
    adc [hl]
    ld a, [c]
    xor [hl]
    ld a, [c]
    adc $f2
    xor [hl]
    ld a, [c]
    ld e, [hl]
    ld a, [c]
    ld h, $f2
    ld c, [hl]
    ld a, [c]
    ld b, [hl]
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    ld a, [c]
    ld e, [hl]
    ld [c], a
    cp [hl]
    ld [c], a
    ld [c], a
    cp $e4
    db $fc
    db $e4
    db $fc
    db $e4
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    db $fc
    db $e4
    ld a, h
    db $f4
    cp b
    ld hl, sp-$71
    ld hl, sp-$11
    add sp, -$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$31
    ld hl, sp-$21
    ld hl, sp-$21
    ld a, b
    rst $18
    ld hl, sp-$61
    ld hl, sp-$41
    ld hl, sp+$3f
    ld hl, sp+$38
    ld hl, sp+$3f
    ld hl, sp+$38
    ld hl, sp+$3f
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$01
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, c
    cp $cf
    jr nc, jr_02e_6943

jr_02e_6943:
    rst $38
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
    rst $38

jr_02e_694b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rst $18
    jr nz, jr_02e_694b

    inc de
    add e
    ld a, h
    ld a, l
    add d
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
    cp [hl]
    ld b, c
    pop bc
    ld a, $0f
    ldh a, [$f7]
    ld [$04fb], sp
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld [$003f], sp
    ccf
    ld [$f83f], sp
    ccf
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    ccf
    rst $38
    ccf
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
    rst $38
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
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $fcff
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_02e_6a16:
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_02e_6a16

    ld b, $fe
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
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop

jr_02e_6a32:
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $08
    jr nc, jr_02e_6a32

    ld [$04fb], sp
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    pop hl
    ld e, $1f
    ldh [rIE], a
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
    nop
    nop
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ldh a, [rIE]
    ld c, $ff
    pop bc
    ccf
    ldh a, [rIF]
    db $fc
    inc bc

jr_02e_6ac8:
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
    rst $08
    jr nc, jr_02e_6ac8

    inc c
    db $fc
    inc bc
    cp $01
    add c
    ld a, [hl]
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$06f9], sp
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
    db $fc
    inc bc

Jump_02e_6b00:
    db $e3
    inc e
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
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    ld hl, sp-$39
    rst $00
    ld hl, sp-$08
    rst $00
    rst $00
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    add c
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01

jr_02e_6ba0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$cf]
    jr nc, jr_02e_6ba0

    inc c
    db $fc
    inc bc

jr_02e_6bb0:
    rst $38
    nop
    rst $38
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

    rst $18
    jr nz, jr_02e_6bb0

    db $10
    di
    inc c
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    jp Jump_000_3f3c


    ret nz

    ldh a, [$f0]
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    add e
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
    inc b
    db $fc
    inc b
    db $fc
    ld b, $fe
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    ccf
    rst $00
    rst $00
    ccf
    ccf
    rst $00
    rst $00
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
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    rst $00
    ccf
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

jr_02e_6c60:
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_02e_6c60

    ld b, $fe
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
    ld a, h
    add e
    add e
    ld a, h
    rrca
    ldh a, [$f7]
    ld [$04fb], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_02e_6c90

jr_02e_6c90:
    inc e
    nop
    ld l, $11
    ld c, b
    scf
    ld b, b
    ccf
    ld l, b
    rla
    ld c, b
    scf
    dec l
    inc de
    ccf
    rlca
    ccf
    rrca
    rrca
    ccf
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rla
    cpl
    ld d, a
    dec hl
    ccf
    ld b, e
    rla
    ld l, e
    rra
    ld l, e
    rra
    ld h, e
    cpl
    ld d, e
    rrca
    ld [hl], e
    xor a
    ld d, e
    xor e
    ld d, a
    cp e
    rst $10
    cp e
    rst $30
    xor a
    rst $30
    xor a
    rst $30
    rst $08
    rst $30
    rst $08
    rst $30
    rst $08
    rst $30
    rst $18
    rst $30
    rra
    rst $30
    ld e, a
    rst $20
    rst $10
    rst $28
    rst $10
    rst $28
    rst $08
    rst $38
    rst $18
    rst $28
    rst $18
    rst $28
    rst $08
    cp a
    rst $18
    cp a
    rst $38
    rst $18
    rst $18
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
    cp a
    rst $38
    cp a
    ld a, a
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    db $f4
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
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

jr_02e_6d38:
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr jr_02e_6d38

    ld b, $ff
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
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    rst $30
    ld [$06f9], sp
    cp $01
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_02e_6d93

    ld a, [de]
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    daa
    jr z, jr_02e_6dbc

jr_02e_6d93:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02e_6dcc

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02e_6de1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    ccf
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

jr_02e_6dbc:
    ld c, e
    nop
    nop
    nop
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

jr_02e_6dcc:
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
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_02e_6de1:
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
    nop
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


    jp z, $cb00

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    nop
    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    nop
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    nop
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
    jr jr_02e_6eae

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld bc, $0003
    nop
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

jr_02e_6eae:
    rlca
    inc b
    ld bc, $0003
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0107
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0302
    ld bc, $0101
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    rlca
    rlca
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $04
    inc b
    dec b
    ld bc, $0202
    nop
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    rlca
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0006
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $00
    nop
    nop
    rlca
    inc b
    inc b
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld b, $06
    inc bc
    nop
    inc b
    inc b
    rlca
    ld b, $01
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0601
    ld b, $00
    inc b
    inc b
    inc b
    rlca
    inc b
    ld bc, $0101
    ld bc, $0303
    ld bc, $0601
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0201
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    inc bc
    ld bc, $0701
    rlca
    rlca
    rlca
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0a09
    ld [$0b0a], sp
    dec bc
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    inc c
    nop
    inc c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld d, l
    xor $ee
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    db $fd
    ld bc, $01fe
    cp $a0
    rst $38
    db $fc
    di
    nop
    rst $38
    adc [hl]
    rst $38
    add l
    cp $46
    rst $38
    sub b
    rst $38
    ld a, [bc]
    db $fd
    inc a
    rst $38
    jr nc, @+$01

    ld [c], a
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nc

    rst $38
    sbc $ff
    ld b, b
    rst $38
    or c
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    or d
    rst $38
    add e
    rst $38
    rst $20
    rst $38
    or $ff
    cp $ff
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc $ff
    ei
    rst $38
    ld a, [$dfff]
    rst $38
    rst $28
    rst $38
    ret nz

    nop
    ld b, b
    nop
    stop
    ld [hl], h
    nop
    ld b, b
    nop
    ld [hl+], a
    nop
    ld hl, $2000
    nop
    cpl
    inc bc
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    adc $ff
    rst $18
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $037f
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    cp a
    ld bc, $017f
    ccf
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    nop
    ld a, a
    ld bc, $217f
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    rst $38
    ld b, e
    rst $28
    and e
    rst $28
    add e
    rst $28
    add e
    rst $28
    add e
    rst $00
    add e
    rst $00
    add e
    inc bc
    rst $00
    inc bc
    rst $00
    inc bc
    jp $c303


    add e
    jp $8103


    add c
    add c
    nop
    add c
    add c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh [$fc], a
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
    pop af
    nop
    call z, $cf00
    nop
    and $00
    sub $00
    cp $00
    ld [hl], a
    adc b
    ret nz

    ccf
    ld b, a
    cp b
    add hl, hl
    or $46
    ld sp, hl
    ld c, $f1
    rrca
    ldh a, [$0d]
    ld a, [c]
    and c
    sbc $21
    sbc $86
    ld a, c
    add [hl]
    ld a, c
    inc bc
    db $fc
    ld bc, $8cfe
    di
    sbc b
    rst $20
    ld e, b
    rst $20
    ld bc, $48fe
    cp a
    ld d, c
    cp [hl]
    ld hl, $21de
    sbc $14
    ei
    add h
    ld a, e
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    ld [de], a
    db $fd
    sbc e
    db $fc
    nop
    rst $38
    ld [bc], a
    rst $38
    ld h, e
    rst $38
    ld hl, $02ff
    rst $38
    ld b, [hl]
    rst $38
    call z, $b0ff
    rst $38
    ld [hl], c
    rst $38
    cp d
    rst $38
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
    add b
    nop
    ld e, a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    ret


    rst $38
    ret


    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ret z

    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sbc a
    ldh [$80], a
    rst $38
    and b
    rst $38
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    dec c
    ld [c], a
    rst $38
    nop
    db $eb
    inc d
    ld h, e
    sbc h
    ld a, [c]
    inc c
    ld a, [$f704]
    ld [$31ce], sp
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rst $28
    db $10
    ld b, l
    cp b
    rst $38
    nop
    ld a, h
    add e
    cp b
    ld b, a
    call c, $ff23
    nop
    or l
    ld c, d
    ld [hl], c
    adc [hl]
    xor a

jr_02e_71ef:
    ld d, b
    add a
    ld a, b
    adc $31
    ld c, a
    or b
    dec de
    db $e4
    ld de, $9aee
    push hl
    dec bc
    db $f4
    ld [bc], a
    db $fd
    daa
    ret c

    inc hl
    call c, $f30c
    ld c, l
    ld a, [c]
    ld hl, $b5de
    adc $04
    rst $38
    jr nz, jr_02e_71ef

    nop
    ld d, [hl]
    nop
    inc bc
    nop
    dec d
    nop
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    and b
    rst $38
    db $fd
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    add b
    ld b, b
    ld e, a
    and b
    dec de
    db $e4
    ld b, c
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    jp z, $ee00

    nop
    adc $00
    push de
    nop
    push de
    nop
    or b
    nop
    ld a, b
    add b
    adc h
    nop
    rst $30
    nop
    rst $20
    nop
    ld h, e
    nop
    jp $de00


    nop
    ld c, [hl]
    add b
    jp nc, Jump_02e_6b00

    db $10
    ld [hl], e
    nop
    push af
    nop

jr_02e_728a:
    db $fc
    nop
    xor $00
    ld a, [hl]
    add b
    db $eb
    nop
    db $fd
    nop
    reti


    nop
    reti


    nop
    ld e, a

jr_02e_7299:
    add b
    db $d3
    jr nz, jr_02e_7299

    nop
    or $08
    push hl
    ld [$00fd], sp
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_02e_728a

    jr nz, jr_02e_72cb

    ldh [rNR22], a
    ldh [$1f], a
    ldh [$6f], a
    sub b
    ld h, a
    sbc b
    ld a, h
    add e
    sbc h
    ld h, e
    dec e
    ld [c], a
    dec hl
    call nc, $8679
    nop
    sbc [hl]
    nop
    di
    nop
    push hl
    nop
    add hl, sp
    nop
    ld b, b
    ld a, a

jr_02e_72cb:
    nop
    rst $38
    ldh [rIE], a
    ldh a, [$f9]
    nop
    ld a, e
    nop
    ld a, [$fe00]
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
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
    add l
    ld a, a
    nop
    nop
    db $fd
    nop
    cp $00
    rst $28
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    adc $00
    nop
    nop
    ld [hl], e
    nop
    jr nc, jr_02e_731c

jr_02e_731c:
    inc [hl]
    nop
    ld h, h
    nop
    ld b, h
    nop
    xor $00
    add c
    nop
    ld hl, $9900
    nop
    add c
    nop
    nop
    nop
    and c
    nop
    db $e3
    nop
    add h
    nop
    sbc h
    nop
    adc l
    nop
    dec hl
    nop
    sub d
    nop
    dec sp
    nop
    jr nz, jr_02e_7340

jr_02e_7340:
    ret z

    nop
    db $e4
    nop
    ret nz

    nop
    ret z

    nop
    cp c
    nop
    cp b
    nop
    and [hl]
    nop
    and $00
    or $00
    ld a, [hl]
    nop
    ld a, a
    nop
    sbc a
    ld h, b
    adc h
    ld [hl], b
    ei
    nop
    pop af
    nop
    ld [hl], d
    nop
    db $fc
    nop
    ld a, $c0
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    rrca
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    db $fc
    nop
    add b
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    inc bc
    nop
    sub e
    nop
    jp z, $c700

    nop
    db $eb
    nop
    rst $38
    nop
    ei
    nop
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
    ld bc, $8fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push af
    ld a, [$fac5]
    sbc $e0
    push bc
    ld a, [$c0fd]
    rst $18
    ldh [$fb], a
    ldh [$e6], a
    add sp, -$15
    ldh [$e1], a
    ldh a, [$e5]
    ldh a, [$e5]
    ld a, [c]
    add sp, -$10
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
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    sbc b
    nop
    jr jr_02e_73ec

jr_02e_73ec:
    ld [$2000], sp
    nop
    ld [hl-], a
    nop
    ld [hl], e
    nop
    ld b, b
    nop
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld sp, $1000
    nop
    inc b
    nop
    add h
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    ccf
    ld [hl-], a
    ccf
    xor c
    ccf
    ld [hl], l
    jr c, @+$01

    jr c, jr_02e_7486

    ccf
    dec hl
    ld e, $d0
    ld c, $44
    inc c
    daa
    inc c
    ld b, a
    ld c, $9f
    rlca
    add a
    rlca
    rst $08
    rlca
    ld c, a
    rlca
    scf
    rlca
    ccf
    inc bc
    scf
    inc bc
    cpl
    inc bc
    ld l, a
    inc bc
    rra
    inc bc
    sbc a
    inc bc
    cp a
    inc bc
    db $e3
    inc bc
    ld h, a
    inc bc
    rst $30
    inc bc
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    cp $00
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
    ld d, b
    nop
    ret nz

    nop
    and b
    nop
    and d
    nop
    ccf
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    cp $ff
    db $fc
    rst $20
    rst $38
    di
    ccf
    pop af

jr_02e_7486:
    rra
    pop af
    ccf
    ldh a, [$3f]
    ldh a, [$7f]
    ld hl, sp-$01
    ld hl, sp+$06
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    rrca
    cp $07
    cp $0f
    cp $3f
    rst $38
    rst $38
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
    nop
    nop
    nop
    or a
    nop
    ld d, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc b
    nop
    inc c
    nop
    inc b
    nop
    stop
    stop
    add hl, sp
    nop
    nop
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    nop
    nop
    or c
    nop
    nop
    nop
    ld b, $00
    inc bc
    nop
    rst $38
    nop
    db $fd

jr_02e_74d9:
    inc bc
    ld l, b
    rst $38
    ld c, d
    rst $38
    inc [hl]
    rst $28
    ld c, a

jr_02e_74e1:
    db $e3
    reti


    jr nc, jr_02e_74d9

    ld hl, HeaderGlobalChecksum
    cp l
    ld b, d
    rst $28
    jr jr_02e_74e1

    ld e, $8f
    ld c, $fb
    ld c, $bf
    inc a
    cp $d9
    and a
    ld e, l
    sbc $bf
    rst $38
    xor $df
    inc l
    rst $38
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
    inc a
    ret nz

    nop
    nop
    nop
    rst $38
    rra
    db $e3
    rst $38
    rlca
    rst $38
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    sbc a
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ld d, a
    rst $38
    ld h, a
    rst $38
    ld e, h
    rst $38
    push bc
    ld a, [c]
    db $db
    inc b
    inc bc
    rst $38
    ret nz

    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc a
    ret nz

    ccf
    ret nc

    ccf
    call nc, $ea3f
    rra
    jp hl


    rra
    ldh a, [rIF]
    ld d, l
    adc a
    ld l, b
    add a
    add a
    nop
    jp $c300


    add b
    db $e3
    add b
    pop bc
    add b
    pop hl
    ret nz

    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$20
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    db $fc
    cp $fc
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
    ret nc

    cpl
    nop
    nop
    cp l
    nop
    ld d, l
    nop
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
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    nop
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, c
    rst $38
    and h
    rst $38
    sub d
    rst $38
    db $f4
    adc a
    ld a, l
    sub a
    ld e, a
    and $89
    and $e7
    ld c, b
    rst $00
    jr nz, jr_02e_760a

    add l
    ei
    ld b, $ef
    inc b
    rst $00
    nop
    pop bc
    nop
    ld [c], a
    add c
    rla
    add b
    and [hl]
    add b
    db $fd
    ld b, b
    ld e, e
    ld sp, hl
    db $ec
    ld hl, sp+$08
    ld h, h
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02e_760a:
    rst $38
    rra
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld a, h
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    db $fc
    cp $fc

jr_02e_7621:
    ld hl, sp-$04
    db $ec
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$fc]
    ldh [$e0], a
    cp $fc
    ldh [$f0], a
    and $e2
    cp $ff
    db $fc
    rst $38
    ret nz

    rst $38
    ret z

    db $f4
    ret nc

    ldh [rLCDC], a
    nop
    add b
    nop
    ld c, b
    sub b
    nop
    rst $38
    rst $30
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
    db $e3
    rst $38
    nop
    rrca
    ldh a, [$5f]
    and b
    cpl
    ret nc

    add a
    ld a, b
    inc de
    db $ec
    rra
    ldh [$0b], a
    db $f4
    ld b, l
    ld a, [$f887]
    dec c
    ld a, [c]
    ccf
    ret nz

    dec d
    ld [$e49b], a
    adc a
    ldh a, [$c7]
    ld hl, sp+$49
    or $c2
    ld a, l
    add d
    ld a, l
    pop hl
    ld a, [hl]
    jp hl


    ld a, $e3
    ld a, $f0
    rra
    ld h, b
    rra
    jr z, jr_02e_76af

    jr jr_02e_76a1

    add d
    rrca
    inc c
    rlca
    ld [$8207], sp
    rlca
    add [hl]
    inc bc
    jr z, jr_02e_7621

    ld b, l
    add e
    rst $38

jr_02e_76a1:
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
    ld a, [hl]
    nop
    rst $38

jr_02e_76af:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
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
    add b
    nop
    nop
    nop
    ld b, l
    nop
    rst $38
    nop
    cp $01
    ld [hl+], a
    rst $38
    xor d
    rst $38
    ld sp, hl
    add a
    or l
    ld b, $7d
    ld [bc], a
    rst $20
    dec de
    ld a, l
    add d
    adc [hl]
    ld [bc], a
    db $fc
    inc bc
    ld a, a
    add h
    rst $38
    add l
    rst $28
    ld d, b
    push de
    ld [hl+], a
    db $f4
    ld [$70ae], sp
    ei
    dec b
    rst $08
    add h
    cp a
    ld b, b
    ld a, a
    nop
    cp l
    nop
    ld [bc], a
    ld sp, $7f80
    nop
    rst $38
    inc bc
    db $fc
    ld sp, hl
    ld [$fffc], sp
    dec a
    cp a
    rra
    rra
    rra
    cp a
    ld e, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, $2afd

    push de
    rlca
    sub a
    rra
    sbc a
    ccf
    ccf
    ccf
    cp a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld h, b
    inc h
    ld h, b
    daa
    ld h, e
    dec sp
    ld a, b
    add hl, sp
    daa
    daa
    inc a
    inc [hl]
    nop
    rst $38
    rla
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
    ld c, b
    rst $30
    dec l
    di
    rst $38
    inc bc
    ld b, e
    cp [hl]
    ld h, $ff
    ld b, $ef
    ld b, $f3
    ld b, $f9
    ei
    ccf
    ld sp, hl
    rra
    db $fd
    rra
    rst $38
    rrca
    rst $38
    rrca
    cp $07
    rst $38
    rlca
    rst $28
    inc bc
    rst $30
    ld bc, $01c9
    ld sp, hl
    nop
    call c, $ee00
    nop
    cp $00
    ld a, [$fb00]
    nop
    rst $18
    jr nz, jr_02e_7802

    add b
    rst $28
    db $10
    ld [hl], e
    adc h
    or e
    ld c, h
    sub c
    ld l, [hl]
    ld c, e
    or h
    ld e, a
    and b
    rla
    add sp, -$79
    ld hl, sp+$63
    call c, $ed92
    ld c, b
    rst $30
    nop
    rst $38
    nop
    rst $38
    and c
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
    jr c, jr_02e_77b3

    rst $38
    nop
    cp $01
    rst $38
    rst $38
    rst $38

jr_02e_77b3:
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    nop
    ld [$0000], sp
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    add c
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    dec h
    rst $38
    sub d
    rst $38
    ld l, c
    rst $18
    ld c, c
    sbc l
    ld e, l
    db $e4
    ld e, d
    db $f4
    db $db
    ld h, d
    ld a, e
    nop
    ld a, [$8a03]
    jp $01cf


    rlc h
    rst $00
    dec c
    jp $ea0f


    rlca
    xor a
    ld bc, $093f
    ld a, [hl]
    ld [hl], e
    dec sp
    ld d, e
    di
    rrca
    ei
    ccf
    inc b
    rst $38

jr_02e_7802:
    rlca
    rst $38
    ldh a, [$f0]
    nop
    nop
    add b
    add b
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    dec bc
    rlca
    xor e
    inc bc
    inc bc
    add e
    inc hl
    jp $e3cb


    di
    db $e3
    db $eb
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    pop hl
    db $e3
    inc hl
    ld h, b
    jr nz, jr_02e_789e

    inc hl
    db $e3
    and a
    ld h, b
    inc hl
    ld b, c
    add b
    rra
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02e_7846

jr_02e_7846:
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    dec c
    ld a, [c]
    xor [hl]
    ld d, b
    rst $28
    ldh a, [$97]
    call z, $c35c
    ld [c], a
    ld e, a
    ld e, c
    jp nz, $f009

    ld c, d
    or b
    ld l, h
    add d
    ld a, a
    ldh [$a3], a
    ld a, h
    or h
    ld a, [hl]
    ld a, [hl+]
    rst $18
    ld a, c
    add e
    ld a, e
    rst $00
    ld e, e
    ld h, [hl]
    ld l, [hl]
    rst $18
    rst $30
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    jp $e0ff


    ld a, a
    db $f4
    ld a, a
    or b
    ccf
    ld a, c
    rra
    cp d
    rra
    rst $38
    rrca
    rst $38
    rrca
    cp $07
    cp $03
    rst $30
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, $c0
    ld e, [hl]
    and b
    rra
    ldh [$8f], a
    ld [hl], b

jr_02e_789e:
    ld c, a
    or b
    rst $38
    rst $38
    rst $38
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

    daa
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    nop
    inc bc
    nop
    inc de
    nop
    stop
    nop
    nop
    jr z, jr_02e_78c2

jr_02e_78c2:
    ld b, h
    nop
    inc bc
    nop
    add e
    nop
    ld [bc], a
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    stop
    cp $00
    cp $00
    ld c, b
    ld hl, sp+$29
    ldh a, [rOCPS]
    ret c

    ld [hl], d
    adc b
    add sp, -$50
    ld e, h
    db $10
    pop de
    ld [$08e8], sp
    jr z, jr_02e_78e8

jr_02e_78e8:
    ld a, b
    nop
    xor b
    jr nc, jr_02e_7916

    sub b
    ld [$da10], a
    ldh a, [$7a]
    sub b
    add sp, -$10
    jp hl


    sub b
    ld hl, sp-$70
    jp c, $38f0

    ldh a, [$f9]
    ldh a, [$f0]
    rst $30
    ldh a, [$f7]
    nop
    rst $38
    nop
    rst $38
    rlca
    ldh [rIE], a
    nop
    db $fc
    nop
    add b
    nop
    pop bc
    add b
    ldh [$e0], a
    ldh a, [$e0]

jr_02e_7916:
    ldh [$80], a
    add b
    add b
    add b
    add b
    add l
    add b
    add b
    add b
    add b
    add [hl]
    add b
    add c
    add b
    adc l
    add b
    rst $18
    add b
    cp a
    add a
    cp a
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
    sbc a
    rst $38
    sub d
    ld a, h
    ld l, e
    add b
    nop
    add b
    ld [bc], a
    nop
    ld bc, $5500
    adc e
    jp nc, Jump_02e_403d

    cp a
    ld a, $ff
    sub l
    ld l, [hl]
    xor $03
    cp b
    ld h, a
    ld c, b
    cp a
    call c, $9e31
    pop af
    pop bc
    ld a, [hl]
    cp l
    ld b, e
    cp e
    ld c, l
    cp a
    rst $20
    cpl
    rst $30
    add a
    rst $38
    rra
    rst $08
    rst $18
    xor a
    adc a
    ld a, a
    ld [hl], a
    adc a
    rst $20
    rra
    rst $00
    inc sp
    di
    add c
    db $10
    xor c
    push de
    jr c, jr_02e_79f0

    sub b
    ld l, e
    sub h
    ld h, b
    add a
    add sp, -$6f
    db $fd
    ld a, b
    jr jr_02e_79e9

    ld sp, $c16a
    ldh [$ca], a
    ld hl, $8c22
    add sp, $04
    db $10
    add [hl]
    inc de
    add $cf
    rst $38
    rst $30
    ld a, a
    ldh a, [$7f]
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld a, b
    rra
    db $dd
    rra
    db $fc
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
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc c
    rst $38
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp a
    nop
    sbc a
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    sub a
    nop
    ld bc, $4900
    nop
    ld b, c
    nop
    ld [bc], a
    nop
    and [hl]
    nop
    inc b
    nop
    add hl, bc
    nop
    ld e, c
    nop
    ld [$3600], sp
    nop
    ld de, $4b00
    nop
    ld b, l
    nop
    daa

jr_02e_79e9:
    nop
    cp a
    inc b
    ld c, $10
    sbc e
    nop

jr_02e_79f0:
    ld e, d
    nop
    dec de
    nop
    dec a
    nop
    dec de
    nop
    reti


    ld [bc], a
    sbc a
    nop
    ld l, [hl]
    ld bc, $00ef
    nop
    rst $38
    nop
    rst $38
    nop
    cp $3f
    jp $feff


    db $fd
    add b
    ld c, e
    nop
    daa
    nop
    rst $38
    nop
    ld a, a
    nop
    ld l, e
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    nop
    cp a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_7a2d:
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
    db $fc
    dec a
    ret nz

    ld c, b
    dec [hl]
    ld c, b
    nop
    and d
    ld bc, $0f34
    xor b
    ld [hl], a
    ld b, e
    cp a
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_02e_7a2d

    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    jp hl


    sub $fd
    jp nz, $e0ff

    rst $38
    ldh a, [$f7]
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
    rst $38
    rst $38
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
    cp a
    rra
    ccf
    rra
    sbc a
    cpl
    adc a
    adc a
    rst $38
    ei
    ld b, a
    ld l, e
    sub c
    reti


    ld bc, $005f
    ld hl, $831e
    ld a, h
    adc [hl]
    ld [hl], b
    add c
    jr nz, jr_02e_7a95

    add c
    ld b, c

jr_02e_7a95:
    add b
    ld d, b
    add b
    ld b, b
    jr nz, jr_02e_7a9c

    nop

jr_02e_7a9c:
    nop
    ld bc, $0000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], e
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
    ld hl, sp+$07
    db $fd
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, [$fb05]
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $027d
    db $fd
    ld [bc], a
    ld a, [hl]
    ld bc, $0976
    rst $38
    nop
    xor e
    inc d
    cp h
    inc bc
    db $fc
    inc bc
    cp h
    ld b, e
    db $fc
    inc bc
    reti


    daa
    push af
    dec bc
    db $e4
    dec de
    pop hl
    rra
    rst $20
    rra
    call Call_000_233f
    rst $18
    nop
    ld [bc], a
    nop
    rlca
    db $10
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc bc
    cp $06
    rst $38
    inc bc
    cp $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ret nz

    cp a
    nop
    inc bc
    call c, $0d42
    nop
    ld a, a
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
    sbc a
    rst $38
    ld b, a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    cp a
    and b
    ld e, a
    ret nc

    cpl
    ld hl, sp+$07
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
    cp h
    jp $c0f7


    rst $38
    ldh [rIE], a
    ldh a, [$f9]
    ld hl, sp-$04
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    rra
    rra
    rrca
    ld a, a
    rlca
    rst $20
    add e
    ld b, a
    pop bc
    inc bc
    sub c
    ld b, c
    adc b
    ld [bc], a
    ld [$ff83], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    db $fc
    db $10
    jr nc, @+$12

    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02e_7bd6

    ldh [rIE], a
    ld a, [c]
    db $fd
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $28
    ld b, b
    rst $28
    nop
    ccf
    nop
    rst $18
    nop
    ld bc, $82ff
    ld a, a
    add d
    ld a, a

jr_02e_7bd6:
    rlca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    rst $18
    ld a, a
    cp a
    ld a, a
    inc b
    nop
    ld [$1000], sp
    nop
    ld a, l
    nop
    inc a
    nop
    inc l
    nop
    ld d, l
    nop
    ld [hl], l
    nop
    ld e, h
    nop
    db $fd
    ld b, b
    ld l, a
    inc b
    rst $18
    dec c
    rst $38
    adc c
    di
    pop hl
    ei
    ei
    rst $38
    ld sp, hl
    sbc d
    rst $38
    ld h, $fb
    ld c, d
    rst $38
    jp z, Jump_02e_4afb

    ei
    ld a, d
    ei
    ret nz

    db $e3
    add b
    ret nz

    adc d
    rst $38
    db $d3
    ldh [$d8], a
    rst $20
    call c, $d8e3
    rst $20
    sbc h
    db $e3
    sbc b
    rst $20
    rst $18
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    ld b, a
    sbc a
    ld [hl], e
    add a
    sub d
    ld h, c
    ld a, [hl-]
    ret nz

    inc c
    ld a, [c]
    jp nz, $f0fc

    rst $38
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
    add e
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret


    ld [hl], $ff
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
    add b
    ld a, a
    ld hl, sp+$07
    cp $01
    ld a, a
    nop
    dec d
    nop
    ld b, l
    nop
    ld bc, $8200
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ld hl, sp-$10
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02e_7c83:
    rst $38
    rst $38
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
    sbc a
    sbc a
    nop
    rlca
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld b, $00
    rra
    nop
    rst $38
    inc d
    db $eb
    ld bc, $08fe
    rst $30
    dec d
    ld [$f807], a
    ld [bc], a
    db $fd
    dec bc
    db $f4
    ld c, $f1
    inc de
    db $ec
    ld b, c
    cp $49
    or $81
    cp $00
    sub a
    nop
    ld [bc], a
    nop
    nop
    jr nc, @+$03

    ldh a, [rSB]
    or b
    dec b
    ret nc

    nop
    ldh a, [rSB]
    call z, Call_02e_5000
    ld bc, $03c0
    ld b, b
    inc bc
    add b

jr_02e_7cd9:
    rlca
    ret nz

    rrca
    jr nz, @+$09

    nop
    cpl
    add b
    daa
    ret nz

    scf
    ldh a, [$67]
    cp $3d
    rst $38
    ccf
    cp a
    add a
    or a
    and b
    rst $28
    jr nz, jr_02e_7cd9

    rst $38
    ld l, b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rla
    rrca
    inc bc
    add a
    and [hl]
    ld bc, $f008
    adc h
    ldh a, [$e3]
    ldh a, [$f6]
    ld sp, hl
    ld hl, sp-$01
    cp $ff
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    and e
    ld e, a
    push af
    dec bc
    db $fc
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
    nop
    ldh [$1f], a
    ldh a, [rIF]
    ret c

    rlca
    ld a, [hl]
    ld bc, $001f
    rrca
    nop
    daa
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ret nz

    nop
    db $fc
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
    rrca
    ret nz

    inc bc
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    xor a
    ld d, b
    ld a, a
    add b
    db $fd
    nop
    ld a, l
    add b
    db $fd
    nop
    ldh a, [rP1]
    or $00
    or $00
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    inc bc
    inc bc
    rrca
    rlca
    rrca
    rlca
    add hl, bc
    rlca
    rlca
    rrca
    rlca
    rrca
    adc a
    rrca
    adc a
    rrca
    ld e, $0f
    ld e, $0f
    ld e, $0f
    ld c, $1f
    ld c, [hl]
    rra
    ld l, $1f
    sbc [hl]
    rra
    cp h
    rra
    inc a
    rra
    inc a
    rra
    ld a, h
    rra
    inc e
    ccf
    inc e
    ccf
    db $fd
    ccf
    db $ed
    ccf
    push hl
    ccf
    db $e3
    rst $28
    di
    di
    ld hl, sp-$03
    db $fc
    cp $7f
    ei
    ld a, a
    ei
    ld a, a
    ei
    ld a, a
    ei
    rst $38
    ei
    ld a, a
    rst $38
    rst $38
    rst $30
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
    ld a, a
    rst $38
    cp a
    rst $18
    rst $20
    rst $38
    ei
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
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ld c, a
    rra
    inc bc
    rrca
    ld b, e
    add c
    db $e3
    nop
    ld [$c0f0], sp
    ld hl, sp-$19
    ld hl, sp-$05
    db $fc
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    ld a, a
    adc a
    ld a, a
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    cp $01
    cp $01
    nop
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
    rrca
    ld hl, sp+$07
    ld e, h
    inc bc
    inc [hl]
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
    and a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    nop
    sub e
    nop
    sub e
    nop
    or d
    nop
    call nz, $c500
    nop
    call $3000
    nop
    ld [hl], $00
    inc [hl]
    nop
    jr nz, jr_02e_7e7c

jr_02e_7e7c:
    ret nc

    nop
    db $db
    nop
    nop
    nop
    ld e, $e0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    daa
    ccf
    ccf
    ccf
    cpl
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a

jr_02e_7ea0:
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fe
    db $fc
    cp $fc
    db $fc
    cp $fd
    db $fc
    db $fd
    db $fc
    db $fc
    db $fd
    push de
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $d3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $08
    rst $30
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    ld l, a
    rst $38
    ld a, a
    ccf
    ld a, a
    rra
    cpl
    rlca
    dec b
    inc bc
    pop bc
    nop
    jr nz, jr_02e_7ea0

    sbc d
    pop hl
    ret z

    db $f4
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld a, e
    rst $38
    sbc c
    rst $38
    inc l
    rst $38
    ld [$84ff], sp
    ld a, a
    or h
    ld e, e
    db $fc
    inc bc
    ld a, [$ff05]
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
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
    ret z

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
    ret nz

    ret nz

    nop
    ld h, d
    nop
    ld h, $00
    ld b, $00
    ld [$0800], sp
    nop
    sbc c
    nop
    add b
    nop
    ld h, b
    nop
    pop hl
    nop
    ret nz

    nop
    add b
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jp Jump_02e_49ff


    rst $38
    add c
    rst $38
    ld de, $9fff
    sbc a
    sub c
    sbc a
    sub e
    sbc a
    sub e
    rra
    dec sp
    sbc a
    ld a, $3f
    ld [hl-], a
    ccf
    ld a, $3f
    ld a, [hl-]
    ccf
    ld a, $7f
    db $76
    ld a, a
    ld h, a
    ld a, a
    ld [hl], h
    ld a, a
    ld h, [hl]
    rst $38
    ld [hl], a
    rst $38
    ld e, l
    rst $38
    rst $38
    xor $ff
    db $ed
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp e
    rst $38
    jp c, Jump_000_1eff

    cp $da
    cp $b6
    cp $fe
    cp $f4
    db $fc
    db $f4
    db $fc
    xor $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld hl, sp-$04
    add sp, -$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$e0]
    add sp, -$20
    ld hl, sp-$40
    db $fc
    db $fc
    ldh [$fc], a
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
    rst $20
    rst $38
    and a
    rst $38
    and d
    rst $38
    ret c

    rst $38
    db $fc
    rst $38
    ld h, h
    rst $38
    and b
    rst $38
    ld l, $7f
