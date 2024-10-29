SECTION "ROM Bank $08f", ROMX[$4000], BANK[$8f]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_08f_402f

    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $12
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    inc e

jr_08f_402f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $12
    ld [de], a
    ld [de], a
    dec e
    ld e, $1f
    jr nz, jr_08f_4040

jr_08f_4040:
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_08f_4073

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08f_4083

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08f_4093

    inc l
    inc l
    inc l
    ld a, [hl-]
    dec sp
    inc a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    dec a
    ld a, $3f
    inc l
    inc l
    inc l
    inc l
    ld b, b
    ld b, c
    ld b, d
    inc l
    inc l
    inc l

jr_08f_4073:
    inc l
    inc l
    inc l
    ld b, e
    ld b, h
    ld b, l
    inc l
    inc l
    inc l
    inc l
    ld [bc], a
    ld b, [hl]
    ld b, a
    inc l
    inc l
    inc l

jr_08f_4083:
    inc l
    inc l
    inc l
    ld c, b
    ld c, c
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l

jr_08f_4093:
    inc l
    inc l
    inc l
    ld c, e
    ld c, h
    ld c, l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

Jump_08f_40bb:
    ld e, c
    ld e, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, l
    ld [de], a
    ld e, e
    ld e, h
    ld [de], a
    ld [de], a
    ld e, l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld e, [hl]
    inc l
    ld c, l
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld l, [hl]
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    inc l

Jump_08f_40ff:
    inc l
    inc l
    inc l
    inc l
    inc l
    ld [hl], a
    inc l
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc l
    inc l
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
    rlca
    rlca
    rlca
    ld b, $02
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
    rlca
    inc bc
    inc bc
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
    inc b
    inc b
    ld bc, $0601
    ld b, $02
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
    nop
    nop
    ld bc, $0606
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    rlca
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    inc b
    rlca
    inc bc
    ld bc, $0402
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    daa
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    inc b
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
    ld [bc], a
    ld b, h
    nop
    inc b
    inc b
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
    rlca
    ld [bc], a
    ld b, h
    ld bc, $0703
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rlca
    ld bc, $0303
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rlca
    ld bc, $0301
    inc bc
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a

Jump_08f_4240:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    ld bc, $0301
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

jr_08f_4259:
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
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
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
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$181f], sp
    dec sp
    inc a
    ld a, b
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$05
    db $fc
    db $fd
    ld hl, sp-$05
    ei
    db $fc
    di
    db $f4
    rst $28
    ldh a, [rLCDC]
    rst $38
    adc h
    di
    jr @-$17

    or b
    rst $08
    or b
    rst $08
    nop
    rst $38
    sub b
    rst $38
    rst $00
    cp $00
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    jr z, jr_08f_4301

    ld a, b
    rlca
    add sp, $17
    ldh a, [rIF]
    add hl, sp
    ld b, $32
    inc c

jr_08f_42d4:
    jr nc, jr_08f_42e2

    ld h, h
    jr jr_08f_4259

    ld a, b
    add hl, bc
    ldh a, [$35]
    ret nz

    ld [hl], e
    add b
    ld a, h
    add e

jr_08f_42e2:
    ldh a, [rIF]
    pop bc
    ccf
    nop
    rst $38
    add b
    rst $38
    ld bc, $00ff
    ld a, a
    add c
    ld a, [hl]
    nop
    cp $42
    cp h
    add l
    ld hl, sp-$3f
    cp $e6

jr_08f_42f9:
    ld sp, hl
    rst $18
    db $e3
    or a
    rst $08
    ld e, a
    cp a
    inc bc

jr_08f_4301:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    inc bc
    rra
    rlca
    rra
    jr jr_08f_4367

    jr jr_08f_42f9

    jr nc, jr_08f_42d4

    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_08f_437d

    inc b
    ccf
    ld l, $3f
    ld b, [hl]
    ccf
    or a
    rra
    ld b, d
    ccf
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rSB]
    ld bc, $0707
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
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

jr_08f_4367:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_08f_437d:
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
    ldh [$e0], a
    db $fc
    ldh [rIE], a
    rst $38
    rst $38
    rrca
    add b
    nop
    nop
    add b
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $0301
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
    cp $38
    nop
    nop
    ld hl, sp-$40
    rst $38
    rst $38
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_08f_4400:
    cp $fe
    rst $18
    ldh [$7f], a
    add b
    ldh a, [rIF]
    rst $28
    rra
    rst $28
    rra
    rst $38
    nop
    add a
    ld hl, sp-$01
    rst $38
    add e
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
    ldh [rIE], a
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    db $fc
    add sp, -$01
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $38
    nop
    rst $08
    ldh a, [rIE]
    rst $38
    add e
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
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld l, a
    ld h, b
    ld h, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, a
    ld l, b
    ld h, b
    ld a, h
    ld h, b
    ld a, b
    ld h, b
    inc a
    inc sp
    dec a
    jr nc, @+$3a

    jr nc, jr_08f_44b6

    jr nc, @+$3b

    jr nc, @+$3b

    jr nc, jr_08f_44bc

    jr nc, jr_08f_44c2

    jr nc, jr_08f_44c3

    jr nc, jr_08f_44c5

    ld sp, $313c
    dec a
    jr nc, jr_08f_44ce

    jr nc, jr_08f_44d0

    jr nc, jr_08f_44d1

    ld sp, $313e
    ccf
    jr nc, @+$21

    jr @+$21

    jr jr_08f_44bc

    jr jr_08f_44be

    jr @+$21

    jr jr_08f_44c2

    jr jr_08f_44c4

    jr jr_08f_44c6

    jr jr_08f_44c8

    jr jr_08f_44ca

    jr jr_08f_44c8

    inc e
    add hl, de
    inc e
    jr jr_08f_44ce

    jr jr_08f_44d3

    jr jr_08f_44d5

jr_08f_44b6:
    add hl, de
    ld e, $19
    ld e, $3f
    inc a

jr_08f_44bc:
    ld a, l
    ld a, [hl]

jr_08f_44be:
    db $fd
    cp $1c
    db $fc

jr_08f_44c2:
    inc e

jr_08f_44c3:
    db $fc

jr_08f_44c4:
    inc c

jr_08f_44c5:
    db $fc

jr_08f_44c6:
    inc c
    db $fc

jr_08f_44c8:
    inc c
    db $fc

jr_08f_44ca:
    inc c
    db $fc
    inc c
    db $fc

jr_08f_44ce:
    inc c
    db $fc

jr_08f_44d0:
    inc c

jr_08f_44d1:
    db $fc
    inc c

jr_08f_44d3:
    db $fc
    inc c

jr_08f_44d5:
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $0c
    cp $06
    cp $06
    cp $06
    cp $06
    cp $07
    cp $07
    cp $06
    rst $38
    ld b, $ff
    ld b, $ff
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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

jr_08f_4514:
    rst $38
    nop

jr_08f_4516:
    rst $38
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
    ld hl, sp+$00
    rst $38
    nop
    inc bc
    db $fc

jr_08f_452a:
    ret nc

    rst $38
    rst $38
    rst $38
    rst $08
    ccf
    add b
    nop
    adc $f0
    rst $38
    rst $38

jr_08f_4536:
    and e
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop

jr_08f_4552:
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

jr_08f_455c:
    ccf
    nop

jr_08f_455e:
    ccf
    nop

jr_08f_4560:
    ccf
    nop

jr_08f_4562:
    ccf
    nop

jr_08f_4564:
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    sbc a
    ldh [$1f], a
    ld h, b

jr_08f_4572:
    rra
    ld h, b

jr_08f_4574:
    rra
    ld h, b
    sbc a
    ld h, b
    rra
    ld h, b
    ld c, a
    jr nc, @+$11

    ld [hl], b
    ld c, a
    jr nc, jr_08f_45d0

    jr nc, jr_08f_4552

    jr nc, jr_08f_4514

    jr nc, jr_08f_4516

    ld [hl], b
    rrca
    ld [hl], b
    rst $08
    jr nc, jr_08f_455c

    jr nc, jr_08f_455e

    jr nc, jr_08f_4560

    jr nc, jr_08f_4562

    jr nc, jr_08f_4564

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @-$37

    jr c, @-$37

    jr c, jr_08f_452a

    ld a, b
    ld b, a
    cp b
    rst $00
    jr c, @-$37

    jr c, jr_08f_4572

    jr c, jr_08f_4574

    jr c, jr_08f_4536

    ld a, b
    nop
    rlca
    inc b
    rlca
    nop
    rlca
    nop
    inc b
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    rlca
    sub a
    ld a, a
    or a
    ld a, a
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    cp e
    ld a, a
    cp e
    ld a, a

jr_08f_45d0:
    dec de
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    dec de
    db $fc
    cpl
    db $fc
    ld e, a
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
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
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$40
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    inc bc
    nop
    ld b, b
    ldh a, [rIE]
    rst $38
    db $e3
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
    nop
    rst $38
    nop
    db $fc
    nop
    ld b, h
    nop
    ld c, c
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    rst $38
    and d
    rst $38
    add e
    rst $38
    call $c6ff
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    nop
    ld hl, sp+$00
    cp $00
    adc a
    ld [hl], b
    cp a
    ret nz

    rst $18
    ldh [rIE], a
    nop
    rra
    nop
    sbc a
    ldh [rIE], a
    cp $e7
    rra
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    di
    ld bc, $018b
    ld b, d
    ld bc, $0348
    dec b
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    adc h
    rst $38
    cp h
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    adc c
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp a
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    daa
    rst $38
    and a
    rst $38
    nop
    and a
    nop
    and a
    nop
    and a
    nop
    rst $28
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
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    inc de
    rst $38
    or e
    rst $38
    add e
    rst $38
    nop
    add e
    nop
    and e
    nop
    and c
    nop
    or c
    nop
    push af
    nop
    rst $30
    nop
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    add hl, hl
    rst $38
    xor c
    rst $38
    and c
    rst $38
    and l
    rst $38
    nop
    or l
    nop
    xor l
    nop
    add l
    nop
    push bc
    nop
    rst $10
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
    rrca
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, l
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
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
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
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    ld sp, $3fff
    rst $38
    jr c, @+$01

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
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    ldh a, [rIE]
    rrca
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec bc
    inc c
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    pop hl
    ret nz

    add b
    add b
    adc [hl]
    nop
    adc a
    nop
    rst $00
    nop
    db $e3
    add b
    db $e3
    ret nz

    ret nz

    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$e0], a
    ld hl, sp-$18
    ldh a, [$c4]
    ld hl, sp-$40
    cp $02
    db $fc
    ld b, c
    ld a, [hl]
    db $e3
    db $fc
    ld b, c
    ld a, [hl]
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    xor b
    rst $38
    add b
    rst $38
    rst $38
    and b
    rst $38
    xor b
    rst $38
    and b
    rst $38
    jr nc, @+$01

    pop de
    rst $38
    db $f4
    rst $38
    or $ff
    or $ea
    push af
    jp nz, $e2fd

    db $fd
    ld a, [c]
    db $fd
    ld hl, sp-$01
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
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
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    db $fd
    rst $38
    cp b
    rst $38
    nop
    rst $38
    cp e
    rst $38
    rst $38
    db $fd
    ld c, $01
    ld bc, $8000
    nop
    nop
    nop
    add b
    nop
    sub b
    nop
    ret nz

    nop
    rst $08
    jr nc, jr_08f_4962

    nop
    ld c, [hl]
    ld sp, $112f
    dec c
    inc de
    ld e, $03

jr_08f_48ec:
    rlca
    ld [bc], a
    inc b
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $8001
    ld e, h
    add e
    ld b, b
    or c
    jr jr_08f_48ec

    inc a
    ld hl, sp+$3c
    cp $3f
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
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38

jr_08f_4918:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    and d
    ld e, l
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
    rst $38
    rst $38
    rst $28
    rst $38
    inc bc
    rst $38
    or h
    rst $38
    rst $38
    ret nz

    rst $18
    nop
    ld a, a
    add b
    jr nz, jr_08f_4918

    ld b, b
    and b
    ld h, b
    nop
    nop
    ld b, b
    add b
    ld b, b
    ret nz

    nop

jr_08f_4962:
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    sub c
    nop
    dec bc
    db $f4
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    and b
    rst $18
    ld b, b
    rst $38
    inc b
    ld a, a
    dec d
    dec bc
    rlca
    add b
    ret nc

    ldh [$f2], a
    db $fc
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
    dec a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    ret nz

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
    nop
    rst $38
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
    ld h, b
    ldh [rNR10], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08f_49d8:
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, h
    db $fc
    cp $fe
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    pop af
    rrca
    db $fd
    ld [bc], a
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
    ld b, b
    nop
    nop
    nop
    stop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08f_4a0a

jr_08f_4a0a:
    nop
    nop
    add b
    nop
    jr nz, @-$3e

    rra
    ldh [rIE], a
    nop
    rra
    nop
    jr nz, jr_08f_49d8

    db $e3
    db $fc
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
    ld e, a
    rst $38
    add d
    rst $38
    ld e, l
    rst $38
    dec bc
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
    ccf
    rst $38
    rra
    rst $38
    inc bc
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
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_08f_4abe

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08f_4ace

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec h
    dec h
    dec h
    ld h, $27
    jr z, jr_08f_4ae1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_08f_4abe:
    jr nc, jr_08f_4af1

    dec h
    dec h
    dec h
    dec h
    ld [hl-], a
    inc sp
    dec c
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08f_4af2

    dec h

jr_08f_4ace:
    add hl, sp
    ld a, [hl-]
    dec h
    dec h
    dec h
    dec h
    dec sp
    inc a
    dec c
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    dec h
    ld b, d
    ld b, e
    dec h
    dec h

jr_08f_4ae1:
    dec h
    dec h
    dec h
    ld b, h
    ld b, l
    dec c
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    dec h
    dec h

jr_08f_4af1:
    dec h

jr_08f_4af2:
    dec h
    dec h
    ld c, [hl]
    ld c, a
    dec c
    ld d, b
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec h
    dec h
    dec h
    dec h
    dec h
    ld d, a
    ld e, b
    dec c
    ld e, c
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec h
    dec h
    dec h
    dec h
    ld h, b
    ld h, c
    ld h, d
    dec c
    ld h, e
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    dec h
    dec h
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
    ld l, a
    ld [hl], b
    dec h
    dec h
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
    ld a, c
    ld a, d
    dec h
    dec h
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec c
    add c
    nop
    nop
    nop
    nop
    add d
    add e
    dec h
    dec h
    add h
    add l
    add [hl]
    add a
    adc b
    dec c
    dec c
    adc c
    adc d
    nop
    nop
    nop
    adc e
    adc h
    dec h
    dec h
    nop
    nop
    nop
    nop
    adc l
    dec c
    dec c
    dec c
    adc [hl]
    nop
    nop
    nop
    nop
    adc a
    sub b
    sub c
    nop
    nop
    nop
    nop
    sub d
    sub e
    dec c
    dec c
    dec c
    sub h
    nop
    nop
    nop
    nop
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    sub a
    dec c
    dec c
    dec c
    sbc b
    sbc c
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
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
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
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0100
    ld bc, $0303
    inc bc
    ld bc, $0303
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0302
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    inc b
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0400
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld b, $07
    ld b, $07
    inc c
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    inc b
    rlca
    inc c
    rrca
    ld [$180f], sp
    rra
    db $10
    rra
    jr nc, jr_08f_4d99

    jr nz, jr_08f_4d9b

    ld h, b
    ld a, a
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

