SECTION "ROM Bank $0bf", ROMX[$4000], BANK[$bf]

    rra

jr_0bf_4001:
    rst $20
    rst $38
    rra
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    pop bc
    cp $0e
    pop af
    jr nc, jr_0bf_4001

    nop
    rst $38
    nop
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
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
    nop
    rst $38
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
    pop af
    cp $e7
    rst $38
    rst $08
    rst $38
    ld e, a
    rst $38
    ld b, h
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    ld bc, $1ffe
    pop hl
    rst $38
    rra
    rst $20
    rst $38
    ld sp, hl
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
    ldh a, [rIE]
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $1eff
    rst $38
    pop hl
    cp $7f
    add b
    ld c, a
    cp a
    jp Jump_000_003f


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $19ff
    rst $20
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIE]
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    rrca
    or $ff
    inc bc
    rst $38
    rst $38
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
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop bc
    rst $38
    ldh a, [$3e]
    rst $38
    inc bc
    db $fc
    rra
    db $e3
    ld h, e
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    cp $ff
    ld a, a
    rst $38
    sbc a
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    rlca
    ld hl, sp+$02
    db $fd
    ld [bc], a
    db $fd
    di
    db $fc
    jp nz, Jump_000_1efd

    pop hl
    ldh [$1f], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
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
    rst $20
    ld hl, sp+$78
    add a
    rst $28
    rra
    add a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $00
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
    cp $ff
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add a
    rst $38
    ccf
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $00ff
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
    pop af
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    ret nz

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
    ccf
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
    rlca
    rst $38
    pop bc
    ccf
    adc a
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    di
    db $fc
    dec c
    di
    adc a
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
    ld hl, sp-$01
    add a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld bc, $fbff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    add b
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
    db $fc
    rst $38
    ldh [rIE], a
    db $e3
    db $fc
    adc h
    di
    rrca
    ldh a, [rIF]
    ldh a, [rSVBK]
    adc a
    add b
    ld a, a
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
    inc b
    rst $38
    ccf
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    cp $ff
    ld a, a
    cp $7f
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    cp $e7
    ld hl, sp-$02
    ld sp, hl
    cp $c7
    rst $38
    ccf
    rrca
    cp $03
    rst $38
    ld hl, sp-$01
    rst $30
    rrca
    db $10
    rst $28
    rrca
    ldh a, [$7f]
    rst $38
    nop
    rst $38
    db $fd
    cp $02
    db $fd
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
    rst $28
    rra
    rrca
    rst $38
    rst $38
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $20
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
    add b
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    pop hl
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
    add b
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
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    pop af
    rra
    rst $28
    ld a, h
    sbc a
    or b
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    adc a
    rst $38
    pop af
    cp $1e
    pop hl
    ret nz

    ccf
    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    add b
    rst $38
    inc bc
    ldh [$1f], a
    rst $38
    rra
    nop
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    ldh [$9f], a
    ldh [$7f], a
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    di
    rrca
    rst $38
    di
    rra
    db $e3
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
    cp $ff
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $00
    rst $38
    rst $18
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
    ldh a, [rIE]
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1efe
    pop hl
    ldh [$1f], a
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    rlca
    ld sp, hl
    ld bc, $03fe
    db $fd
    db $fc
    inc bc
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
    rst $38
    rst $38
    inc bc
    rst $38
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
    ld bc, $c1ff
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
    cp $ff
    pop hl
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
    cp $ff
    ldh a, [rIE]
    rst $38
    rst $38
    db $fd
    rst $38
    add c
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rrca
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
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0bf_4453

    ld a, [de]
    dec de
    inc e
    dec e
    dec bc
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_0bf_446a

    ld [hl+], a
    rla
    inc hl
    inc h
    dec h
    dec bc
    ld h, $00
    nop
    nop

jr_0bf_4453:
    nop
    nop
    nop
    daa
    jr z, jr_0bf_4482

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec bc
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0bf_4499

    ld [hl-], a
    inc sp

jr_0bf_446a:
    inc [hl]
    dec [hl]
    dec bc
    ld [hl], $37
    jr c, jr_0bf_4471

jr_0bf_4471:
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec bc
    dec bc
    ld a, $3f
    ld b, b
    nop
    nop

jr_0bf_4482:
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h

jr_0bf_4499:
    dec bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    dec bc
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    ld bc, $0000
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0bf_472a:
    jr jr_0bf_472a

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
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_0bf_475f:
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
    jr nz, jr_0bf_475f

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
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
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

jr_0bf_489d:
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
    jr jr_0bf_489d

    nop
    rst $38
    nop
    rst $38
    ld d, b

jr_0bf_48bb:
    xor a
    jr nz, jr_0bf_489d

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
    jr nz, jr_0bf_48bb

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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld sp, hl
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
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
    jp Jump_0bf_63ff


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
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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

jr_0bf_49cc:
    db $e3
    ld h, a

jr_0bf_49ce:
    db $ed
    ld h, e
    db $ed
    ld h, e
    ld hl, sp+$63

jr_0bf_49d4:
    ei
    ld h, e
    di
    jr nz, jr_0bf_49cc

    jr nc, jr_0bf_49ce

    jr nc, jr_0bf_49d4

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
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38

jr_0bf_4a20:
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
    jr nc, jr_0bf_4a20

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ei
    rst $38
    ld hl, sp+$01
    cp $07
    ld sp, hl
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
    cp $ff
    pop af
    rst $38
    ldh a, [rIE]
    cp $ff
    ld sp, hl
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    ld a, h
    ei
    ld hl, sp-$01
    ld hl, sp+$3f
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$3d
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    add b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

jr_0bf_4b8f:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
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
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ret nz

    ccf
    rst $38
    cp a
    ld h, b
    sbc a
    jr nc, jr_0bf_4b8f

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
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
    ccf
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    add a
    ccf
    ei
    rst $38
    rst $20
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
    nop
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $07fe
    db $fc
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
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
    pop bc
    cp $c0
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
    ld a, a
    rst $38
    cp $ff
    pop af
    cp $ff
    jp Jump_000_3fff


    rst $38
    inc bc
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
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
    ld bc, $fe01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add a
    ld hl, sp+$0f
    ret nz

    ccf
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
    nop
    rst $38
    rst $38
    rst $38
    ld b, b
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
    rra
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
    rra
    rra
    rst $20
    rlca
    ld sp, hl
    rrca
    pop af
    add e
    db $fc
    ldh a, [rIE]
    pop bc
    cp $1f
    pop hl
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
    rrca
    rst $38
    ldh [$1f], a
    db $fc
    jp $f8ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f1
    ld hl, sp-$39
    rst $28
    sbc a
    ldh a, [$7f]
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$7f
    add b
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
    ld b, c
    rst $38
    add b
    rst $38
    cp l
    ld a, $fd
    ld a, $7d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], b
    rst $38
    rlca
    ld hl, sp+$3f
    jp $fc03


    add c
    ld a, [hl]
    rst $38
    add c
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh [$9f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    pop af
    cp $1f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld b, c
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
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld bc, $07fe
    ld sp, hl
    rra

jr_0bf_4e71:
    rst $20
    rst $38
    rra
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    pop bc
    cp $0e
    pop af
    jr nc, jr_0bf_4e71

    nop
    rst $38
    nop
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
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
    nop
    rst $38
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
    pop af
    cp $e7
    rst $38
    rst $08
    rst $38
    ld e, a
    rst $38
    ld b, h
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    ld bc, $1ffe
    pop hl
    rst $38
    rra
    rst $20
    rst $38
    ld sp, hl
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
    ldh a, [rIE]
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $1eff
    rst $38
    pop hl
    cp $7f
    add b
    ld c, a
    cp a
    jp Jump_000_003f


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $19ff
    rst $20
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIE]
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    rrca
    or $ff
    inc bc
    rst $38
    rst $38
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
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop bc
    rst $38
    ldh a, [$3e]
    rst $38
    inc bc
    db $fc
    rra
    db $e3
    ld h, e
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    cp $ff
    ld a, a
    rst $38
    sbc a
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    rlca
    ld hl, sp+$02
    db $fd
    ld [bc], a
    db $fd
    di
    db $fc
    jp nz, Jump_000_1efd

    pop hl
    ldh [$1f], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
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
    rst $20
    ld hl, sp+$78
    add a
    rst $28
    rra
    add a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $00
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
    cp $ff
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add a
    rst $38
    ccf
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $00ff
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
    pop af
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    ret nz

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
    ccf
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
    rlca
    rst $38
    pop bc
    ccf
    adc a
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    di
    db $fc
    dec c
    di
    adc a
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
    ld hl, sp-$01
    add a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld bc, $fbff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    add b
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
    db $fc
    rst $38
    ldh [rIE], a
    db $e3
    db $fc
    adc h
    di
    rrca
    ldh a, [rIF]
    ldh a, [rSVBK]
    adc a
    add b
    ld a, a
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
    inc b
    rst $38
    ccf
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    cp $ff
    ld a, a
    cp $7f
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    cp $e7
    ld hl, sp-$02
    ld sp, hl
    cp $c7
    rst $38
    ccf
    rrca
    cp $03
    rst $38
    ld hl, sp-$01
    rst $30
    rrca
    db $10
    rst $28
    rrca
    ldh a, [$7f]
    rst $38
    nop
    rst $38
    db $fd
    cp $02
    db $fd
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
    rst $28
    rra
    rrca
    rst $38
    rst $38
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $20
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
    add b
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    pop hl
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
    add b
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
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    pop af
    rra
    rst $28
    ld a, h
    sbc a
    or b
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    adc a
    rst $38
    pop af
    cp $1e
    pop hl
    ret nz

    ccf
    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    add b
    rst $38
    inc bc
    ldh [$1f], a
    rst $38
    rra
    nop
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    ldh [$9f], a
    ldh [$7f], a
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    di
    rrca
    rst $38
    di
    rra
    db $e3
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
    cp $ff
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $00
    rst $38
    rst $18
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
    ldh a, [rIE]
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1efe
    pop hl
    ldh [$1f], a
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    rlca
    ld sp, hl
    ld bc, $03fe
    db $fd
    db $fc
    inc bc
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
    rst $38
    rst $38
    inc bc
    rst $38
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
    ld bc, $c1ff
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
    cp $ff
    pop hl
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
    cp $ff
    ldh a, [rIE]
    rst $38
    rst $38
    db $fd
    rst $38
    add c
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rrca
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
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0bf_52d6

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bf_52d6:
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_0bf_5308

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bf_5321

    nop
    nop
    nop
    nop
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
    jr c, jr_0bf_5301

