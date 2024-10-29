SECTION "ROM Bank $089", ROMX[$4000], BANK[$89]

    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rrca
    cp $08
    rrca
    ld [$0809], sp
    ld c, $58
    ld e, a
    ldh [rIE], a
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
    db $fc
    rst $38
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, Call_000_273f
    rra
    rra
    rra
    rra
    rra
    dec hl
    rra
    nop
    rlca
    nop
    cp a
    ld bc, $015f
    rst $38
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
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
    add b
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    sbc [hl]
    rst $38
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
    ldh [rIE], a
    rra
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
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    sub $00
    inc bc
    ld bc, $0003
    inc bc
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    sbc a
    rst $38
    db $e3
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
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ccf
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    rst $38
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    ei
    ld sp, hl
    ld sp, hl
    ld hl, sp-$02
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0006
    ld bc, $0000
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, $ff
    rst $08
    rst $38
    di
    rst $38
    db $fc
    rst $38
    cp $ff
    pop bc
    rst $38
    ccf
    rst $38
    rst $38
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

Jump_089_41bf:
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
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    rst $38
    rst $38
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
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld b, $0f
    inc a
    rst $38
    rst $38
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
    add b
    rst $38
    ret nc

    rst $28
    rst $30
    ld a, b
    db $fc
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    inc d
    rst $38
    sub h
    ld a, a
    ret nc

    ccf
    ret nc

    ccf
    sub b
    rra
    jr nz, jr_089_4229

    adc b
    inc bc
    db $e4
    nop
    ld sp, hl
    nop
    ld bc, $0006
    ld bc, $0000
    nop
    nop
    nop

jr_089_4229:
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, $ff
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    and b
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
    rst $38
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, $c1
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
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    nop
    ld a, a
    ld [$ad00], sp
    ld d, d
    ld [hl], a
    adc b
    dec e
    ld h, d
    rlca
    jr @+$03

    ld b, $00
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    di
    inc bc
    db $eb
    dec bc
    rst $20
    add a
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
    add b
    rst $38
    xor b
    rst $38
    xor h
    rst $38
    cp $ff
    ccf
    ccf
    ccf
    rst $18
    rrca
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    ldh [rNR11], a
    nop
    and h
    nop
    cp $01
    ld l, e
    sub h
    cp a
    ld b, b
    push af
    ld a, [bc]
    xor [hl]
    ld d, c
    ld [hl], a
    adc b
    ld e, $61
    nop
    ld e, $00
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
    ld a, b
    rst $38
    add b
    rst $38
    nop
    cp a
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    sub h
    rst $38
    sbc $ff
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
    ld bc, $e001
    nop
    cp h
    ld b, b
    rst $30
    ld [$22dd], sp
    ld [hl], a
    adc b
    db $fc
    inc bc
    and b
    ld e, h
    add b
    ld h, b
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
    rst $38
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
    ld b, b
    nop
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_089_43bd:
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, jr_089_43c7

jr_089_43c7:
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    inc bc
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
    ld b, $07
    ld [$0002], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld [bc], a
    nop
    nop
    dec d
    ld d, $17
    jr jr_089_4440

    ld a, [de]
    dec de
    dec de
    inc e
    dec de
    dec e
    nop
    ld e, $02
    nop
    nop
    rra
    jr nz, jr_089_4456

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_4466

    nop
    ld a, [hl+]
    ld [bc], a

jr_089_4440:
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    ld [bc], a
    jr nc, jr_089_447c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [bc], a
    nop
    nop
    ld [hl], $1b
    scf
    ld [bc], a

jr_089_4456:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr c, jr_089_4494

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [bc], a
    nop
    nop
    ld a, $1b
    ccf
    ld b, b

jr_089_4466:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld [bc], a
    nop
    nop
    ld b, d
    dec de
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_089_447c:
    ld [bc], a
    ld [bc], a
    ld b, a
    ld [bc], a
    nop
    nop
    ld c, b
    dec de
    ld c, b
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
    ld [bc], a
    nop
    nop
    ld d, c
    dec de

jr_089_4494:
    ld a, $00
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [bc], a
    nop
    nop
    ld e, c
    dec de
    ld e, d
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [bc], a
    nop
    nop
    ld h, d
    ld h, e
    ld h, h
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
    ld [bc], a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    ld [hl], c
    ld l, d
    ld [bc], a
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
    ld l, d
    ld [bc], a
    ld [bc], a
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
    adc e
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
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld l, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc h
    sbc l
    sbc l
    sbc [hl]
    ld [bc], a
    sbc a
    and b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and c
    and d
    and d
    and e
    ld [bc], a
    and h
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0401
    inc b
    inc b
    nop
    nop
    ld bc, $0000
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0404
    rlca
    ld bc, $0101
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0707
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld b, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0707
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld b, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld b, $01
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld b, $01
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld b, $01
    ld bc, $0207
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    rlca
    ld b, $01
    ld bc, $0701
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0407
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
    rlca
    rlca
    ld bc, $0701
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, d
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
    ld [bc], a
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
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$080f], sp
    rlca
    inc b
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    ld b, b
    ld b, b
    and b
    and b
    sub b
    sub b
    ld [$0408], sp
    inc b
    add [hl]
    ld [bc], a
    adc a
    ld bc, $01f3
    pop bc
    nop
    jp $ec00


    nop
    ldh a, [rP1]
    ldh a, [rP1]
    add c
    nop
    add [hl]
    nop
    reti


    nop
    rst $20
    nop
    rst $08
    nop
    ei
    nop
    db $e3
    nop
    db $e3
    add b
    ld l, l
    ld b, b
    ld sp, $3120
    jr nz, jr_089_4744

    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_089_4744:
    nop
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
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
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
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [$e0], a
    rst $38
    ldh a, [$3f]
    rst $38
    nop
    rst $38
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
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, e
    ld [$08fb], sp

jr_089_47d2:
    ei
    ld [$10f7], sp

jr_089_47d6:
    rst $30
    db $10

jr_089_47d8:
    rst $30
    db $10

jr_089_47da:
    rst $30
    db $10
    rst $30
    db $10
    rst $28
    jr nz, @-$0f

    jr nz, jr_089_47d2

    jr nz, @-$0f

    jr nz, jr_089_47d6

    jr nz, jr_089_47d8

    jr nz, jr_089_47da

    ld h, b
    sbc $c0
    sbc $c0
    ld e, $00
    nop
    nop
    rrca
    ld c, $0f
    rrca
    rrca
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
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
    rst $38
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
    adc a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rrca
    ld e, a
    ld c, a
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $18
    rra
    rst $18
    rra

jr_089_4872:
    rst $18
    rra
    rst $18
    rra
    cp a
    ccf
    cp a
    ccf
    cp a
    nop

jr_089_487c:
    cp a
    nop
    cp b
    nop
    or b
    rlca
    ld [hl], b
    inc c
    ld [hl], b
    inc c
    ld [hl], c
    inc c
    ld [hl], c
    inc c
    ld h, c
    jr jr_089_48ee

    jr jr_089_4872

    jr jr_089_487c

    db $10
    rst $28
    db $10
    ld hl, sp+$00
    rst $38
    add b
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
    cp $ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $08
    rst $00
    ret c

    adc l
    sub d
    ldh a, [$e0]
    db $e4
    ret nz

    pop af
    ret nz

    db $eb
    jp $c7e4


    ret c

    adc a
    ret nc

    sbc a

jr_089_48ee:
    ldh [$bf], a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ld hl, sp+$00
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
    rst $38
    rra
    rst $38
    rlca
    rlca
    inc bc
    ld bc, $81e1
    ld [hl], c
    pop bc
    jr nc, @-$7d

    ld h, b
    add c
    ld h, b
    add c
    ld h, b
    add e
    ld h, b
    inc bc
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rrca
    nop
    rra
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
    nop
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
    cp h
    ld b, e
    adc b
    nop
    inc hl
    nop
    ret z

    ld hl, sp+$05
    db $fc
    ld [bc], a
    cp $05
    ei
    inc b
    ei
    nop
    rst $38
    ld b, $f9
    rlca
    ld hl, sp+$01
    cp $01
    cp $02
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $0d
    db $fc
    db $10
    ldh a, [$e5]
    ldh [$c8], a
    ret nz

    ld a, [hl-]
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    ccf
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
    inc bc
    db $e3
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
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
    ldh a, [$f0]
    rrca
    cp [hl]
    ld b, c
    or $09
    call c, $f422
    ld a, [bc]
    xor h
    ld d, d
    db $f4
    adc d
    ret c

    and h
    ld b, a
    ret nz

    ld d, a
    ret nz

    ld b, a
    ret nz

    ld e, a
    ret nz

    ld l, a
    ret nz

    ld c, a
    ret nz

    adc a
    add b
    cp a
    add b
    ldh [rNR21], a
    and b
    ld d, [hl]
    ldh [rNR21], a
    ret nz

    ld [hl], $40
    cp [hl]
    ret nz

    ld l, $40
    cp [hl]
    add b
    ld d, b
    nop
    jp nc, $3e00

    nop
    cp h
    nop
    or [hl]
    nop
    or d
    nop
    or h
    nop
    ld hl, sp+$00
    ldh [rIE], a
    nop
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
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
    ld a, $ff
    ccf
    rst $38
    jr nc, @+$01

    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38

jr_089_4b39:
    dec sp
    rst $38
    dec de
    rst $38

jr_089_4b3d:
    dec de
    rst $38

jr_089_4b3f:
    dec de
    db $fc
    jr jr_089_4b3f

    jr jr_089_4b3d

    jr jr_089_4b3f

    jr jr_089_4b39

    db $10
    pop af
    nop
    pop hl
    nop
    db $e3
    nop
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    inc a
    ld b, e
    ld a, $41
    ccf
    ld b, b
    ccf
    ld b, b
    ld e, $61
    ld e, $61
    ccf
    ld h, b
    ccf
    ld h, b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, a
    ld a, b
    ld a, e
    ld a, h
    db $fc
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
    ret nz

    ret nz

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
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
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
    db $fc
    add e
    rst $38
    nop
    nop
    nop
    jr nz, jr_089_4be0

    ld b, e
    inc a
    add b
    ld a, a
    add e
    ld a, a
    jp $c03f


    ccf
    db $e4
    inc bc
    ret nz

    inc bc
    jp $c000


    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [de], a
    nop
    ld b, b
    nop

jr_089_4be0:
    ld a, [$ec05]
    inc de
    db $d3
    inc l
    ldh a, [rIF]
    add sp, $17
    cp h
    ld b, e
    ld a, a
    nop
    dec sp
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $00
    db $fc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    nop
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rlca
    nop
    jr z, jr_089_4c68

jr_089_4c68:
    sub d
    nop
    xor d
    nop
    sub a
    nop
    adc l
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rrca
    nop
    nop
    nop
    ld h, b
    sbc a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add b
    nop
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rrca
    cp a
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
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    add sp, $17
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    cp $ff
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$090f], sp
    rra
    ld de, $111f
    ld e, $12
    ld e, $12
    ld a, $22
    ld a, $22
    inc a
    inc h
    inc a
    inc h
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    ld sp, hl
    adc c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    di
    ld [de], a
    db $e3
    ld [hl+], a
    db $e3
    ld [hl+], a
    rst $20
    inc h
    rst $00
    ld b, h
    rst $00
    ld b, h
    rst $00
    ld b, h
    ret z

    ld c, b
    adc a
    adc a
    rst $38
    add b
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ldh [$e0], a
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
    ccf
    rst $38
    ld b, c
    nop
    ld b, b
    nop
    ret nz

    nop
    add a
    ld a, b
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
    rrca
    ldh a, [$9f]
    ld h, b
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
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @+$41

    ld b, b
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
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$c0], a
    jr nz, jr_089_4e41

    jr nz, jr_089_4e43

    jr nz, jr_089_4e45

    jr nz, jr_089_4e47

    rra
    jr nz, jr_089_4deb

jr_089_4deb:
    rra
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    add b
    add b
    adc a
    adc a
    adc a
    adc b
    sbc a
    sub b
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_089_4e4a

    jr nz, jr_089_4e4c

    jr nz, jr_089_4e8e

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    db $fd
    ld bc, $03fb
    ei
    inc bc
    ei
    ld [bc], a
    rst $30
    ld b, $f7
    inc b
    rst $28
    inc c
    rst $28
    ld [$18df], sp
    rst $18
    db $10
    ld a, $30
    ldh [$e0], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_089_4e41:
    nop
    nop

jr_089_4e43:
    nop
    nop

jr_089_4e45:
    nop
    nop

jr_089_4e47:
    nop
    nop
    nop

jr_089_4e4a:
    nop
    nop

jr_089_4e4c:
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
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ret nz

    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rrca
    inc bc
    nop
    inc h
    nop
    rst $38
    nop
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    ld [bc], a
    db $fd
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

jr_089_4e8d:
    nop

jr_089_4e8e:
    rst $38
    nop
    rrca
    ldh a, [$e4]
    jr jr_089_4e8d

    ld b, $fa
    ld bc, $00f8
    ld hl, sp+$00
    rst $38
    nop

jr_089_4e9e:
    rst $38
    nop

jr_089_4ea0:
    rst $38
    nop

jr_089_4ea2:
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    ldh [rP1], a
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    ret nz

    rst $38
    ccf
    ei
    inc bc
    rst $30
    ld b, $f7
    ld b, $ef
    inc c
    rst $28
    inc c
    rst $18
    jr @-$1f

    jr jr_089_4e9e

    jr nc, jr_089_4ea0

    jr nc, jr_089_4ea2

    jr nz, jr_089_4f64

    ld h, b
    ld a, a
    ld b, b
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    ei
    ld [bc], a
    rst $30
    inc b
    rst $30
    inc b
    rst $28
    add hl, bc
    rst $18
    ld [de], a
    rst $18
    inc d
    cp a
    dec h
    cp a
    dec hl
    ld a, a
    ld d, e
    rst $38
    sub a
    rst $38
    xor a
    ld a, a
    ld c, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rra
    rrca
    rra
    rlca
    ccf
    rlca
    ccf
    rlca
    ld a, a
    rlca
    ld a, a
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
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    add e
    add e
    inc bc
    add e
    inc bc
    jp $e303


    inc bc
    db $e3
    inc bc
    di
    inc bc
    ei
    inc bc
    ei
    ld bc, $01fd
    db $fd