jr_08f_4d99:
    rst $38
    add b

jr_08f_4d9b:
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
    nop
    nop
    nop
    rrca
    ld [$1f10], sp
    db $10
    rra
    jr nz, jr_08f_4dfb

    jr nz, jr_08f_4dfd

    ld b, b
    ld a, a
    ld b, b
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    call c, Call_000_10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b

jr_08f_4dfb:
    rst $38
    ld b, b

jr_08f_4dfd:
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $07
    cp $80
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh a, [$7f]
    ld hl, sp+$7f
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $07
    cp $04
    cp $04
    cp $06
    db $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc c
    db $fc
    inc c
    db $fc
    ld [$0cfc], sp
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$1c
    ld hl, sp+$18
    ld hl, sp+$10
    ld hl, sp+$18
    pop af
    jr @-$1d

    ld [hl], c
    add d
    db $fd
    ld b, $0b
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ce]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9e], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9e], a
    ldh [$9f], a
    ldh [$9c], a
    db $e3
    sub c
    xor $82
    db $fd
    add [hl]
    ld sp, hl
    adc a
    ldh a, [$87]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rra
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rra
    rst $18
    ccf
    cp a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    ld a, a
    ld l, a
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    ld h, a
    ld a, a
    ld [hl], b
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
    ld a, a
    rst $38
    ld a, a
    ld a, h
    rst $38
    ld [hl], h
    ld hl, sp+$54
    ldh [$72], a
    add b
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
    ld [bc], a
    nop
    dec d
    nop
    add hl, de
    nop
    adc l
    nop
    dec d
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    ld l, a
    nop
    add a
    nop
    cpl
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $18
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
    ldh [$1f], a
    add $39
    add b
    ld a, a
    rra
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    cp $00
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
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_08f_4ffd:
    rst $38
    rst $18
    rst $38
    nop
    sbc e
    nop
    sbc e
    nop
    adc e
    nop
    adc e
    nop
    di
    nop
    rst $38
    dec a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$ef]
    db $fc
    jp $e0ff


    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    rra
    or $ff
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    call z, $c0f0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ld c, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [c], a
    nop
    rst $00
    nop
    rst $28
    db $10
    ld a, $c1
    add c
    ld a, a
    rst $38
    rst $38
    ldh a, [rIE]
    add a
    ld hl, sp-$02
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
    rst $38

jr_08f_5087:
    rst $38
    rst $38
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
    inc bc
    ld d, a
    inc bc
    rst $38
    inc bc
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
    rlca
    rst $38
    jr nz, jr_08f_5087

    nop
    rst $38
    add e
    ld a, h
    rst $38
    nop
    rst $38
    rlca
    cp $ff
    ret nz

    rst $38
    inc e
    db $e3
    add hl, sp
    add $3d
    jp nz, $827d

    ld a, $c1
    nop
    rst $38
    inc e
    ldh [rNR10], a
    nop
    nop
    nop
    ld [hl+], a
    nop
    inc hl
    nop
    rra
    nop
    rla
    nop
    ld l, a
    nop
    ccf
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
    rla
    nop
    rra
    nop
    ld a, $01
    rra
    nop
    ccf
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
    rst $38
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
    db $fc
    inc bc
    rlca
    rst $38
    cp $ff
    and b
    rst $38
    ld a, $c0
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    jp hl


    rst $38
    nop
    jp hl


    nop
    reti


    nop
    reti


    nop
    db $dd
    nop
    cp l
    nop
    dec a
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
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld bc, $0000
    nop
    ld b, b
    nop
    and d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, [de]
    nop
    add hl, bc
    nop
    rrca
    nop
    sbc a
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    ld e, a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
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
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    ldh a, [rP1]
    inc bc
    rrca
    ccf
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp-$10
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    rst $38
    ld l, h
    rst $38
    ld h, d
    rst $38
    nop
    ld h, d
    nop
    ld l, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, a
    ret nz

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
    ld hl, sp-$10
    rrca
    ld a, h
    inc bc
    rlca
    nop
    inc bc
    nop
    add c
    nop
    ld hl, sp+$00
    ld l, [hl]
    sbc b
    ld e, [hl]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc sp
    db $fc
    ld [hl], e
    db $fc
    ld [hl], c
    cp $78
    rst $38
    ld hl, sp+$3f
    or $7f
    ei
    ccf
    cp $7f
    rst $38
    rst $38
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38

jr_08f_5214:
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
    ld [hl], a
    rst $38
    rst $18
    rst $38
    ld a, l
    cp $30
    ret nz

    ld bc, $e300
    rra
    rst $38
    rst $38
    ldh [rIE], a
    jr jr_08f_5214

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    adc $ff
    add $ff
    nop
    jp nz, $ca00

    nop
    ret z

    nop
    xor c
    nop
    xor c
    cp $ff
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    add b
    ld a, a
    scf
    ret nz

    ld h, e
    add b
    ld h, c
    add b
    pop hl
    nop
    ld h, b
    add b
    ld [hl], b
    add b
    inc a
    ret nz

    cp b
    ret nz

    sbc b
    ldh [$de], a
    ldh [rNR41], a
    ret nz

    cp b
    ret nz

    sbc h
    ldh [$9f], a
    ldh [$0e], a
    pop af
    nop
    rst $38
    ld b, a
    rst $38
    sbc $ff
    db $fc
    rst $38
    db $fc
    rst $38
    add $f8
    ret nz

    nop
    ld b, $01
    adc a
    ld a, a
    rst $38
    rst $38
    ld [c], a
    db $fc
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
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0001
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
    inc bc
    ld [hl], e
    inc bc
    ld h, a
    rlca
    rlca
    rlca
    rlca

Jump_08f_52f8:
    add a
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rlca
    nop
    inc bc
    ld hl, sp+$03
    inc b
    ei
    add sp, -$09
    and b
    jp $8102


    ret


    nop
    nop
    add b
    ld h, b
    add b
    nop
    nop
    jr jr_08f_533f

    rra
    rst $38
    ld hl, sp-$01
    nop
    ldh a, [rP1]

jr_08f_533f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_08f_5392

    ccf
    ld b, b
    inc a
    ld b, b
    inc a
    ld b, b
    add hl, sp
    ld b, b
    scf
    ld b, b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, b
    add b
    ld h, b
    add b
    ld b, d
    add b
    ld d, $80
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld [hl], c
    add b
    ld h, a
    add b
    rst $08
    nop
    sbc a
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ldh [$bf], a
    ret nz

    ldh [$9f], a
    or b
    rst $08
    sub e
    db $e4
    ret z

    di

jr_08f_5392:
    db $e4
    ld hl, sp-$0f
    cp $f8
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f00
    nop
    add b
    nop
    ld bc, $6100
    rra
    rst $38
    rst $38
    ldh [$fc], a
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
    rst $38
    rra
    nop
    rst $18
    nop
    cp e
    nop
    pop hl
    nop
    jp $8100


    nop
    dec de
    nop
    rlca
    nop
    rlca
    nop
    add hl, bc
    nop
    or e
    nop
    ld l, e
    nop
    rlc b
    xor h
    nop
    add hl, sp
    nop
    di
    nop
    and $01
    add $01
    sbc [hl]
    ld bc, $01fe
    cp $01
    nop
    rst $38
    rst $38
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
    ld bc, $00ff
    ld bc, $fcfe
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    rra
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    dec c
    inc bc
    cp a
    ld a, a
    ld c, $ff
    ld h, b
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
    ret nz

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
    nop
    add b
    nop
    ret nz

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
    rst $38
    ccf
    ld a, a
    sbc a
    ccf
    rst $08
    rst $20
    rlca
    rlca
    rlca
    rrca
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    rst $38
    rst $38
    di
    db $fc
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
    ld bc, $0100
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
    ccf
    rst $38
    rrca
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ldh [$f4], a
    di
    cp d
    add hl, de
    add hl, de
    ld [$0c0c], sp
    inc c
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0100
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
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $0000
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
    ld [hl], b
    add b
    cp b
    rst $00
    db $fc
    ld b, e
    ld l, [hl]
    ld hl, $3106
    inc bc
    jr jr_08f_55dc

    inc c

jr_08f_55dc:
    ld bc, $0404
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0700
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_08f_55f6:
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    jr c, jr_08f_55f6

    cp b
    ld b, h
    cp b
    ld b, [hl]
    ld a, b
    add [hl]
    ld a, [c]
    ld c, $e3
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
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
    jr jr_08f_56a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08f_56b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08f_56c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08f_56d3

    ld [hl-], a

jr_08f_56a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08f_56e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08f_56b3:
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

jr_08f_56c3:
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

jr_08f_56d3:
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
    ld h, b
    ld [hl], b
    ld [hl], c

jr_08f_56e3:
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
    ld h, b
    ld h, b
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
    ld h, b
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
    ld h, b
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
    ld h, b
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld [hl], d
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld [hl], d
    dec l
    ld l, $2f
    jr nc, jr_08f_57db

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a

jr_08f_57db:
    ld [bc], a
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
    ld bc, $0302
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    dec b
    inc bc
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    rlca
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    rlca
    ld b, $02
    nop
    nop
    ld bc, $0101
    ld bc, $0503
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [$0909], sp
    ld [$0d0b], sp
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0808], sp
    ld [$0b08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0a0a], sp
    ld a, [bc]
    nop
    ld [$0808], sp
    ld [$0b08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld e, a
    and c
    ld b, d
    cp l
    adc a
    ld [hl], c
    swap l
    ret nz

Jump_08f_58f9:
    ccf
    pop af
    rrca
    ld a, b
    add a
    db $fc
    add e
    ld c, a
    add b
    ld h, e
    add b
    ldh a, [$80]
    call z, $e080
    add b
    ld hl, sp-$80
    db $fc
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    or a
    ret z

    ld [hl], c
    ld c, $01
    ld c, $0e
    ld bc, $0041
    nop
    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    ld c, b
    ret nz

    ld h, d
    ret nz

    ld [c], a
    ld b, b
    ld h, b
    ret nz

    db $e4
    ld b, b
    ld h, h
    ret nz

    pop bc
    ld h, b
    ret nz

    ld h, b
    add b
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    add e
    ld h, h
    and b
    ld h, a
    rst $38
    rst $20
    add sp, $07
    inc bc
    nop
    add h
    nop
    jp nc, Jump_08f_7700

    jr nz, jr_08f_59c0

    or b
    ld [c], a
    or b
    db $e3
    or b
    and d
    ldh a, [$b2]
    ldh a, [$b3]
    ldh a, [$b2]
    ldh a, [$f1]
    ldh a, [$d1]
    ldh a, [$f8]
    ldh a, [$d3]
    ldh a, [$d8]
    ldh a, [$fd]
    ret nc

    db $d3
    ld sp, hl
    ldh a, [$db]
    ld a, [c]
    reti


    ldh a, [rNR31]
    add sp, -$10
    ret nz

    nop
    nop
    nop
    ld [$9800], sp
    jr jr_08f_59c1

    jr jr_08f_59e3

    ld hl, sp-$38

jr_08f_598d:
    ld hl, sp+$48
    ld hl, sp+$68
    ld hl, sp+$68
    ld hl, sp-$08
    ld l, b
    db $fc
    ld l, b
    ld hl, sp+$68
    ld l, h
    ld a, b
    ld l, h
    ld l, b
    ld sp, hl
    ld l, h
    ld a, c
    ld l, h
    ld a, h
    ld l, h
    ld a, h
    ld l, h
    db $ec
    db $ec
    call z, Call_08f_7098
    jr nc, jr_08f_598d

    ret nz

    nop
    add b
    inc c
    inc b
    inc b
    inc c
    inc l
    inc d
    ld a, h
    inc [hl]
    inc a
    inc [hl]
    inc [hl]
    inc a
    ld [hl], $34
    ld a, $34

jr_08f_59c0:
    inc a

jr_08f_59c1:
    ld [hl], $34
    ld a, $3c
    ld [hl], $3e
    ld [hl], $3e
    ld [hl], $36
    ld a, $36
    ld a, $36
    ld a, $12
    ld [hl], $48
    ld h, h
    db $10
    ret z

    jr nz, @-$6e

    ld b, c
    ld [hl+], a
    rlca
    jp nz, $8202

    rrca
    ld a, [bc]
    ld e, $1b
    dec de

jr_08f_59e3:
    rra
    rra
    dec de
    rra
    dec de
    dec de
    rra
    rra
    rra
    rra
    rra
    rrca
    rra
    cp e
    ldh [$ac], a
    ldh a, [$af]
    ldh a, [$ae]
    pop af
    and [hl]
    ld sp, hl
    xor [hl]
    pop af
    xor [hl]
    pop af
    xor [hl]
    pop af
    ld l, $f1
    xor [hl]
    ld [hl], c
    ld [$7a15], a
    dec b
    add hl, sp
    ld b, $9f
    nop
    ld l, a
    db $10
    add hl, bc
    ldh a, [$c8]
    ldh a, [rWY]
    ldh a, [$d9]
    ldh a, [$4c]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rBGP]
    ld hl, sp+$4f
    ldh a, [$67]
    ret c

    ld b, a
    ld hl, sp+$47
    ld hl, sp+$06
    ld hl, sp-$7b
    ld a, d
    cp h
    inc bc
    nop
    inc bc
    ld bc, $0800
    nop
    jr nc, jr_08f_5a3e

    ld [hl], b
    jr z, jr_08f_5a39

jr_08f_5a39:
    ld a, b
    jr nc, jr_08f_5aa4

    jr nc, @+$6a

jr_08f_5a3e:
    jr nc, @+$6a

    jr nc, jr_08f_5aaa

    jr nc, jr_08f_5aac

    jr nc, jr_08f_5aae

    inc [hl]
    ld l, b
    ld [hl], h
    jr z, jr_08f_5abf

    jr z, @-$0a

    jr z, jr_08f_5a73

    ld hl, sp+$0f
    db $fc
    cp e
    db $fc
    push af
    nop
    db $e4
    ld bc, $01ac
    ld e, l
    dec b
    push hl
    inc e
    ld a, h
    inc [hl]
    ld a, $34
    inc e
    inc [hl]
    ld d, [hl]
    inc a
    ld d, $3c
    sbc a
    inc [hl]
    or [hl]
    dec e
    ld [hl], $1d
    db $76
    dec e
    dec [hl]
    ld e, $73