jr_0bf_5301:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bf_5308:
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
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
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop

jr_0bf_5321:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_0bf_5335:
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
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
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
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
    add b
    add c
    add d
    add e
    add h
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
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec de
    db $e4
    cp c
    ld c, a
    rst $38
    ld h, a
    ld a, a
    ret nz

    jr nz, @+$01

    or $ff
    pop bc
    rst $38
    ldh a, [rIE]
    ld h, l
    rst $38
    ld [bc], a
    rst $38
    dec e
    ld [c], a
    ld a, [hl]
    add e
    rst $30
    inc c
    ld b, $f9
    inc b
    ei
    ld a, c
    rst $00
    ccf
    rst $38
    rra
    rst $38
    dec bc
    db $fc
    call z, Call_0bf_6cff
    rst $38
    ld l, h
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    nop
    rst $38
    db $10
    rst $38
    rlca
    ld hl, sp-$01
    nop
    db $dd
    ld [hl+], a
    db $fc
    rrca
    rst $38
    nop
    db $eb
    inc d
    ld a, a
    add b
    rst $38
    cp $fd
    rst $38
    add sp, -$01
    ret z

    rst $38
    db $ec
    rst $38
    adc h
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
    db $ec
    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    and $ff
    rst $38
    rst $38
    ei
    rst $38
    ld [hl], c
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    ei
    rst $38
    cp l
    ld e, e
    pop hl
    rra
    push af
    rrca
    rst $38
    rst $38
    cp a
    rst $38
    rst $00
    ccf
    ld a, a
    add b
    rst $28
    ldh a, [$bf]
    rst $00
    db $e3
    rra
    inc de
    rst $38
    jr nz, @+$01

    dec b
    cp $1f
    rst $38
    sbc a
    rst $38
    db $e3
    cp $ff
    nop
    rst $38
    nop
    ld sp, hl
    rrca
    rrca
    ldh a, [$1f]
    ldh a, [$d9]
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    ret nz

    call nc, $bf2b
    ld e, a
    ld [hl], a
    cp a
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ldh [$1f], a
    ld e, b
    and a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $3c
    rst $38
    inc a
    rst $38
    ld e, h
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
    ldh [rIE], a
    ret nc

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    add a
    ld a, b
    ld a, a
    add b
    rst $38
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld a, [hl]
    ld [hl], l
    rst $38
    rst $38
    nop
    cp $01
    rst $38
    ldh [rIE], a
    rst $38
    ret nc

    rst $38
    add d
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    di
    ccf
    ld [hl], c
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $30
    add sp, -$01

jr_0bf_5635:
    ldh [$df], a
    ldh [$bf], a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    pop de
    ld l, $fe
    ld bc, $01fe
    xor [hl]
    ld d, c
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0bf_5635

    inc b
    ei
    ld [$00f7], sp
    rst $38
    add b
    ld a, a
    ret nc

    cpl
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld de, $02ef
    rst $38
    rst $18
    ldh [rIE], a
    rlca
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    ldh a, [rIF]
    ret nz

    ccf
    db $fc
    inc bc
    add b
    rst $38
    ret nz

    ccf
    inc [hl]
    rst $08
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ret nz

    ld a, h
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    jr z, @+$01

    rst $28
    ld a, b
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
    rst $38
    nop
    cp $01
    rst $30
    ld [$df20], sp
    db $10
    rst $28
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld b, c
    cp [hl]
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    jr @+$01

    dec bc
    rst $38
    dec bc
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    cp $04
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld hl, sp-$01
    rst $10
    ld hl, sp-$01
    nop
    ldh a, [$3f]
    ldh a, [rIE]
    jr nc, @+$01

    jr nc, @+$01

    ld e, [hl]
    rst $38
    ld e, d
    rst $38
    ld [hl], b
    rst $38
    ldh a, [$7f]
    ldh a, [rIE]
    ld hl, sp+$07
    ld a, a
    add b
    db $f4
    rst $38
    ld h, h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [$06ff]
    rst $38
    and c
    ld e, a
    ld d, c
    xor a
    and c
    ld e, a
    ld b, c
    cp a
    and a
    ld e, a
    ld b, e
    cp a
    and a
    ld e, a
    ld b, a
    cp a
    xor a
    ld e, a
    ld c, [hl]
    cp a
    adc [hl]
    ld a, l
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $00ff
    rst $38
    ld bc, $08fe
    rst $30
    dec d
    ld [$7f80], a
    ld d, c
    xor [hl]
    xor d
    ld d, l
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $6bfe
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    nop
    rst $38
    add a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    ld a, a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    ldh a, [$7f]
    add b
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld h, e
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add c
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
    cp $ff
    ldh [rIE], a
    ccf
    ret nz

    ld e, a
    and b
    adc e
    ld [hl], h
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and d
    ld e, l
    ld b, c
    cp [hl]
    dec sp
    rst $38
    ld bc, $1eff
    pop hl
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ldh a, [$80]
    rst $38
    nop
    rst $38
    add c
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ret nz

    db $fc
    rlca
    ret nz

    ccf
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $af
    pop de
    ld a, a
    add b
    cp a
    ld e, a
    rst $38
    ld a, a
    rst $38
    inc c
    rst $38
    rrca
    xor e
    ld d, a
    ld a, h
    add e
    ld hl, sp+$07
    ld a, a
    adc a
    rst $38
    ccf
    pop de
    cpl
    ld l, a
    rst $38
    ld [$98ff], sp
    ld a, a
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
    rst $18
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $07
    rst $38
    rlca
    add b
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    sbc a
    rst $38
    ld a, a
    rst $38
    nop
    pop bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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
    cp b
    cp $01
    rst $38
    ldh [$fe], a
    pop hl
    rst $38
    add c
    ret z

    scf
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    db $fc
    ld a, [$7ffd]
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$02ff]
    rst $38
    ld [bc], a
    rst $38
    cp $ff
    ld [hl], d
    rst $38
    add b
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    cp $3f
    cp $03
    rst $38
    add b
    cp $ff
    rst $38
    db $fc
    ld hl, sp-$01
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    cp $07
    rst $38
    nop
    rst $38
    db $fc
    ld l, $ff
    jp Jump_000_1ffc


    ldh [$fc], a
    inc bc
    cp $0f
    rst $38
    nop
    rst $38
    db $fc
    cp $1f
    add [hl]
    rst $38
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec a
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    push de
    ld a, [hl+]
    xor a
    ld e, a
    rst $38
    rst $38
    ld a, [$5505]
    xor d
    ld hl, sp+$07
    ret nc

    cpl
    xor d
    ld d, l
    rst $38
    ccf
    di
    rst $38
    rst $38
    nop
    sbc a
    rst $38
    cp a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e4
    ei
    ld a, [$f0f5]
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    reti


    rst $38
    call z, $8f3f
    db $fc
    rst $38
    nop
    cp a
    ret nz

    add b
    rst $38
    and b
    rst $38
    rst $08
    rst $38
    rst $38
    rlca
    db $f4
    ld a, a
    sbc e
    rst $38
    ei
    rrca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ld a, $fb
    db $fc
    rst $38
    ld hl, sp-$06
    dec a
    db $fd
    ld a, [de]
    ret nz

    rst $38
    pop bc
    cp $c0
    rst $38
    pop hl
    cp $e0
    rst $38
    ld a, [c]
    rst $38
    add sp, -$09
    ret nz

    rst $38
    ret nz

    rst $38
    add h
    rst $38
    and b
    rst $18
    call nz, $aabb
    ld d, l
    ld e, a
    xor a
    rst $38
    rst $38
    cp $ff
    ld a, d
    add l
    ccf
    ret nz

    xor a
    ld d, b
    rra
    ldh [$80], a
    ld a, a
    db $fc
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    add b
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
    db $d3
    rst $38
    rlca
    rst $38
    ld [hl-], a
    db $fd
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    cp e
    cp $ff
    nop
    db $fd
    inc bc
    rst $38
    nop
    ld d, c
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $e4
    ccf
    db $76
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp [hl]
    ld [$ff15], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$fe15], a
    ld bc, $00ff
    ld e, a
    and b
    cpl
    ret nc

    nop
    rst $38
    ld [$14f7], sp
    db $eb
    ld a, a
    rst $38
    db $fc
    ei
    ret nz

    rst $38
    ld b, l
    cp d
    ld [$c015], a
    ccf
    add b
    ld a, a
    dec d
    ld [$f50a], a
    ld d, a
    xor b
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    ld a, [hl-]
    rst $38
    ld l, d
    db $fd
    ret z

    rst $38
    ld c, c
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    push af
    rra
    db $f4
    rst $38
    and l
    ld a, a
    rlca
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    ccf
    rst $38
    ccf
    db $fd
    cp a
    rst $38
    cp e
    rst $38
    ei
    rst $30
    rst $30
    ei
    rst $38
    ld e, a
    ld [hl], l
    ld [$05fa], a
    db $fd
    ld [bc], a
    ld a, [$f507]
    ld a, [bc]
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    di
    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    nop
    rst $38
    ld b, h
    cp e
    db $e4
    dec de
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    cp b
    rst $38
    jr nc, @+$01

    sbc h
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    inc h
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $38
    pop hl
    ld e, a
    rst $38
    pop hl
    rra
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    add sp, -$01
    reti


    rst $38
    db $ed
    rst $38
    ld [hl], $ff
    or c
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld a, a
    add b
    dec bc
    db $fc
    db $ec
    rst $38
    xor b
    rst $38
    ld e, [hl]
    db $fd
    ld a, [$fbff]
    ld a, l
    inc [hl]
    ei
    ld h, d
    db $fd
    ld [hl], l
    ld a, [$fdfb]
    rst $38
    nop
    rst $38
    ldh a, [$fc]
    rst $38
    ret z

    rst $38
    ld l, b
    rst $38
    ld c, e
    db $fc
    ld b, b
    rst $38
    jr @+$01

    ld a, [hl]
    rst $38
    add $ff
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
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
    ld a, $ff
    rra
    rst $38
    rrca
    rst $38
    sbc a
    ei
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $28
    rst $38
    ld a, d
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld b, h
    rst $38
    push bc
    cp $ca
    push af
    ld e, l
    ld a, [$01fe]
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$28
    rst $18
    rra
    ei
    cp $ff
    rst $38
    xor a
    xor h
    rst $18
    push bc
    rst $38
    adc a
    db $fc
    rst $38
    nop
    rst $38
    nop
    cp e
    rst $38
    ccf
    rst $38
    rra
    ldh a, [rIE]
    nop
    cp $01
    dec sp
    cp $7f
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $88ff
    ld [hl], a
    ld [bc], a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $ff
    db $fc
    rst $38
    nop
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    call $8fff
    rst $38
    rst $18
    rst $38
    reti


    rst $38
    call c, $b0ff
    rst $38
    cp h
    rst $38
    ld a, l
    rst $38