jr_089_4f64:
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $ff03
    rra
    inc bc
    adc c
    rlca
    ld [hl], e
    adc a
    rlca
    ld a, c
    rra
    ld bc, $019f
    rst $38
    ld bc, $039f
    ccf
    inc bc
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $30
    rrca
    ld [$08f4], sp
    db $f4
    ld [$08f4], sp
    db $f4
    ldh a, [$08]
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc bc
    nop
    nop
    ldh a, [$f0]
    rst $38
    rrca
    db $fd
    ld bc, $01fd
    ei
    ld [bc], a
    rst $30
    inc b
    rst $30
    inc b
    rst $28
    ld [$09ef], sp
    rst $18
    ld [de], a
    cp a
    ld [hl+], a
    cp a
    inc h
    ld a, a
    ld c, c
    cp $8a
    db $fc
    sub h
    db $fc
    inc h
    ld hl, sp+$28
    ldh a, [$50]
    ld sp, hl
    sbc b
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    cp $0f
    inc b
    ccf
    dec b
    rst $38
    adc c
    cp $12
    db $fc
    inc d
    ld hl, sp+$28
    ld hl, sp+$48
    ldh a, [$90]
    ldh [$a0], a
    ldh [rNR41], a
    pop bc
    ld b, b
    add c
    add b
    add e
    add b
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
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
    rra
    rra
    jr nz, @+$22

    ld e, a
    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, jr_089_50ad

    jr nz, jr_089_50af

    jr nz, jr_089_50b1

    jr nz, jr_089_50b3

    jr nz, jr_089_50b5

    jr nz, jr_089_50b7

    jr nz, jr_089_50b9

    jr nz, jr_089_50bb

    rra
    jr nz, jr_089_505f

jr_089_505f:
    rra

jr_089_5060:
    nop
    nop

jr_089_5062:
    nop
    nop

jr_089_5064:
    nop
    nop

jr_089_5066:
    ldh [$e0], a

jr_089_5068:
    ret nz

    ld b, b

jr_089_506a:
    ret nz

    ld b, b

jr_089_506c:
    add b
    add b

jr_089_506e:
    ld bc, $0300
    nop

jr_089_5072:
    rlca
    nop

jr_089_5074:
    rlca
    nop

jr_089_5076:
    rrca
    nop

jr_089_5078:
    rra
    nop

jr_089_507a:
    ccf
    nop

jr_089_507c:
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
    ret nz

    ret nz

    jr nz, @+$22

    ret nc

    jr nz, @-$2e

    jr nz, jr_089_5060

    jr nz, jr_089_5062

    jr nz, jr_089_5064

    jr nz, jr_089_5066

    jr nz, jr_089_5068

    jr nz, jr_089_506a

    jr nz, jr_089_506c

    jr nz, jr_089_506e

    jr nz, @-$2e

    jr nz, jr_089_5072

    jr nz, jr_089_5074

    jr nz, jr_089_5076

    jr nz, jr_089_5078

    jr nz, jr_089_507a

    jr nz, jr_089_507c

    ret nz

jr_089_50ad:
    jr nz, jr_089_50af

jr_089_50af:
    ret nz

    rlca

jr_089_50b1:
    nop
    rrca

jr_089_50b3:
    nop
    rra

jr_089_50b5:
    nop
    ccf

jr_089_50b7:
    nop
    ccf

jr_089_50b9:
    nop
    ld a, a

jr_089_50bb:
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_089_50f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_089_5103

    inc de
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_5114

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_089_5106

jr_089_50f3:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_089_5135

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_089_5103:
    ld b, c
    ld b, d
    ld b, e

jr_089_5106:
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
    inc de

jr_089_5114:
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

jr_089_5135:
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
    jr jr_089_51f6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_089_5206

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_5216

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_089_5226

    ld [hl-], a

jr_089_51f6:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_089_5206:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0502
    nop
    nop
    nop
    nop
    nop
    nop

jr_089_5216:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop

jr_089_5226:
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $07
    nop
    nop
    inc b
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $07
    inc b
    nop
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    ld b, $07
    inc b
    nop
    inc b
    dec b
    dec b
    dec b
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
    inc b
    nop
    inc b
    dec b
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0201
    inc b
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
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
    inc b
    inc b
    inc b
    inc b
    dec b
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
    inc b
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    inc b
    nop
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $06
    ld b, $00
    nop
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $06
    ld b, $07
    rlca
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0501
    ld bc, $0102
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0a0c], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    inc c
    inc c
    dec c
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$090c], sp
    add hl, bc
    ld c, $0d
    inc c
    dec c
    dec c
    dec c
    ld [$080c], sp
    ld [$0808], sp
    inc c
    inc c
    dec c
    ld a, [bc]
    ld c, $0a
    inc c
    inc c
    dec c
    dec c
    ld [$080c], sp
    ld [$0808], sp
    inc c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec c
    inc c
    dec c
    dec c
    jr @-$1e

    ld [hl+], a
    db $fd
    ld d, c
    adc [hl]
    ld bc, $94c0
    pop hl
    sub b
    adc a
    ret nz

    rst $18
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    dec de
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp e
    rst $38
    cp $7f
    ld a, d
    rst $38
    cp $ff
    dec sp
    rst $38
    ld a, e
    ccf
    ld e, e
    cp a
    sbc d
    rst $38
    sbc [hl]
    cp a
    rra
    cp a
    daa
    ld e, a
    scf
    rst $10
    or e
    rst $30
    or e
    or a
    or a
    rst $30
    rst $30
    rst $18
    and a
    rst $18
    rst $20
    rst $18
    cp a
    rst $38
    rst $10
    cp a
    add a
    rst $38
    add a
    rst $38
    xor e
    cp a
    rst $10
    cp a
    adc a
    rst $38
    adc e
    cp a
    inc hl
    rst $10
    rst $00
    rst $30
    adc e
    rst $38
    inc hl
    rst $38
    rst $10
    cp a
    db $d3
    or a
    rst $00
    add a
    db $d3
    rst $38
    rra
    rst $38
    add a
    rst $30
    rst $20
    rst $30
    db $e3
    rst $38
    xor e
    ei
    cp e
    rst $38
    ld b, a
    rst $38
    rst $28
    rst $28
    jp hl


    rst $28
    cpl
    rst $38
    ld e, c
    cp a
    cpl
    rst $38
    sbc e
    ei
    sbc a
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    db $fd
    rst $38
    cpl
    cp a
    ld a, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    rst $00
    xor a
    rst $18
    cp a
    cp $bf
    db $fd
    cp $78
    db $fc
    ld a, [$ebf0]
    db $f4
    di
    db $ec
    cp a
    ret nz

    ei
    inc b
    rst $30
    ld [$f807], sp
    ld e, a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    cp $00
    ld a, c
    add d
    db $f4
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld c, b
    nop
    ld bc, $8300
    nop
    ld [bc], a
    ld bc, $0002
    ei
    ld sp, hl
    ei
    ei
    di
    di
    rst $20
    rst $20
    rst $28
    rst $20
    rst $20
    rst $20
    rst $08
    rst $08
    sbc $fe
    ld d, c
    nop
    or h
    ld b, b
    inc sp
    ld hl, sp+$00
    ccf
    dec de
    ldh [$94], a
    nop
    ld e, b
    and h
    ld sp, hl
    cp $fe
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
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ld a, l
    db $fd
    xor l
    db $fd
    xor a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    ld e, l
    db $fd
    rst $28
    ld a, a
    rst $28
    rst $38
    xor a
    rst $38
    xor [hl]
    rst $38
    ld l, l
    db $fd
    ld l, [hl]
    rst $38
    db $ec
    db $fd
    xor $ff
    db $fd
    db $fd
    cp $ff
    db $dd
    db $fd
    cp h
    db $fd
    db $dd
    db $fd
    cp l
    db $fd
    cp h
    db $fd
    sbc l
    db $fd
    sbc l
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    inc e

jr_089_54d7:
    db $fc
    sbc h
    db $fc
    db $fc
    db $fc
    ld e, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld [hl], h
    db $fc
    ld e, [hl]
    cp $fd
    rst $38
    ld a, l

jr_089_54e9:
    rst $38
    ld l, e
    rst $38
    ld l, a
    rst $38
    cp $ff
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [c], a
    rst $38
    jp nz, $fcff

    rst $38
    db $fc
    rst $38
    ld de, $e0fe
    rst $38
    ret nz

    rst $28
    ld b, b
    db $e4
    add e
    db $e4
    rrca
    or b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $38
    nop
    ld b, c
    nop
    ld h, b
    ld h, d
    ld e, b
    ld e, b
    pop de
    pop de
    di
    di
    di
    di
    rst $20
    rst $20
    rst $38
    rst $28
    jr nc, jr_089_5522

jr_089_5522:
    ld [bc], a
    jr nz, jr_089_54e9

    nop
    add b
    nop
    adc b
    nop
    adc c
    nop
    stop
    ld a, $00
    ld [hl], l
    ld [hl], l
    ldh a, [$f0]
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    db $ec
    db $e4
    xor b
    add b
    ld b, b
    db $10
    inc c
    inc b
    ld d, b
    inc b
    ld c, c
    ld b, $41
    ld l, $70
    rst $38
    ldh [$1f], a
    dec l
    ld b, b
    ld b, b
    nop
    jr nc, jr_089_54d7

    sbc c
    ld [c], a
    ld a, [$ffff]
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ld hl, sp+$7f
    ld a, [$fe7b]
    ccf
    ld hl, sp-$07
    cp $f9
    cp $7d
    ld a, [$fa7f]
    ld a, [$fbff]
    cp $fb
    cp $ff
    ld a, [$f4d3]
    sub e
    db $f4

jr_089_559c:
    or e
    call nc, $f88f
    rst $00
    ldh a, [rVBK]
    ld hl, sp+$2f
    ret c

    sbc a
    add sp, -$69
    ldh [$af], a
    ld hl, sp-$59
    ldh a, [$a7]
    ret nc

    rlca
    ldh a, [$87]
    ldh a, [$27]
    ret nc

    add a
    ldh a, [$87]
    ldh a, [$87]
    ldh a, [$87]
    ldh a, [$87]
    ldh a, [$a7]
    ldh a, [$c7]
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [rIE]
    ld hl, sp-$12
    ld hl, sp+$18
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    db $f4
    ei
    nop
    rst $38
    rrca
    ld [c], a
    scf
    jp nz, $844b

    ld d, c
    add h
    ld h, d
    sbc b
    db $10
    sbc e
    db $10
    cp l
    inc b
    ld [hl], c
    sbc b
    daa
    or h
    ld b, e
    cp h
    ld b, e
    ld a, h
    add e
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    cp a
    nop
    scf
    ld [$04fb], sp
    rst $28
    db $10
    rst $28
    db $10
    inc de

jr_089_560f:
    jr nz, jr_089_559c

    adc e
    db $e4
    add h
    ld b, b
    nop
    ld hl, $4130
    ld b, b
    ld b, c
    ld b, b
    push bc
    push bc
    pop bc
    pop bc
    and a
    and l
    ld l, c
    ld l, c
    ld d, c
    ld d, c
    add hl, bc
    add hl, bc
    ld [c], a
    ld h, d
    inc bc
    inc bc
    dec bc
    inc bc
    ld b, d
    ld c, b
    ld c, c
    nop
    inc [hl]
    nop
    ld d, $01
    ld [$4643], sp
    ld sp, hl
    dec e
    rst $38
    adc b
    rlca
    jr nc, jr_089_560f

    ld d, b
    cp a
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or h
    rst $38
    add $ff
    rst $28
    rst $38
    or a
    rst $38
    sub a
    cp a
    ld a, [c]
    or a
    ld a, a
    sub b
    add c
    or d
    call c, $0130
    db $f4
    nop
    pop hl
    ld bc, $00f0
    and b
    nop
    add c
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
    nop
    rst $38
    nop
    or b
    nop
    and e
    nop
    and b
    nop
    and a
    nop
    and h
    nop
    and b
    nop
    and b
    nop
    ldh [$80], a
    ld [hl], h
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld l, b
    and b
    ld b, h
    ldh [rDIV], a
    and b
    ld d, a
    and b
    ld d, b
    and a
    ld e, b
    and h
    ld e, e
    ldh [rNR33], a
    ldh [$1f], a
    ldh [$1f], a
    cp a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$e2]
    db $fd
    ldh a, [$ef]
    rst $38
    rst $38
    ld [hl], a
    add sp, $73
    ret z

    ld a, l
    add d
    inc c
    di
    jr nz, @+$01

    inc h
    rst $38
    ld b, a
    rst $38
    add sp, -$21
    dec d
    rst $38
    add hl, bc
    rst $38
    ld b, l
    cp a
    adc c
    db $76
    adc b
    db $76
    ld a, [hl+]
    rst $30
    dec sp
    ld h, a
    nop
    ld a, a
    jr nz, @+$01

    nop
    db $ed
    nop
    ld sp, hl
    inc b
    ld sp, hl
    ret z

    rra
    ldh a, [rIF]
    ldh [$1f], a
    ld h, b
    sbc a
    nop
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    jr nz, jr_089_5727

    ld b, h
    ld a, [hl-]
    nop
    daa
    ret c

    and [hl]
    ld e, c
    db $db
    inc h
    ld d, b
    xor a
    call z, $8233
    ld bc, $0186
    add [hl]
    ld bc, $d1d0
    ld b, c
    ld b, b
    ld [bc], a
    ld bc, $0001
    ld bc, $0500
    ld [bc], a
    sbc a
    add b
    call nc, Call_000_3902
    cp $3a
    dec b
    ld b, h
    and c
    and d

jr_089_5727:
    ld b, c
    and b
    ld b, e
    call nc, $77e3
    rst $38
    db $10
    rst $28
    ld c, $f2
    ld [bc], a
    db $fd
    pop de
    db $fc
    db $dd
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38

jr_089_5748:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_089_575d:
    rst $38
    adc e
    rst $38
    ld c, $f7
    add hl, bc
    rst $38
    cp d
    db $fd
    cp $ff
    rst $38
    rst $38
    reti


    cp [hl]
    rst $18
    ld h, b
    jp hl


    ld a, [hl+]
    rla
    ld l, b
    rrca
    jr nz, jr_089_5776

    ld c, b

jr_089_5776:
    ld l, b
    nop
    ld l, c
    nop
    ld hl, $0108
    nop
    jr nz, jr_089_5780

jr_089_5780:
    rst $38

jr_089_5781:
    rst $38
    rst $38
    rst $38
    jr z, jr_089_575d

    jr z, jr_089_5748

    ld hl, sp+$02
    nop
    ld a, c
    ld [$0830], sp
    pop hl
    nop
    adc c
    nop
    adc c
    nop
    adc c
    nop
    adc c
    nop
    adc c
    nop
    adc c
    nop
    adc c
    nop
    adc b
    nop
    adc c
    nop
    add hl, sp
    nop
    ld bc, $01b8
    adc b
    ld bc, $0188
    adc b
    ld b, a
    adc b
    ld [hl], a
    rst $38
    adc b
    or $89
    db $76
    adc c
    ld [hl], a
    adc c
    ld [hl], a
    adc c
    ld [hl], a
    adc c
    ld a, a
    add c
    rst $38
    rst $38
    rla
    add sp, $1d
    ld [c], a
    nop
    rst $38
    ld h, b
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    push af