jr_08f_5a73:
    ld e, $d3
    ld a, $ed
    or $e4
    ld e, $e8
    ldh a, [$c0]
    nop
    ld b, $00
    ld [hl+], a
    ld b, $9e
    ld a, [bc]
    sbc d
    ld a, [de]
    ld c, $1a
    ld c, $1a
    ld a, [bc]
    ld e, $0e
    ld a, [de]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    dec bc
    ld c, $08
    rrca
    inc l
    dec de
    ld l, l
    ld [hl-], a
    ld [c], a
    call z, $f810
    pop bc
    ld h, b

jr_08f_5aa4:
    jp $0681


    ld bc, $050f

jr_08f_5aaa:
    dec b
    dec c

jr_08f_5aac:
    dec b
    dec c

jr_08f_5aae:
    rlca
    dec c
    rlca
    dec c
    rrca
    dec b
    rrca
    dec b
    rrca
    dec b
    rrca
    dec b
    dec b
    rlca
    dec b
    rlca
    inc c

jr_08f_5abf:
    dec b
    ld d, $09
    inc b
    ld [hl-], a
    ld [$4064], sp
    ld e, c
    ld d, c
    inc hl
    inc hl
    ld b, a
    ld b, a
    rrca
    rrca
    rra
    rra
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld d, a
    ccf
    ld d, e
    ccf
    ld [hl], e
    rra
    cpl
    dec de
    daa
    dec de
    ld h, a
    dec bc
    inc a
    rlca
    dec a
    rlca
    add hl, de
    dec de
    dec hl
    ld e, $2f
    ld [hl-], a
    ld de, $322a
    ld bc, $1f22
    call c, $d867
    rst $20
    db $fc
    jp $e1d6


    db $db
    ldh [$d4], a
    ldh [$da], a
    ldh [$dc], a
    db $e3
    ret c

    rst $20

jr_08f_5b04:
    ret c

    rst $20
    ld hl, sp-$19
    cp $e3
    call c, $fce3
    ld h, e

jr_08f_5b0e:
    sbc h
    ld h, e
    ld a, [$3c07]
    inc bc
    inc a
    inc bc
    ld h, a
    jr nz, jr_08f_5b04

    ld h, b
    ld l, c
    ldh [rSVBK], a
    ldh [rBCPD], a
    ldh [$7e], a
    pop hl
    db $76
    pop hl
    db $f4
    ld h, e
    db $e4
    ld [hl], e
    ld l, [hl]
    pop af
    xor $71
    ld l, [hl]
    pop af
    ld l, $f1
    and [hl]
    ld [hl], c
    cp b
    rlca
    ld b, $01
    ld bc, $2000
    db $10
    ld h, b
    jr nc, jr_08f_5b6d

    ld [hl], b
    jr nc, jr_08f_5bb0

    ld sp, $2170
    ld [hl], b
    jr nc, jr_08f_5bb7

    ld a, b

jr_08f_5b47:
    ld sp, $3071
    ld [hl], c
    jr nc, jr_08f_5bad

    jr nc, jr_08f_5baf

    jr nc, jr_08f_5b47

    add hl, sp
    or $39
    rst $30
    jr c, jr_08f_5b0e

    ld a, b
    or [hl]
    ei
    db $dd
    ei
    add hl, de
    ld [c], a
    ld h, c
    nop
    nop
    ccf
    add hl, hl
    ccf
    scf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, l

jr_08f_5b6d:
    ld a, a
    ld [hl], c
    ld a, a
    push af
    ld a, a
    db $fc
    ld a, a
    ld a, h
    ccf
    ld a, h
    ccf
    inc e
    ccf
    inc d
    ccf
    jr nc, jr_08f_5bbd

    ld [hl], b
    ccf
    ldh a, [$3f]
    or b
    ccf
    or b
    ccf
    or b
    ccf
    jr nc, jr_08f_5bc9

    ld [hl], b
    ccf
    jr nc, jr_08f_5bcd

    jr c, jr_08f_5bcf

    ld [hl], b
    ccf
    jr nc, jr_08f_5bd3

    ld [hl], b
    ccf
    jr nc, jr_08f_5bd7

    jr c, jr_08f_5bb9

    jr jr_08f_5bbb

    jr jr_08f_5bbd

    db $10
    rra
    jr c, jr_08f_5bc1

    ld a, b
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, d
    rra
    ld e, b
    rra
    ld e, [hl]

jr_08f_5bad:
    rra
    ld e, [hl]

jr_08f_5baf:
    rra

jr_08f_5bb0:
    ld e, a
    rra
    ld a, a
    rra
    ld e, a
    rra
    ld e, a

jr_08f_5bb7:
    rra
    rra

jr_08f_5bb9:
    rra
    cpl

jr_08f_5bbb:
    rrca
    rrca

jr_08f_5bbd:
    rrca
    rrca
    rrca
    rrca

jr_08f_5bc1:
    rra
    rrca
    rra
    cpl
    ld e, a
    ld c, a
    cp a
    rrca

jr_08f_5bc9:
    cp a
    ld c, a
    cp a
    cpl

jr_08f_5bcd:
    sbc a
    rra

jr_08f_5bcf:
    xor a
    cp [hl]
    rrca
    xor [hl]

jr_08f_5bd3:
    rrca
    xor l
    rrca
    adc a

jr_08f_5bd7:
    rrca
    adc a
    rrca
    adc [hl]
    rlca
    adc h
    rlca
    adc [hl]
    rlca
    adc a
    rrca
    rrca
    rrca
    ld c, $07
    nop
    rrca
    nop
    rra
    nop
    rra
    db $10
    ccf
    jr c, jr_08f_5c6f

    ld b, d
    cp l
    inc d
    ei
    ld d, a
    cp b
    inc bc
    db $fc
    nop
    rst $38
    sub b
    ld a, a
    sub b
    ld a, a
    ret nz

    ccf
    jr nz, @-$5f

    jr nc, @-$6f

    ld e, h
    add e
    ld c, h
    add e
    sub $01
    ld h, a
    sbc b
    ld l, e
    sub h
    ld h, a
    sbc b
    ld h, e
    sbc h
    ld h, a
    sbc b
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld h, e
    sbc h
    db $e3
    inc e
    inc sp
    inc c
    rst $18
    nop
    sbc [hl]
    ld bc, $8007
    jp Jump_08f_6800


    add h
    sub [hl]
    ld [$08d6], sp
    rst $30
    ld [$08f7], sp
    rst $20
    ld [$4897], sp
    cp $00
    rst $08
    jr nc, jr_08f_5c60

    jr jr_08f_5c49

    ld bc, $0001
    ld b, b
    nop
    ld [bc], a
    add b
    ret nz

    nop
    call z, Call_08f_4400
    add b
    ret nz

jr_08f_5c49:
    inc b
    call nz, Call_000_1000
    add b
    ld b, b
    add b
    db $fd
    add h
    dec a
    call nz, $a4db
    or e
    call nz, $98e7
    ld [hl], d
    sbc l
    rst $18
    nop
    sub a
    nop

jr_08f_5c60:
    cp e
    rst $38
    db $10
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $28

jr_08f_5c6f:
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    cp $ef
    db $fd
    rst $08
    db $f4
    rst $08
    ld hl, sp-$71
    ld hl, sp+$2f
    db $f4
    cpl
    ccf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    rrca
    rst $30
    rrca
    rst $30
    dec c
    rst $30
    ld [hl], a
    ld sp, hl
    jr nc, @+$01

    ld c, $fd
    dec a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    dec c
    rst $30
    daa
    rst $38
    ld c, a
    rst $30
    dec c
    rst $30
    rra
    rst $30
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld h, a
    rst $38
    ld e, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    or $ff
    db $ec
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    ld [hl], e
    rst $38
    db $e4
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    sbc c

jr_08f_5cd7:
    rst $38
    sbc c
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    ld a, $ff

jr_08f_5ce6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    jr jr_08f_5cd7

    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_08f_5ce6

    db $10
    di
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $fc
    inc bc
    push bc
    inc bc
    rst $18
    ld bc, $00fb
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld h, b
    rra
    ld [c], a
    rra
    ld [hl], b
    adc a
    ld a, l
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, a
    add b
    ld l, h
    sub e
    ld [hl], h
    adc e
    ld a, h
    add e
    db $e4
    dec de
    call z, $7733
    ld bc, $031c
    sbc l
    inc bc
    sub $01
    ld e, e
    add b
    ld a, [$fa01]
    ld bc, $01be
    sbc d
    ld bc, $8170
    ld a, [$4e01]
    ld de, $0bff
    cp l
    inc bc
    cp $01
    cp [hl]
    ld b, c
    ld a, [$4a01]
    sub c
    db $fd
    ld [bc], a
    db $db
    nop
    or $01
    cp $01
    sbc b
    ld b, e
    ld a, c
    inc bc
    ld a, e
    add b
    sub a
    ret z

    ei
    inc b
    or $08
    ret z

    db $fc
    ld l, b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld a, b
    db $fc
    ld l, b
    db $fc
    ld l, b
    db $fc
    ld l, d
    db $fc
    ld l, d
    db $fc
    ld c, d
    db $fc
    ld a, [hl+]
    db $fc
    ld [hl+], a
    db $fc
    ld a, [hl+]
    db $fc
    ld a, [hl+]
    db $fc
    ld a, [hl+]
    db $fc
    ld [hl+], a
    db $fc
    ld a, [hl+]
    db $fc
    ld [hl+], a
    db $fc
    ld [hl+], a
    db $fc
    ld a, [hl+]
    db $fc
    ld [hl-], a
    db $fc
    ld [de], a
    db $fc
    ld a, [bc]
    db $fc
    db $10
    cp $20
    cp $30
    cp $28
    cp $28
    cp $28
    cp $30
    cp $28
    cp $30
    cp $34
    cp $b8
    cp $34
    cp $34
    cp $b0
    cp $b4
    cp $90
    cp $35
    cp $bc
    rst $38
    cp l
    rst $38
    cp c
    rst $38
    or d
    rst $38
    and $ff
    db $e4
    rst $38
    ret nz

    rst $38
    reti


    rst $38
    and e
    rst $38
    inc b
    ei
    nop
    rst $38
    inc bc
    db $fc
    ld c, $f9
    inc sp
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ld l, b
    rst $30
    ret nz

jr_08f_5dd5:
    rst $38
    pop bc

jr_08f_5dd7:
    rst $38
    add e
    rst $38
    rlca
    rst $38
    add h
    rst $38
    adc b
    rst $38
    xor c
    cp $59
    cp $14
    ei
    xor [hl]
    ld [hl], c
    cpl
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$bf], a
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
    ld a, a
    add b
    rst $18
    jr nz, jr_08f_5e79

    add a
    cpl
    ret nc

    adc l
    ld a, [c]
    ld b, a
    ld hl, sp-$1f
    ld a, [hl]
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $fc
    rra
    db $fc
    rra
    cp $0f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    inc bc
    jp $c33f


    ccf
    jp $c33f


    ccf
    or e
    ld c, a
    db $d3
    cpl
    pop de
    cpl
    ret nc

    cpl
    sbc b
    ld h, a
    ret


    scf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    inc a
    inc bc
    xor h
    inc bc
    ld b, e
    cp a
    ld bc, $21ff
    rst $38
    dec d
    rst $38
    daa
    rst $18
    db $ed
    rla
    jr c, jr_08f_5dd5

    jr c, jr_08f_5dd7

    ld a, h
    add e
    ld c, [hl]
    sub c
    db $fc
    add e
    ld a, b
    rst $10
    scf
    rst $18
    ldh [$1f], a
    ld e, d
    add l
    rla
    add b
    rla
    add b
    ld d, a
    add b
    sub l
    nop
    rla
    add c
    sub e
    add a
    db $10
    add a
    call $0790
    ret c

    cp b
    nop
    ld d, b
    jr nc, jr_08f_5eb5

    ldh a, [$83]
    ldh a, [$33]

jr_08f_5e79:
    ldh a, [$74]
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp-$50
    ld hl, sp-$4c
    ld hl, sp-$6f
    ld hl, sp-$2f
    ld a, b
    jp $c078


    ld a, b
    ret nc

    ld a, b
    ld d, b
    ld a, b
    ld d, b
    ld a, b
    ld d, b
    ld a, b
    ld d, b
    ld a, b
    ld d, b
    ld a, b
    ld d, e
    ld a, b
    ld d, e
    ld a, b
    inc bc
    ld a, b
    ld d, a
    ld a, e
    ld d, a
    ld a, e
    ld d, c
    ld a, a
    ld c, l
    ld a, a
    rra
    ld a, a
    ld c, e
    ld a, a
    db $76
    ld a, a
    xor $7f
    db $ed
    ld a, a
    nop
    rst $38
    db $10
    rst $38
    inc h

jr_08f_5eb5:
    ei
    pop hl
    rst $38
    ld b, c
    rst $38
    jp $87ff


    rst $38
    adc h
    rst $38
    ret z

    rst $38
    ld e, e
    db $fc
    add hl, bc
    db $f4
    xor b
    ld d, b
    inc e
    ldh [$85], a
    ld a, d
    inc b
    ei
    ld c, c
    rst $30
    add b
    rst $38
    rst $20
    cp $cf
    cp $a5
    sbc $04
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    ld b, c
    cp [hl]
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    db $fd
    ld [bc], a
    ld e, a
    and b
    ld a, [bc]
    push af
    inc de
    db $ec
    dec b
    ld a, [$ff00]
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
    rst $28
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
    ld a, a
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
    sub d
    ld a, a
    and d
    ld a, a
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    or a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    ld a, a
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
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    jp nz, $803f

    ld a, a
    nop
    rst $38
    db $e4
    dec de
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add h
    ld a, e
    ret nz

    ccf
    ld h, b
    rra
    ld h, b
    rra
    ld b, b
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $18
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    jr z, @+$01

    sbc b
    rst $38
    ld e, d
    rst $38
    ld e, $ff
    cp e
    rst $38
    ld [c], a
    rst $38
    ret nc

    rst $28
    ld a, c
    add [hl]
    rra
    ldh [$63], a
    sbc b
    rrca
    ldh a, [rNR30]
    push af
    jr nc, @+$01

    ld de, $20ff
    rst $38
    add b
    ld a, a
    ld [$b7f7], sp
    ld c, b
    push af
    nop
    ld e, [hl]
    add c
    db $fc
    inc bc
    cp d
    rlca
    or d
    rrca
    xor [hl]
    ld de, $5fa0
    add h
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld a, b
    rst $38
    inc d
    rst $38
    and e
    ld a, [hl]
    jr c, @+$01

    inc a
    di
    dec b
    ld a, [$18e3]
    add c
    ld a, $c1
    ld a, $4d
    jr nc, @+$4b

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