jr_0bf_5b5c:
    add $ff
    jp nz, $83ff

    ld a, h
    ld a, a
    add b
    rst $20
    jr jr_0bf_5b5c

    ld a, [bc]
    di
    inc c
    push af
    ld a, [bc]
    cp $01
    rst $38
    nop
    add hl, bc
    rst $30
    pop bc
    rst $38
    rst $28
    rst $30
    or a
    rst $28
    cp $ff
    ccf
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ldh a, [$88]
    rst $38
    rst $38
    nop
    cp $01
    dec bc
    rst $38
    add l
    ld a, a
    rst $38
    nop
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    ld hl, sp-$04
    rlca
    call z, Call_000_003f
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3ffe
    ret nz

    nop
    rst $38
    cp $01
    rst $30
    rra
    ld a, [c]
    ld a, a
    ldh a, [$1f]
    ld a, [$ffff]
    nop
    ei
    rst $38
    ei
    cp $ff
    rst $38
    jr c, @+$01

    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    sbc b
    rst $38
    ld [$41ff], sp
    cp [hl]
    xor a
    ld d, b
    rst $20
    jr @-$1c

    dec e
    sub $29
    or d
    ld c, l
    ld d, e
    xor h
    ld a, d
    add l
    push af
    ld a, [bc]
    cp a
    rst $00
    ld [hl], a
    adc a
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    daa
    ld hl, sp-$08
    rlca
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    rra
    rst $38
    ld a, a
    ld a, a
    db $fc
    ld a, $ff
    nop
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $30
    rst $38
    add b
    ld b, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld l, a
    rst $38
    ld a, a
    rst $38
    cp h
    rst $38
    rrca
    ldh a, [$1f]
    ldh [rP1], a
    rst $38
    add b
    ld a, a
    sub b
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    db $fd
    di
    ld h, c
    rst $38
    jr nz, @+$01

    ld hl, $ffff
    rst $38
    sbc h
    ld a, a
    ld b, h
    cp e
    xor d
    ld d, l
    inc d
    db $eb
    add d
    ld a, a
    ld c, e
    cp a
    ccf
    rst $38
    rst $38
    cp a
    rra
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ldh a, [rIF]
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld b, e
    db $fc
    rst $38
    nop
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rlca
    rst $38
    add b
    nop
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    nop
    sbc a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld hl, sp-$01
    rst $38
    ret nz

    db $fc
    inc bc
    ld [bc], a
    rst $38
    inc b
    rst $38
    add l
    rst $38
    cp $ff
    cp $07
    jp $ffff


    inc bc
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    xor b
    rst $18
    ld d, h
    xor e
    xor b
    ld d, a
    ld b, a
    cp a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fd
    rra
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    ldh a, [rIE]
    ret nc

    ld a, a
    ldh a, [rIE]
    push af
    rst $38
    ld a, a
    ld hl, sp-$01
    nop
    sub c
    ld a, a
    ldh a, [rIF]
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    rrca
    ldh [rIE], a
    pop bc
    rst $38
    rst $38
    nop
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    ld bc, $07ff
    ldh [$1f], a
    rst $38
    nop
    rst $38
    ret nz

    ld hl, sp+$07
    ld b, b
    rst $38
    inc hl
    rst $38
    ld a, a

jr_0bf_5d09:
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    jr c, jr_0bf_5d09

    ldh a, [rIF]
    ccf
    rst $38
    inc a
    rst $38
    ld [hl], h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld b, h
    ei
    ld h, b
    rst $38
    db $fc
    ld a, a
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    ld h, h
    rst $38
    db $f4
    rst $38
    or b
    rst $38
    jr nz, @+$01

    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret c

    ld a, a
    ld hl, sp-$01
    ld l, c
    rst $38
    add sp, $3f
    rst $38
    nop
    rst $38
    rrca
    ld a, [c]
    ld a, a
    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    di
    rra
    di
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
    ccf
    rst $38
    rst $38
    rra
    ld l, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ld e, $ff
    dec b
    rst $38
    add hl, sp
    rst $38
    or l
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    ld l, [hl]
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    call nz, $bfff
    rst $38
    ld a, e
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ld e, $ff
    inc e
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [c]
    rrca
    ld a, d
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    ld a, a
    ld de, $30ff
    rst $38
    jr nc, @+$01

    ccf
    rst $38
    ld a, $f1
    ldh a, [rIF]
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0912
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0bf_5e10

    ld a, [de]
    dec de
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bf_5e27

    ld [hl+], a
    inc hl
    inc h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_0bf_5e10:
    dec h
    ld h, $27
    jr z, jr_0bf_5e3e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, $2f
    jr nc, jr_0bf_5e55

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bf_5e27:
    dec [hl]
    ld [hl], $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    scf
    jr c, jr_0bf_5e6c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_0bf_5e3e:
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0bf_5e55:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    add hl, bc
    add hl, bc
    add hl, bc

jr_0bf_5e6c:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    db $fd
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
    ccf
    rrca
    rra
    rrca
    sbc $fe
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rra
    inc b
    dec bc
    inc d
    ld bc, $11ee
    add $c5
    sub b
    ret


    sub b
    adc $d7
    rst $10
    rst $20
    db $ed
    di
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
    adc l
    rst $38
    or l
    cpl
    inc sp
    ccf
    inc de
    ld a, a
    rrca
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    rrca
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    or e
    ld a, [hl]
    or e
    ld a, a
    ld h, a
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc a
    ret c

    ld e, l
    inc bc
    dec c
    ld b, e
    add sp, -$20
    ld a, b
    ldh a, [$7a]
    ld a, a
    rst $30
    ld l, [hl]
    rst $20
    db $db
    db $dd
    jp hl


    ld e, c
    dec a
    dec e
    add hl, hl
    ld a, b
    ld bc, $e6fe
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
    ret nz

    ret nz

    ldh [$c0], a
    call nc, $e0e0
    ldh [$d6], a
    ldh [$c5], a
    ret nz

    cp $e2
    or $f3
    db $dd
    db $e3
    inc bc
    adc a
    adc d
    rst $00
    add c
    rst $00
    rst $00
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $30
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    ei
    add sp, -$11
    db $fc
    ld a, a
    db $fc
    ld a, a
    ld a, $7f
    sbc a
    ccf
    cp [hl]
    rrca
    sub b
    inc bc
    and c
    rst $00
    sub a
    rst $20
    di
    db $e3
    db $e3
    di
    ld a, [$70e0]
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    add e
    di
    pop af
    ei
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $38
    db $fd
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    rst $30
    ld sp, hl
    db $e3
    ld [$fefd], a
    db $fd
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
    ccf
    ld a, a
    rra
    ccf
    inc bc
    ei
    db $e3
    ld sp, hl
    ld h, c
    ld a, c
    jr nc, jr_0bf_619f

    db $10
    ld e, $c1
    inc e
    dec bc
    sub c
    pop de
    add d
    pop bc
    add [hl]
    pop bc
    add d
    ret nz

    add e
    inc bc
    ld hl, $b3e1
    ld sp, hl
    ld hl, sp-$04
    db $fc
    cp $fd
    rst $38
    sbc $ef
    sbc $40
    rlca
    db $10
    dec c
    ld a, [hl-]
    jr jr_0bf_61a3

    nop
    inc bc
    jr jr_0bf_619c

    rra
    ld c, $07
    ld c, [hl]
    rlca
    ld e, h
    dec h
    ld a, b
    db $e4
    ldh a, [$c0]
    ei
    ret nz

    cp $e1
    ld sp, hl

jr_0bf_619b:
    pop hl

jr_0bf_619c:
    ld a, a
    di
    db $fd

jr_0bf_619f:
    ld [hl], e
    ld sp, hl
    jr c, jr_0bf_619b