jr_089_57d3:
    ei
    ld [bc], a
    db $fd
    ld b, $7f
    ld [de], a
    rst $38
    jr jr_089_57d3

    dec h
    di
    dec b
    ldh a, [rNR14]
    or a
    ccf
    cp a
    inc h
    ccf
    nop
    ei
    db $10
    rst $20
    jr jr_089_57d3

    dec a
    jp nz, $c037

    nop
    jr z, jr_089_57f3

jr_089_57f3:
    ccf
    nop
    rst $38
    nop
    swap b
    add [hl]
    jr nc, jr_089_5781

    nop
    add $08
    ld bc, $8001
    nop
    nop
    add b
    nop
    nop
    nop
    ld sp, $5821
    nop
    stop
    add hl, hl
    ld d, [hl]
    ld [c], a
    dec e
    sbc $21
    or $09
    cp $00
    jp z, $aa00

    nop
    rlc b
    ld c, $00
    ret nz

    jr nz, jr_089_5884

    db $fc
    dec b
    rst $38
    nop
    db $fd
    jr c, @+$01

    jr c, @+$01

    ld hl, sp-$01
    rst $38
    rst $38
    rlca
    ld a, a
    add b
    ld l, a
    dec a
    ld a, a
    inc sp
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
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    ld bc, $87ff
    rst $38
    ld [hl], e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    sbc a
    add e
    sub a
    xor d
    add $fe
    add b
    ld [hl], $c8
    or $08
    cp $00
    cp $00
    cp $00
    cp $00
    cp $ff
    cp $ff
    ld a, $ff
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f

jr_089_5884:
    ld a, $7f
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    cp a
    ld a, [hl]
    ccf
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    pop bc
    ld b, b
    pop bc
    ld b, b
    pop bc
    ld b, b
    pop bc
    ld b, b
    ld b, c
    ret nz

    ld b, c
    ret nz

    ld b, c
    ret nz

    cp $c0
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $10
    rst $28
    ret nz

    cp $e2
    rst $38
    ld [c], a
    ld a, [$f7e0]
    dec e
    ldh [$ec], a
    ld bc, $a0d7
    ld a, $c0
    db $ed
    sub b
    ld l, d
    add b
    ld d, $80
    ld e, e
    add b
    add c
    xor d
    inc bc
    call c, $d887
    nop
    db $fc
    ld b, $a8
    ld a, $80
    ld a, a
    add b
    scf
    ret nz

    inc b
    add b
    nop
    add b
    ld [$2360], sp

Call_089_58e7:
    add c
    ld [bc], a
    add b
    ld b, $80
    ld [bc], a
    add b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    add b
    ld [$0580], sp
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    ld e, [hl]
    nop
    ld a, [$7c00]
    add b
    ld a, [hl+]
    add b
    ld bc, $0080
    add b
    ld b, h
    add b
    nop
    add b
    inc d
    nop
    ret nz

    inc b
    ld h, c
    cp $1f
    rst $38
    ld [de], a
    rst $28
    ld b, b
    cp a
    dec c
    rst $38
    add h
    rst $38
    cp $ff
    rra
    rst $38
    ld [hl], h
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    cp $ff
    rst $20
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    cp $ff
    ld bc, $12fe
    db $ed
    and b
    rst $38
    xor a
    ld a, a
    ld [bc], a
    db $fd
    ret nc

    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $28
    rst $30
    rst $38
    ld h, l
    ld a, a
    reti


    rst $00
    rst $28
    ldh a, [$e5]
    ld a, [$6a7f]
    rst $38
    ld [c], a
    ldh a, [$ef]
    rst $28
    or $ff
    db $e3
    rst $18
    jp nz, $504f

    inc e
    inc bc
    rra
    ld [$0817], sp
    xor $e0
    xor $e0

jr_089_5984:
    xor $e0
    ld [c], a
    ldh [$e3], a
    ldh [$e2], a
    ldh [$e0], a
    ld [c], a
    ld [c], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e6], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e2], a
    ldh [$e3], a
    ldh [$e1], a
    ldh [$e2], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    ld bc, $4fff
    ld a, a

jr_089_59ba:
    ld d, h
    db $fd
    ld b, b
    cp $22
    ld l, a
    ld h, a
    jr jr_089_59ba

    nop
    cpl
    db $10
    or [hl]
    ld [$00cf], sp
    ld d, a
    add b
    ld c, $80
    halt
    ld b, d
    ld l, a
    nop
    ld l, e
    add c
    ld e, e
    inc b
    pop hl
    ld a, $61
    call c, $ce21
    ld sp, $11ee
    nop
    ld de, $1300
    nop
    ld [$0800], sp
    nop
    ld [$0008], sp
    nop
    inc c
    ld [$fb04], sp
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    or $01
    or $01
    or $01
    ld a, [$9901]
    nop

Jump_089_5a02:
    jr jr_089_5984

    sbc d
    nop
    ld b, d
    add b
    dec l
    add d
    ld a, a
    add b
    ei
    nop
    ei
    nop
    ld bc, $4828
    rla
    inc b
    ld a, a
    ldh [rIE], a
    rst $38
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38

jr_089_5a24:
    ld e, a
    rst $38
    ld d, b
    rst $28
    ld b, b
    ccf
    ld bc, $f8df
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld h, $ff
    cp a
    rst $38
    ld b, b
    cp a
    dec d
    ld [$f885], a
    dec b
    jp c, Jump_000_00d6

    add [hl]
    ld hl, sp+$10
    rst $28
    pop bc
    cp $6e
    rst $38
    ret nc

    rst $38
    db $fd
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
    xor [hl]
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    db $f4
    rra
    cp l
    jp nc, $a1fe

    ld h, [hl]
    sbc c
    rla
    ld hl, sp-$01
    ld d, b
    ld a, a
    call c, $fd96
    jp z, $ce75

    ld [hl], c
    db $e3
    dec a
    rst $20
    jr c, jr_089_5a24

    ld e, b
    ld [hl], a
    adc b
    and c
    ld [$08f1], sp
    ld c, c
    and b
    ld hl, sp+$01
    ld l, b
    ld bc, $4108
    ld h, b
    ld bc, $0163
    inc bc
    jr nz, jr_089_5ab4

    nop
    ld b, b
    jr nz, @+$22

    nop
    jr nz, jr_089_5a9a

jr_089_5a9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, b
    add e

jr_089_5ab4:
    nop
    rst $38
    ldh [$fb], a
    nop
    ei
    nop
    ld a, [$ff4c]
    nop
    db $fd
    dec d
    ld h, d
    ret nz

    ccf
    nop
    ld e, a
    adc b
    rst $38
    ld b, b
    and $00
    ei
    nop
    rst $00
    ld bc, $01bd
    push af
    ld a, [de]
    cp a
    ld [$69ff], sp
    rst $28
    inc b
    or a
    ld b, c
    sbc h
    ld b, c
    sub [hl]
    ld b, c
    or [hl]
    nop
    rst $38
    nop
    db $eb
    nop
    ld [hl-], a
    ld [bc], a
    jr c, @-$7e

    dec e
    nop
    rla
    nop
    dec bc
    nop
    ld bc, $0044
    nop
    inc b
    nop
    inc b
    nop
    nop
    ld bc, $0100
    ld b, $00
    dec b
    ld bc, $7e00
    add c
    rst $38
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, e
    add h
    or a
    ld b, b
    cp a
    ld b, b
    xor e
    ld h, b
    nop
    rst $38
    ld b, d
    push af
    ld e, b
    adc a
    ld bc, $00e6
    xor $f6
    rst $38
    sbc c
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    dec b
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr z, @+$01

    sbc $01
    ret


    nop
    ld b, $f8
    or l
    ld a, [bc]
    or l
    nop
    dec b
    ld hl, sp-$7f
    ld a, [hl]
    ld a, b
    rst $38
    adc d
    ld a, a
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    sbc d
    ld h, h
    sbc b
    ld l, [hl]
    cp d
    cp $1a
    db $e4
    ld [$00fc], sp
    call z, $e020
    inc e
    xor $12
    call c, $de20
    ld [hl-], a
    adc $32
    sub $2a
    db $ec
    db $10
    ei
    inc bc
    ei
    inc bc
    ld a, a
    inc bc
    ld a, e
    inc bc
    ld a, a
    inc bc
    ccf
    inc bc
    or a
    inc bc
    dec sp
    inc bc
    rla
    inc bc
    inc sp
    inc bc
    daa
    inc bc
    inc hl
    inc bc
    daa
    inc bc
    inc bc
    inc bc
    daa
    inc bc

jr_089_5b9e:
    inc bc
    inc bc
    rlca
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc hl
    inc bc
    inc hl
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    nop
    rst $38
    ld c, a
    cp a
    rra
    rst $38
    ld b, a
    rst $38
    rla
    cp a
    nop
    db $fd
    ret nc

    cpl
    db $ec
    ld de, $00f7
    ei
    nop
    cpl
    ret nc

    rrca
    ret nc

    rrca
    ret nc

    dec bc
    call nz, Call_089_7f00
    ld [hl], b
    push af
    ld c, [hl]
    db $fc
    add h
    db $fc
    ld b, [hl]
    db $d3
    ld b, d
    ld e, e
    nop
    push af
    nop
    push af
    adc c
    ld e, a
    dec bc
    ccf
    add b
    rra
    ret nz

    ld e, $00
    rst $10
    ld bc, $40f7
    db $db

jr_089_5be8:
    nop
    rst $20
    ld h, b
    dec a
    ld b, b
    sub l
    xor a
    ld d, b
    nop
    sub h
    nop
    nop
    nop
    ld [$04e0], sp
    ret z

    inc b
    ld b, [hl]
    jr nz, jr_089_5b9e

    nop
    nop
    add c
    ld a, a
    add b
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_089_5be8

    jr nz, @-$23

    inc h
    db $ec
    inc de
    ld a, [hl]
    ld bc, $bf7f
    ld c, b
    rlca
    db $10
    dec b

jr_089_5c16:
    nop
    ld c, a
    nop
    ld l, a
    db $10
    rst $28
    db $f4
    rst $38
    ld a, a
    rst $38
    push de
    rst $38
    push bc
    rst $38
    add a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ld [$50f7], sp
    xor a
    db $10
    rrca
    ret z

    rst $38
    rra
    rst $38
    add [hl]
    ld a, a
    add h
    ld a, a
    ld [hl], b
    rst $38
    ld d, h
    dec bc
    db $d3
    nop
    jr z, jr_089_5c16

    ld b, b
    inc bc
    ld [hl], a
    nop
    add l
    ld a, [hl]
    db $10
    rst $28
    rst $08
    rst $38
    rlca
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
    db $fc
    db $fc
    cp $fe
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
    cp h
    db $fc
    db $fc
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    or b
    db $fc
    sub h
    ld a, h
    call z, $fc3c
    inc e
    call nz, $e43c
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    call nc, $e02c
    inc e
    db $e4
    inc e
    ldh a, [$0c]
    db $f4
    inc c
    db $fc
    inc b
    add sp, $1c
    db $ec
    inc e
    ld hl, sp+$0c
    db $e4
    inc e
    db $e4
    inc e
    db $fc
    inc c
    db $ec
    inc e
    db $ec
    inc e
    db $ec
    inc e
    call z, $a83c
    ld e, l
    adc h
    ld a, l
    sbc h
    ld a, l
    sbc $ff
    cp $ff
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    jr nc, @-$2f

    sbc e
    inc b
    rst $18
    nop
    cp $00
    rst $18
    nop
    xor a
    ld d, b
    adc b
    ld [hl], e
    ld h, b
    sbc a
    jr nc, @-$2f

    sub b
    ld h, a
    and h
    ld de, $8b70
    ld a, b
    ld b, $80
    add hl, hl
    add hl, bc
    ld [hl], e
    add hl, bc
    sub b
    ld [bc], a
    call z, $ea41
    ret nz

    pop de
    and b
    jp hl


    db $10
    db $dd
    ld [$807b], sp
    ld l, [hl]
    ld d, h
    ld b, $20
    rrca
    jr z, jr_089_5d2f

    rra
    ldh [$0b], a
    db $f4
    pop hl
    ld e, $00
    scf
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc bc
    ld a, [bc]
    dec b
    ld l, a
    sub b
    cpl
    ret nz

    rra
    ldh [$3b], a
    ld b, h
    rrca
    jr nc, @+$51

    db $10
    ld c, a
    db $10
    dec b
    jr jr_089_5d12

    ld [$ff88], sp

jr_089_5d12:
    cp $ff
    ld e, a
    rst $38
    nop
    rst $38
    inc b
    rst $18
    pop hl
    rst $38
    nop
    db $fd
    ldh [$fd], a
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add b

jr_089_5d2f:
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    adc a
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $38
    ld bc, $bd0f
    ld [bc], a
    pop hl
    cp $10
    ld l, c
    ld a, b
    sbc b
    ld hl, sp-$03
    db $fc
    cp $fe
    db $fc
    rst $38
    db $fc
    ld hl, sp-$03
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$0d
    db $fc
    rst $10
    ld hl, sp-$21
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    ld a, e
    db $fc
    rst $38
    ld hl, sp-$05
    db $fc
    rst $38
    ld hl, sp+$7b
    db $f4
    inc sp
    db $fc
    xor c
    or $1d
    ldh [$2d], a
    ret nc

    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rra
    ldh [$2d], a
    ret nc

    dec a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc e
    ldh [$2d], a
    ret nc

    inc e
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR34], a
    ldh [$0e], a
    ldh a, [$0c]
    ldh a, [rNR21]
    add sp, $06
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$03
    db $fc
    pop bc
    cp $73
    db $fc
    pop hl
    cp $63
    db $fc
    pop af
    cp $f3

jr_089_5daf:
    db $fc
    rrca
    ldh a, [rVBK]
    ldh a, [$c7]
    ld hl, sp-$09
    ld hl, sp+$3f
    ld a, b
    db $ec
    inc e
    ld hl, sp+$00
    rst $38
    nop
    ld bc, $08ee
    or a
    nop
    db $dd
    nop
    rst $30
    add hl, bc
    rst $10
    nop
    sbc $00
    rst $30
    ld bc, $02f7
    ccf
    ld b, b
    or l
    nop
    rst $20
    ld [$6063], sp
    rra
    db $e4
    ld [$0678], sp
    ld a, h
    add d
    nop
    rst $38
    nop
    db $e4
    ld [$40d0], sp
    nop
    inc d
    add b
    ld d, $c8
    add h
    ld [hl], b
    add b
    jr nc, jr_089_5df3

    ldh a, [rSC]