jr_08f_5ffa:
    rst $18
    jr nz, jr_08f_5ffa

    ld [bc], a
    ld [hl], a
    adc b

Jump_08f_6000:
    ret nz

    ccf
    ld [hl+], a
    db $dd
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    or $ff
    cp $ff
    cp $ff
    sub b
    rst $38
    jp nz, $c2ff

    rst $38
    jp nz, $c2ff

    rst $38
    jp c, Jump_000_08ff

    rst $38
    add c
    cp $83
    cp $c1
    cp $82
    rst $38
    jp nz, Jump_08f_40ff

    rst $38
    ld bc, $21fe
    sbc $aa
    rst $10
    xor e
    sub $a2
    rst $18
    add d
    rst $38
    add d
    db $fd
    ld hl, $71de
    adc $5d
    jp nz, $c27d

    ld h, b
    rst $18
    ld hl, $03de
    db $fc
    ld l, c
    sub $7d
    jp nz, $d669

    ld e, c
    and $c1
    cp $07
    ld hl, sp+$64
    db $db
    ld e, [hl]
    db $e3
    ld e, b
    rst $20
    ld [hl], d
    rst $08
    ld d, b
    rst $28
    ld b, $f9
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, $ff
    rst $00
    rst $38
    rst $00
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ld [$a9ff], sp
    ld e, a
    and b
    ld e, a
    add hl, de
    rst $30
    ei
    db $fd
    rrca
    ldh a, [$c5]
    ld a, [hl-]
    ld c, b
    or a
    add b
    ld a, a
    add d
    ld a, a
    ld bc, $42fe
    rst $38
    ld a, [de]
    rst $20
    add e

jr_08f_60af:
    rst $38
    db $10
    rst $28
    adc l
    ld [hl], d
    ld [hl], l
    adc d
    ld a, [hl+]
    call nc, $fc03
    add hl, bc
    cp $10
    rst $38
    dec de
    db $fc
    ld h, $d8
    rra
    ld hl, sp-$36
    cp l
    jp nc, $d13c

    ld a, $1c
    rst $38
    ld a, $ff
    jr nc, jr_08f_60af

    ld a, a
    rst $38
    dec de
    rst $38
    ld e, h
    rst $38
    jr @+$01

    db $10
    rst $38
    jp nz, Jump_08f_40ff

    rst $38
    ld h, h
    ei
    rra
    ldh [$6f], a
    sub b
    sub a
    ld l, b
    ld a, b
    add a
    ld a, [bc]
    push af
    nop
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, $f8ff

    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $50fe
    rst $38
    ld [c], a

jr_08f_610f:
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$06
    ld sp, hl
    scf
    ret c

    rlca
    ld hl, sp+$00
    rst $38
    ld [$f7f7], sp
    ld [$d823], sp
    and $18
    xor $10
    ld bc, $0cfa

jr_08f_6129:
    di
    ld a, [hl-]
    ret nz

    db $e3
    jr jr_08f_610f

    jr jr_08f_614e

    ld a, [$f81f]
    jp z, $e5ff

    ld a, [$fa05]
    sbc a
    ld a, b
    rra
    ld hl, sp-$42
    ld e, b
    db $dd
    ld a, d
    ldh [rIE], a
    dec c
    ld a, [c]
    add a
    ld a, b
    or a
    ld e, b
    ld l, $d8
    xor a
    ld e, b

jr_08f_614e:
    ld b, h
    ei
    rrca
    ldh a, [$57]
    ld hl, sp-$66
    ld a, b
    dec d
    ld hl, sp+$3b

jr_08f_6159:
    ld hl, sp+$7d
    ld a, [$ff38]
    cp $ff
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret c

    rst $38
    db $ed
    rst $38
    adc e
    rst $38
    ld sp, hl
    rst $38
    ld e, b
    rst $38
    dec hl
    call nc, $ff90
    ld b, c
    cp a
    jr z, jr_08f_6159

    sub l
    rst $38
    cp b
    rst $38
    dec c
    ldh a, [$ed]
    db $10
    ld a, [bc]
    push af
    rla
    ld hl, sp+$79
    sbc a
    pop de
    ccf
    sbc b
    ld a, a
    ret nc

    ccf
    jr nz, @+$01

    ld a, [de]
    ldh a, [rTIMA]
    ld [hl], d
    sub c
    ld h, b
    call $df30
    jr nz, jr_08f_6129

    ld [hl], c
    ld [bc], a
    db $fd
    sub l
    ld a, a
    db $d3
    dec a
    ld h, d
    cp l
    ld a, c
    cp a
    ld [hl], b
    cp a
    ld [hl+], a
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    inc bc
    ldh [$e8], a
    rst $38
    add sp, -$01
    ldh [rIE], a
    jr nz, @+$01

    add $f9
    sub b
    rst $38
    ld [bc], a
    db $fd
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
    ld bc, $3eff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, h
    sub e
    add a
    ld a, b
    inc c
    di
    nop
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    jp nz, $ffc2

    nop
    rst $38
    ld a, [hl-]
    push bc
    ld a, l
    jp nz, $db24

    ld l, h
    db $d3
    ld b, c
    cp $20
    rst $18
    cp $00
    cp e
    ld b, b
    add hl, sp
    jp nz, Jump_08f_40bb

    add hl, sp
    jp nz, $ca35

    ld d, h
    add b
    add b
    ld b, b
    ld a, l
    jp nz, $c27d

    ld a, l
    jp nz, $f24d

    adc c
    cp $dc
    nop
    sbc $40
    db $d3
    ld b, b
    db $d3
    ld b, b
    db $d3
    ld b, b
    and e
    sbc $5e
    add b
    adc d
    ld b, b
    sub d
    ld b, b
    jp nc, $9340

    ld b, b
    db $db
    ld b, b
    inc d
    ret z

    sbc $00
    jp z, Jump_08f_4240

    ld b, b
    ld [c], a
    ld b, b
    di
    ld b, b
    ld [hl+], a
    call c, Call_000_00c8
    ret z

    ld b, b
    jp nz, Jump_08f_6340

    ld b, b
    db $eb
    ld b, b
    cp d
    ld b, h
    ld hl, sp+$00
    inc b
    ld hl, sp-$01
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld [$0aff], sp
    rst $38
    nop
    rst $38
    or b
    rst $38
    inc bc
    db $f4
    di
    inc c
    ld b, e
    cp h
    rst $20
    inc e
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    cp e
    ld b, h
    dec sp
    inc b
    dec hl
    add h
    and e

jr_08f_6275:
    inc c
    ld l, e
    sub h
    dec bc
    db $e4
    add e
    db $fc
    jp Jump_000_23fc


    call c, $feff
    rst $38
    db $fc
    rst $38
    sbc $ff
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $8dc6
    ld [c], a
    adc b
    rst $30
    adc b
    rst $30
    ld b, h
    ei
    ld h, a
    ei
    jr z, jr_08f_6275

    ld a, a
    add b
    and d
    rst $38
    ld b, b
    rst $38
    ld b, h
    ei
    adc h
    ld [hl], e
    add b
    ld a, a
    ld b, b
    rst $38
    inc c
    di
    ccf
    ret nz

    cp $01
    rst $38
    ld bc, $07ff
    rst $38
    ld c, $fd
    ld e, $ff
    ld a, b
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
    sub a
    ld l, b
    inc bc
    db $fc
    add c
    cp $80
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    di
    or a
    nop
    rlc b
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    ld [bc], a
    rst $38
    inc b
    ei
    call z, $f700
    ld [$08f3], sp

jr_08f_62ea:
    or $08
    or e
    ld c, b
    sub b
    ld l, e
    rst $18
    jr nz, jr_08f_62ea

    ld [$08fb], sp
    ld l, [hl]
    sbc b
    cp $08
    dec e
    ld a, [$fb00]
    ld l, b
    nop
    and b
    ld [$0898], sp
    ret nc

    ld [$08d2], sp
    ldh [rNR31], a
    nop
    nop
    ld d, b
    ld [$0808], sp
    nop
    ld [$0800], sp
    sbc e
    ld l, b
    jr nz, jr_08f_6318

jr_08f_6318:
    ld [$0000], sp
    ld [$0008], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0808], sp
    ld h, b
    ld [$0008], sp
    ld [$1c08], sp
    ld [$081c], sp
    ld [$6c1c], sp
    inc e
    inc e
    inc c
    inc e
    inc e

Jump_08f_6340:
    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, $ff
    jr z, @+$01

    rst $38
    ld a, c
    rst $38
    dec bc
    rst $38
    ld sp, hl
    rst $38
    add sp, -$01
    ldh a, [rIE]
    cp $fe
    db $ed
    reti


    push af
    db $fd
    add d
    cp $fd
    rst $38
    db $ed
    db $fd
    and d
    cp $e3
    rst $30
    ld [hl], c
    rst $30
    ld d, h
    push af
    ld c, d
    xor $49
    rst $20
    sbc b
    db $e3
    ret nz

    db $eb
    cp a
    rst $38
    pop de
    db $fd
    cp [hl]
    rst $38
    db $fc
    rst $38
    or $ff
    push de
    rst $38
    cp d
    rst $38
    cp $ff
    xor $ff
    rst $38
    rst $38
    ld a, b
    db $fd
    rst $38
    rst $38
    db $ed
    rst $38
    cp l
    cp $fd
    cp $f7
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    db $db
    rst $38
    dec de
    rst $38
    dec sp
    di
    db $fc
    adc $f1
    add [hl]
    ld sp, hl
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
    cp a
    ld a, a
    add h
    ld a, a
    rst $28
    rst $38

jr_08f_63c0:
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    cp $ec
    ldh [$a0], a
    jr nz, jr_08f_63c0

    nop
    db $e3
    nop
    pop hl
    nop
    ld b, b
    rst $38
    inc l
    rst $10
    and l
    nop
    ldh a, [rSB]
    dec de
    ld b, b
    db $d3
    jr nz, @-$53

    ld d, b
    ld sp, $7fce
    add b
    rst $30
    inc b
    pop af
    ld b, d
    ld a, d
    ld b, c
    ld [hl], e
    ld b, b
    push hl
    ld e, d
    rst $18
    nop
    add b
    nop
    ld hl, $0140
    ld b, b
    ld h, c
    nop
    ld [hl], c
    nop
    add hl, de
    adc $00
    nop
    nop
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, b
    nop
    ld [de], a
    ret nz

    nop
    nop
    ld bc, $4200
    ld bc, $0302
    rlca
    inc bc
    ld c, a
    rrca
    inc bc
    inc bc
    ld bc, $4203
    inc bc
    nop
    inc bc
    ld b, b
    inc bc

jr_08f_641c:
    ld b, b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $4103
    inc bc
    ld b, c
    inc bc
    ld b, c
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    rst $38
    rst $38
    or a
    rst $38
    ld [hl], $ff
    nop
    rst $38
    ld c, b
    rst $38
    db $10
    rst $38
    add h
    rst $38
    nop
    rst $38
    rst $38
    xor e
    rst $38
    adc b
    sbc a
    and b
    cp $fe
    db $fc
    ld c, d
    ret nz

    push hl
    ldh [rOBP1], a
    db $ec
    ld [hl], b
    jr nc, jr_08f_641c

    jr nc, @-$26

    cp b
    ld b, h
    jr jr_08f_641c

    adc h
    ld d, d
    db $fc
    inc b
    ld b, $a8
    ld b, [hl]
    or d
    ld e, $0d
    rrca
    or c
    and e
    ld e, b
    pop bc
    ld c, $a3
    call nc, $9bf5
    cp $a1
    ld [hl+], a
    push bc
    xor $55
    ld sp, hl
    db $76
    ld a, [hl]
    inc [hl]
    ld a, h
    ld [c], a

jr_08f_6478:
    db $fd
    ld a, h
    ld a, a
    adc b
    cp e
    sbc $30
    jp nz, Jump_08f_52f8

    ld a, a
    call Call_000_2bdf
    rst $38
    rst $18
    rst $38
    ld c, h
    ld l, l
    db $fc
    rst $30
    ld h, a
    xor $7f
    ld c, $01
    ld b, b
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    add b
    nop
    ret nz

    nop
    xor b
    nop
    db $e4
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_08f_6478

    rst $38
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, e
    ccf
    db $fd
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld [hl], a
    ld a, [c]
    ld a, a
    db $f4
    ld a, a
    ld hl, sp+$7f
    ld [hl], b
    ccf
    ld [hl], c
    ccf
    ld [hl], h
    ld a, e
    ld [hl], h
    dec sp
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, d
    inc [hl]
    ld a, b
    scf
    ld [hl], b
    ccf
    ld [hl], h
    ld a, e
    ld h, h
    add hl, sp
    ld h, d
    ld a, l
    ld h, c
    db $76
    ld h, a
    jr nc, jr_08f_6564

    ld l, h
    ld l, e
    ld [hl], b
    ld l, l
    ld [hl], d
    ld l, [hl]
    ld [hl], c
    ld h, h
    ld a, c
    ld l, a
    jr nc, jr_08f_657b

    jr nz, jr_08f_6576

    jr z, @+$76

    jr z, @+$79

    jr z, jr_08f_6572

    ld h, b
    ld h, c
    ld a, [hl]
    ld l, [hl]
    ld [hl], c
    pop af
    ld h, [hl]
    db $e4
    ret


    ret nc

    db $ec
    ret nz

    xor $86
    ld sp, hl
    add b
    add b
    add b
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    call nz, $c5c1
    jp $c3c5


    push bc
    jp $c3c5


    push bc
    jp $c3c5


    pop bc
    jp $c3c5


    db $fd
    jp $81c3


    rst $38
    add b
    rst $38
    add b
    inc b
    rst $38
    ld [bc], a
    rst $38
    sub c
    rst $38
    and c
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $30
    ret nz

    dec a
    ld c, b
    ld [hl+], a
    jr @+$64

    db $10
    call z, $0800
    nop
    ld c, b
    inc hl
    sbc c
    nop
    nop
    inc bc
    db $10
    dec c
    ret nz

    inc bc
    sub b
    ld a, [bc]
    ld [$d80a], sp
    dec c
    sub b
    inc bc
    inc h
    ld l, l
    sbc [hl]
    dec b
    ld b, b

jr_08f_6564:
    add c
    nop
    add b
    ld e, b
    ret nz

    dec c
    ret nz

    ld [de], a
    ldh [rSC], a
    ld h, b
    and d
    or b
    ld c, l