jr_0bf_61a3:
    sbc h
    ld hl, sp-$24
    ld a, b
    db $fc
    dec l
    cp $79
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    call c, $dcfe
    rst $38
    xor $ef
    rst $28
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, e
    db $fd
    ld a, e
    db $fd
    ccf
    ld a, a
    rra
    rra
    ld e, a
    rrca
    ld c, a
    adc a
    ld d, a
    xor a
    sbc e
    ld a, a
    dec de
    rra
    add a
    rrca
    rst $00
    rst $28
    pop bc
    rst $20
    ld [c], a
    push af
    ld sp, $2cea
    inc sp
    adc h
    jp $c9c0


    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $df
    ld h, $fe
    rst $30
    rst $28
    rst $18
    rst $38
    rst $08
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $18
    rra
    jp $cf0f


    rlca
    adc a
    ld h, a
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
    pop hl
    rra
    rst $38
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ccf
    ld e, a
    rrca
    rra
    sbc a
    rra
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    cp a
    ld e, a
    cpl
    rlca
    ld [$1407], sp
    inc bc
    ret


    add d
    or c
    jp nz, $c0a5

    ld h, h
    sub e
    ld [hl], c
    add e
    ld [hl], c
    inc bc
    sub c
    inc bc
    db $fd
    inc bc
    db $ed
    inc de
    ld e, c
    add a
    ret


    sub a
    add $bf
    rst $38
    adc $6f
    cp $fa
    db $fd
    rst $38
    ld hl, sp-$06
    db $fc
    cp $f9
    db $fc
    ld sp, hl
    db $fc
    ld a, [c]
    ld a, [$fbff]
    db $fc
    cp $ff
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
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
    db $fd
    ld a, [hl]
    push af
    dec sp
    ccf
    ei
    ld a, [hl]
    rst $38
    cp $7f
    cp h
    ld a, a
    adc [hl]
    ld sp, hl
    cp $f9
    cp $f8
    db $fd
    cp $ff
    rst $38
    ld a, e
    rst $38
    ld a, [bc]
    ret c

    adc [hl]
    call z, $e4de
    cp h
    rst $38
    cp e
    db $fd
    reti


    push af
    rst $08
    ei
    rst $00
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    rst $38
    ld e, b
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$ffff]
    rst $38

jr_0bf_62c4:
    ld a, [$fdff]
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$f1ff]
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    sbc a
    ccf
    rra
    sbc a
    rst $18

jr_0bf_62d9:
    ccf
    rrca
    cpl
    ld [hl], a
    rrca
    ld a, a
    rst $00
    or e
    ld [hl], a
    dec sp
    ld b, e
    db $d3
    add hl, hl
    sbc l
    inc bc
    dec bc
    add a
    ld l, a
    rlca
    adc a
    daa
    adc a
    rlca
    ld hl, $4097
    or e
    jr nc, jr_0bf_62d9

    ld d, [hl]
    or c
    reti


    ldh [$e8], a
    ret nz

    ret nc

    ldh [$d0], a
    ldh [$c0], a
    adc b
    sbc [hl]
    jr c, jr_0bf_62c4

    ld a, [hl]
    cp $fd
    cp $fc
    cp e
    db $f4
    dec sp
    push bc
    inc e
    db $e3
    inc e
    db $e3
    ld e, d
    cp a
    ld c, a
    cpl
    rla
    ld h, [hl]
    rst $18
    ld [c], a
    db $db
    rst $00
    ld [hl], e
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    cp a
    ccf
    adc a
    cp a
    ld c, a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
    rst $38
    ld h, a
    rst $38
    ld hl, $55ff
    rst $38
    adc d
    rst $38
    ld d, [hl]
    rst $38
    xor [hl]
    rst $38
    ld e, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld [$75ff], a
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    and d
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $fbff
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
    ld hl, sp-$01
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
    ld a, a
    rst $38
    ccf
    cp a
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rst $08
    ccf
    ld c, a
    rra
    adc a
    rrca
    rst $00
    rlca
    ld b, e
    add a
    rst $20
    rla
    rst $08
    daa
    db $db
    daa
    rst $30
    inc sp
    cp e
    rst $38
    rst $18
    sbc a
    sbc a
    ld a, a
    ccf
    ld a, a
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
    rst $38
    rst $38
    rrca
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    ld [hl], d
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    ld b, a
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld a, l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, l
    rst $38
    cp d
    rst $38
    ldh a, [rIE]
    cp e
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

Jump_0bf_63ff:
    rst $38
    ld [$dfff], a
    rst $38
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
    db $fc
    cp e
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
    xor $ff
    push af
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    db $eb
    cp $ff
    db $fc
    cp $e1
    ld a, l
    di
    ld hl, sp-$51
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
    ld hl, $51ff
    rst $38
    ld [hl-], a
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    cp d
    rst $38
    rst $10
    rst $38
    xor d
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38

jr_0bf_647c:
    and b
    rst $38
    ld d, d
    db $fd
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    or d
    rst $38
    rst $00
    jr c, jr_0bf_647c

    db $fc
    rst $30
    db $fc
    db $fd
    ld b, $ff
    ld e, $fe
    pop hl
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ldh a, [$fe]
    rst $38
    rst $30
    rst $38
    ld a, [$d5ff]
    db $eb
    xor a
    ld hl, sp+$57
    db $fc
    cp a
    rst $38
    db $fd
    cp $af
    ld hl, sp+$7f
    ret nz

    rst $38
    add b
    ld a, h
    add e
    rst $38
    nop
    rra
    ldh [$3c], a
    jp Jump_000_07fc


    ld a, [$f50f]
    rra
    xor a
    rst $38
    ld d, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    db $dd
    rst $38
    ld hl, sp-$01
    ld c, c
    rst $38
    ld [hl+], a
    rst $38
    ld d, a
    rst $38
    xor $ff
    rst $18
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld a, l
    rst $38
    ld a, [$f7ff]
    rst $38
    xor d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    add l
    ld a, a
    add e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    rst $38
    cp a
    ld e, a
    rst $28
    rra
    ccf
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ccf
    rst $38
    jp $fdff


    xor a
    rst $38
    ld d, a
    cp $00
    rst $38
    ld hl, sp+$07
    adc a
    ldh a, [rIE]
    ld bc, $07ff
    add b
    ld a, a
    add e
    ld a, a
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $0dff
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], h
    bit 7, [hl]
    add c
    cp $81
    cp $81
    rst $38
    nop
    ld [bc], a
    db $fd
    ld e, a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    rst $00
    rst $38
    xor a
    rst $38
    push de
    rst $38
    cp $ff
    rst $30
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld d, c
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld e, l
    rst $38
    cp $ff
    rst $30
    rst $38
    xor e
    rst $38
    ld b, l
    rst $38
    jr nz, @+$01

    ld c, b
    rst $38
    and [hl]
    rst $38
    add $ff
    add d
    rst $38
    ld h, a
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
    ld a, a
    rst $38
    add b
    add a
    rst $38
    add e
    cp $ff
    ld bc, $1fe3
    dec b

jr_0bf_65bf:
    rst $38
    rst $38
    nop
    sbc a
    ldh [$87], a
    ld hl, sp-$80
    rst $38
    sub b
    ld l, a
    rlca

jr_0bf_65cb:
    ld hl, sp+$7f
    add b
    ret nz

    ccf
    ld a, a
    add b
    ccf
    ldh a, [$80]
    ld a, a
    nop
    rst $38
    add hl, bc
    rst $30
    ld c, $fd
    dec b
    ld a, [$fa05]
    nop
    rst $38
    ld a, h
    rst $38
    ld l, a
    sbc a
    ldh [$1f], a
    ret nc

    cpl
    jr nz, jr_0bf_65cb

    nop
    rst $38
    jr nc, jr_0bf_65bf

    ccf
    rst $08
    ld a, a
    rst $38
    cp e
    ld b, a
    inc de
    db $ec
    pop hl
    cp $e7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $f4
    rst $38
    db $eb
    rst $38
    db $dd
    rst $38
    ld a, [$7bff]
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [hl], l
    rst $38
    jr nz, @+$01

    ld e, l
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [$41ff], a
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $38
    ld c, $f1
    inc h