jr_089_5df3:
    ld sp, hl
    nop
    rst $38
    ld bc, $2cee
    add e
    ld a, [de]
    and l
    ld l, [hl]
    add c
    rlca
    ret nz

    ld [bc], a
    ret nz

    add d
    ld h, b
    ld b, c
    jr nz, jr_089_5daf

    db $10
    ld e, h
    nop
    db $f4
    nop
    db $fc
    nop
    db $fc
    nop
    add b
    ld a, h
    inc b
    add sp, -$2e
    db $fd
    ccf
    rst $38
    nop
    rst $30
    ld de, $58e0
    pop hl
    ld b, b
    sbc a
    nop
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $28
    rst $18
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    sbc a
    ccf
    or e
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    jr nc, @+$01

    ld a, l
    rst $38
    scf
    ret z

    dec h
    db $10
    sub h
    rst $38
    ld d, e
    rst $18
    set 7, a
    ld e, a
    rst $08
    ld c, a
    adc a
    or $09
    add h
    rst $08
    ld c, a
    rst $08
    ld sp, $35cf
    srl a
    jp $c33f


    ld a, a
    jp Jump_089_41bf


    rst $38
    ld bc, $0300
    ld c, b
    ld b, d
    inc b
    ld b, $4c
    ld b, a
    call nz, $6c45
    ld h, l
    ld h, h
    ld h, [hl]
    ld [hl], h
    ld [hl], l
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
    ldh [$80], a
    db $e4
    add b
    add sp, -$80
    ld sp, hl
    add b
    add sp, -$80
    db $f4
    sub b
    db $ed
    ret nz

    cp e
    add h
    ei
    and b
    rst $18
    adc b
    rst $30
    push hl
    sbc d
    call nc, $e8ab
    sub a
    ld a, [$ff85]
    add b
    db $db
    and h
    cp $81
    ld a, [$b885]
    jr c, @-$01

    ld a, l
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, l
    db $fd
    ld a, l
    db $fd
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld [bc], a
    or h
    ldh a, [$fd]
    ld h, h
    rst $38
    and c
    rst $30
    ret nc

    db $fd
    ret c

    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    xor $00
    db $db
    add b
    ld sp, hl
    add b
    dec sp
    call nz, Call_000_000d
    xor a
    nop
    rlc b
    ld [c], a
    ld hl, $8412
    ld [$0408], sp
    nop
    inc bc
    nop
    nop
    nop
    nop
    jr nz, jr_089_5f34

    sub [hl]
    ld b, $71
    ld bc, $00bc
    ld e, $80
    ld [hl], e
    add b
    inc l

Call_089_5eff:
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_089_5f55

    jr nz, jr_089_5f1f

    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [$8001], sp
    add b
    ld bc, $007c
    ld a, [de]
    ld d, h
    ld [$fb00], sp
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc bc

jr_089_5f1f:
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, b
    rst $38

jr_089_5f34:
    nop
    rst $38
    jp hl


    db $fc
    ccf
    rst $38
    add c
    rst $38
    ld de, $a8ef
    ld a, a
    sbc l
    nop
    di
    nop
    sub a
    ldh [$0d], a
    db $fd
    cp c
    db $fd
    ret


    ei
    call $ffbb
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    add h

jr_089_5f55:
    ei
    ld e, a
    and c
    sbc l
    ld h, e
    rst $18
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    db $10
    ld [hl+], a
    ld d, b
    ld h, d
    ld d, b
    ld h, d
    sub b
    add d
    sbc h
    adc [hl]
    sub h
    add h
    jr jr_089_5f76

    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_089_5f76:
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rlca
    cpl
    rlca
    rra
    rlca
    cpl
    rlca
    rra
    rlca
    rra
    rlca
    sbc a
    rlca
    ld e, a
    rlca
    cp a
    rlca
    rst $18
    rlca
    rst $38
    rlca
    rst $38
    ld c, a
    or a
    rst $28
    rla
    ld h, a
    sub a
    ld h, a
    add a
    rst $20
    rlca
    rst $20
    rla
    rst $30
    rlca
    nop
    ld hl, sp-$40
    ld hl, sp-$80
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$30
    ld hl, sp-$18
    ld hl, sp-$38
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp-$04
    ld hl, sp-$01
    ld hl, sp-$4b
    nop
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ret c

    rlca
    ld [hl], b
    adc e
    db $10
    xor l
    nop
    adc [hl]
    add d
    db $ec
    nop
    dec a
    inc c
    db $fc
    inc a
    ld a, a
    dec d
    ld a, a
    nop
    ld e, a
    ld b, $fe
    ld b, b
    rst $38
    and b
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $01
    ret z

    ld b, d
    jr nz, jr_089_5feb

jr_089_5feb:
    db $10
    inc bc
    nop
    nop
    rlca
    nop
    add h
    ld b, b
    nop
    nop
    nop
    ld l, h
    ld h, b
    adc b
    add b
    add h
    nop
    ld bc, $0000
    nop
    rst $28

Jump_089_6001:
    nop
    rst $30
    nop
    ld sp, hl

jr_089_6005:
    nop
    cp l
    nop
    cp $00
    rst $18
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rrca
    dec h
    sbc b
    dec h
    ld c, b
    nop
    rst $38
    add h
    rst $38
    db $f4
    rst $38
    sbc a
    rst $38
    ld bc, $20ff
    ld hl, sp+$02
    db $fd
    jr z, jr_089_6005

    pop af
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $10ff
    rst $38
    xor c
    cp $fb
    rst $38
    ld d, $e1
    add hl, hl
    call nz, Call_000_00ff
    ld e, l
    nop
    ld e, b
    nop
    xor a
    ret nc

    db $10
    sbc d
    jp c, $0ffb

    rst $38
    xor a
    rst $10
    rst $30
    rst $38
    rst $10
    rst $10
    rra
    rst $38
    sbc a
    ld a, a
    ld e, [hl]
    cp a
    push de
    dec a
    rst $38
    rra
    rst $10
    scf
    or $17
    ld a, [$f81b]
    jr @+$01

    ld e, $f2
    ld [de], a
    di
    ld [de], a
    di
    ld [de], a
    di
    ld [de], a
    di
    ld [de], a
    di
    ld [de], a
    di
    ld [de], a
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    rst $20
    ld b, $fe
    ld e, $fe
    ld e, $7e
    ld e, $7e
    ld e, $7e
    ld e, $7e
    ld e, $3e
    ld e, $3e
    ld e, $1f
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $3f
    ld e, $1e
    ld e, $3f
    ld e, $bf
    ld e, $7e
    ld e, $3f
    ld e, $7e
    ld e, $fe
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld a, a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld d, h
    xor e
    nop
    rst $38
    nop
    ld d, a
    nop
    db $db
    nop
    and a
    nop
    adc b
    ld [$06b2], sp
    ld d, c
    add e
    ldh a, [rLCDC]
    di
    nop
    db $fd
    ld [$00be], sp
    or e
    nop
    db $fd
    nop
    rst $38
    nop
    rlca
    add b
    inc bc
    nop
    ld b, e
    jr nz, jr_089_60ec

jr_089_60ec:
    ld c, c
    add b
    add h
    ld b, b
    ld d, b
    add e
    add h
    ld b, b
    ld hl, $0010
    inc c
    nop
    inc b
    ld bc, $8002
    nop
    or b
    jr nc, jr_089_612b

    ld c, b
    stop
    sub d
    add d
    ld h, $20
    jr z, jr_089_6134

    add h
    add h
    ld d, b
    ld d, b
    ld a, l
    dec a
    rra
    rst $38
    ld d, b
    cpl
    ld b, $79
    ld [$54ff], sp
    adc a
    ld [bc], a
    push de
    add b
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    jr nz, @+$01

    rlca
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38

jr_089_612b:
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $08
    rst $38
    db $fc
    rst $38

jr_089_6134:
    cp l
    rst $38
    ld a, [bc]
    push af
    ld b, [hl]
    add c
    dec sp
    ret nz

    ld de, $25ff
    ld a, [de]
    cp d
    nop
    sbc a
    jr nz, @-$2b

    nop
    ei
    nop
    ld b, l
    ld a, [$fb4a]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, [hl]
    cp a
    ld [c], a
    rst $38
    cp l
    rst $38
    db $e4
    cp e
    sbc a
    ld [$ffd2], a
    ld l, a
    ld a, [c]
    cp a
    pop bc
    rst $28
    ld sp, hl
    db $ed
    ei
    ld hl, sp-$41
    rst $28
    sbc l
    rst $38
    or l
    ei
    rst $10
    xor [hl]
    rst $18
    ld h, [hl]
    sbc a
    rst $30
    adc [hl]
    rst $30
    ld c, d
    ei
    inc b
    ld [hl], $0c
    ld bc, $1f36
    ld [hl+], a
    scf
    ld [bc], a
    jr c, jr_089_6182

    dec e
    ld [hl-], a

jr_089_6182:
    inc sp
    ld a, [bc]
    jr nz, jr_089_6191

    add hl, de
    ld [bc], a
    dec e
    ld [bc], a
    ld b, $09
    jr jr_089_6193

    jr jr_089_6190

jr_089_6190:
    ei

jr_089_6191:
    ei
    rst $30

jr_089_6193:
    rst $30
    rst $30
    rst $30
    rst $20
    rst $20
    rst $28
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    di
    ld a, [$0008]
    ld [$0400], sp
    ld [$0804], sp
    ld c, $00
    ld c, $00
    ld c, $00
    ld a, [bc]
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    rra
    inc bc
    rst $38
    rst $38
    rla
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    pop bc
    nop
    db $ec
    db $10
    ld b, $f9
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
    ld a, h
    nop
    and $40
    ld a, [hl+]
    nop
    ld [hl], l
    nop
    ld [$8138], a
    ccf
    nop
    inc de
    db $ec
    nop
    rst $38
    ld [$98ff], sp
    rst $38
    ld a, [hl]
    rst $38
    inc d
    rst $38
    ld [c], a
    dec e
    jp nz, Jump_000_083d

    rst $30
    nop
    db $fd
    ld [bc], a
    ld a, h
    add hl, hl
    ld d, $83
    inc c
    ld bc, $8256
    ld sp, $0840
    inc h
    nop
    ld bc, $4c00
    nop
    adc d
    nop
    inc sp
    jr nc, jr_089_6247

    inc a
    add [hl]
    ld b, $0c
    inc l
    ret nc

    rst $38
    ld a, $ff
    sub l
    ld c, e
    dec d
    ld b, b
    add b
    ld [hl], a
    add b
    ccf
    ld b, $ff
    ld [c], a
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    nop
    ei
    jp z, Jump_000_00f1

    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    ld d, $ff
    inc l
    rst $38
    ld hl, sp-$01
    dec e
    rst $38
    jr z, jr_089_6241

    ld e, c
    add b
    dec l
    ret nz

    ld b, d
    dec a
    ld c, b

jr_089_6241:
    inc bc
    ld c, l
    ld [bc], a
    ret nz

    ccf
    or h

jr_089_6247:
    ld bc, $01ea
    sbc a
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $38
    ld e, a
    rst $18
    rst $38
    ld c, a
    rst $38
    cpl
    rst $18
    ld c, a
    cp a
    rst $30
    xor a
    rst $30
    adc a
    ccf
    rst $18
    rst $38
    adc a
    ld [hl], a
    rst $08
    cp a
    ld b, a
    ld [hl], a
    adc a
    rla
    rst $28
    ld [hl], a
    adc a
    scf
    rst $08
    rst $38
    add a
    rlca
    rst $18
    ld l, a
    rst $10
    cpl
    rst $10
    ld a, e
    and a
    cp $a5
    db $fd
    and [hl]
    ld a, a
    add a
    ld a, [hl-]
    rst $20
    ld l, a
    add $ef
    ld b, $fb
    ld b, $eb
    ld b, $4a
    ld b, $c8
    ld b, $4a
    add [hl]
    jp c, $fa84

    add h
    ld l, h
    add d
    ld l, [hl]
    add b
    sbc $80
    ld l, b
    add d
    adc $00
    ld [$6e00], a
    nop
    ld c, d
    nop
    ld c, $40
    inc l
    ld b, d
    ld l, $40
    ld e, h
    nop
    inc e
    ld b, b
    ld l, h
    nop
    ld c, h
    nop
    ld a, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    nop
    pop hl
    nop
    ld a, [hl-]
    nop
    ld l, e
    nop
    ld a, b
    ld a, b
    and b
    add b
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
    ld a, [de]
    ccf
    ld a, [bc]
    rst $18
    add hl, de
    cp a
    ld b, $ef
    rlca
    or l
    ld b, $30
    ld c, h
    ld bc, $7184
    nop
    jr jr_089_62e7

    inc bc
    ld b, c
    nop
    xor b

jr_089_62e7:
    ld b, b
    nop

jr_089_62e9:
    ld hl, sp+$02
    db $f4
    ld b, b
    cp b
    add b
    inc e
    ld b, b
    rra
    ld d, d
    add b
    dec b
    and b
    ld b, l
    or b
    db $f4
    ld [$10ee], sp
    sub $29
    ld a, e
    add h
    ld bc, $1021
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    ld [hl], b
    db $10
    dec h
    nop
    jr nz, jr_089_62e9

    inc h
    rst $18
    ret nc

    rst $38
    ld a, a
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    jr @+$01

    ld [$02ff], sp
    push de
    xor d
    db $fd
    ld a, a
    rst $38
    inc de
    rst $38
    jr nz, @-$1f

    add b
    rst $38
    inc de
    ldh [$f5], a
    add sp, $27
    rst $38
    dec h
    jp z, $f00a

    ld e, c
    add $20
    rst $18
    ld c, d
    ld bc, $009d
    db $f4
    nop
    ld c, b
    rst $38
    sub b
    cpl
    add e
    ld a, a
    cp e
    ld a, a
    ccf
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ei
    ccf
    dec bc
    rst $38
    cp a
    rst $18
    sbc a
    rst $38
    rst $28
    rra
    rst $38
    ld c, $af
    ld e, a
    ld l, $df
    inc a
    call $4eb9
    cp c
    ld c, h
    ld [hl], c
    add h
    dec sp
    jp z, Jump_000_1aeb

    xor d
    ld e, e
    jp hl


    jr @-$13

    sbc d
    ld a, e
    adc d
    ld l, e
    sbc d
    ld [hl], e
    add d
    rst $18
    ld c, $9f
    ld c, $cf
    ld c, $8f
    ld c, $8f
    ld c, $cf
    ld c, $0f
    ld c, $0e
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $1e
    ld c, $1f
    ld c, $1f
    ld c, $1f
    ld c, $5f
    ld c, $5f
    ld c, $1f
    ld c, $df
    ld c, $ff
    cp $ff
    rst $38
    rst $38
    rrca
    cp a
    nop
    ld [hl], a
    nop
    ret nc

    nop
    ld a, [hl-]
    nop
    sub h
    jr nz, jr_089_63c7

jr_089_63c7:
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ldh [rTAC], a
    ret c

    nop
    rst $30
    nop
    rst $38
    nop
    db $ed
    nop
    ei
    db $10
    db $fd
    ld b, $b8
    rlca
    add sp, $00
    push af
    ret nz

    ld e, $f4
    rrca
    cp c
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    rst $38
    nop
    inc c
    nop
    ld b, $80
    nop
    ret nz

    db $10
    ld h, b
    cp h
    nop
    ld a, [bc]
    nop
    add [hl]
    nop