jr_08f_6572:
    ld [hl], d
    db $10
    ld hl, sp+$56

jr_08f_6576:
    jr @-$51

    ld [$0cf4], sp

jr_08f_657b:
    sbc $de
    ld [hl], h
    ld a, [hl]
    sbc d
    ld a, a
    ld h, h
    rst $10
    xor e
    rst $28
    ld d, l
    add a
    ld [hl-], a
    rst $18
    and a
    rst $38
    rst $20
    ld sp, hl
    call $c2f9
    db $fd
    cp $56
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [bc], a
    nop
    ccf
    ret nz

    dec h
    jp c, $ff00

    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp a
    ld e, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    di
    rst $38
    rst $10
    rst $38
    db $e3
    rst $38
    jp $c7ff


    rst $38
    rst $00
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
    ld a, a
    rst $38
    ld a, a
    cp [hl]
    ld a, l
    ret nc

    cpl
    nop
    rst $38
    rst $08
    inc sp
    adc e
    ld a, a
    sub [hl]
    ld l, l
    ld c, l
    or a
    ld a, c
    and $11
    xor $3b
    db $d3
    or e
    call z, Call_000_0ce3
    rst $10
    ld [$49b6], sp
    and a
    ld e, c
    rst $20
    add hl, de
    rst $08
    nop
    and l
    nop
    sbc $01
    push de
    nop
    or [hl]
    ld b, b
    cp d
    ld b, c
    add sp, $07
    inc b
    db $eb
    inc d
    db $eb
    ld c, e
    or h
    add d
    ld a, h
    jp $fef7


    nop
    nop
    nop
    ld de, $dd00
    nop
    rlca
    ld hl, sp-$06
    db $fc
    db $fd
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    ld c, $fc
    ld c, $fc
    cp $fc
    add a
    db $fc
    db $fc
    nop
    and e
    nop
    nop
    rst $38
    call nz, Call_000_23ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    ld d, a
    sbc b
    ld bc, $c401
    ld bc, $1f88
    nop
    scf
    add b
    and a
    ret nz

    sbc a
    inc bc
    ld b, a
    cpl
    ccf
    rrca
    ld a, a
    ld a, $f2
    ld a, b
    ld a, b
    ldh a, [rBCPD]
    and $e9
    ld sp, $49b2
    db $ec
    ld bc, $a24d
    ld a, [hl]
    inc c
    ld c, e
    ld b, h
    rst $18
    pop bc
    ld sp, $2570
    ld [$0024], sp
    inc bc
    jr nc, jr_08f_667f

    jr jr_08f_6675

jr_08f_6675:
    inc de
    nop
    ld l, [hl]
    ld [$0150], sp
    inc h
    ld h, b
    ld a, [bc]
    ld a, h

jr_08f_667f:
    ld bc, $402e
    nop
    db $dd
    sbc h
    ld [hl+], a
    add b
    and d
    ret nz

    sbc $e0
    ret z

    ldh [$78], a
    ld [hl], b
    or $1f
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
    cp $01
    ccf
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    cp $80
    rst $38
    add d
    rst $38
    adc a
    cp $d7
    cp $97
    xor $06
    rst $08
    sbc a
    adc $1c
    rst $18
    inc c
    rst $18
    jr @+$01

    ldh a, [rIE]
    ei
    rst $38
    ret nc

    rst $38
    scf
    nop
    cp a
    nop
    rst $18
    nop
    dec sp
    nop
    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    ld l, e
    add h
    ld a, e
    add h
    ld l, e
    sub h
    ld l, a
    sub b
    ld [$85f7], sp
    rst $38
    db $fc
    add e
    ret nz

    cp a
    ld h, d
    sbc l
    ld h, d
    sbc l
    inc e
    rst $20
    inc a
    rst $00
    xor a
    nop
    rst $38
    nop
    or a
    nop
    cp a
    nop
    cp a
    nop
    sbc a
    rst $20
    dec hl
    nop
    adc a
    nop
    inc b
    nop
    nop
    nop
    dec d
    nop
    db $ec
    inc bc
    add c
    nop
    add l
    nop
    ret z

    add b
    ret z

    add b
    ret z

    ldh [$ef], a
    ldh [$82], a
    ldh a, [$e0]
    nop
    pop hl
    nop
    ldh [rP1], a
    add sp, $00
    ld h, [hl]
    adc b
    ld h, a
    add b
    ld h, h
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld a, [c]
    nop
    rst $38
    nop
    ld [c], a
    nop
    ld a, a
    add b
    cpl
    rst $18
    rra
    rra
    dec c
    rlca
    pop hl
    rra
    inc b
    rst $38
    dec de
    rst $38
    ld c, h
    rst $38
    jr nz, @+$01

    nop
    rst $38

jr_08f_6740:
    di
    ld c, b
    inc c
    dec b
    ld a, $40
    ld e, a
    sub c
    ld a, a
    rla
    ld a, a
    ld a, $fe
    db $fc
    ld a, [$e5f8]
    ret z

    ret nz

    add h
    add b
    jr nz, @+$12

    inc l
    nop
    ld [$df00], sp
    nop
    adc d
    nop
    xor a
    nop
    ld b, a
    nop
    add b
    nop
    sub d
    ldh [rLCDC], a
    ldh [$f6], a
    ld sp, hl
    ldh a, [rIE]
    reti


    sbc a
    ccf
    daa
    rla
    ld [hl], $00
    inc bc
    ld c, b
    inc bc
    ld b, b
    add e
    jr nz, jr_08f_6740

    ld b, $c0
    call z, $8402
    nop
    inc d
    nop
    sub a
    nop
    ld a, $03
    ld d, h
    add hl, de
    ret z

    nop
    ld a, [c]
    nop
    sub b
    nop
    add b
    db $fc
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    add e
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ld b, e
    add b
    ld a, l
    nop
    ld bc, $0f02
    or b
    rlca
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld a, [bc]
    rst $38
    db $fd
    rst $38
    cp $c0
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld bc, $00ff
    nop
    rst $38
    ld sp, $48ff
    cp a
    sbc $21
    jp nz, $da3d

    dec h
    call z, $c433
    dec sp
    ld b, d
    cp l
    rst $18
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ret nc

    dec hl
    ld b, d
    cp l
    dec sp
    nop
    call z, $d833
    daa
    pop af
    rrca
    and [hl]
    ld e, e
    dec e
    ei
    ld l, [hl]
    ld de, $017e
    xor $11

Jump_08f_6800:
    db $fc
    inc bc
    ld a, [hl]
    inc bc
    add l
    ld a, e
    ld a, a
    nop
    ld a, b
    inc bc
    ld [hl], e
    nop
    scf
    nop
    ld a, l
    ld b, $76
    dec sp
    ld a, [hl]
    ld bc, $0370
    ld d, e
    nop
    ld b, a
    nop
    ld d, l
    ld [bc], a
    ld a, h
    inc bc
    ld a, [hl-]
    ld bc, $0176
    ld d, c
    ld [bc], a
    rst $00
    nop
    push de
    ld [bc], a
    cp h
    ld b, e
    ld a, h
    inc bc
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld e, c
    rst $38
    sbc e
    rst $38
    nop
    rst $38
    rst $38
    nop
    di
    add b
    nop
    ld de, $12c1
    cp [hl]
    ld h, b
    cp $7c
    rst $38
    adc a
    ld bc, $0163
    inc c
    dec e
    add b
    add b
    ld [$1c00], sp
    nop
    dec e
    nop
    ld c, b
    nop
    ret nc

    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld e, d
    nop
    jp z, Jump_08f_6000

    nop
    cp l
    ld b, d
    or l
    db $f4
    jp z, $faff

    rst $38
    rst $38
    ld a, a
    cpl
    rst $08
    rla
    rrca
    ld a, [hl]
    sbc b
    inc hl
    ldh [$80], a
    add hl, bc
    ld [de], a
    ld [$0041], sp
    jr nc, jr_08f_68a7

    ld c, b
    ld [$c027], sp
    db $10
    ldh [rNR11], a
    ld a, b
    ld b, $3c
    ld [bc], a
    ld c, $f3
    ret nc

    daa
    cp b
    rrca
    ld a, [bc]
    rrca
    jr jr_08f_68a7

    jr c, @+$21

    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [$fd]
    pop hl
    pop af
    ld b, c
    ld [c], a
    inc bc
    add h
    rlca

jr_08f_68a7:
    adc b
    adc a
    ld d, b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop

Jump_08f_68b0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$708f], sp
    db $ed

jr_08f_68bb:
    ld [de], a
    cp e

jr_08f_68bd:
    ld b, h
    ret nz

    ccf
    db $10
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_08f_68c9:
    rlca
    rst $38

jr_08f_68cb:
    dec b
    rst $38
    dec c
    rst $38
    inc c
    ld b, $ff
    rst $28
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    jr jr_08f_68c9

    jr nz, jr_08f_68bb

    jr nz, jr_08f_68bd

    ld b, $ff
    ld c, $ff
    ldh [$1f], a
    pop hl
    ld e, $e1
    ld e, $b0
    ld c, a
    jr nz, jr_08f_68cb

    jr @-$0f

    ld hl, sp+$07
    rst $30
    ld [$0cd3], sp
    db $d3
    inc c
    ld b, h
    sbc d
    ld sp, $f9ce
    ld b, $cf
    db $10
    sub a
    ld [$9f24], sp
    ld [hl], c
    sbc [hl]
    inc a
    rst $18
    ld h, $df
    ld [hl], d
    sbc l
    jp Jump_000_231c


    sbc h
    and b
    dec e
    cp [hl]
    db $dd
    inc h
    rst $18
    ld h, d
    sbc l
    ldh [rNR33], a
    and b
    dec e
    or h
    add hl, de
    ld a, a
    sbc l
    ld b, b
    cp a
    inc a
    ld bc, $009d
    jr c, @+$03

    jr nc, jr_08f_6931

    and h
    add hl, de
    db $f4
    dec bc
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38

jr_08f_6931:
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld bc, $79ff

jr_08f_6939:
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [$0040], sp
    inc d
    ret nz

    jr nz, jr_08f_6939

    ld [hl+], a
    db $fc
    ld a, [hl+]
    rst $38
    ld a, b
    cp a
    add e
    and c
    ld b, h
    ld [$00a5], sp
    inc l
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
    jr nz, jr_08f_6963

jr_08f_6963:
    add b
    nop
    ld b, b
    nop
    ld c, c
    nop
    rla
    nop
    jr z, @-$34

    ld de, $d620
    call c, $f842
    pop af
    rst $38
    or a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $00
    ccf
    adc a
    ld [bc], a
    ld a, [bc]
    ld d, l
    ld a, b
    sbc b
    ld [$05f3], sp
    nop
    ld b, b
    ld h, c
    ld h, c
    xor d
    nop
    ret nz

    inc h
    add b
    nop
    dec [hl]
    dec e
    rst $38
    ld l, e
    rst $38
    dec de
    rst $38
    rra
    rst $18
    dec e
    rst $38
    dec hl
    rst $38
    db $ec
    rst $00
    jp nz, Jump_000_0087

    add e
    dec hl
    rlca
    cp a
    rrca
    ld hl, sp+$1f
    push hl
    ld a, $ff
    ld a, $f7
    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$08ff], sp
    ld a, [hl]
    adc l
    rst $30
    ld c, $bf
    ld e, a
    cp $7f
    ret nz

    rst $38
    jp c, $ffff

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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec de
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    inc bc
    rst $38
    ld b, e

jr_08f_69e5:
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld [hl], e
    rst $38
    ld bc, $08ff
    rst $30
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    ld c, l
    rst $30
    ld b, a
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    nop
    rst $20
    inc b
    rst $28
    rrca
    rst $30
    sub b
    ld l, a
    db $10
    rst $20
    ld l, b
    add a
    inc c
    rst $20
    ld b, h
    xor a
    db $10
    rst $28
    adc b
    ld [hl], a
    jr nz, jr_08f_69e5

    ld h, b
    adc a
    ld h, c
    adc [hl]
    ld hl, $04ce
    rst $28
    db $10
    rst $28
    ld hl, $41ce
    adc [hl]
    nop
    adc $21
    adc $30
    rst $08
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
    scf
    rst $38
    rlca
    rst $38
    and $ff
    sub $ff
    rst $38
    nop
    rst $38
    nop
    rst $28
    ld [$0809], sp
    nop
    nop
    jr z, jr_08f_6a65

    nop
    ld h, e
    jr nz, jr_08f_6a6c

    rst $10
    jr nz, @-$0b

    db $ec
    ld a, a
    cp l
    sub e
    add [hl]
    nop
    sbc c
    nop
    ld a, [bc]
    nop
    rla
    nop
    and d
    nop
    jr nz, jr_08f_6a5f

jr_08f_6a5f:
    ld c, b
    nop
    stop
    nop
    nop

jr_08f_6a65:
    ld b, c
    nop
    dec de
    nop
    pop bc
    nop
    db $e3