jr_0bf_6631:
    db $db
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0bf_6638:
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp $01ff


    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    ccf
    ret nz

    ldh a, [rIF]
    nop
    rst $38
    scf
    rst $08
    cp $01
    rst $38
    ld h, b
    rst $38
    nop
    jr c, @-$37

    jr c, jr_0bf_6631

    ld [hl], a
    sbc b
    ld b, b
    cp a
    pop bc
    ld a, $e1
    rst $38
    ld e, h
    and e
    db $fc
    ei
    rst $38
    rst $38
    ld hl, sp+$07
    rst $20
    rra
    rst $38
    rra
    rst $38
    ld c, $fd
    cp $ce
    ld sp, $b7c8
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    di
    rst $38
    cp a
    rst $38
    ld b, a
    rst $38
    ld [hl+], a
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld [hl], c
    rst $38
    jr nz, @+$01

    ld d, l
    rst $38
    xor [hl]
    rst $38
    dec e
    rst $38
    cp $ff
    rst $30
    rst $38
    ei
    rst $38
    inc d
    rst $38
    ld [bc], a
    rst $38
    rla
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, $ff
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp $83ff


    rst $38
    add c
    rst $38
    add a
    rst $38
    db $e3
    ccf
    di
    rrca
    db $e3
    rra
    add e
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    ld a, a
    add e
    jp $933f


    ld l, a
    dec de
    rst $38
    ld a, c
    add a
    add e
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    di
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    pop de
    xor a
    reti


    daa
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    add h
    ld a, e
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    cp a
    rst $18
    rst $38
    rst $18
    rst $28
    sbc $de
    cp $d4
    ei
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$f6], a
    ldh [$ee], a
    cp $ec
    db $fc
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    db $e3
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    add e
    call c, $ff81
    pop hl
    ld sp, hl
    pop hl
    pop hl
    db $e3
    pop af
    push bc
    ei
    nop
    ld sp, hl
    dec b
    ld hl, sp-$01
    ld bc, $8b47
    rlca
    inc bc
    add hl, bc
    rst $10
    ld bc, $0081
    rrca
    dec a
    ld e, [hl]
    ld a, $5f
    ld a, $5f
    rst $20
    ld e, $5b
    and h
    add b
    ld a, a
    ld e, h
    cp a
    cp e
    ld a, a
    jr @+$01

    ld [de], a
    ld sp, hl
    cp e
    db $d3
    ccf
    rst $30
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
    cp $c4
    rst $38
    call nz, Call_000_07ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [hl], $ff
    db $76
    cp $3e
    rst $38
    ld b, b
    sbc [hl]
    adc h
    db $10
    ld a, c
    db $f4
    db $e4
    ret c

    ld hl, sp-$80
    cp l
    ret nz

    ld e, [hl]
    add c
    ld a, b
    or b
    add d
    ld sp, hl
    rrca
    db $d3
    rlca
    inc bc
    cpl
    inc bc
    and a
    inc bc
    dec hl
    ld [hl], a
    rst $28
    ld [hl], a
    and [hl]
    ld a, a
    xor a
    ld a, a
    rst $38
    ld a, a
    cpl
    rst $38
    ccf
    rst $38
    xor a
    call c, $f78c
    adc [hl]
    rst $20
    rst $08
    rst $38
    sbc $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    ei
    ld [hl], c
    di
    ld [hl], e
    cp $fb
    cp $f3
    or $c1
    cp $c1
    call nz, $85c0
    add c
    adc c
    add e
    sbc c
    dec sp
    rst $00
    ld a, a
    rr c
    rst $08
    adc c
    sbc a
    cp c
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    add hl, bc
    cp $c3
    inc e
    ret nc

    rra
    cp d
    ld a, c
    ld sp, hl
    ld a, d
    db $fc
    ei
    ldh a, [$f8]
    call c, $fee2
    push hl
    jp hl


    db $fc
    add $f9
    push bc
    jp z, $d3c1

    pop hl
    ret nc

    rst $00
    pop af
    pop af
    rst $20
    ld hl, $60eb
    rst $38
    ld h, b
    rst $38
    pop bc
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    sbc h
    db $fc
    add b
    ldh a, [$c0]
    ldh [$c1], a
    ld b, b
    ld c, $40
    inc [hl]
    nop
    ccf
    nop
    ccf
    inc bc
    inc de
    rra
    ld a, [de]
    rlca
    add b
    rlca
    ret nz

    rlca
    or b
    nop
    ldh [$fc], a
    add b
    db $fc
    db $fc
    ld hl, sp-$18
    db $fc
    ret nz

    db $ed

jr_0bf_684a:
    db $ec
    rst $18
    cp h
    rst $18
    sbc h
    rst $18
    db $fd
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$fa]
    ld [c], a
    pop af
    cp $e3
    db $e3
    rst $38
    db $e3
    rst $38
    reti


    rst $38
    push af
    rst $38
    ldh [rIE], a
    ret nz

    pop af
    add b
    ldh [$a8], a
    jp nz, Jump_000_07d4

    adc a
    ld b, [hl]
    call c, $110f
    dec c
    add hl, de
    ld bc, $8931
    inc [hl]
    add b
    inc b
    inc hl
    rra
    ldh [$3f], a
    jp nz, $e312

    ld l, c
    add [hl]
    inc b
    rst $28
    rra
    xor $de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    ld a, a
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rra
    ld e, a
    rrca

jr_0bf_68ba:
    or e
    rlca
    nop
    rrca
    ld c, c
    ld c, $00
    dec c
    pop bc
    nop
    and b
    nop
    db $10
    add b
    jr nz, jr_0bf_684a

    ld hl, $1000
    inc bc
    ld d, $01
    adc b
    db $10
    jr z, jr_0bf_68d4

jr_0bf_68d4:
    stop
    add b
    jr nz, jr_0bf_68ba

    nop
    ld bc, $0040
    ld bc, $0001
    ld bc, $06c1
    pop bc
    add e
    ld b, b
    and c
    ld bc, $8b47
    ld c, l
    adc e
    ld h, b
    rrca
    call z, $f83f
    rst $38
    ld hl, sp-$04
    pop af
    cp $70
    rst $38
    ld h, c
    cp $e8
    ld h, a
    rst $20
    db $e4
    call nz, $deef
    rst $20
    cp $b7
    add sp, -$49
    ld [$f2f1], a
    reti


    ret nc

    inc a
    jp nc, $b439

    ld sp, hl
    ei
    cp c
    cp h
    ld a, a
    ld a, [hl]
    ld a, a
    ld h, [hl]
    rst $38
    db $76
    and $e4
    db $fc
    ldh [$ed], a
    ld [$ffed], a
    ret c

    ret nz

    db $fc
    jp z, $9ca4

    jp $cfc1


    and c
    sbc b
    ret nz

    add b
    ld b, b
    sub b
    nop
    or b
    inc bc
    db $fc
    ld c, $fe
    ld a, l
    rst $28
    pop hl
    rst $38
    ret


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
    db $fc
    cp $f8
    cp $fc
    cp $9a
    db $fc
    pop bc
    ldh [$50], a
    ret nz

    nop
    nop
    inc c
    ld [$4c18], sp
    ld [de], a
    add b
    inc bc
    add b
    ld e, $3d
    ld a, $3f
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    cp $ff
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
    ld a, a
    db $fd
    rst $38
    db $fd
    db $fc
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
    or e
    cp e
    ld a, d
    ld sp, $f071
    ld a, [c]
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$06
    db $fd
    ei
    db $fd
    inc hl
    rst $38
    rrca
    ld a, a
    cp [hl]
    rra
    rrca
    sbc [hl]
    inc e
    adc [hl]
    dec bc
    ld e, $5e
    ld e, $1f
    sbc [hl]
    db $db
    ld l, a
    add hl, bc
    jp Jump_000_13e3


    pop hl
    db $e3
    dec l
    db $e3
    dec c
    pop hl
    and b
    pop hl
    ret z

    db $e3
    ld b, b
    rst $10
    inc bc
    sbc a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f4
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    rst $38
    ld sp, hl
    or d
    ld a, a
    scf
    ld a, [de]
    rla
    ld [bc], a
    rlca
    rlca
    ld a, h
    inc bc
    db $fc
    ld e, h
    rst $38
    inc e
    rst $38
    inc a
    ld c, h
    rrca
    adc h
    rrca
    dec bc
    dec e
    rra

jr_0bf_69f7:
    ld e, a
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    or $ec
    db $e4
    xor $e1
    cp $ec
    di
    jp hl


    rst $20
    rst $20
    db $e3
    rst $28
    rst $38
    rst $08
    rst $38
    sbc h
    rst $38
    jp c, $d595

    ld [bc], a
    ld b, e
    or [hl]
    ld l, a
    ld [hl], $ae
    ld a, a
    cp $3f
    rst $38
    ld a, $ff
    cp $ff
    cp $1e
    ld a, $9d
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    rst $38
    ld a, [hl]
    ld a, a
    rst $38
    ld a, a
    ld a, l
    cp $7c
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $38
    res 7, a
    nop
    adc a
    ld [hl], $03
    ld [c], a
    rlca
    ld bc, $0703
    nop
    ld bc, $cb03
    rlca
    res 0, a
    adc c
    add e
    jr nz, jr_0bf_69f7

    pop bc
    nop
    ret z

    inc b
    jr c, jr_0bf_6a7a

jr_0bf_6a7a:
    nop
    inc c
    add h
    ld bc, $1403
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff
    cp $fe
    sbc $fe
    cp $fe
    cp $fc
    ld [hl], b
    db $fc
    pop af
    cp $f9
    cp $79
    rst $38
    inc hl
    ld e, a
    inc bc
    rra
    ld c, l
    rrca
    rra
    cpl
    rlca
    rrca
    xor a
    ld d, a
    rst $00
    rra
    daa
    adc a
    rrca
    add a
    rrca
    add a
    rst $08
    add a
    or a
    rst $00
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, a
    cp a
    ld a, a
    db $fd
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $28
    ld l, h
    xor $68
    ld l, [hl]
    ld e, b
    dec d
    jp z, Jump_0bf_70ba

    ld h, e
    db $e4
    db $ec
    pop hl
    jp nz, $c8ed

    ret c

    sub b
    db $fc
    ld [hl], e
    cp h
    inc sp
    db $fc
    push hl
    ei
    ld sp, hl
    di
    pop hl
    ei
    rst $28
    di
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    dec e
    rst $38
    add hl, sp
    rst $38
    rst $38
    ccf
    cp $3f
    ccf
    rst $38
    cp $fe
    db $fc

jr_0bf_6af7:
    cp $f0
    db $fc
    db $e4
    call z, $ce00
    and e
    rlca
    ld b, $27
    add l
    inc c
    ret nz

    dec b
    add hl, bc
    rla
    sbc e
    rra
    ld e, [hl]
    sbc a
    rst $38
    rra
    rst $18
    ccf
    nop
    ld bc, $0000
    ld c, b
    ld bc, $0000
    ld de, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc h
    inc bc
    db $10
    ld b, $04
    ld e, $4c
    rlca
    sbc c
    ld bc, $c389
    db $d3
    add a
    adc a
    sub a
    adc [hl]
    or a
    cp a
    cp $ff
    db $fc
    ld hl, sp-$04
    ld a, [$f2fc]
    pop af
    rst $20
    ld a, [c]
    rst $20
    or $e3
    cp $f1
    ld a, [c]
    db $d3
    db $fc
    pop de
    xor $d3
    pop hl
    sbc e
    pop bc
    inc de
    add e
    add a
    inc bc
    rlca
    ld [de], a
    ld b, $3e
    db $f4
    ccf
    ld l, $7b
    sbc $1b
    sbc a
    inc e
    sbc [hl]
    jr jr_0bf_6af7

    rra
    rra
    ld b, $50
    ld l, $1d
    db $fc
    ld c, l
    cp $0e
    cp $5f
    cp [hl]
    db $76
    cp h
    inc h
    cp $7f
    and $e7
    cp $c7
    ei
    rst $18
    ld hl, sp-$1f
    db $fc
    add a
    db $ec
    adc a
    rra
    rrca
    sbc a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld d, a
    cp a
    ld h, a
    sbc a
    scf
    rst $38
    scf
    rst $38
    db $dd
    ccf
    sbc $ff
    sbc $ff
    adc a
    rst $38
    rla
    rst $28
    ld h, e
    add a
    db $dd
    ld h, $4c
    cp h
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
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0bf_6bd1