jr_089_63fe:
    or $00
    ld [hl], b
    rrca
    ld [hl], h
    dec bc
    cp b
    rlca
    ld a, [hl]
    ld bc, $805f
    ld a, a
    add b
    rst $18
    jr nz, jr_089_63fe

    db $10
    jr nc, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    jp c, $fefd

    rst $38
    rlca
    rst $38
    ld de, $2080
    adc $c0
    jr c, jr_089_6433

    xor $12
    add sp, -$3c
    ld hl, sp+$21
    ld c, [hl]
    ld c, $00
    ld e, c
    nop
    ld h, l
    nop
    ld h, d
    add b
    inc hl

jr_089_6433:
    call c, Call_000_00f5
    ld b, c
    and b
    ld de, $06c0
    ld hl, sp-$64
    inc bc
    ld h, c
    nop
    and a
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
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp h
    rst $38
    xor a
    ld a, [hl]
    cp $ff
    rst $38
    cp $f7
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    cp d
    cp c

jr_089_6475:
    ld a, a
    ld [hl], a
    sbc l
    rst $38
    ld d, d
    ld l, a
    or $ff
    cp [hl]
    ccf
    sbc $5d
    cp [hl]
    ld a, e
    call c, $fb76
    xor e
    ld a, l
    xor c
    ld a, [hl]
    cp $29
    xor [hl]
    ld e, c
    rst $38
    jr c, jr_089_64fc

    inc d
    inc hl
    ld e, h
    dec l
    ld b, d
    ld a, a
    nop
    ld e, b
    inc hl
    ld l, e
    nop
    ld c, b
    inc hl
    ld b, a
    jr nz, @+$04

jr_089_64a1:
    ld hl, $006b
    rst $10
    jr nz, jr_089_64a1

    nop
    sub h
    jr nz, @-$25

    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jp $963f


    jp hl


    ld sp, hl
    cp $00
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jr nz, jr_089_64ce

jr_089_64ce:
    nop
    ld c, b
    rst $38
    nop
    ld l, a

jr_089_64d3:
    sub b
    ld l, $50
    cpl
    ret nc

    ld b, $71
    nop
    rst $18
    ld bc, $07d7
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    db $ed
    nop
    rst $38
    nop
    ld [hl], l
    nop
    rrca
    db $10
    inc bc
    nop
    jr nz, jr_089_6475

    db $10
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

jr_089_64fc:
    adc a
    nop
    inc hl
    jr jr_089_64d3

    ld [$0ef0], sp
    ld d, b
    xor [hl]
    and h
    ld e, e
    jp nc, $ad2d

    ld [de], a
    dec d
    ld a, [bc]
    ld b, $00
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    ld sp, hl
    nop
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    ld e, b
    adc a
    nop
    ld l, d
    db $10
    ld a, d
    nop
    xor b
    ld [bc], a
    ld h, b
    ldh [$fa], a
    ld a, b
    ld a, a
    nop
    ld d, a
    rrca
    ld h, b
    ld b, a
    nop
    ld a, a
    nop
    db $fd
    nop
    ld l, a
    nop
    jr c, jr_089_653a

jr_089_653a:
    and e
    rra
    rra
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    xor a
    ld e, a
    rst $28
    ld a, a
    ld e, e
    rst $38
    ld l, h
    rst $38
    ld a, l
    rst $08
    rst $38
    res 7, d
    rst $08
    cp $db
    rst $08
    ei
    sub $eb
    push af
    set 7, a
    rst $08
    ld e, a
    xor a
    ld a, l
    rst $28
    rst $18
    ld h, l
    rst $20
    ld e, l
    ld [hl], a
    call $4bfd
    cp e
    ld c, l
    ld a, a
    ret


    ld a, c
    rst $08
    ld a, e
    call z, $ce31
    ld [hl], a
    adc $7f
    adc $7f
    adc [hl]
    push af
    ld c, $50
    sbc $81
    ld [bc], a
    jr z, jr_089_65c2

    ld d, b
    ld b, [hl]
    ld [hl], b
    ld h, b
    pop bc
    ld b, b
    ld b, c
    ld b, b
    db $fc
    ld l, [hl]
    cp d
    ld bc, $11a2
    add [hl]
    ld de, $01ba
    ld l, $91
    ld e, $81
    dec bc
    sub b
    or d
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
    ccf
    rst $38
    pop hl
    rra
    rst $38
    ccf

jr_089_65c2:
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp nc, Jump_000_342d

jr_089_65cd:
    set 7, a
    nop
    di
    inc c
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$c03e], sp
    add hl, bc
    and h
    add b
    rst $20
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    nop
    db $ed
    nop
    rst $38
    and b
    dec e
    jr nz, jr_089_65cd

    nop
    rst $38
    nop
    rrca
    nop
    nop
    ld [$0081], sp
    inc b
    inc d
    ld [$0000], sp

jr_089_65fc:
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    inc h
    nop
    ldh [rP1], a
    xor [hl]
    ld b, b
    adc a
    ld h, b
    and a
    ld e, b
    reti


    ld h, $fe
    nop
    rlca
    rst $38
    ld bc, $04ff
    rst $38
    db $10
    rst $38
    ld [bc], a
    db $fc
    jr jr_089_65fc

    ld h, $d0
    or [hl]
    ld hl, sp+$04
    cp a
    db $fc
    ld bc, $0046
    ld d, [hl]
    nop
    sbc a
    jr nz, jr_089_666a

    nop
    dec bc
    ldh a, [$fa]
    rlca
    rst $38
    nop
    cp [hl]
    nop
    ld hl, sp+$03
    xor a
    rra
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
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    db $eb
    rst $18
    and $df

jr_089_6654:
    rst $10
    rst $38
    ld a, a
    rst $38
    xor $ff
    rst $38
    rst $38
    cp e
    rst $38
    sbc l
    ei
    ret


    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $38
    db $dd
    ld e, [hl]
    xor l

jr_089_666a:
    rst $18
    xor l
    cp d
    push hl
    push hl
    ld a, [hl-]
    ld e, e
    cp l
    rst $18
    inc a
    db $eb
    inc a
    ld h, c
    cp [hl]
    adc a
    cp $2f
    db $fc
    ccf
    call c, Call_089_58e7
    sub e
    ld a, h
    rst $30
    jr c, jr_089_6654

    ld a, b
    rst $28
    ld e, b
    ld a, a
    ret z

    ld a, a
    adc b
    rst $38
    ld [$48bf], sp
    inc sp
    ld l, e
    nop
    inc e
    ld bc, $2319
    sbc e
    ld de, $110d
    ld c, c
    db $10
    ld c, b
    ld bc, $1149
    ld c, c
    inc b
    inc b
    nop
    ld b, b
    nop
    ld b, b
    inc b
    inc b
    ld bc, $0140
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    rrca
    stop
    ld bc, $0080
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
    nop
    nop
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc de
    nop
    add b
    ccf
    ld b, b
    rlca
    ld hl, sp+$00
    push de
    add b
    ld e, d
    ld [$0073], sp
    sbc a
    ld [bc], a
    ld a, l
    nop
    cp a

jr_089_66f0:
    nop
    rst $38
    nop
    cp h
    ld bc, $2890
    ld b, b
    inc b
    nop
    inc bc
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    ld c, b
    ld [hl-], a
    jr nc, jr_089_6705

jr_089_6705:
    nop
    ld e, b
    jr jr_089_66f0

    rlca
    db $d3
    inc bc
    db $fc
    nop
    ld l, c
    add b
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
    jr nz, jr_089_6753

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_6763

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    db $10
    db $10
    jr nc, jr_089_6775

    ld [hl-], a
    db $10
    db $10
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_089_6787

    ld a, [hl-]
    dec sp
    db $10
    inc a
    dec a

jr_089_6753:
    ld a, $3f
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    db $10
    db $10
    ld b, [hl]

jr_089_6763:
    ld b, a
    ld c, b
    db $10
    ld c, c
    db $10
    db $10
    db $10
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

jr_089_6775:
    ld d, l
    db $10
    db $10
    db $10
    db $10
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

Jump_089_6780:
    db $10
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    db $10
    ld h, b

jr_089_6787:
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
    db $10
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
    db $10
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
    db $10
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


    jp z, $10cb

    db $10
    db $10
    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    db $10
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
    jr jr_089_6860

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_089_6870

    ld [hl+], a
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
    inc b
    inc b
    ld [bc], a
    inc b
    inc b

jr_089_6860:
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
    inc b
    inc b
    inc b
    inc b
    nop

jr_089_6870:
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
    inc b
    inc b
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
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    dec b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0505
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0405
    ld bc, $0102
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0201
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    dec c
    dec c
    rrca
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    cp $ff
    rst $20
    rst $38
    sbc b
    rst $38
    ld l, c
    di

jr_089_69a6:
    inc sp
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld a, a
    nop
    rst $38
    inc b
    ld a, a
    nop
    rst $38
    db $db
    rst $38
    ld a, l
    rst $38
    ldh a, [rIE]
    ld [bc], a
    sbc h
    ld h, b
    nop
    jr jr_089_69a6

    add b
    and a
    adc [hl]
    ld a, a
    ret nc

    jp hl


    adc c
    ldh a, [$f8]
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
    cp a
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
    db $dd
    rst $38
    ld e, l
    rst $38
    pop de
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    cp e
    rst $18
    ld c, c
    db $fd
    rst $38
    ld a, l
    ld a, d
    db $fd
    ld a, $fd
    db $eb
    xor a
    xor l
    db $fd
    sub d
    inc e
    ret z

    ld a, a
    ret nc

    ld l, l
    cp $6c
    ld h, b
    ld h, a
    add l
    ld l, e
    or l
    ld [hl], e
    or a
    ld a, e
    db $f4
    ld [hl], d
    or e
    add hl, sp
    add [hl]
    db $10
    db $ec
    add hl, sp
    call nc, $de31
    dec sp
    sbc d
    ld sp, $31df
    rst $18
    ld sp, $09bf
    db $e3
    ld bc, $01ef
    rst $30
    ld bc, $01df
    db $ed
    ld bc, $016b
    rst $38
    ld bc, $01ed
    db $eb
    ld bc, $10ea
    ld h, [hl]
    nop
    ld [c], a
    db $10
    db $e4
    ld de, $01ec
    pop hl
    ld bc, $1b9b
    cp $fe
    di
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $01
    cp [hl]
    ld b, c
    rra
    ldh [$7f], a
    add b
    rra
    nop
    dec hl
    inc b
    ld [hl], c
    nop
    add hl, de

jr_089_6a67:
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    and l
    ld e, d
    adc $31
    cp h
    ld b, c
    ld b, d
    add hl, de
    ld c, $70
    xor c
    add $63
    adc b
    adc l
    ld [hl], b
    ld h, b
    adc d
    pop bc
    rra
    inc bc
    ld h, a
    rrca
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

jr_089_6a99:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    cp a
    rst $38
    jp nz, $0cff

    jp $ff00


    jr nz, jr_089_6a99

    ld b, l
    rst $38
    ccf
    rst $38
    add sp, -$09
    ld h, b
    rst $38
    jr nz, jr_089_6a67

    inc b
    dec de
    ld e, b
    and b
    nop
    add b
    db $f4
    ld hl, sp-$01
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $30
    rst $38
    ccf
    rst $38
    cp a
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
    ld l, a
    rst $38
    db $eb
    cp a
    ccf
    rst $38
    xor a
    rst $38
    cpl
    ld l, a
    ld l, a
    dec hl
    ccf
    db $eb
    ld a, [c]
    rst $28
    cp $e7
    or c
    and a
    ld [hl], l
    and e
    ld a, e
    and e
    xor l
    db $e3
    rst $18
    ld h, e
    rst $38
    inc bc
    adc $f2
    sbc $e2
    sbc $42
    cp $62
    cp [hl]
    ld [hl+], a
    cp $22
    cp [hl]
    ld [hl+], a
    xor [hl]
    ld [hl-], a
    ld l, $e2
    ld l, $a2
    inc h
    cp b
    db $76
    and d
    adc [hl]
    ld h, d
    adc [hl]
    ld [hl-], a
    ld h, $42
    xor d
    ld b, [hl]
    jp c, Jump_089_5a02

    ld [bc], a
    ld e, d
    ld [bc], a
    ld h, $82
    ld b, [hl]
    ld [de], a
    ld h, d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    add $32
    adc $a2
    ld c, [hl]
    ld [hl+], a
    ld b, $12
    inc e
    inc e
    ldh [$e0], a
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
    cp $01
    add sp, $07
    sub a
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld bc, $03f8
    ld a, [$fb04]
    inc b
    rst $20
    jr @-$3e

    ld a, $a0
    ld e, a
    nop
    cp $d1
    inc a
    add [hl]
    ld [hl], b
    inc l
    jp Jump_089_6780


    nop
    dec l
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    pop hl
    rra
    ld a, [hl+]
    rst $18
    ld e, l
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
    ei
    rst $38
    rst $20
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
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ld a, [de]
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    ld e, b
    rst $38
    ld [bc], a
    add h
    sub b
    nop
    ld d, l
    nop
    pop de
    nop
    cpl
    add b
    add sp, -$03
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $eb
    rst $28
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    rst $30
    scf
    rst $20
    cpl
    ei
    and a
    rst $28
    rst $30
    cp a
    or a
    ld [hl], e
    ld a, a
    ld a, a
    ld [hl], e
    ld h, a
    ld [hl], e
    rst $20
    ei
    di
    rst $38
    ld a, a
    ld h, a
    ld a, a
    ld [hl], e
    ld h, a
    ld [hl], e
    ld [hl], d
    ld l, [hl]
    ld a, d
    ld h, d
    ld a, a
    ld h, d
    ld a, [hl]
    ld h, d
    ld l, e
    ld h, e
    ld a, a
    ld h, e
    ei
    db $e3
    xor $e3
    xor $e3
    ld l, h
    ld h, e
    ld l, e
    ld h, e
    ld l, l
    ld h, e
    ld l, h
    ld [hl], e
    ld l, b
    ld h, d
    ld l, b
    ld h, b
    add sp, -$20
    ld hl, sp-$10
    ld [hl], b
    ld [hl], b
    ld a, [$70f0]
    ld [hl], b
    ldh a, [$f0]
    add e
    add b
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e4
    rra
    rst $28
    db $10
    cp a
    ld b, b
    ld e, $e0
    ld e, $e1
    inc a
    jp nz, Jump_000_00f3

    ldh a, [rIF]
    ldh [rNR22], a
    add b
    ld a, c
    nop
    rst $30
    nop
    db $fd
    nop
    ld a, [c]
    xor d
    dec b
    ldh [$0b], a
    ret nz

    scf
    ld bc, $60fc
    inc c
    db $10
    and a
    nop
    ld d, l
    nop
    inc sp
    nop
    dec h
    nop
    cp b
    inc hl
    ld h, a
    ld [c], a
    rra
    inc e
    ei
    jr nc, @+$01

    add c
    rst $38
    scf
    rst $38
    ccf
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
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld de, $450f
    inc bc
    ld h, b
    ccf
    and d
    nop
    sub b
    nop
    db $eb
    nop
    ld [hl+], a
    nop
    push bc
    ret nz

    call c, $fcfc
    cp $ff
    cp $fe
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
    rst $18
    rst $38
    rst $38
    xor a
    rst $28
    adc a
    rst $18
    rst $08
    rst $18
    rst $08
    rst $38
    rra
    rst $28
    ld h, a
    rst $08
    rst $18
    ld c, a
    rla
    ld c, a
    rst $00
    cpl