jr_08f_6a6c:
    nop
    nop
    ld c, a
    ld [de], a
    pop de
    ld h, b
    adc h
    nop
    db $ec
    nop
    or $e0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    inc sp
    inc bc
    ld a, l
    or e
    cp $fe
    rst $38
    cp h
    ld l, a
    sbc [hl]
    cp $26
    cpl
    sub d
    ld b, $09
    ld [bc], a
    and c
    ret nz

    add b
    add b
    add b
    ldh [$80], a
    ldh a, [$e0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$10
    ld a, e
    ldh a, [$3b]
    ldh a, [$3f]
    ldh a, [$3f]
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
    cp $01
    rst $30
    ld [$45ba], sp
    db $76
    adc c
    and b
    ld e, a
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
    rra
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
    dec e
    rst $38
    dec sp
    rst $38
    ld a, e
    cp a
    dec sp
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp l
    ld a, a
    cp [hl]
    ld a, a
    cp l
    ld a, a
    ld a, $ff
    ld a, [de]
    rst $38
    or c
    ld a, a
    and h
    ld a, e
    or d
    ld a, a
    xor d
    ld a, a
    cp b
    ld a, a
    jr nz, @+$01

    and b
    ld a, a
    or [hl]
    ld a, e
    ret nc

    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    jr @+$01

    ret c

    ld [hl], a
    and b
    ld a, a
    ld hl, sp+$77
    ld h, c
    rst $38
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
    rst $38
    rst $38
    and e
    rst $38
    db $e4
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
    xor a
    rst $38
    sbc d
    ccf
    ld b, c
    rrca
    or [hl]
    rlca
    ld c, d
    inc b
    ld c, l
    nop
    ld d, $00
    dec bc
    or d
    sub $ff
    add b
    ccf
    adc [hl]
    inc bc
    ld a, [hl-]
    nop
    add b
    nop
    ld c, $00
    dec a
    nop
    inc de
    nop
    dec d
    nop
    jr c, jr_08f_6b55

jr_08f_6b55:
    stop
    ret nz

    nop
    sbc d
    inc b
    call nz, Call_000_0402
    ret nc

    inc b
    or e
    add hl, bc
    ld [$0009], sp
    ld h, [hl]
    nop
    ld l, b
    add b
    dec b
    ldh a, [$e2]
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    ccf
    ccf
    cpl
    rra
    ld a, $51
    ld [hl-], a
    ld hl, $297c
    inc c
    ld c, $4c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld b, b
    cp a
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
    ei
    dec b
    db $fd
    ld [bc], a
    ld e, e
    and l
    db $ed
    inc de
    pop de
    cpl
    and c
    ld e, a
    pop bc
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
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
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    rst $18
    db $fd
    cp [hl]
    db $fd
    sbc [hl]
    db $fd
    ld e, h
    rst $38
    ld a, c
    rst $38
    ldh a, [rIE]
    sbc b
    rst $38
    sbc d
    db $fd
    sbc d
    db $fd
    sbc d
    db $fd
    cp b
    rst $38
    and c
    rst $38
    or b
    rst $38
    ld e, d
    cp c
    ld e, $f9
    ld e, $f9
    inc a
    ei
    ld h, b
    rst $38
    nop
    rst $38
    ld d, h
    cp e
    ld d, b
    cp e
    inc e
    di
    ld d, h
    ei
    ld [bc], a
    rst $38
    jr nz, @+$01

    or h
    ld [hl], e
    inc e
    di
    inc e
    di
    ld e, h
    di
    adc b
    rst $30
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
    rra
    rst $38
    ld b, $ff
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rra
    ld a, a
    and b
    rst $10
    ld l, b
    dec d
    xor b
    ld c, $05
    inc bc
    inc h
    ld h, b
    adc l
    ldh [rTAC], a
    xor $06
    ld a, c
    sub h
    dec sp
    inc b
    rra
    ld h, b
    inc de
    ld b, c
    ld bc, $002e
    ld [bc], a
    add b
    ld sp, $6c00
    ld bc, $130a
    ld c, b
    add e
    dec e
    dec de
    rst $00
    inc de
    ld b, b
    rst $20
    dec de
    daa
    inc de
    rra
    adc a
    rrca
    rrca
    rra
    cpl
    rst $28
    rla
    adc a
    rlca
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $e3
    daa
    adc a
    rlca
    sbc c
    ld b, c
    ld a, l
    ld e, b
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
    jr jr_08f_6ca3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08f_6cb3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08f_6cc3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08f_6cd3

    ld [hl-], a

jr_08f_6ca3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08f_6ce3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08f_6cb3:
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

jr_08f_6cc3:
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

jr_08f_6cd3:
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

jr_08f_6ce3:
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
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add b
    add c
    add d
    add e
    ld [hl], b
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
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
    ld [$0970], sp
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
    ld [hl], b
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08f_6dbe

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $70
    ld [hl], b
    daa
    jr z, jr_08f_6dd0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08f_6de0

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08f_6dbe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08f_6dd0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08f_6de0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0300
    inc b
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld [$0808], sp
    ld [$0b08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    add c

jr_08f_6ef1:
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    ldh [rIE], a
    inc hl
    rst $38
    inc bc
    rst $38
    db $10
    rst $28
    jr @-$17

    jr c, jr_08f_6ef1

    ld a, [de]
    push hl
    adc $31
    ld a, a
    add b
    rst $38
    ldh a, [$fe]
    pop af
    or $f9
    rst $30
    ld hl, sp-$0a
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7a
    db $fc
    ld a, l
    ld hl, sp+$79
    db $fc
    ld a, b
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$04
    ld a, b
    db $fc
    cp [hl]
    db $fc
    ld a, $fc
    cp [hl]
    db $fc
    cp [hl]
    db $fc
    cp [hl]
    db $fc
    cp l
    cp $bd
    cp $bc
    cp $9d
    cp $be
    cp $de
    cp $df
    cp $de
    cp $df
    cp $de
    rst $38
    sbc $ff
    rst $18
    cp $de
    rst $38
    ld c, [hl]
    cp a
    ld e, [hl]
    ccf
    ld a, a
    rst $38
    ld a, [$e8fc]
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    rrca
    rrca
    ccf
    daa
    rst $18
    sub a
    rrca
    ld [hl], a
    ccf
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
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
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$03
    ld sp, hl
    di
    di
    rst $20
    rst $28
    rst $00
    sbc $8f
    dec a
    sbc [hl]
    ld a, [hl]
    inc a
    ld a, h
    ld a, b
    ld a, b
    ldh a, [$e8]
    ldh a, [$d0]
    ldh [$80], a
    pop hl
    db $e3
    add c
    cp a
    inc bc
    xor a
    rlca
    rrca
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
    rrca
    rst $38
    rlca
    rst $38
    rla
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
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    di
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld b, e
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld e, $e1
    inc bc
    db $fc
    ret nz

    ccf
    ld c, a
    or b
    ld bc, $00fe
    rst $38
    add sp, $17
    inc a
    jp Jump_08f_738c


    and [hl]
    ld e, c
    ld l, h
    sub e
    db $fc
    inc bc
    cp [hl]
    ld b, c
    cp d
    ld b, c
    cp $01
    sbc $21
    db $fc
    inc bc
    ld a, d
    dec b
    ld a, [hl]
    ld bc, $01fe
    ld e, c
    jr nz, @+$09

    nop
    ld c, [hl]
    ld bc, $001b
    ld sp, $7100
    nop
    ld b, e
    nop
    ld [hl+], a
    nop
    sub [hl]
    ld bc, $1f63
    ld e, a
    ccf
    ld a, [hl]
    ccf
    ld d, h
    jr c, jr_08f_7096

    rrca
    ccf
    rra
    sbc a
    ccf
    ld a, [de]
    inc a
    jr nz, @+$12

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $4c02
    ld [$0000], sp
    nop
    ld [$00a0], sp
    and b
    add b
    pop bc
    add b
    ld [c], a
    add b
    add d

jr_08f_7096:
    add b
    and c

Call_08f_7098:
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

    jp nz, $c1c0

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    pop hl
    ldh [$f2], a
    ldh [$f1], a
    ldh [$f2], a
    pop hl
    ld [c], a
    db $e3
    ld sp, hl
    db $e3
    rst $20
    db $e3
    rst $20
    db $e3
    db $e3
    db $e3
    ld [c], a
    ldh [$f0], a
    pop hl
    di
    pop hl
    di
    pop hl
    di
    db $e3
    di
    ld [c], a
    ldh a, [$f0]
    pop af

Call_08f_70ce:
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ret nz

    ldh [$80], a
    ret nz

    nop
    add b
    add b
    nop
    ld [$0800], sp
    jr @+$3a

    jr c, @+$3a

    ld a, b
    ld hl, sp+$78
    ld a, b
    ld hl, sp+$7c
    ld hl, sp-$07
    db $fc
    ld a, b
    db $fc
    cp b
    db $fc
    ldh a, [rIE]
    ld a, [c]
    db $fd
    db $f4
    ld sp, hl
    ldh a, [$fc]
    di
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld a, [c]
    db $fc
    ldh a, [$fe]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld e, h
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    jr c, @+$01

    nop
    rst $38
    inc e
    db $e3
    ccf
    ret nz

    ccf
    ret nz

    rst $28
    db $10
    rra
    ldh [rPCM34], a
    adc h
    ld l, h
    sbc [hl]
    dec c
    cp $ec
    cp $ed
    cp $ec
    cp $ec
    cp $fe
    cp $fc
    cp $fe
    cp $ef
    cp $ff
    cp $66
    cp $f7
    cp $fe
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    jp $9ff7


    rrca
    cp [hl]
    ld a, a
    db $f4
    ld hl, sp-$30
    ldh [rLCDC], a
    add b
    nop
    nop
    ld [bc], a
    ld bc, $0b07
    inc hl
    inc de
    add c
    ld c, a
    dec a
    rra
    ld e, l
    ccf
    dec e
    ccf
    dec e
    ccf
    dec e
    ccf
    dec a
    rra
    dec a
    rra
    dec a
    ld e, a
    ld a, $1f
    dec a
    ld e, a
    ld l, $1f
    cpl
    rra
    rrca
    rra
    ld c, $1f
    ld c, $5f
    ld c, $1f
    ld e, $0f
    ld c, $5f
    ld c, $1f
    ld e, $4f
    ld c, $5f
    ld c, $9e
    dec a
    inc a
    ld a, c
    ld a, c
    pop hl
    di
    db $e3
    rst $20
    call nz, $9cce
    sbc h
    cp h
    dec sp
    ldh a, [$79]
    ldh a, [$e2]
    ldh [$c1], a
    add c
    db $e3
    rlca

jr_08f_71c7:
    add e
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
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc bc
    ld b, e
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    dec d
    inc bc
    dec c
    inc bc
    jr z, jr_08f_71ef

    jr nz, @+$05

    ld b, c

jr_08f_71ef:
    rlca
    ld a, $ff
    ld e, $ff
    ld c, $ff
    add [hl]
    ld a, a
    jp nz, $a03f

    rra
    add b
    rra
    jr jr_08f_71c7

    ld b, h
    and e
    inc c

jr_08f_7203:
    ld [hl], e
    ld b, [hl]
    ccf
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    dec sp
    rst $38
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
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    ld c, a
    cp a
    and c
    ld e, a
    push de
    ld a, [hl+]
    xor $10
    ld [hl], l
    ld a, [bc]
    rst $30
    nop
    rst $30
    nop
    cp a
    ld b, c
    ld bc, $f7ff
    rrca
    cp l
    ld c, a
    db $fd
    rrca
    ccf
    ld c, a
    ld e, [hl]
    rrca
    ld e, a
    rrca
    ld d, a
    rrca
    db $76
    rrca
    ld d, $2f
    db $76
    rrca
    daa
    rrca
    ld d, [hl]
    rrca
    ld a, $07
    ld c, [hl]
    rlca
    ld e, [hl]
    rlca
    ld c, $07
    ld c, $07
    ld h, [hl]
    rra
    ld a, [hl]
    ccf
    or $39
    sub e
    cpl
    cp [hl]
    ccf
    or h
    jr c, jr_08f_7203

    jr nz, jr_08f_7273

jr_08f_7273:
    nop
    ld [bc], a
    nop
    dec c
    nop
    ld de, $0303
    inc bc
    inc bc
    add e
    inc bc
    and e
    add e
    add e
    add c
    jp $8b81


    add c
    add e
    add c
    add e
    add c
    add e
    jp $8195


    jp $c183


    add e
    ret


    add c
    pop bc
    add c
    pop bc
    jp $c3c1


    jp $c7cc


    call z, $c8ce
    call $cfc1
    jp nz, $c6cf

    xor $c4
    db $ec
    call z, $c0e0
    ldh [$c0], a
    ldh [$e0], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    jr nz, jr_08f_72dc

    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld [hl], b
    ldh [$60], a
    di
    ld h, b
    ldh a, [$b0]
    ldh a, [$e0]
    ld a, [c]
    ldh a, [$f6]
    ldh a, [$f5]
    ldh a, [$f9]
    ldh a, [$f3]
    or c
    di
    cp d
    di
    ld a, [$f2f3]
    ld sp, hl
    ldh a, [$f9]

jr_08f_72dc:
    ldh a, [$fb]
    or b
    ei
    ld a, [$faf8]
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$28
    ld hl, sp-$38
    or b
    ld [$10b0], sp
    ld h, b
    ld a, a
    db $fc
    ld a, $fc
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    ld a, l
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    call nz, $803f
    ccf
    inc [hl]
    adc e
    ld h, [hl]
    adc c
    xor a
    ld b, b
    ld [c], a
    ld de, $9e65
    adc h
    ld a, [hl]
    dec e
    cp $94
    ld a, a
    ld e, h
    cp [hl]
    ld e, [hl]
    cp [hl]
    ccf
    sbc $1d
    cp $1f
    cp $3b
    sbc $3f
    sbc $1f
    cp $1f
    cp $3f
    sbc $1e
    rst $38
    rst $18
    cp [hl]
    ld a, [bc]
    rst $38
    ld h, d
    cp a
    and [hl]
    rra
    inc a
    inc bc
    sbc h
    nop
    adc h
    nop
    sub b
    add b
    ld a, [c]
    add c
    cp [hl]
    add e
    sub h
    adc a
    call c, $ec8f
    adc a
    call c, $dd8f
    adc a
    call nz, $958f
    rst $08
    sub l
    rst $08
    add a
    rst $08
    add l
    rst $08
    add l
    rst $08
    add l
    rst $08
    add l
    rst $08
    db $ec
    rst $00
    call $d2df
    db $dd
    pop de
    rst $08
    ld l, l
    sbc $e4
    ret c

    add b
    ret nz

    add c
    nop
    nop
    ld bc, $0306
    and e
    ld b, [hl]
    db $e3
    ld b, [hl]
    ld b, d
    rst $20

jr_08f_7378:
    ld b, [hl]
    di
    ld b, a
    ld [c], a
    ld b, [hl]
    di
    ld h, [hl]
    db $e3
    ld b, e
    db $e3
    ld h, d
    db $e3
    and d
    db $e3
    and e
    db $e3
    and d
    db $eb
    and c
    db $e3

Jump_08f_738c:
    and d
    rst $28
    or h
    rst $20
    rst $30
    db $fd
    rst $38
    di
    rst $38
    or $f6
    or $fd
    ldh a, [$b1]
    pop af
    db $e3
    ld [hl], c
    pop hl
    db $e3
    pop bc
    jp $8183


    sub e
    ld de, $3133
    ld [hl], e
    ld sp, $73d3
    reti


    pop af
    db $d3
    ei
    reti


    pop af
    ld hl, sp-$0f
    ret c

    pop af
    jp nc, $d0f9

    ei
    ldh a, [$fe]
    jp nc, Jump_08f_58f9

    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, b
    ld a, [$f87a]
    ld a, b
    ld hl, sp+$68
    ld a, b
    db $10
    db $ec
    ld b, b
    ret c

    ld h, b
    sub d
    nop
    and b
    ld b, b
    inc h
    jr nz, jr_08f_7424

    inc c
    adc $48
    sbc [hl]
    jr z, jr_08f_7378

    inc l
    inc a
    ld a, h
    inc a
    inc a
    ld a, h
    inc a
    ld a, l
    ld a, [hl]
    dec a
    ld a, h
    ccf
    ld a, [hl]
    inc a
    inc a
    ld a, [hl]
    db $fc
    ld a, $3c
    ld a, [hl]
    rrca
    cp a
    ld b, l
    rst $38
    rst $10
    rst $28
    pop bc
    rst $28
    ret


    rst $30
    pop af
    rst $20
    ei
    pop hl
    ld a, [c]
    db $ed
    cp $ed
    jp hl


    cp $ec
    cp $ef
    cp $ec
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    ld l, h
    rst $38
    xor b

jr_08f_7411:
    ld a, a
    rlca
    rst $38
    call c, Call_08f_742f
    rrca
    adc b
    rlca
    xor h
    inc de
    ld b, $71
    db $76
    ldh [rOBP0], a
    ldh a, [rKEY1]
    ld a, [c]

jr_08f_7424:
    ld l, h
    or $55
    cp $55
    cp $c4
    ld a, a
    ld h, l
    cp $e5

Call_08f_742f:
    db $76
    ld d, b
    rst $38
    call c, Call_08f_7c77
    rst $30
    ld e, h
    rst $30
    ld e, $f5
    add d
    ld a, l
    sub c
    ld b, $20
    nop
    nop
    nop
    ld [$5100], sp
    inc l
    ld hl, $657a
    ld a, [hl-]
    dec h
    ld a, d
    inc h
    ld a, e
    ld hl, $317a
    ld a, [hl+]
    add e
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    ld h, a
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    add b
    ld a, $48
    cp [hl]
    and b
    ld a, a
    and b
    ld e, [hl]
    adc b
    ld [hl], b
    nop
    add c
    nop
    nop
    ld c, $11
    ld c, $11
    dec e
    sub d
    sub c
    sub h
    jr @-$6a

    jr nc, jr_08f_7411

    db $10
    sbc l
    sbc b
    sub l
    sbc b
    sub l
    sbc c
    sub [hl]
    sub c
    sbc [hl]
    add b
    sbc l
    cp l
    rst $38
    rst $10
    cp h
    or $bc
    call $f1b8
    reti


    rst $30
    pop de
    xor a
    push bc
    rst $00
    adc l
    ld c, [hl]
    db $dd
    adc a
    sbc l
    ld e, e
    dec c
    rst $18
    ld c, c
    ld e, d
    rst $08
    ld e, a
    rst $08
    ld e, [hl]
    rst $08
    rst $18
    jp z, $cadf

    db $db
    adc $fe
    sbc $fc
    jp z, $d4ea

    ld sp, hl
    call nz, $e8ff
    di
    db $eb
    rst $30
    ld [c], a
    rst $20
    and $a7
    xor $ef
    ld c, [hl]
    add $4f
    rst $08
    add a
    and a
    adc a
    xor [hl]
    daa
    dec l
    ld h, $24
    ld [hl], a
    ld h, h
    rst $20
    and b
    db $e4
    and h
    ld [c], a
    ld hl, sp-$20
    ldh [$f0], a
    ldh [$f1], a
    pop af
    jp hl


    jp $e3f9


    di
    ld [hl], e
    di
    db $d3
    rst $30
    rlca
    ld b, a
    rl a
    rlca
    adc a
    adc a
    rrca
    rra
    rrca
    rrca
    rra
    ccf
    rra
    rra

jr_08f_74e9:
    ld a, a
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    sbc l
    rst $18
    adc a
    rst $38
    adc a
    rst $38
    and a
    rst $38
    scf
    rst $28
    ld b, a
    rst $38
    db $e3
    rst $38
    set 7, a
    ld [hl], c
    rst $38
    add hl, bc
    rst $38
    xor c
    ld a, a
    ret nz

    ccf
    jr nz, jr_08f_74e9

    inc h

jr_08f_750b:
    rst $18
    inc d
    rst $08
    ld [hl], h
    adc a
    ld [$04f7], sp
    di
    inc c

jr_08f_7515:
    di
    and h
    ei
    ld h, $f9
    add d
    db $fd
    add d
    db $fd

jr_08f_751e:
    ld de, $b1ee
    ld l, [hl]
    add a
    jr c, jr_08f_7549

    dec de
    inc [hl]
    dec bc
    ld c, h
    add e
    ld b, [hl]
    add c
    ret


    and b
    or e
    ret nz

    ld l, b
    sub b
    ld e, b
    and h
    ld e, d
    and b
    ld h, d
    adc b
    ld e, a
    and b
    jr jr_08f_751e

    ld l, e
    sub b
    ld sp, $f7c0
    jr @-$06

    add a
    rst $38
    sub b
    rst $30
    nop
    cp [hl]

jr_08f_7549:
    ld b, b
    or a
    ld b, c
    ld l, e
    ret nc

    ld a, [c]
    nop
    cp $40
    db $e4
    ld d, b
    and $50
    inc [hl]
    ret nz

    inc hl

jr_08f_7559:
    sub $7f
    call nc, Call_08f_70ce
    cp h
    ld c, b
    ldh a, [rNR41]
    call nz, $c404
    nop
    ld d, b
    nop
    or b
    ld b, b
    ldh [rLCDC], a
    db $fc
    nop
    ld l, c
    adc c
    db $eb
    nop
    sbc $50
    db $f4
    ld c, b
    or b
    ld c, b
    ret nc

    jr nz, @-$3e

    ld h, b
    ret nz

    nop
    adc b
    add b
    xor c
    nop
    add c
    ld hl, $a0c0
    ld a, [bc]
    jr nz, jr_08f_750b

    jr nz, jr_08f_7515

    jr nz, jr_08f_7559

    ld h, b
    db $ec
    ld h, b
    jr z, jr_08f_75d2

    ld hl, sp+$20
    ld [hl], b
    add b
    jp nc, Jump_08f_68b0

    add b
    ld b, d
    add b
    ld a, [c]
    ld [bc], a
    sbc e
    and b
    jr nz, jr_08f_75a2

jr_08f_75a2:
    nop
    add c
    ld bc, $8301
    ld bc, $8b51
    sub e
    add e
    rst $00
    xor e
    jp $a387


    rlca
    adc b
    rlca
    ret nc

    adc a
    ret nz

    rrca
    ld d, b
    rrca
    inc de
    rrca
    inc bc
    rra
    add hl, hl
    rra
    nop
    ccf
    ld b, b
    ccf
    add c
    ld a, a
    rrca
    ld a, a
    add d
    ld a, a
    jp $ff7f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_08f_75d2:
    rst $38
    rst $38
    xor c
    rst $38
    jp c, Jump_000_2aff

    rst $38
    ld l, h
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ccf
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
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    ld e, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    ccf
    ld c, a
    ccf
    rrca
    ccf
    cpl
    rra
    ld h, a
    rra
    daa
    rra
    rrca
    rra
    rst $18
    rrca
    rst $10
    cpl
    ld c, a
    ccf
    cpl
    rra
    rla
    ld c, a
    rlca
    rrca
    rlca
    rrca
    rlca
    xor a
    rlca
    rrca
    rla
    adc a
    daa
    rra
    rst $30
    rrca
    ld c, $07
    inc bc
    rrca
    rlca
    rrca
    rrca
    rlca
    rlca
    rrca
    rlca
    rrca
    dec de
    daa
    rrca
    rlca
    dec bc
    rlca
    dec bc
    daa
    rrca
    add a
    inc bc
    rrca
    inc bc
    rrca
    add hl, bc
    rlca
    rra
    rlca
    dec d
    daa
    dec bc
    rlca
    dec hl
    rlca
    rrca
    rlca
    inc bc
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld a, a
    rrca
    rra
    ccf
    rra
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld bc, $8eff
    rst $38
    jr nz, @+$01

    ld a, h
    rst $38
    jr z, @+$01

    nop
    rst $38
    ld a, b
    rst $38
    ld bc, $eefe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld bc, $e8fe
    rst $38
    jp nz, Jump_08f_4ffd

    ldh a, [rP1]
    rst $38
    ld hl, sp-$01
    db $e3
    db $fc
    add a
    ld hl, sp+$40
    rst $38
    cp d
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    cp [hl]
    rst $38
    pop hl
    cp $c1
    cp $03
    db $fc
    ld bc, $f0fe
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
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38

Jump_08f_7700:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$faff]
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
    ei
    db $fc
    ei
    ld hl, sp-$01
    ld a, [$fbff]
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
    ld hl, sp-$01
    pop bc
    cp $90
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    ld sp, hl
    add c
    cp $81
    cp $1f
    ldh [$3f], a
    ret nz

    inc b
    ei
    ld [$00f3], sp
    rst $38
    rra
    ldh [$f9], a
    ld b, $fe
    rst $38
    ld [$fcff], sp
    rst $38
    inc bc
    db $fc
    inc hl
    call c, $ff00
    ld [c], a
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    di
    rst $38
    ld b, b
    rst $38
    inc d
    db $eb
    nop
    rst $38
    jp c, $f8ff

    rst $38
    add c
    cp $01
    cp $ac
    rst $38
    db $d3
    db $fc
    cpl
    ret nc

    ld c, a
    or b
    inc hl
    call c, $f807
    add d
    rst $38
    rra
    ldh [$1f], a
    ldh [rNR31], a
    ldh [$3b], a
    ret nz

    ccf
    ret nz

    jr nc, @-$2f

    db $db
    or $3f
    ret nz

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
    rst $38
    rst $38
    cp $ff
    rst $18
    cp $d6
    rst $38
    jp $c6fe


    rst $38
    sub $ff
    cp $ff
    ld b, e
    db $fc
    di
    sbc $87
    cp $e3
    sbc $c3
    cp $df
    cp $95
    cp $81
    cp $e2
    sbc $c6
    ld a, [$f6cb]
    ret nz

    cp $df
    cp $04
    ld a, [$dee2]
    ld [$cad6], a
    or $ca
    or $c1
    cp $02
    db $fc
    add b
    cp $ea
    sub $ca
    or $c2
    cp $c3
    cp $00
    rst $38
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc h
    db $db
    ld a, $c1
    cp [hl]
    ld bc, $803f
    dec bc
    db $f4
    ld a, $c1
    dec e
    and d
    ld a, a
    add b
    inc c
    di
    ld a, [hl]
    add c
    ld bc, $e0fe
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    adc b
    rst $30
    nop
    rst $38
    daa
    ret c

    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ld b, e
    db $fc
    ldh [rIE], a
    pop af
    cp $1f
    ldh [$3e], a
    pop bc
    rlca
    ld hl, sp+$03
    db $fc
    dec de
    db $e4
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$eb], a
    nop
    sbc $00
    cp [hl]
    nop
    rst $18
    nop
    rst $38
    nop
    ldh [rIE], a
    nop
    rst $38
    dec b
    ld a, [$7887]
    inc bc
    db $fc
    jp nz, $f8fd

    rst $38
    adc a
    ldh a, [rNR34]
    ldh [rIE], a
    rst $38
    rra
    rst $38
    sub b
    rst $38
    jp nc, $fbff

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
    ld a, [$e8ff]
    rst $38
    ldh a, [rIE]
    ld a, [$f8ff]
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    inc b
    ei
    dec de
    db $fc
    jr @+$01

    ld de, $91fe
    cp $f8
    rst $38
    ld [bc], a