jr_0bf_6bd1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bf_6be1

jr_0bf_6be1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_0bf_6bf1

jr_0bf_6bf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bf_6c01

jr_0bf_6c01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bf_6c11

jr_0bf_6c11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
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
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
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
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop

Call_0bf_6cff:
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
    ld bc, $0202
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
    nop
    nop
    ld b, $01
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
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
    ld bc, $0306
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0306
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, sp
    rst $30
    db $fc
    cp e
    rst $18
    rst $38
    ld [hl], a
    ei
    ld [hl], e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $e3
    cp $e1
    rst $38
    pop af
    rst $38
    rst $20
    cp $e0
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$5f
    ldh a, [rIE]
    db $fc
    rst $38
    dec e
    ld a, [hl]
    db $ec
    ccf
    cp $9f
    cp $ff
    cp $ff
    cp $ff
    cp $4f
    cp $67
    ld a, h
    ld a, a
    ld a, l
    ld e, $fd
    ld [hl], d
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp-$01
    jr nz, @+$01

    nop
    rst $38
    rlca
    ei
    rrca
    ccf
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, $ff
    cp $ff
    db $fc
    rst $38
    ret nz

    ld a, a
    db $fc
    ld a, a
    ldh a, [$ef]
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ld [hl], $ff
    ld a, d
    rst $38
    ldh a, [rIE]
    ld a, e
    ccf
    add hl, bc
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
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
    cp [hl]
    rst $38
    cp a
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ccf
    xor $3f
    or $7f
    db $e3
    ccf
    add $1f
    rst $28
    rra
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bf_6ef7:
    rst $38
    db $fd
    cp $fd
    or $ff
    and b
    rst $38
    or b
    rst $38
    pop bc
    db $fc
    rst $00
    rst $28
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fd
    ld a, a
    di
    xor a
    rst $38
    jp Jump_000_1bff


    rst $38
    call c, $e0ff
    rst $38
    ldh [rIE], a
    pop bc
    cp $e3
    db $fc
    rst $38
    ret nz

    cp $01
    ld hl, sp+$3f
    db $ed
    rst $38
    rst $08
    rst $38
    rst $00
    ld hl, sp+$67
    rst $38
    add h
    rst $38
    ld [$38ff], sp
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, jr_0bf_6ef7

    inc e
    rst $38
    ld e, b
    xor a
    inc c
    cp a
    ld e, h
    xor a
    adc h
    rst $38
    inc c
    rst $38
    xor $9f
    call nc, $d6af
    rst $20
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $f7
    ld a, $f3
    dec sp
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    rst $18
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    rst $28
    rst $38
    jp $cfff


    cp a
    ld a, a
    db $fc
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    ld l, $7f
    add h
    rst $38
    ld c, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    pop hl
    rst $38
    add c
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    inc bc
    sbc a
    rst $38
    adc a
    rst $38
    ld a, [hl]
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    sbc a
    ldh [$fd], a
    ld e, $e8
    rst $38
    inc bc
    db $fd
    dec [hl]
    rst $08
    ld a, h
    add a
    adc l
    adc [hl]
    rlca
    nop
    add [hl]
    nop
    res 6, h
    sbc h
    db $e3
    rst $00
    ld hl, sp-$20
    db $fc
    add sp, -$01
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
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
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
    adc $f1
    cp a
    pop bc
    db $fd
    inc bc
    rst $38
    rra
    jp $df7f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    rst $38
    ldh a, [$fe]
    rst $08
    xor $ff
    xor $9f
    db $fd
    rst $18
    rst $38
    rra
    ld sp, hl
    ccf
    ld sp, hl
    rst $38
    rst $38
    db $fc
    db $fd
    di
    db $fd
    di
    ld a, a
    rst $00
    rst $08
    ccf
    add a
    rst $38
    cp e
    ld a, a
    rst $38
    rst $38
    ld [hl], e
    rst $38
    rst $20
    rst $38
    and e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld e, $21
    rst $38
    nop
    ld e, e
    db $e4
    dec de
    jr nz, jr_0bf_705a

    ret nz

    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$fe], a
    di
    db $fc
    ldh a, [rIE]
    xor $ff
    cp $ff
    ldh a, [rIE]
    db $f4
    rst $38

jr_0bf_705a:
    rst $30
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    db $fd
    ld hl, sp-$65
    ldh [$7b], a
    add a
    di
    rra
    di
    ccf
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jr @+$01

    rrca
    rst $38
    rst $08
    rst $38
    adc a
    cp $f7
    db $fd
    rst $10
    db $fd
    rst $38
    pop af
    rst $38
    pop bc
    ei
    rlca
    ldh a, [$7f]
    ld [hl], $ff
    ld [hl-], a
    rst $38
    ld e, a
    ldh [rIE], a
    rst $08
    rra
    rst $20
    rst $38
    rst $20
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
    db $fc
    rst $38
    cp $f9
    rst $20
    ld hl, sp-$0c
    dec bc
    rst $38
    nop
    ldh a, [rIF]
    ld b, b
    cp a
    cp b
    ld b, a

Jump_0bf_70ba:
    ret nc

    rrca
    ld hl, sp+$07
    ld l, h
    inc de
    ld [hl], b
    rst $38
    pop af
    rst $38
    cp $ff
    db $fd
    cp $fd
    ld a, [c]
    ld a, [$ae87]
    ld e, a
    xor l
    ld c, h
    ld bc, $f8d0
    ld hl, sp-$1a
    add sp, $2c
    ld [hl+], a
    adc h
    or b
    ld a, [c]
    adc d
    ld [$a048], sp
    and b
    cp $c1
    ld a, [$fa07]
    ld e, a
    ld a, [$f17f]
    rst $38
    rst $28
    rst $30
    rst $18
    cp a
    cp a
    rst $38
    add hl, sp
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    cp l
    rst $38
    rlca
    rst $38
    pop hl
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    rst $30
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$df]
    jr nz, @-$3b

    inc a

jr_0bf_7110:
    pop hl
    cp $f0
    rst $38
    jp nc, $faff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bf_7123:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $20
    ld l, h
    sub e
    ld b, h
    cp e
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    dec b
    ei
    ld c, $f1
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    cp a
    nop
    ld a, d
    dec c
    db $fd
    jr nc, jr_0bf_7110

    ldh [$1f], a
    ld hl, sp+$07
    call z, $ac12
    ld [hl], e
    rst $38
    nop
    rst $30
    ld [$0cf3], sp
    rst $30
    ld [$6798], sp
    jr c, jr_0bf_7123

    add a
    ld a, a
    sbc l
    ld a, [hl]
    cp $ff
    ld sp, hl
    rst $38
    db $e3
    rst $38
    sbc e
    rst $38
    ld a, [de]
    rst $38
    cp l
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    rst $38
    ldh a, [$fe]
    rst $08
    sbc $bf
    xor $ff
    ld hl, sp-$01
    cp [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_0bf_718e:
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    daa
    sbc $ff
    ldh [rIE], a
    rrca
    ei
    db $fc
    rst $38
    add a
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    add h
    rst $38
    adc a
    rst $38
    xor h
    db $d3
    cp a
    nop
    ld a, $01
    ld e, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    inc de
    inc de
    inc h
    db $e4
    nop
    ld [$a606], sp
    nop
    ret nz

    rst $28
    db $10
    db $f4
    dec bc
    push af
    rrca
    add $3d
    ccf
    jp $8f7f


    rst $38
    ccf
    rst $38
    ld a, a
    ld a, b
    rst $38
    di
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    ld c, h
    rst $38
    jp $c6fe


    ld sp, hl
    call c, $f4e7
    rrca
    ldh a, [rIE]
    di
    rst $38
    ld c, $ff
    jr @+$01

    ld [hl], h
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    push af
    adc $e7
    sbc b
    sbc a
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rst $38
    ld d, $57
    add sp, -$0b
    ld l, d
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh a, [$fc]
    add e
    ldh [$1f], a
    ld hl, sp-$01
    ld a, [c]
    adc l
    db $e3
    inc e
    ei
    db $f4
    dec sp
    call nz, $cc33
    db $db
    inc h
    rra
    ldh [$80], a
    rst $38
    rlca
    ld hl, sp+$3f
    ldh [$3c], a
    jp $ff00


    or c
    ld a, a
    sbc [hl]
    ld a, a
    ld e, a
    cp $b8
    ldh a, [$c3]
    ld bc, $07c9
    ld a, $d5
    ld a, a
    db $e3
    ccf
    rst $08
    rst $38
    ccf
    rst $28
    ld a, a
    db $fc
    rst $38
    di
    rst $38
    ret nz

    rst $38
    inc hl
    rst $38
    push hl
    rst $38
    rst $18
    ldh [rIF], a
    rst $38
    rrca
    rst $38
    rst $20
    rst $38
    ld c, a
    rst $38
    add a

jr_0bf_7265:
    db $fc
    ld e, $e3
    ldh [$df], a
    ret nc

    ccf
    ret nc

    rst $38
    db $10
    rst $38
    or b
    rst $38
    cp b
    rst $30
    jr nc, @+$01

    cp e
    rst $38
    cp $f9
    rst $18

jr_0bf_727b:
    ldh [$7f], a
    add b
    pop af
    ld c, $00
    rst $38
    nop
    rst $38
    jr nz, jr_0bf_7265

    ld a, [bc]
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    ld a, a
    add c
    rst $38
    rlca
    rst $38
    ld a, a
    pop af
    cp $e4
    db $db
    ld b, [hl]
    cp c
    db $fd
    ld [bc], a
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $20
    jr jr_0bf_727b

    ld sp, $10ef
    ld a, a
    add b
    rst $38
    nop
    ld [bc], a
    db $ec
    dec d
    add sp, $34
    bit 6, e
    adc a
    db $ec
    rra
    db $ec
    rra
    rst $00
    rst $00
    adc a
    adc a
    rra
    rra

jr_0bf_72c6:
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add c
    rst $38
    rra
    rst $38
    ei
    rst $08
    rst $38
    ldh a, [rIE]
    rst $38
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    nop
    cp $ff
    cp $ff
    ld hl, sp-$01
    srl a
    xor a
    rst $18
    ld hl, sp+$07
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $0ff0
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$23
    call c, Call_000_18e7
    rst $20
    jr jr_0bf_72c6

    jr c, jr_0bf_7307

    ld sp, hl
    ld [bc], a
    db $fd
    rra
    rst $38
    rst $38

jr_0bf_7307:
    cp $b8
    rst $00
    add hl, de
    and $cf
    ldh a, [$fe]
    pop af
    ei
    call nz, Call_000_0cf3
    xor $11
    ld l, h
    sub e
    inc a
    jp $c13e


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$77

    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$60], a
    sbc a
    adc b
    ld [hl], a
    dec de
    rst $20
    ldh [$1f], a
    ret nz

    ccf
    or b
    ld c, a
    add c
    ld a, a
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [$e1ff]
    rst $38
    add e
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    inc b
    rst $38
    rst $38
    ldh a, [$f9]
    rlca
    db $e3
    ld a, h
    rst $38
    add c
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    ld c, a
    or b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    ld hl, sp-$19
    rst $38
    rst $08
    cp $bf
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
    add hl, bc
    or $09
    or $00
    rst $38
    cp h
    ld b, e
    nop
    rst $38
    dec bc
    rst $30
    jr nc, @+$01

    call z, $06f3
    ld sp, hl
    inc a