jr_089_6cdc:
    add a
    ld c, a
    sbc a
    ld c, a
    xor a
    ld e, a
    rst $00
    rra
    rst $18
    rrca
    rst $20
    ld c, a
    rst $20
    rrca
    and a
    rrca
    rra
    rlca
    and a
    rrca
    ld c, a
    rlca
    inc hl
    rlca
    ld c, b
    rlca

jr_089_6cf6:
    nop
    rlca
    ld d, b
    rlca
    adc c
    ld b, $09
    ld b, [hl]
    dec bc
    inc b
    rlca
    nop
    rst $30
    ldh a, [$bf]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_089_6d0b:
    nop
    rst $38
    nop
    ld h, b
    sbc a
    ldh a, [$0c]
    pop hl
    ld d, $d0
    ld a, [hl+]
    db $e4
    ld [$4920], sp
    ldh [rIF], a
    nop
    ld d, h
    jr nz, jr_089_6d0b

    or b
    rrca
    pop de
    ld l, $a6
    ld e, b
    ld a, h
    ld bc, $004f
    push hl
    jr jr_089_6cf6

    jr nz, jr_089_6cdc

    nop
    ld a, [bc]
    ld hl, $0094
    sub d
    dec c
    or c
    rrca
    ld c, h
    rlca
    jr nz, jr_089_6d5b

jr_089_6d3c:
    add d
    ld a, h
    ld sp, hl
    rst $20
    dec bc
    rst $38
    dec e
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
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
    ei

jr_089_6d5b:
    rst $38
    ld a, [$feff]
    rst $38
    ld sp, hl
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
    ei
    rst $38
    db $e3
    rst $38
    or b
    rst $38
    rra
    rst $38
    cp $ff
    nop
    rst $38
    add c
    rra
    ld c, b
    rra
    ld bc, $3402
    dec bc
    adc c
    nop
    ld hl, $8000
    ld b, $00
    inc bc
    add b
    call c, $ff01
    rst $38
    rst $38
    set 7, a
    cp h
    ld a, a
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld bc, $0000
    ldh [$e0], a
    nop
    ld b, $24
    db $10
    add c
    nop
    nop
    cp $00
    di
    jr nz, jr_089_6d3c

    ld d, b
    adc [hl]
    and e
    rrca
    ccf
    ccf
    ccf
    rst $38
    cp h
    cp $20
    or $f2
    rst $38
    nop
    db $fc
    inc c
    ldh a, [$b1]
    ld b, b
    add l
    nop
    ld d, l
    nop
    jp z, $1001

    rlca
    push bc
    rra
    rrca
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    ld e, $ff
    ld l, [hl]
    db $fc
    dec l
    ldh a, [rHDMA1]
    ld [c], a
    db $e4
    ei
    db $fc
    rst $38
    push af
    rst $38
    db $ec
    rst $38
    or $ff
    add hl, hl
    cp $70
    rst $38
    ret nz

    db $ed
    add b
    ei
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
    rst $38
    rst $38
    ld sp, hl
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc e
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    rra
    ld a, a
    nop
    call Call_000_0311
    ld b, b
    rra
    nop
    rlca
    db $10
    ld c, l
    nop
    sbc a
    add c
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
    rst $18
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
    add a
    ld d, d
    inc c
    sbc d
    nop
    cp c
    nop
    rst $38
    nop
    ld bc, $70ff
    ld [bc], a
    ret nz

    rla
    nop
    ld sp, hl
    ret nz

    ld a, [hl+]
    add e
    ld h, b
    ld [$6090], sp

jr_089_6e4f:
    dec bc
    ld l, l
    nop
    ld [hl], b
    rlca
    ld b, b
    sbc a
    inc bc
    cp $93
    inc c
    ld h, b
    rra
    ld a, [hl+]
    sub b
    sub h
    ld b, d
    and c
    ld b, h
    ld e, l
    nop
    inc d
    ret nz

    inc [hl]
    inc bc
    add d
    ld a, a
    db $10
    rst $38
    ld h, b
    rst $38
    add a
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    ret nz

    ei
    jr z, jr_089_6e4f

    ld bc, $01df
    ld a, [hl]
    inc bc
    db $fd
    ld bc, $80fe
    db $fc
    ret nc

    dec a
    nop
    rst $38
    jr nz, jr_089_6e4f

    ld [$34bc], sp
    ld a, d
    ld b, b
    db $fc
    add [hl]
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
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
    sub e
    rst $38
    dec l
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    and c
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    and b
    rst $28
    ld bc, $ebff
    rst $38
    dec c
    rst $38
    inc b
    db $fd
    rlca
    ccf
    ld [bc], a
    rst $18
    ei
    rst $38
    rst $18
    rst $38
    rst $38

jr_089_6ee3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_089_6ee9:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, b
    jr nz, jr_089_6f08

    nop
    ld e, c
    nop
    ld l, c
    ld b, $84
    push bc
    nop
    ld d, l

Call_089_6f04:
    nop
    jp z, $a104

jr_089_6f08:
    nop
    add hl, sp
    inc d
    ld a, [hl]
    ld a, d
    ld a, a
    ld a, b
    ld a, l
    ld h, h
    add b
    add hl, bc
    ldh a, [rSC]
    ld hl, sp+$40
    and c
    inc c
    add b
    rla
    nop
    and b
    inc bc
    and b
    rrca
    inc de
    rrca
    ld [de], a
    rst $38
    ret nz

    ld a, a
    ld b, a
    sbc h
    ld l, h
    sbc a
    nop
    rst $38
    or h
    rst $38
    ld sp, $c5ff
    ei
    db $d3
    and $12
    db $ec
    or d
    ld hl, sp+$74
    ld sp, hl
    ld d, b
    db $e3
    ld b, e
    inc c
    inc d
    jr nc, jr_089_6ee3

    ld h, c
    add b
    pop hl
    ld d, h
    add e
    nop
    ld c, a
    jr nz, jr_089_6ee9

    db $e4
    dec de
    ld de, $02cf
    rst $38
    cp $ff
    rst $38
    rst $38
    ld [hl], a
    rst $38
    cp e
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
    rst $38
    rst $38
    ld a, [$d4ff]
    rst $38
    ret nc

    cp $98
    rst $38
    rst $38
    rst $38

jr_089_6f70:
    ld hl, sp-$01
    jr nc, @+$01

    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld b, b
    rst $38
    add h
    rst $38
    add hl, bc
    ldh a, [$80]
    ld a, a
    add b
    rst $38
    and b
    rst $38
    ld b, d
    db $fd
    add hl, bc
    ld e, a
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $28
    rst $38
    ei
    rst $38
    ld l, a
    rst $28
    xor a
    rst $28
    xor l
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    and a
    rst $38
    rst $20
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    db $db
    rst $38
    xor a
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    db $eb
    rst $38
    or e
    rst $38
    cp e
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    sbc c
    rlca
    add hl, hl
    jp nc, Jump_000_0051

    ld l, c
    add b
    inc bc
    ld h, h
    jr nc, jr_089_6f70

    ld a, [bc]
    ld l, a
    ld bc, $005e
    dec l
    ld h, b
    cp $61
    ld a, h
    nop
    cp d
    inc bc
    xor b
    inc b
    ld [hl+], a
    nop
    inc h
    nop
    and l
    nop
    ld b, a
    xor b
    cp [hl]
    ld [hl], e
    ei
    rst $28
    rst $38
    ld d, l
    ldh a, [$82]
    ldh [$0a], a
    nop
    dec [hl]
    nop
    jp Jump_000_0408


    ld a, [c]
    ld h, c
    ret nc

    ld bc, $08e0
    jp Jump_000_044c


    ld [$2eb0], sp
    pop bc
    jp nz, Jump_089_6001

    rlca
    ld d, b
    rrca
    ld c, $bf
    ld b, a
    cp a
    add a
    ld a, a
    rrca
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    add l
    rst $38
    ld a, [de]
    rst $38
    ld b, $f7
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
    cp $ff
    or $ff
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
    ld c, $ff
    db $ed
    rst $38
    rra
    rst $38
    cp $ff
    jr nz, @-$2f

    db $10
    cp a
    dec b
    rst $18
    jr @+$01

    nop
    rst $28
    pop bc
    rst $38
    ld [c], a
    db $fc
    ld b, b
    sbc b
    ld [hl+], a
    dec e
    ld h, d
    ret nz

    ld a, [bc]
    push af
    ld d, d
    add b
    ld [de], a
    dec b
    ld [de], a
    push hl
    ld [hl], h
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
    cp $ff
    cp $ff
    cp $ff
    ld a, d
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [c]
    rst $38
    di
    cp $b6
    rst $38
    adc $ff
    adc $df
    ld b, [hl]
    rst $38
    adc $ff
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    set 7, a
    ld l, b
    rst $18
    jp $caff


    rst $38
    ld c, a
    rst $38
    ld l, d
    rst $38
    ld c, e
    rst $38
    ld e, c
    rst $38
    add hl, hl
    rst $38
    ld a, c
    rst $38
    ld a, d
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    pop de
    nop
    ld d, $00
    ld a, l
    ld [bc], a
    inc bc
    db $ec

jr_089_70d2:
    nop
    rst $38
    inc b
    di
    inc sp
    inc c
    ld e, a
    jr nz, jr_089_70d2

    ld [$208f], sp
    ld a, [$8105]
    ld a, $08
    cp l
    inc a
    cp a
    inc bc
    call nc, $7824
    xor b
    db $fd
    ld [hl], d
    rst $38
    push hl
    rst $28
    call nz, $10d6
    db $db
    or b
    db $f4
    inc b
    db $e4
    ld [bc], a
    ld [$f130], sp
    ret nz

    jp nc, $9581

    ld [$4100], sp
    nop
    ld l, d
    dec b
    sub d
    ld h, a
    nop
    rst $38
    add hl, bc
    cp $62
    db $fc
    jp $97ff


    rst $38
    db $fc
    rst $38
    ld hl, sp-$03
    ldh a, [rIE]
    ret nz

    rst $38
    ld [de], a
    add sp, $20
    db $d3
    ld c, b
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    rst $28
    rst $38
    sub $ff
    inc hl
    rst $30
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
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    sub b

jr_089_7143:
    rst $38
    jr nz, jr_089_7143

    db $10
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    ei
    nop
    db $fc
    inc e
    rst $38
    ldh [$fe], a
    inc d
    rst $38
    ld c, $bf
    ld de, $2ae8
    ld bc, $0035
    ld b, d
    or b
    call $d300
    nop
    ld c, [hl]
    nop
    xor d
    ld b, b
    push de
    ld [hl+], a
    ld hl, $f7ff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$bdff]
    rst $38
    db $fd
    rst $38
    cp h
    rst $38
    cp $7d
    cp h
    rst $38
    db $fc
    ld a, a
    jr c, jr_089_7201

    ccf

jr_089_7185:
    db $fc
    jr c, jr_089_7185

    ld a, $fd
    cp b
    ld a, l
    ld a, [hl-]
    db $fd
    ld a, b
    ld sp, hl
    cp b
    ld sp, hl
    ld a, [$f8f9]

jr_089_7195:
    ei
    ld a, b
    ei
    ld hl, sp-$05
    jr c, jr_089_7195

    dec sp
    ld hl, sp+$3a
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, b
    ld sp, hl
    cp b
    rst $38
    ld a, b
    ei
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc [hl]
    ld bc, $00ef
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    or b
    rrca
    ret nz

    rra
    db $db
    inc h
    ld a, e
    add h
    add c
    ld e, [hl]
    rlca
    ld c, b
    push hl
    ld [de], a
    adc c
    ld h, $12
    adc b
    inc c
    ld sp, $2c01
    dec h
    nop
    adc c
    nop
    ld e, e
    nop
    inc [hl]
    nop
    or b
    dec b
    add b
    rra
    ld b, b
    rrca
    rlca
    ld e, a
    ld h, d
    ccf
    ld de, $8746
    ld [c], a
    add b
    rlca
    ld bc, $909f
    ccf
    inc h
    ld a, a
    push bc
    rst $38
    sbc d
    rst $38
    cpl

jr_089_7201:
    cp $29
    cp $28
    sbc a
    ld bc, $833e
    ld a, [hl]
    ld hl, $43de
    cp l
    and h
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    dec bc
    rst $38
    ld b, $ff
    ld [$0fff], a
    ld a, a
    ld a, [$01ff]
    rst $38
    nop
    rst $38
    inc bc
    cpl
    sbc l
    ld a, a
    pop af
    pop af
    inc a
    inc a
    cp $fe
    add d
    ret nz

    ld [bc], a
    ld d, b
    ld bc, $0087
    and e
    nop
    ld a, [hl-]
    or $00
    cp a
    nop
    ld a, a
    nop
    ld [$f100], a
    inc c
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    xor [hl]
    ld a, l
    inc l
    rst $38
    cp a
    rst $38
    ld [hl], c
    cp [hl]
    ccf
    cp b
    adc $b9
    ld a, [bc]
    or h
    ld a, [hl+]
    or h
    ld h, d
    cp h
    ld b, [hl]
    cp b
    ld a, [hl+]
    or h
    ld l, $bc
    inc de
    xor l
    ld a, e
    add l
    ld b, d
    cp b
    ld h, [hl]
    cp b
    ld b, $a8
    ld [hl-], a
    adc h
    ld h, $08
    sub a
    add hl, hl
    ld [de], a
    inc l
    or [hl]
    nop
    ld a, [hl+]
    inc d
    ld [de], a
    inc h
    ld [bc], a
    inc [hl]
    dec bc
    ld [hl], l
    add e
    ld a, l
    inc bc
    ld a, l
    ld h, [hl]
    cp h
    ld bc, $107f
    xor $29
    cp a
    nop
    cp $05
    rst $38
    ld h, c
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    rst $38
    nop
    ld [hl-], a
    inc b
    ld hl, $641e
    ld [$841a], sp
    xor h
    db $10
    adc d
    nop
    ld [$0000], sp
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $18
    nop
    rst $38
    nop
    ld a, h
    inc bc
    ret z

    ld de, $25c0
    jr nz, jr_089_7316

    inc l
    nop
    inc h
    db $10
    jr nz, jr_089_7317

    ld e, e
    add h
    or d
    ld c, l
    ld b, [hl]
    cp c
    ld c, c
    ldh a, [$a9]
    ret nz

    dec h
    add b
    xor d
    inc b
    nop
    nop
    ld [bc], a
    ldh a, [$31]
    db $ec
    sbc h
    add sp, -$70
    ld a, [$1c14]
    ld l, $58
    ld [hl], b
    ld sp, $2065
    ld b, d
    ldh [$95], a
    ret nz

    add b
    pop af
    ret nz

    ld [c], a
    add e
    ld b, [hl]
    rst $38
    rst $38
    ldh a, [rIE]
    jp nc, $d0ff

    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    rst $38
    ei
    rst $38
    jp hl


    rst $38
    pop hl
    rst $38