jr_08f_78ab:
    db $fd
    dec b
    ld a, [$f813]
    ld d, d
    cp b
    ld [hl], d
    sbc b
    ld [hl], $d8
    ld b, h
    ei
    ld [hl], b
    add b
    adc d
    ld [hl], b
    ret c

    db $10
    ldh [rNR23], a
    scf
    ret c

    ld a, [$eaff]
    rst $30
    ld b, l
    ld a, [$f817]
    or h
    ld e, b
    db $fc
    jr jr_08f_7926

    cp b
    rst $38
    di
    ccf
    ret nz

    ei
    jr jr_08f_78ab

    jr jr_08f_7955

    sub b
    ld a, [hl-]
    ret nc

    jp c, Jump_000_36f7

    ret nz

    ld e, [hl]
    ldh a, [$f8]
    db $10
    cp h
    ld d, b
    or $18
    pop af
    cp $7f
    ret nz

    di
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    set 6, h
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $a8fe
    ld d, a
    inc b
    ei
    nop
    rst $38
    pop af
    ld c, $e0
    rra
    ld sp, hl
    ld b, $f1
    ld c, $ef
    db $10
    push af
    ld a, [bc]
    pop bc
    ld a, $e1
    ld e, $ca
    dec [hl]
    ld hl, sp+$07
    add b
    ld a, a
    add c
    ld a, a

jr_08f_7926:
    ldh [$1f], a
    ldh [$1f], a
    jr nc, @-$2f

    inc [hl]
    set 7, [hl]
    ld bc, $8778
    ld h, e
    sbc a
    ld hl, sp+$07
    db $f4
    dec bc
    ld [bc], a
    rst $38
    ld a, a
    add b
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    di
    ld [$00ff], sp
    cp a
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38