jr_0bf_7389:
    jp Jump_0bf_718e


    db $fc
    inc bc
    ld a, b
    add a
    ret z

    scf
    rlca
    ld hl, sp+$07
    ld hl, sp+$36
    ret


    ld a, $c1
    rlca
    rst $38
    push bc
    dec sp
    and $19
    rst $20
    jr jr_0bf_7389

    add hl, de
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    rla
    rst $28
    ld a, a
    rst $38
    rst $08
    ldh a, [$2b]
    dec hl
    adc a
    adc a
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    rst $08
    rst $38
    inc bc
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $20
    rst $28
    ld sp, hl
    cp c
    cp $ff
    db $fc
    adc a
    rst $38
    dec e
    rst $38
    inc bc
    rst $38
    add a
    ld a, a
    db $db
    ccf
    dec sp
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
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b

jr_0bf_73f1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc b
    ei
    inc a
    jp $c738


    ld [hl], b
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_0bf_73f1

    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    rst $20
    jr @-$08

    add hl, bc
    cp $01
    db $fc
    inc bc
    sbc h
    ld h, e
    rst $38
    ldh a, [rIE]
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $1f
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $01
    di
    rst $38
    call nz, Call_000_3fff
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $00
    rst $30
    ld sp, hl
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    cp a
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
    cp $ff
    push bc
    rst $38
    adc [hl]
    rst $38
    sbc l
    cp $bb
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld de, $00ee
    rst $38
    ld [hl], b
    adc a
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld h, b
    sbc a
    ld l, b
    sub a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, @+$01

    add c
    rst $38
    rst $38
    ld [hl], a
    adc a
    push af
    ld a, [bc]
    pop hl
    rra
    rst $38
    ccf
    rst $38
    cp $fe
    add c
    db $e3
    rra
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    pop hl
    rst $38
    cp $0f
    nop
    rst $38
    nop
    rst $38
    rst $20
    rra
    ld hl, sp-$09
    rst $38
    cp $cf
    rst $38
    rst $20
    rra
    di
    rrca
    rst $28
    rra
    rst $38
    add c
    rst $38
    ld a, [$f0ff]
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    db $e3
    rst $38
    db $fc
    inc hl
    rst $38
    rlca
    rst $38
    cp e
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    daa
    rst $38
    ld b, [hl]
    cp a
    inc b
    rst $38
    inc c
    rst $38
    rlca
    db $fc
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld bc, $07fe
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    add b
    ld a, a
    ldh [$1f], a
    db $e3
    rra
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    rst $38
    ld a, a
    cp a
    rst $38
    db $fc
    rst $38
    ldh [$e0], a
    rra
    rra
    rst $38
    rst $38
    ldh [$f0], a
    rrca
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
    add b
    rst $38
    nop
    rst $38
    cp $31
    rst $38
    cp $ff
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
    rlca
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add b
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
    cp $7f
    ldh a, [rIE]
    nop
    rst $30
    rra
    rst $38
    nop
    rst $00
    ld hl, sp-$64
    db $e3
    ld a, a
    add b
    ldh [$1f], a
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld bc, $0ffe
    ldh a, [rSC]
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
    db $e4
    ei
    db $fc
    ld a, e
    rra
    cp $73
    adc a
    cp $31
    db $fc
    ld h, e
    db $fc
    jp $cff1


    di
    ld c, $8f
    ld a, h
    ld a, [hl]
    pop af
    db $fd
    add d
    add c
    ld a, [hl]
    dec b
    ld a, [$0000]
    add b
    add b
    add sp, -$18
    db $fc
    db $fc
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
    add b
    ld a, a
    rst $38
    ret nz

    rst $38
    and $fd
    rst $38
    call c, $fe63
    dec e
    and c
    cp $ff
    jr nz, jr_0bf_7623

    rst $38
    ld e, $ff
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    db $e3
    ld a, a
    ldh a, [$1f]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    inc bc
    sbc a
    ld a, a
    inc de
    rst $38
    add a
    ld a, a
    rst $28
    rra
    rlca
    rst $38
    rst $30
    rra
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    ld [hl], a
    rst $38
    pop bc
    ld a, a
    rst $00
    ccf
    ld b, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    dec b
    rst $38

jr_0bf_7616:
    nop
    rst $38
    add c
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ld [hl], b
    rst $28
    ld h, b
    rst $18
    ret nz

jr_0bf_7623:
    cp a
    ret nz

    ccf
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ret c

    daa
    ei
    inc b
    rst $20
    jr jr_0bf_7616

    nop
    ei
    nop
    ld e, h
    and b
    jp $fffc


    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ldh a, [rIE]
    ld a, a
    sbc a
    rrca
    rst $38
    ret nz

    ccf
    ldh a, [$3f]
    set 7, a
    ld e, a
    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, a
    ld hl, sp+$73
    rst $38
    ld [hl+], a
    rst $38
    cp [hl]
    rst $38
    scf
    rst $38
    scf
    rst $38
    or $ff
    cp $1f
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
    ret nz

    cp a
    ld hl, sp-$31
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    call z, $fcff
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld [hl-], a
    db $fd
    ld [bc], a
    db $fd
    pop bc
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    scf
    ret


    rst $38
    rrca
    db $e3
    nop
    ld hl, sp+$01
    db $fc
    nop
    ret nc

    nop
    jr nz, jr_0bf_76ba

jr_0bf_76ba:
    nop
    ldh a, [$c9]
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
    rrca
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    sbc $ff
    ccf
    ei
    cp $07
    add a
    rst $38
    rst $18
    rst $20
    ld a, [hl]
    ld sp, hl
    xor a
    rst $38
    rst $08
    rst $38
    cp $ff
    xor $ff
    rst $00
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld h, c
    sbc a
    ld h, b
    sbc a
    jr c, @-$37

    ld a, h
    add e
    ld a, a
    and d
    ld e, [hl]
    and c
    db $dd
    inc hl
    or $09
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    ccf
    ld b, c
    ccf
    inc bc
    ccf
    ld [bc], a
    ccf
    nop
    ccf
    dec a
    jp nz, $c02f

    add $f8
    add sp, -$01
    pop af
    rst $38
    ld a, $ff
    rlca
    rst $38
    and a
    rst $18
    db $dd
    rst $38
    rst $00
    rst $38
    ldh [$df], a
    pop bc
    rst $38
    rst $38
    pop hl
    ccf
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $18
    rst $38
    scf
    rst $38
    ccf
    db $e3
    rst $38
    db $fc
    rst $28

jr_0bf_7769:
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    rrca
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $00
    ld hl, sp-$01
    ret nz

    add b
    rst $38
    jr nz, jr_0bf_7769

    inc h
    rst $18
    ld a, b
    adc a
    ld a, b
    adc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ld [$e01f], a
    rra
    jp $dd3c


    ccf
    add b
    ld a, a
    add b
    ld a, a
    add e
    ld a, a
    rst $18
    rst $38
    add a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    pop hl
    inc bc
    pop hl
    ld b, e
    add e
    add e
    inc bc
    pop af
    inc bc
    ccf
    jp $f70b


    ld h, e
    sbc a
    sub a
    ld l, a
    sbc a
    ld h, a
    add a
    ld a, a
    ld b, a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $e3
    rst $38
    ld e, $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
    db $fc

jr_0bf_77e4:
    rst $38
    ldh a, [rIE]
    jr c, jr_0bf_77e4

    sbc [hl]
    db $fd
    rst $08
    ld a, [$f78f]
    ccf
    rst $38
    ld a, a
    rst $10
    rst $38
    db $eb
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    ccf
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rlca
    rst $30
    rra
    ld a, [$1f07]
    ldh [rSC], a
    rst $38
    ld bc, $82ff
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    adc e
    ld [hl], a
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
    ld bc, $0302
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
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0bf_7874

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0bf_7871

jr_0bf_7871:
    nop
    nop
    nop