jr_089_7316:
    cp e

jr_089_7317:
    rst $38
    db $fd
    cp $c1
    cp $c1
    db $ec
    sub b
    cp $01
    ld a, l
    cp $ff
    db $f4
    ld sp, hl
    nop
    ld sp, hl
    nop
    call c, $3d0a
    add sp, -$03
    nop
    db $f4
    ei
    ei
    db $fc
    cp $c0
    ret nc

    nop
    dec b
    ld [$1078], sp
    add $00
    db $d3
    scf
    ret z

    xor $00
    ld e, h
    ld bc, $00d7
    rst $38
    ld bc, $ff27
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $db
    rst $38
    ei
    set 2, e
    db $db
    sbc c
    rst $18
    sbc a
    reti


    and a
    ret


    scf
    adc c
    or a
    ld c, c
    db $ed
    rrca
    ld [hl], h
    sbc e
    ld a, a
    sbc a
    rst $38
    rst $38
    ld [hl], a
    ld hl, sp+$7c
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, d
    rst $38
    ld e, l
    rst $38
    ld [hl], l
    rst $38
    ld e, c
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    sbc $ff
    xor a
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    or b
    ld b, b
    jr nz, jr_089_73b4

jr_089_73b4:
    stop
    ld bc, $8101
    ld bc, $0000
    jr jr_089_73d6

    inc bc
    nop
    cp $01
    rst $28
    nop
    rst $30
    ld [$31ce], sp
    inc e
    ld h, e
    add b
    rst $18
    push bc
    ld hl, sp+$03
    ld [hl], b
    ld l, $41
    ld b, b
    ldh [rP1], a
    dec l

jr_089_73d6:
    ld d, d
    ei
    ld h, b
    db $eb
    ld h, b
    and $01
    ld d, h
    ld b, $04
    dec c
    xor h
    ld bc, $0070
    or c
    ld bc, $0171
    sub c
    inc hl
    and [hl]
    inc b
    and [hl]
    ld a, [bc]
    adc b
    jr c, jr_089_740a

    db $10
    ld [hl-], a
    jr nz, jr_089_746c

    ld d, b
    ld sp, hl
    add b
    cp c
    add hl, hl
    rlca
    inc bc
    ld h, a
    inc d
    daa
    inc c
    rst $38
    ld [bc], a
    rst $20
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    rst $38

jr_089_740a:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    call Call_089_5eff
    rst $38
    and b
    ld hl, sp+$00
    ld h, d
    nop
    ld a, $00
    db $10
    inc bc
    rrca

jr_089_7420:
    jr nc, jr_089_7420

    nop
    ret nz

    nop
    cpl
    db $10
    ld bc, $1f40
    ld b, b
    ldh a, [rSB]
    jr c, jr_089_7430

    sbc b

jr_089_7430:
    ld hl, sp-$04
    ld [$0850], sp
    jr jr_089_7444

    adc l
    ld [bc], a
    sub [hl]
    ld b, c
    dec d
    inc a
    push bc
    rst $00
    daa
    cp $00
    db $ec
    rlca

jr_089_7444:
    ld bc, $6b7b
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    or a
    ei

jr_089_745e:
    push af
    ei
    rst $10
    rst $38
    sub a
    cp a
    dec hl
    di
    push af
    inc hl
    ld c, e
    or a
    cp e
    add a

jr_089_746c:
    cp e
    add a
    cp e
    add e
    rst $38
    rst $38
    rst $38
    ld bc, $916f
    ccf
    pop hl
    ld l, a
    sub c
    ld e, a
    and c
    rrca
    pop af
    rlca
    ld sp, hl
    adc a
    pop af
    add a
    ld sp, hl
    adc a
    pop af
    rst $00
    ld sp, hl
    add a
    ld sp, hl
    rst $00
    ld sp, hl
    rlca
    ld sp, hl
    daa
    ld sp, hl
    add a
    jp hl


    rst $00
    jp hl


    rst $20
    jp hl


    rst $30
    ld sp, hl
    add a
    ld sp, hl
    rrca
    pop af
    ld c, a
    or c
    rla
    jp hl


    rrca
    ld sp, hl
    daa
    db $fd
    inc de
    db $fd
    adc e
    db $fd
    rst $08
    db $fd
    xor e
    db $fd
    ld e, e
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    ld b, [hl]
    ld bc, $001f
    ld [hl], c
    ld c, $ed
    ld [de], a
    rst $18
    jr nz, jr_089_7535

    add a
    adc b
    ld [hl], a
    rst $30
    add b
    rst $38
    nop
    db $fd
    nop
    rst $10
    jr z, jr_089_745e

    ld h, d
    dec e
    ld [c], a
    sbc e
    inc b
    jp $731c


    ld [$106e], sp
    ld l, [hl]
    ld de, $422d
    ld a, c
    add d
    or e
    nop
    scf
    ld [$104f], sp
    ld e, a
    jr nz, @+$1d

    ld b, b
    ld a, h
    add c
    ld [hl], d
    ld [$0074], sp
    jr nc, jr_089_74f4

    ld l, b
    db $10
    and b
    dec d
    ld b, h
    ld [bc], a
    adc b
    ld h, d

jr_089_74f4:
    ld bc, $02c9
    and a
    inc bc
    and a
    inc b
    ld e, $4c
    sbc $09
    ld e, a
    rrca
    cp a
    rst $38
    rst $38
    adc h
    rst $38
    nop
    rst $18
    nop
    rst $28
    ld b, c
    rst $20
    nop
    rst $20
    ld [bc], a
    ld sp, hl
    ld e, $ff
    and b
    cp $80
    add sp, $00
    jr c, jr_089_7521

    ld b, b
    ld [$0ec3], sp
    ld a, a
    ld b, b
    ld a, [c]
    ld [bc], a

jr_089_7521:
    and b
    nop
    add b
    ld [de], a
    inc c
    ld d, b
    db $fc
    add b
    db $f4
    ld b, b
    cp [hl]
    dec bc
    cp a
    ld h, d
    ld sp, hl
    nop
    nop
    nop
    db $10
    db $10

jr_089_7535:
    or b
    db $10
    jr nc, jr_089_7545

    xor a
    set 0, d
    reti


    ld sp, hl
    db $fc
    db $fd
    cp a
    ccf
    ccf
    rst $38
    db $fd

jr_089_7545:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    cp a
    cp a
    cp a
    ccf
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    cp a
    rst $28
    xor a
    rst $28
    cp a
    rrca
    cp e
    ld l, a
    dec bc
    rst $08
    ccf
    rrca
    cpl
    rst $28
    xor a
    cp a
    cp a
    ld a, a
    adc a
    rst $18
    cpl
    ld l, a
    rrca
    ld l, a
    rrca
    adc a
    rrca
    ld l, e
    cpl
    xor e
    rra
    adc a
    cpl
    ld l, a
    rrca
    rrca
    cpl
    xor a
    cpl
    adc a
    ccf
    rrca
    cpl
    rrca
    ccf
    cpl
    ccf
    xor a
    ccf
    ld l, a
    ccf
    cpl
    ccf
    ld a, a
    ccf
    rra
    ccf
    ld e, [hl]
    cp a
    dec a
    ld a, [hl]
    ld e, a
    ld a, b
    ld a, a
    ldh a, [$ec]
    ldh a, [$f0]
    nop
    ld a, e
    inc b
    ld [hl], h
    adc c
    rst $08
    nop
    rst $38
    nop
    ccf
    ret nz

    ld a, [c]
    ld [$00ff], sp
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    db $ed
    db $10
    cp a
    nop
    cp a
    ld b, b
    db $fc
    ld b, e
    ld a, h
    add e
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    nop
    rst $18
    inc h
    cp a
    ld d, b
    ld e, a

jr_089_75df:
    and b
    ld e, e
    add h
    ld [hl-], a
    adc l
    dec c
    cp d
    inc bc
    xor h
    nop
    cp e
    ld [$083f], sp
    rst $38

jr_089_75ee:
    ld l, b
    add $45
    and b
    call nz, $2c89
    pop bc
    xor b
    add c
    ld [hl+], a
    call nc, Call_089_6f04
    inc d
    ld c, l
    nop
    sbc $fb
    rst $38
    add b
    rst $38
    nop
    db $dd
    inc d
    pop hl
    ld b, b
    pop bc
    nop
    ldh [$15], a
    ld l, e
    ld a, [c]
    db $fc
    add $d0
    nop
    ld b, b
    ld [bc], a
    ld b, b
    dec b
    jr nz, jr_089_761a

    ld c, c

jr_089_761a:
    ldh a, [$f8]
    nop
    adc b
    nop
    inc b
    ld [$4200], sp
    dec de
    jr jr_089_75df

    nop
    add b
    nop
    ld [bc], a
    ld c, $0f
    add c
    sub b
    ld a, [de]
    nop
    adc b
    add [hl]
    sub b
    sbc c
    jr z, jr_089_75ee

    jr z, jr_089_7662

    inc d
    dec e
    ld d, a
    ccf
    ld e, $ff
    rst $28
    cp a
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $ec
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
    db $fd
    rst $38
    cp l
    cp $fc
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    cp $fe
    rst $38

jr_089_7662:
    rst $38
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $ff
    rst $38
    cp a
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
    dec bc
    db $f4
    ld a, a
    add b
    rst $38
    nop
    or b
    nop
    jr nz, jr_089_7684

jr_089_7684:
    ld [$8800], sp
    nop
    and e
    nop
    ld h, e
    nop
    adc a
    ld b, d
    rst $28
    nop
    ei
    nop
    ei
    nop
    db $ed
    ld [bc], a
    db $fc
    inc bc
    sub $09
    rst $20
    ld [$005d], sp
    rst $28
    db $10
    ld bc, $4830
    and b
    ld b, $79
    ld bc, $00fa
    ld a, [de]
    ld [$0400], sp
    nop
    ld b, $00
    rst $20
    ld [$10ef], sp
    rst $08
    jr nc, jr_089_76c0

    or $9f
    ld h, b
    ccf
    ld b, b
    dec sp
    ret nz

    ld a, a
    add b

jr_089_76c0:
    ld a, a
    add b
    cp $01
    rst $10
    nop
    dec a
    add d
    dec b
    ld a, b
    ld b, $7c
    rlca
    ld [hl], h
    add hl, bc
    ld a, [hl]
    sbc h
    cp $08
    rst $38
    ld bc, $00fe
    add [hl]
    inc b
    bit 1, c
    cp [hl]
    ret nz

    nop
    nop
    nop
    nop
    ld [$5100], sp
    nop
    ld bc, $4a80
    nop
    xor c
    db $10
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld hl, $1e06
    add b
    add d
    nop
    jr nz, jr_089_7709

    ld a, [de]
    sbc h
    ld a, $48
    jp z, $0404

    inc b
    inc c
    ld d, h
    ld [hl], h
    add d
    ld [bc], a
    inc de
    dec sp
    sbc b
    ret c

    add hl, bc

jr_089_7709:
    add hl, bc
    dec h
    xor l
    add a
    add a
    or a
    rst $38
    push hl
    ei
    push de
    rst $18
    rst $08
    rst $38

jr_089_7716:
    ld a, [c]
    rst $28
    ld l, e
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $28
    ld [c], a
    rst $38
    or $ff
    db $ed
    ld a, [$eacd]
    jp c, $fee5

    add c
    ret nz

    cp a
    ld e, a
    cp a
    ld d, b
    or b
    ld d, e
    or e
    ld d, a
    or a
    rst $10
    scf
    push de
    dec [hl]
    rst $10
    scf
    db $dd
    dec a
    sbc d
    ld a, [$bb5b]
    jp c, $de3a

    ld a, $9a
    ld a, d
    sbc $3e

jr_089_774c:
    sbc a
    ld a, a
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
    ccf
    rst $38
    rst $38

jr_089_775e:
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    db $10
    rst $28
    cp b
    ld b, a
    ld hl, sp+$07
    ld a, $01
    ret nc

    ret nc

    add d
    add d
    adc d
    add b
    ret nz

    ret nz

    jr nz, jr_089_777a

jr_089_777a:
    ld b, a
    nop
    ld e, h
    and b
    db $10
    ld [bc], a
    ld [$0901], sp
    sub [hl]
    ld [hl+], a
    dec d
    add b
    ld l, c
    jr nz, jr_089_774c

    nop
    db $10
    ld b, b
    ld [$8820], sp
    jr z, jr_089_7716

    jr nz, jr_089_779c

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_089_779c:
    add b
    add b
    ld b, b
    nop
    rst $18
    jr nz, jr_089_775e

    ld b, h
    dec sp
    call nz, $c03f
    ld a, l
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
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
    cp l
    ld b, d
    ccf
    ret nz

    rst $38
    ret nz

    ret nc

    ldh a, [rLCDC]
    ld b, a
    jp $33c7


    rst $38
    ldh [$e8], a
    nop
    dec h
    nop
    inc h
    dec b
    nop
    inc b
    ret nz

    inc hl
    dec bc
    ld a, l
    cp $03
    ld b, h
    rla
    nop
    inc bc
    nop
    ld c, a
    nop
    ld b, b
    xor $14
    nop
    jr jr_089_77e4

jr_089_77e4:
    nop
    jr nz, jr_089_7827

    ld h, h
    ld c, $00
    ld b, $01
    ld bc, $9801
    jp c, $b90c

    ld c, h
    push de
    ld [hl], h
    db $ec
    cp b
    db $76
    jr nc, jr_089_7870

    ret c

    cp d
    ei
    cp $dc
    rst $38
    db $f4
    cp $f6
    rst $38
    sbc [hl]
    rst $38
    dec a
    rst $38
    db $dd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    db $fd
    cp b
    pop af
    db $e3
    ld hl, sp-$35
    ldh a, [rVBK]

jr_089_7827:
    ret nc

    push af
    add b
    cp l
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    ld [$bfee], a
    rst $30
    ei
    cp e
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    and l
    ei
    ret


    rst $30
    call nz, $caff
    push af
    call z, $88e9
    push hl
    sbc [hl]
    push hl
    sbc d
    rst $38
    ld a, [$e4ff]
    ei
    pop hl
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    db $10
    rst $28
    ld h, a
    sbc b
    add hl, de
    and $82
    ld a, l

jr_089_7870:
    nop
    rla