jr_08f_7955:
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
    rst $38
    ccf
    rst $38
    rst $20
    rst $38
    sub a
    rst $38
    and l
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    db $e4
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    ei
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
    nop
    rst $38
    ld c, c
    rst $30
    ld b, d
    rst $38
    ld h, c
    rst $38
    ld h, d
    rst $38
    ld [c], a
    rst $38
    ld e, l
    rst $38
    inc d
    jp hl


    ld [$5c55], a
    db $e3
    ld a, h
    jp $c378


    ld l, e
    sbc $20
    sbc $c8
    nop
    pop bc
    ld b, d
    ld a, a
    jp nz, $c3fe

    rst $38
    jp nz, $de69

    ret c

    nop
    ld e, a
    ret nz

    db $d3
    ld b, d
    pop bc
    ld b, d
    ld [c], a
    ld b, d
    db $ed
    db $d3
    ld d, [hl]
    adc b
    ret c

    nop
    ld [bc], a
    jp nz, $c202

    ld [bc], a
    jp nz, $c202

    jp c, $8000

    nop
    ld b, b
    jp nz, $c242

    ld b, d
    jp nz, $c242

    sbc [hl]
    ret nz

    add b
    nop
    sub b
    ld b, d
    add d
    ld b, d
    add d
    ld b, d
    add d
    ld b, d
    cp d
    ld c, b
    nop
    nop
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $28
    xor b
    rlca
    cp $01
    ld a, a
    rst $38
    ccf
    db $fd
    ccf
    cp $5f
    cp b
    rst $28
    inc e
    rst $00
    ld a, $c7
    ccf
    db $e3
    rra
    di
    ld a, a
    rst $08
    inc sp
    dec b
    ei
    cpl
    pop de
    add c
    rst $38
    dec b
    ei
    pop af
    rst $38
    ld c, $f1
    ld [$f4f7], sp
    rst $38
    add h
    ei
    ldh a, [rIE]
    rst $00
    ld hl, sp+$0b
    db $f4
    pop bc
    cp $00
    rst $38
    ld [hl], b
    adc a
    ld a, h
    add e
    ld l, a
    rst $38
    rst $08
    ldh a, [$1f]
    ldh [rSC], a
    db $fd
    ld a, [hl]
    rst $38
    ld [c], a
    rra
    pop af
    ld c, $f0
    rrca
    rst $00
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    cp $01
    ld hl, sp+$07
    and d
    ld e, a
    ld b, e
    cp h
    cp a
    ld b, b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ld l, c
    rla
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    cp $3f
    db $fc
    rst $38
    ld a, [c]
    rst $38
    ret c

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
    or b
    rst $38
    ldh [rIE], a
    ld a, [$feff]
    rst $38
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fd
    ld l, h
    rst $38
    ld a, c
    rst $38
    db $fc
    rst $38
    ret z

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    adc d
    inc b
    inc c
    ei
    dec hl
    call c, $ee19
    nop
    rst $38
    ld b, b
    rst $38
    nop
    nop
    rst $38
    ld [$c83f], sp
    ld a, a
    adc b
    ld a, [$180c]
    rst $38
    adc h
    ld [hl], e
    ld a, a
    nop
    ld [$d808], a
    ld [$0890], sp
    ret z

    db $10
    add b
    ld [hl], b
    ld h, $00
    inc de
    ld [bc], a
    add hl, de
    ld bc, $011b
    dec de
    inc bc
    db $d3
    dec bc
    db $e3
    ld bc, $0303
    ld de, $1303
    inc bc
    inc de
    inc bc
    rlca
    inc de
    jp Jump_000_0341


    ld bc, $0313
    inc de
    inc bc
    inc bc
    inc de
    inc de
    inc bc
    ld bc, $0303
    pop af
    rst $30
    di
    di
    di
    ld d, e
    ld [hl], e
    ld b, e
    ld [hl], e
    ld [hl], e
    ld h, e
    ld b, e
    inc bc
    ld b, e
    inc bc
    rst $38
    rst $38
    and b
    rst $38
    rra
    ldh [rP1], a
    rst $38
    ld de, $03ee
    db $fc
    ld bc, $fffe
    ld c, [hl]
    rst $38
    ld de, $00ff
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    adc b
    rst $38
    ld [$86ff], sp
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ldh a, [rIE]
    db $fc
    ccf
    ld sp, hl
    cp a
    ld a, h
    rst $18
    inc a
    rst $38
    inc c
    ld a, [hl]
    sbc a
    ld a, [hl]
    adc a
    rst $30
    rrca
    cp $07
    rst $00
    ccf
    ld h, e
    sbc a
    ld a, e
    add a
    ld [hl], e
    adc a
    db $10
    rst $28
    ld hl, sp+$07
    rst $38
    nop
    db $fc
    inc bc
    inc bc
    db $fc
    ld a, [hl]
    add c
    ldh [$1f], a
    ld e, c
    and [hl]
    add c
    cp $7e
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    ldh a, [rIF]
    ld a, b
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    db $fd
    nop
    xor a
    ld d, b
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [$39ff], sp
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc $31
    dec b
    ei
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, d
    rst $38
    sub $ff
    nop
    rst $38
    ld a, $41
    cp a
    ld b, d
    db $fd
    ld b, d
    db $dd
    ld b, d
    add sp, $57
    inc hl
    sbc $04
    add b
    ld b, d
    nop
    nop

jr_08f_7ba3:
    ld h, d
    nop
    ld b, d
    inc b
    ld b, d
    adc b
    ld d, [hl]
    sub b
    ld c, b
    nop
    nop
    nop
    ld [$0002], sp
    ld b, b
    nop
    nop
    nop
    inc b
    nop
    add h
    nop
    nop
    nop
    pop bc
    ld a, $ff
    rst $38
    nop
    rst $38
    jr nc, jr_08f_7ba3

    ld [bc], a
    db $fd
    dec sp
    call nc, Call_000_15fa
    ld sp, hl
    inc d
    db $fd
    db $10
    push bc
    db $10
    push hl
    db $10
    db $f4
    ld de, $a057
    ld a, [de]
    push hl
    adc d
    ld [hl], l
    ld l, d
    sub l
    ld c, d
    or l
    ld b, h
    cp e
    ld b, b
    cp a
    db $10
    rst $38
    ld h, c
    cp a
    dec hl
    db $fd
    add b
    rst $38
    ld b, d
    cp l
    rst $08
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    add h
    ld a, e
    cp $01
    cp $01
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp l
    db $fd
    ld [c], a
    ld hl, sp+$01
    ld hl, sp-$80
    xor a
    ret nz

    cp $0b
    add $a8
    adc a
    add h
    and $82
    db $ed
    add sp, -$01
    ldh a, [$f7]
    ld a, [c]
    ei
    cp d
    rst $38
    cp $fe
    cp h
    rst $38
    sbc [hl]
    ld [hl], e
    ld [hl], b
    ld e, a
    ld bc, $d0fa
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    and $fd
    ldh [$3f], a
    di
    rst $38
    ei
    ld e, a
    ld hl, sp-$01
    ld a, h
    cp a
    ld a, h
    rst $18
    cpl
    rst $28
    rra
    rst $38
    rlca
    ld sp, hl
    rrca
    or e
    rrca
    rlca
    rlca
    rst $00
    inc bc
    ret nz

    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    rst $18
    nop
    and $01
    ldh a, [rIF]
    ret nz

    ccf
    sbc h
    db $e3
    ld a, d
    add c
    db $ed
    nop
    ld [c], a
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
    or [hl]
    ld c, c
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    db $fc
    ld a, [bc]
    db $fd
    ld a, [bc]

Call_08f_7c77:
jr_08f_7c77:
    rst $38
    ld c, $ff
    db $db

jr_08f_7c7b:
    rst $38
    cp a
    ld l, a

jr_08f_7c7e:
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    ld l, a
    jr jr_08f_7c77

    ld [de], a
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    ld [hl], a
    rst $38
    ld b, c
    rst $38
    ld c, $20
    pop hl
    ld e, $68
    sub a
    ld h, d
    sbc l
    jr nz, jr_08f_7c7b

    sub d

jr_08f_7c9d:
    rst $38
    ld d, a
    nop
    rst $20
    jr jr_08f_7c9d

    dec d
    rst $18
    jr nc, jr_08f_7c7e

    jr c, @+$12

    rst $38
    inc a
    jp $1177


    rst $20
    sub b
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    jr nc, jr_08f_7cba

jr_08f_7cba:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    pop de
    rst $38
    ld de, $11ff
    rst $38
    push de
    dec hl
    cp h
    ld b, e
    xor h
    ld d, e
    ld a, h
    inc bc
    ld d, e
    cp a
    srl a
    ld hl, $5b1f
    ccf
    ccf
    rst $38
    dec hl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add c
    rst $38
    and e
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    add a
    rst $38
    reti


    rst $38
    rrca
    rst $38
    ld hl, sp+$07
    cp $01
    rrca
    ldh a, [$27]
    ret c

    rra
    ldh [$34], a
    rlc e
    db $fc
    rst $38
    nop
    rst $38
    ld h, e
    ld hl, sp+$30
    sub d
    ld b, b
    jp nz, $c910

    nop
    inc de
    ld b, b
    inc bc
    nop
    rra
    adc b
    cp a
    rrca
    ccf
    nop
    sbc a
    nop
    sbc l
    dec e
    ccf
    sub c
    ld a, a
    inc e
    rst $38
    dec e
    sbc $66
    ld l, e
    dec d
    or e
    db $10
    cp $d0
    db $f4
    ldh a, [$f3]
    ld a, [c]
    db $fd
    ldh a, [$fa]
    ld hl, sp-$04
    db $fd
    cp $54
    ld [hl], a
    ld [bc], a
    ld h, e
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld a, c
    cp a
    inc a
    db $fd
    ld h, b
    rst $38
    sub c
    rst $38
    call $f8ff
    db $fd
    db $e4
    rst $30
    and $7f
    rst $30
    ld a, a
    ld a, [$f0bf]
    ld a, l
    ld hl, sp-$61
    ld a, h
    cp a
    db $76
    rst $08
    ld [hl], $ff
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    ei
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
    ld d, h
    xor e
    ld [$50f7], sp
    xor a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    rst $38
    ei

jr_08f_7d7b:
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld bc, $4bff
    rst $38
    ld b, b
    rst $38
    sub $ff
    sbc $ff
    ld e, $ff
    and h
    ld e, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_08f_7d7b

    inc e
    rst $38
    ld [hl], a
    ld [$57a8], sp
    pop hl
    sbc a
    ld h, d
    sbc a
    adc $b7
    or l
    rst $38
    ld a, l
    cp a
    ld a, a
    nop
    ei
    inc b
    and l
    nop
    add c
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    inc [hl]
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    sbc b
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [$a0]
    ldh a, [rNR41]
    ldh a, [rNR50]
    ldh a, [$b0]
    ldh [$b0], a
    ldh [$b0], a
    ldh [$a0], a
    ldh [$b0], a
    ldh [$30], a
    ldh [$b1], a
    ldh [rNR41], a
    ldh [$b4], a
    ldh [$60], a
    ldh [$61], a
    ldh [rNR44], a
    ldh [$c1], a
    ldh [$c1], a
    pop hl
    rst $20
    pop hl
    or c
    rst $38
    rrca
    ldh a, [rSC]
    db $fd
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08f_7e01:
    inc b
    ld bc, $1d02
    nop
    rra
    add hl, bc
    rst $38
    add hl, bc
    rst $18
    adc e
    ld a, a
    rrca
    ld l, a
    rrca
    rst $38
    rst $18
    rst $18
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, a
    rst $38
    db $fd
    db $fc
    rst $38
    ld a, a
    rst $28
    xor a
    rst $28
    and e
    rst $38
    dec [hl]
    sub a
    rlca
    adc a
    ld d, c
    and d
    nop
    inc h
    ld h, b
    cp b
    add hl, sp
    ld e, $08
    ld [$c181], sp
    sub b
    pop hl
    and b
    or $80
    db $fd
    ldh a, [$fc]
    db $ec
    rst $38
    ld [hl], h
    rst $38
    rst $38
    db $fc
    jr c, jr_08f_7e01

jr_08f_7e43:
    jr jr_08f_7e43

    ld d, $f7
    add d
    rst $10
    add e
    rst $38
    ld b, e
    ld a, l
    inc h

jr_08f_7e4e:
    db $fc
    jr c, jr_08f_7e4e

    ld [hl], b
    inc a
    inc a
    di
    and b
    or $a0
    sub a
    add b
    rst $18
    ret nz

    db $fd
    ret z

    cp $dc
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
    ld [$40f7], sp
    cp a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld bc, $04ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    inc b
    rst $38
    rst $30
    rst $38
    ld [bc], a
    rst $38
    xor c
    ld d, [hl]
    and c
    ld e, [hl]
    ldh [$1f], a
    add b
    ld a, a
    ld b, b
    cp a
    add h
    rst $38
    ld sp, hl
    ld b, $de
    jr nz, jr_08f_7f1c

    inc b
    ld l, $01
    sub [hl]
    jr z, jr_08f_7ef7

    xor [hl]
    ld l, l
    ld [bc], a
    ld b, $00
    ld a, [hl+]
    nop
    nop
    add b
    nop
    nop
    ld bc, $0000
    nop
    inc c
    nop
    ld c, a
    nop
    rst $10
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld a, c
    add a
    call z, $d903
    rlca
    or e
    rst $08
    add e
    rst $38
    add b
    rst $38
    add h
    rst $38
    pop bc
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ccf
    sub b
    ld l, a
    sbc [hl]
    ld h, c
    rra

jr_08f_7ef7:
    ldh [$3f], a
    ret nz

jr_08f_7efa:
    nop
    rst $38
    db $db
    inc h
    rst $38
    nop
    rst $38
    ld b, h
    ld a, $09
    rst $38
    dec hl
    rst $38
    ld e, e
    rst $38
    ld a, [c]
    ld a, [$f4d0]
    ldh [$e6], a
    ret z

    db $ed
    ret nz

    db $d3
    add b
    xor $a2
    db $fd
    add b
    add a
    add hl, bc
    add e
    add b

jr_08f_7f1c:
    ldh [$82], a
    cp $f8
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    set 7, a
    rra
    rst $38
    ccf
    rst $38
    ld [hl], a
    rra
    ld a, [hl+]
    add d
    inc b
    jr nz, jr_08f_7f72

    call nz, $f980
    ret nz

    db $fc
    ld a, b
    rst $38
    inc e
    db $ec
    nop
    jp c, $f302

    add b
    ei
    ld d, b
    rst $38
    cp $ff
    ld l, d
    rst $38
    db $e4
    db $fd
    ldh a, [$fa]
    ldh a, [rIE]
    ld hl, sp-$01
    pop hl
    ld a, l
    ld [hl], b
    ld hl, sp-$10
    rst $38
    cp e
    ld a, a
    jr c, jr_08f_7f98

    jr jr_08f_7efa

    rrca
    sbc a
    dec d
    ccf
    ld a, [de]
    ei
    rlca
    rst $38
    inc bc
    ei
    rlca
    cp $03
    rst $38
    ld bc, $57a8
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08f_7f72:
    nop
    rst $38
    inc b
    rst $38
    scf
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
    rra
    rst $38
    dec e
    rst $38
    add hl, sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, c
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    rlca
    ei
    inc bc
    rst $38
    inc bc
    rst $38

jr_08f_7f98:
    inc hl
    rst $38
    dec sp
    rst $38
    ret nz

    ccf

jr_08f_7f9e:
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    add b
    ld a, a
    add d
    ld [hl], a
    dec sp
    rst $30
    ld bc, $407f
    scf
    or b
    ld b, a
    or c
    ld b, a
    call nz, $e527
    rlca
    ld d, b
    and a
    ld [$58f7], sp
    and a
    ret c

    and a
    ret z

    and a
    add h
    rst $28
    ret nc

    xor a
    pop hl
    adc [hl]
    sub b
    adc $c4
    adc d
    ret nz

    adc [hl]
    ld bc, $40de
    xor a
    jr nz, jr_08f_7f9e

    ld h, d
    adc h
    ret nz

    ld c, $42
    adc l
    ld h, b
    sbc [hl]
    and b
    ld e, a
    ld a, l
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
    ret nz

    ccf
    ld a, [$0407]
    ei
    cp a
    ld b, b
    rst $38
    nop
    xor $01
    jr nz, jr_08f_7ff4

jr_08f_7ff4:
    rst $38
    add b
    rst $38
    cp a
    rst $18
    add e
    nop
    ld [$0400], sp
    nop
    dec b