jr_0bf_7874:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bf_78b0

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bf_78c6

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0bf_78b0:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bf_78c6:
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    nop
    ccf
    nop
    ld a, [de]
    dec b
    cp a
    nop
    dec hl
    inc d
    dec c
    nop
    inc l
    inc bc
    jr nc, @+$11

    rst $00
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    inc a
    rst $38
    rrca
    ccf
    rra
    rra
    nop
    inc bc
    rlca
    rlca
    inc bc
    dec de
    nop
    cp $3e
    ld a, a
    inc bc
    rrca
    nop
    rlca
    rlca
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    ret nz

    inc b
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld bc, $001f
    inc bc
    nop
    nop
    nop
    nop
    nop
    rrca
    inc c
    ccf
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$f4ff]
    rst $38
    di
    rst $38
    ccf
    rst $38
    ld e, h
    rst $38
    ld [hl], h
    rst $38
    ld [hl], b
    cp $e0
    ld hl, sp-$80
    cp $50
    ldh a, [$80]
    ret nz

    nop
    rst $20
    nop
    add a
    ld bc, $0203
    rra
    ld e, $ff
    ld [bc], a
    rrca
    nop
    ret nz

    nop
    rst $20
    ld h, c
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$807f], sp
    or a
    ld c, b
    jp z, Jump_0bf_5335

    xor h
    push de
    ld a, [hl+]
    ld [hl], c
    adc [hl]
    db $dd
    ld [hl+], a
    rst $10
    jr nz, @+$01

    nop
    rst $18
    nop
    cp a
    nop
    adc h
    inc bc
    nop
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    ldh a, [$fc]
    rst $08
    rst $38
    rra
    rst $38
    ld hl, sp-$08
    ldh [$f8], a
    nop
    rst $38
    db $fc
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bf_7ba5:
    rst $38
    jr nc, jr_0bf_7bd8

    nop
    or a
    add b
    rst $00
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rra
    rlca
    ld a, a
    ld c, $7f
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    dec c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $ff
    nop
    rrca
    ld b, $3f
    inc a
    cp $78
    ld hl, sp-$48
    ld hl, sp-$20
    ldh a, [rP1]
    ld hl, sp+$1f
    rst $38
    jr c, @+$01

jr_0bf_7bd8:
    rrca
    rst $38
    nop
    rst $38
    inc bc
    rrca
    nop
    ld a, a
    inc b
    rra
    dec c
    ld a, a
    rra
    ld a, a
    ccf
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    add b
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bf_7bfe:
    rst $38
    rst $38
    ldh a, [rP1]
    ret nz

    jr nz, jr_0bf_7ba5

    ld b, b
    or $00
    pop af
    nop
    pop de
    jr nz, jr_0bf_7bfe

    nop
    rst $20
    db $10
    xor $00
    ld hl, sp+$00
    pop af
    nop
    rst $18
    nop
    ld a, a
    add b
    pop af
    ld c, $a2
    ld e, l
    jp Jump_000_203f


    rra
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    add b
    ret nz

    nop
    rst $18
    nop
    ccf
    ld hl, sp-$01
    rst $08
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    ldh [rTAC], a
    rst $38
    rst $38
    rst $38
    db $fc
    cp $00
    pop bc
    nop
    ld e, $00
    cp $00
    ld hl, sp+$00
    db $fd
    cp $fe
    rst $30
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add e
    rst $38
    sbc b
    rst $38
    ld l, h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    pop hl
    nop
    rst $00
    nop
    rra
    nop
    rra
    ld bc, $0f0f
    rst $38
    ld bc, $fe3f
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    add e
    rst $38
    ldh [rIE], a
    ret nz

    ld sp, hl
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld de, $8000
    ld bc, $0101
    cp [hl]
    ld bc, $0172
    ld b, [hl]
    ld bc, $002f
    cp b
    rlca
    ld a, [$d705]
    cpl
    ld a, a
    rst $38
    cp $ff
    nop
    rst $38
    ld [$f8ff], sp
    db $fc
    db $e3
    db $e3
    rrca
    adc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    nop
    dec sp
    add b
    rst $00
    nop
    inc a
    nop
    ld a, e
    inc bc
    db $e3
    rra
    rra
    rst $38
    rst $38
    ld a, $fe
    db $10
    pop af
    nop
    rrca
    add c
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp $ff
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38

jr_0bf_7d02:
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rlca
    ccf
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    db $e4
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    ld b, d
    nop
    add c
    nop
    stop
    ret nz

    nop
    add [hl]
    nop
    ld b, a
    jr nc, jr_0bf_7d02

    ld e, d
    jp nz, Jump_0bf_6638

    cp c
    push af
    cp e
    xor e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $20
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ccf
    ld a, a
    ccf
    rst $38
    ldh [rIE], a
    ldh a, [$f7]
    rst $38
    rst $38
    ldh a, [$f1]
    rst $38
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
    ret nz

    ld bc, $003f
    rst $38
    nop
    ret nz

    nop
    ccf
    db $fd
    rst $38
    cp $ff
    ld hl, sp-$08
    ret nz

    rst $00
    ld bc, $1f3f
    rst $38
    inc bc
    rst $38
    nop
    db $fc
    ld bc, $0ff0
    ldh [rIF], a
    ccf
    rra
    rst $18
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    dec sp
    cp $7e
    cp $7e
    cp $7c
    cp $7c
    rst $38
    ld a, [hl]
    ld a, a
    ld a, d
    ld a, a
    ld a, $7e
    ld a, a
    ld a, $7f
    ld a, $3e
    ccf
    ccf
    rst $38
    rra
    rst $38
    rra
    cp a
    ccf
    sbc a
    ld e, $1f
    rra
    rra
    ld e, $1f
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    jp $8301


    inc bc
    nop
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
    nop
    dec d
    nop
    dec h
    nop
    sub h
    ld bc, $0538
    ld hl, sp+$05
    db $e4
    add hl, de
    ret nz

    inc bc
    dec h
    rra
    nop
    rlca
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rrca
    rrca
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    xor a
    cp a
    rrca
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rlca
    pop de
    pop af
    pop af
    db $fd
    pop bc
    pop bc
    add h
    sbc a
    rrca
    ccf
    cpl
    rst $38
    cp a
    cp a
    ccf
    ccf
    nop
    ld e, $00
    sbc a
    nop
    inc c
    nop
    nop
    nop
    inc e
    nop
    ldh a, [rNR23]
    ret nz

    ld [hl], b
    inc c
    ld a, [$e61f]
    ccf
    db $fc
    rst $38
    db $ec
    rst $38
    ld e, h
    rst $38
    rst $28
    rst $08
    rrca
    add a
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
    ld a, a
    rlca
    rst $38
    rlca
    rst $00
    rlca
    rlca
    rlca
    ld a, a
    rlca
    rst $00
    inc bc
    rlca
    rlca
    inc bc
    rlca
    add e
    adc l
    add e
    sbc c
    add a
    rst $30
    adc e
    sbc $ef
    db $dd
    cp $fb
    db $fc
    or $f9
    and $f9
    call $99f2
    and $33
    call z, $906f
    sbc $21
    db $fc
    inc bc
    ld a, c
    add [hl]
    di
    inc c
    rst $20
    jr @-$0f

    db $10
    rst $38
    jr nz, jr_0bf_7ebb

    ld b, $32
    ld c, $32
    ld c, $37
    ld c, $36
    rrca
    and [hl]
    rra
    rlca
    cp a
    ld a, a
    rst $38
    nop
    ld hl, sp+$06
    rst $20
    rlca
    sbc a
    rrca
    rst $38
    rra
    rst $38
    ld a, $fe
    rst $38
    rst $38
    nop
    nop
    rst $18
    rst $38
    rlca
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    ldh [$f0], a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $18
    and b
    db $fc
    rst $38

jr_0bf_7ebb:
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    nop
    ret nz

    ldh a, [rIE]
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    nop
    rrca
    nop
    add e
    nop
    add c
    nop
    adc a
    add b
    sbc a
    nop
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add e
    add b
    cp $c0
    db $fd
    ret nz

    cp $c0
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    rst $00
    ret nz

    rst $08
    ret nz

    rst $18
    ret nz

    rst $38
    add b
    rst $38
    nop
    ld b, $f9
    inc d
    db $eb
    add hl, sp
    add $53
    xor h
    ccf
    ret z

    cpl
    ret nc

    ld a, a
    and b
    rst $38
    ld b, b
    cp $80
    db $ec
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, [$f901]
    ld [bc], a
    or $00
    add sp, $04
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
    ldh [rP1], a
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    ccf
    ld bc, $00c7
    ldh a, [$89]
    rst $38
    or b
    cp $05
    rlca
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$02
    ret nz

    pop hl
    db $ed
    rst $28
    inc bc
    rrca
    rlca
    rst $38
    ld bc, $feff
    rst $38
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    ldh a, [$03]
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    xor $ff
    ldh a, [rIE]
    add b
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld hl, sp-$01
    ld bc, $0300
    jr nz, jr_0bf_7f8c

    ret nz

    rrca
    nop
    rra
    nop
    ccf
    nop

jr_0bf_7f8c:
    ccf
    nop
    ld a, a
    nop
    add b
    ld a, a
    ld bc, $06fe
    ld sp, hl
    sub h
    ld l, e
    cpl
    ret nc

    ld e, e
    and h
    or l
    ld c, d
    ld h, c
    sbc [hl]
    jp $df3c


    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    or d
    inc b
    db $ed
    nop
    sbc b
    ld [$1032], sp
    ld d, b
    jr nz, jr_0bf_7fd3

    ld b, b
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    nop
    ld bc, $0000
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
    db $e4
    nop
    rst $38
    rst $38
    scf
    rst $38
    nop

jr_0bf_7fd3:
    inc bc
    nop
    dec b
    jr nc, @+$01

    ld bc, $901b
    db $fc
    or $ff
    jp hl


    rst $38
    ld hl, $233f
    ld a, a
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
    ld bc, $3fe3
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc $ff
    db $10
    cp $00
    ld sp, hl
    inc bc
    inc bc