jr_089_7872:
    ld hl, $c901
    ret


    pop de
    pop de
    dec bc
    dec bc
    add e
    inc bc
    nop
    nop
    ld [$de00], sp
    nop
    rst $38
    nop
    sbc a
    jr nz, jr_089_7872

    db $10
    db $ed
    nop
    and l
    db $10
    ld a, d
    nop
    or [hl]
    ld bc, $817e
    ld a, [$ba01]
    ld b, c
    cp a
    ld b, b
    cp [hl]
    ld b, b
    rst $38
    nop
    ld h, a
    nop
    add $00
    ld b, a
    add b
    cp [hl]
    nop
    ld [hl-], a
    nop
    and [hl]
    nop
    daa
    nop
    db $ed
    nop
    ld [hl], a
    nop
    ld hl, sp+$04
    db $ec
    nop
    db $fc
    nop
    call c, $f000
    ld [$0870], sp
    or $08
    rst $30
    ld [$08f3], sp
    ld b, b
    ld d, l
    add a
    ld e, a
    db $fc
    cp $28
    add e
    ld de, $1f80
    nop
    cpl
    nop
    scf
    nop
    and b
    inc e
    add l
    ret nz

    xor a
    nop
    ldh a, [rP1]
    ld [hl], a
    nop
    ldh a, [rDIV]
    ld bc, $1474
    add b
    inc b
    jr nz, jr_089_78e4

    dec bc

jr_089_78e4:
    ret c

    db $fc
    xor b
    ld [$09a8], sp
    rrca
    rrca
    dec de
    sbc e
    dec de
    dec de
    ld e, $9f
    nop
    cp a
    inc de
    cp a
    jp c, Jump_000_1abf

    sbc a
    sbc a
    rst $38
    ei
    rst $38
    ei
    rst $38
    or $ff
    cp $ff
    jr c, @+$01

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
    rst $18
    rst $38
    add $fb
    dec e
    ld [hl], a
    ld [hl], e
    ld e, a
    and l
    ld a, e
    rst $18
    inc sp
    db $eb
    rla
    rst $38
    inc bc
    rst $38
    inc de
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0901
    add hl, bc
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, a
    ld d, a
    ccf
    push af
    rra
    push af
    rra
    push af
    rst $18
    db $fd
    rra
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    and e
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    dec h
    rst $38
    ld bc, $f8ff
    rlca
    ld a, a
    add b
    ret nz

    ccf
    ld a, c
    ld b, $68
    rlca
    ld c, h
    inc bc
    ld c, h
    inc bc
    ld b, [hl]
    ld bc, $01f6
    adc a
    nop
    rst $38
    ld [bc], a
    rst $38
    adc b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $30
    add hl, bc
    db $fd
    ld [bc], a
    rst $38
    ld b, $ff
    sub d
    rst $38
    nop
    rst $28
    ld [bc], a
    rst $28
    jr nz, @+$01

    nop
    or a
    ld a, [bc]
    rrca
    nop
    rrca
    ld bc, $0136
    rla
    ld bc, $000f
    rrca
    nop
    ld b, $00
    add c
    nop
    add hl, bc
    nop
    ld e, c
    nop
    ccf
    nop
    rlca
    ld [$001f], sp
    sbc a
    nop
    rst $18
    nop
    ld a, [hl]
    ld bc, $00ff
    rst $38
    nop
    rst $18
    ld [bc], a
    jr c, jr_089_7a3e

    ret nz

    ldh [$ef], a
    nop
    ldh a, [rTIMA]
    ld b, b
    nop
    ei
    nop
    ld [hl], b
    inc bc
    inc c
    cp [hl]
    ld [hl], h
    add c
    cp l
    nop
    ld h, l
    nop
    xor b
    ld bc, $4e02
    nop
    ret nc

    ld bc, $0111
    dec bc
    inc de
    add hl, bc
    ld bc, $21e1
    ld bc, $0301
    dec bc
    inc bc
    inc de
    ld a, e
    inc de
    scf
    inc de
    ccf
    inc bc
    scf
    daa
    sub a
    rla
    or a
    rla
    and a
    rla
    rst $38
    and a
    rst $38
    ld l, a
    rst $38
    rst $08
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    cp $7f
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_089_7a3e:
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, e
    ei
    ld a, e
    ei
    ei
    ei
    xor $fb
    ld a, [$faff]
    rst $38
    ld a, [$fefb]
    rst $38
    ld a, [$ffff]
    cp $ee
    ei
    ei
    rst $38
    ei
    rst $38
    ld a, [$fafb]
    rst $38
    ld a, [$7afb]
    ei
    cp e
    dec sp
    rst $38
    ccf
    cp $3a
    cp $0e
    rst $38
    rrca
    cp $0e
    cp $0e
    cp $06
    cp $0e
    cp $07
    or $0f
    di
    ld c, $63
    rlca
    ld l, a
    rlca
    ld l, a
    rlca
    dec h
    inc bc
    ld d, h
    inc bc
    inc bc
    rst $38
    ld h, e
    sbc a
    xor a
    ld d, e
    ccf
    jp Jump_089_43bd


    cp l
    ld b, e
    cp a
    ld b, c
    cp $01
    ld [hl], $09
    jr z, jr_089_7abb

    ld a, [de]
    ld b, l
    nop
    ld bc, $0120
    jr nz, jr_089_7aac

jr_089_7aac:
    nop
    stop
    jr nz, jr_089_7ac1

    jr nc, @+$07

    ld hl, $2000
    add h
    jr nz, jr_089_7afd

    jr nz, jr_089_7ac0

jr_089_7abb:
    add d
    nop
    ld c, $00
    cpl

jr_089_7ac0:
    rst $38

jr_089_7ac1:
    ccf
    ccf
    ccf
    cp a
    ccf
    rst $38
    ccf
    ld a, a
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_089_7afd:
    rst $38
    rst $18
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38

jr_089_7b13:
    db $fd
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, c
    rst $38
    cp a
    db $fd
    ld a, c
    ei
    add hl, sp
    ei
    dec e
    db $fd
    cp l
    ld sp, hl
    ld e, c
    db $fd
    ld sp, hl
    ld a, l
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $dd
    cp $dd
    ld a, $f8
    inc e
    db $fc
    jr jr_089_7b13

    ld a, [hl-]
    ld a, $7a
    cp d
    cp $be
    cp a
    dec sp
    ld a, a
    add hl, sp
    ccf
    cp h
    cp b
    db $fc
    ld hl, sp-$03
    cp d
    cp d
    ld a, h
    ld a, $fd
    jr c, @+$41

    ccf
    ld a, [hl-]
    cp [hl]
    cp e
    cp [hl]
    rst $38
    add hl, sp
    cp a
    ld sp, $b43f
    dec sp
    ld [hl], b
    cp d
    ld a, $3e
    db $fc
    cp a
    inc [hl]
    ei
    ld a, [c]
    db $fd
    ld a, [$b97d]
    ld a, h
    ld a, d
    ld a, b
    or $7a
    ld [hl], d
    or $f7
    db $fc
    db $fc
    ld a, [$faff]
    rst $38
    ld a, [$fafa]
    ld hl, sp-$06
    ld hl, sp-$02
    rst $38
    ld a, d
    ld a, [hl]
    ld a, b
    ld a, b
    ld a, [$fafa]
    ld a, h
    ld a, [$7a79]
    ld a, d
    ei
    ld a, h
    ld a, e
    ldh a, [$7f]
    ld a, [hl]
    ld a, e
    inc a
    ld a, d
    ld a, b
    ld a, [hl]
    ld a, a
    ld a, [hl]
    db $76
    cp $f2
    cp $ff
    cp $ff
    cp $fa
    rst $38
    ld [hl], a
    rst $38
    ld a, [c]
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    ld h, b
    di
    ld h, b
    ei
    ld a, [$3dff]
    ld a, [hl]
    db $ed
    ld a, h
    xor h
    ld a, d
    di
    ld a, $b7
    ld a, [hl]
    ld a, $7a
    jp c, $d87a

    ld e, e
    or d
    ld e, e
    ei
    ld e, $00
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
    jr jr_089_7bf3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_089_7c03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_7c13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_089_7bf3:
    inc sp
    inc [hl]

jr_089_7bf5:
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    jr nc, jr_089_7c42

    ld b, c

jr_089_7c03:
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

jr_089_7c13:
    ld d, d

jr_089_7c14:
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
    jr nc, @+$61

    jr nc, jr_089_7c73

    ld h, b
    jr nc, jr_089_7c88

    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    jr nc, jr_089_7c62

    jr nc, jr_089_7c64

    ld c, a
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
    jr nc, jr_089_7c72

jr_089_7c42:
    db $76
    jr nc, @+$79

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

jr_089_7c52:
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
    jr nc, jr_089_7bf5

jr_089_7c62:
    sub h
    sub l

jr_089_7c64:
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
    jr nc, jr_089_7c14

jr_089_7c72:
    and e

jr_089_7c73:
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
    jr nc, @-$4d

    or d
    or e
    or h
    or l
    or [hl]
    or a

jr_089_7c88:
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    jr nc, jr_089_7c52

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $30ce
    jr nc, jr_089_7c72

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
    jr jr_089_7d06

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_089_7d16

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_089_7d26

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    inc b
    inc b
    inc b

jr_089_7d06:
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    nop
    nop
    nop
    inc b
    inc b
    inc b

jr_089_7d16:
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
    nop
    nop
    nop
    nop
    inc b
    inc b

jr_089_7d26:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
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
    nop
    nop
    nop
    inc b
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
    inc b
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
    ld bc, $0202
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
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    rlca
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
    rlca
    rlca
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
    nop
    nop
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
    dec b
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
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0c08], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0c08], sp
    inc c
    inc c
    ld [$0c0c], sp
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    rst $28
    jp hl


    ld a, c
    db $eb
    ei
    db $ec
    push af
    xor $ae
    or $01
    or $b1
    jp c, $ddb2

    ld e, a
    cp $c7
    cp $66
    cp $f7
    ld a, d
    and $7b
    db $eb
    ld l, [hl]
    cp h
    ld l, d
    ld a, e
    xor a
    rst $20
    cp a
    push af
    xor a
    rst $38
    dec a
    ld h, l
    cp a
    ld c, [hl]
    cp a
    db $f4
    dec de
    cp l
    ld a, d
    ei
    inc [hl]
    ld a, b
    or a
    or b
    ld a, a
    sbc d
    ld a, a
    cp d
    ld e, a
    sbc [hl]
    ld a, a
    cp [hl]
    ld e, a
    rst $38
    rra
    ld a, a
    sbc a
    ld l, l
    rra
    cpl
    ld e, l
    ld l, [hl]
    ld e, l
    db $f4
    ld c, a
    db $f4
    rra
    rst $20
    inc e
    rst $00
    inc a
    rst $00
    inc e
    push af
    ld c, $d4
    cpl
    cpl
    rla
    cp [hl]
    rla
    cp $17
    ld a, [c]
    ld e, $6f
    inc de
    ccf
    inc bc
    dec sp
    rlca
    ld h, a
    dec bc
    ld e, b
    rla
    xor h
    add a
    sbc a
    adc a
    cp e
    adc a
    cpl
    rrca
    dec de
    rlca
    ld hl, $42c1
    add d
    ld b, [hl]
    add d
    ld bc, $61c1
    add c
    ld a, c
    add c
    or c
    ld b, c
    ld h, c
    add c
    db $e4
    add b
    or d
    ret nz

    and c
    ret nc

    adc b
    ldh a, [$88]
    ldh a, [$90]
    add sp, -$0c
    ret z

    ldh a, [$cc]
    ret nc

    db $ec
    ret nc

    db $ec
    jp nc, $d0ec

    db $ec
    add sp, -$0c
    ld [$e8f4], a
    or $88
    sub [hl]
    adc b
    sub [hl]
    jr jr_089_7eea

    inc c
    ld [bc], a
    dec b
    ld a, [bc]
    add l
    adc d

jr_089_7eea:
    pop af
    adc $f0
    rst $38
    db $fc
    di
    db $fc
    ei
    ld a, [$f8fd]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$01

Call_089_7f00:
    db $fc
    rst $38
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fd
    cp $fd
    db $fc
    rst $38
    cp $fd
    cp $fd
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    cp $fe
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
    rst $00
    ccf
    rst $30
    dec bc
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop

jr_089_7f36:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_089_7f3b:
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_089_7f36

    ldh [$f6], a
    ld h, h
    ld a, [c]
    ld d, b
    and $0c
    ld a, [c]
    ld b, b
    ld a, d
    add [hl]
    ld a, [$5af3]
    pop hl
    ld e, d
    ld [$b94b], a
    ld c, e
    rst $38
    dec bc
    cp e
    dec bc
    push de
    ld l, e
    ld h, e
    sbc l
    ld a, c
    adc a
    rst $18
    xor a
    and a
    cp a
    rst $30
    cp a
    ld [hl], a
    rst $38
    sbc e
    rst $08
    jr jr_089_7f3b

    cp c
    rst $08
    cp c
    rst $00
    call nz, $eacd
    rst $28
    add [hl]
    db $eb
    xor [hl]
    db $d3
    ld [c], a
    jp z, $ffce

    ld h, a
    cp $ff
    ld h, [hl]
    adc a
    db $76
    ld l, $f7
    cp [hl]
    rst $30
    rst $38
    rst $30
    ld sp, hl
    rst $30
    xor $f1
    ld l, a
    pop af
    ld a, a
    pop hl
    ld a, [hl]
    and c
    ld l, a
    ld h, c
    ld h, $f1
    cpl
    ld a, [$fa75]
    db $fd
    ld a, d
    ld d, $f9
    rst $28
    ret nz

    rst $18
    ld d, b
    rst $18
    ld [hl], b
    and a
    ld h, b
    rst $30
    jr nz, @+$61

    cp b
    sbc a
    sbc b
    sbc a
    ld hl, sp-$21
    ld hl, sp-$71
    ld hl, sp-$4d
    call c, $f8db
    dec de
    db $fc
    rst $10
    adc h
    rst $18
    and h
    adc a
    db $e4
    xor l
    call nz, $d6cb
    inc hl
    sub $af
    jp nc, $c2af

    sbc a
    ld [c], a
    adc a
    ld a, [c]
    rst $18
    ld a, [c]
    cp $f3
    call $fdf3
    jp nz, $ca14

    sub a
    ld c, c
    or a
    ld h, c
    di
    ld l, l
    rst $30
    ld h, l
    cp [hl]
    dec h
    cp [hl]
    ld h, l
    cp a
    ld h, h
    adc d
    ld sp, $708b
    reti


    inc [hl]
    xor a
    inc [hl]
    bit 4, b
    xor c
    ld [hl], d
    ld [$6926], a
    ld [hl], $d9
    ld [hl-], a
    ld d, h
    ld [de], a
    ld [hl], c
    jr @+$77

    ld a, [de]
    ld [hl], l
    db $10
    ld [hl], l
    db $18
