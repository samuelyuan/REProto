SECTION "ROM Bank $0a1", ROMX[$4000], BANK[$a1]

    inc bc
    rst $38
    rlca
    rst $38
    rlca
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    cp $01
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    db $fd
    cp $fd
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$0a
    ld sp, hl
    or $f9
    ld [c], a
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
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
    ret nz

    ccf
    add $ff
    adc $7b
    sbc $73
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    sub $7b
    jp nc, Jump_0a1_5a7f

    rst $38
    ld e, d
    rst $28
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld d, [hl]
    ei
    db $76
    ei
    db $76
    ei
    db $76
    ei
    db $76
    ei
    db $76
    ei
    db $76
    ei
    or $fb
    or $fb
    or $fb
    or $fb
    or $fb
    or $fb
    or $fb
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$1eff]
    rst $38
    ld c, $ff
    ld c, $ff
    rlca
    cp $07
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    pop hl
    rra
    pop af
    rrca
    ld hl, sp+$07
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
    rst $38
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

    cp a
    ret nz

    cp a
    ret nz

    cp a
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

    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
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
    rst $38
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$cf]
    ldh a, [$ef]
    ld hl, sp-$09
    ld a, h
    di
    ld a, h
    ei
    cp [hl]
    ld a, l
    cp a
    ld a, h
    rst $18
    ld a, $df
    ccf
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    nop
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
    add b
    rst $38

Jump_0a1_41dc:
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$19
    db $fc
    di
    db $fc
    di
    cp $f9
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
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
    rst $38
    ld bc, $ff80
    ret nz

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
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$cf]
    ld hl, sp-$19
    db $fc
    db $e3
    db $fc
    di
    cp $f9
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$9f], a
    ldh a, [$8f]
    ld hl, sp-$39
    db $fc
    db $e3
    db $fc
    db $e3
    cp $f1
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
    ldh a, [rIE]
    db $fc
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
    ld [bc], a
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
    inc b
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
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $0202
    ld [bc], a
    ld [de], a
    inc de
    inc d
    nop
    nop
    dec d
    ld d, $17
    jr jr_0a1_435e

    ld a, [de]
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    jr nz, jr_0a1_4373

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    daa
    jr z, jr_0a1_4384

    nop
    ld a, [hl+]
    dec hl

jr_0a1_435e:
    inc l
    inc l
    dec l
    dec l
    ld l, $2f
    ld [bc], a
    jr nc, jr_0a1_4398

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a1_43a7

    jr c, jr_0a1_4373

    ld [bc], a
    ld [bc], a

jr_0a1_4373:
    ld [bc], a
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    ld a, $38
    jr c, jr_0a1_43b7

    jr c, jr_0a1_4383

    ld [bc], a
    ld [bc], a

jr_0a1_4383:
    ccf

jr_0a1_4384:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    jr c, jr_0a1_43c5

    jr c, jr_0a1_43c7

    jr c, jr_0a1_4393

    ld b, a
    ld c, b

jr_0a1_4393:
    ld [bc], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_0a1_4398:
    ld c, l
    ld c, [hl]
    ld c, a
    jr c, jr_0a1_43d5

    jr c, jr_0a1_43d7

    jr c, jr_0a1_43a3

    ld d, b
    ld d, c

jr_0a1_43a3:
    ld d, d
    ld d, e
    ld [bc], a
    ld [bc], a

jr_0a1_43a7:
    ld [bc], a
    ld [bc], a
    ld d, h
    ld d, l
    jr c, jr_0a1_43e5

    jr c, jr_0a1_43e7

    jr c, jr_0a1_43b3

    ld d, [hl]
    ld d, a

jr_0a1_43b3:
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_0a1_43b7:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    jr c, jr_0a1_43f6

    jr c, jr_0a1_43f8

    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_0a1_43c5:
    ld h, [hl]
    ld h, a

jr_0a1_43c7:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    jr c, jr_0a1_4407

    jr c, jr_0a1_443f

    nop
    nop
    nop
    nop

jr_0a1_43d5:
    nop
    ld l, a

jr_0a1_43d7:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    jr c, jr_0a1_4417

    jr c, jr_0a1_43e1

jr_0a1_43e1:
    nop
    nop
    nop
    nop

jr_0a1_43e5:
    nop
    nop

jr_0a1_43e7:
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    jr c, jr_0a1_4428

    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_43f6:
    nop
    db $76

jr_0a1_43f8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld a, b
    jr c, jr_0a1_4438

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_4407:
    dec b
    ld de, $0202
    ld [bc], a
    ld a, c
    ld a, d
    ld a, e
    jr c, jr_0a1_4411

jr_0a1_4411:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_4417:
    nop
    ld a, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, l
    ld a, [hl]
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_4428:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_4438:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_443f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $0001
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
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a1_4569

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a1_4569:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    pop af
    rra
    db $e3
    rra
    db $e3
    ccf
    rst $00
    ld a, a
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    ld hl, sp+$07
    ld sp, hl
    rrca
    di
    rra
    rst $20
    ccf
    rst $00
    ld a, a
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
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
    ld sp, hl
    rrca
    di
    rra
    rst $20
    ccf
    rst $08
    ld a, a
    adc a
    ld a, a
    sbc a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $ff00
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fd
    rlca
    ld sp, hl
    rrca
    di
    rra
    rst $20
    rra
    rst $28
    ccf
    rst $08
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
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
    ret nz

    rst $38
    add b
    rst $38
    nop
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
    ld a, a
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    rrca
    di
    rrca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
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
    inc c
    di
    ld h, $c1
    ld l, $c1
    add hl, hl
    ret nz

    add hl, sp

jr_0a1_4725:
    ret nz

    add hl, de
    ldh [rNR24], a
    ldh [rNR24], a
    ldh [$09], a
    ldh a, [$38]
    pop af
    jr nc, jr_0a1_4725

    ld sp, $03fe
    db $fd
    rlca
    ld sp, hl
    rrca
    di
    rrca
    rst $30
    ld e, $ef
    ld a, $df
    ld a, a
    sbc h
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
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
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
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
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    xor $ff
    and $ff
    and $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
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
    rrca
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rra
    rst $28
    ccf
    rst $18
    ld [hl], b
    cp a
    ld h, b
    cp a
    ldh [$7f], a
    ret nz

    rst $38
    jp $8ffc


    ldh a, [$3f]
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
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
    ld [hl], a
    rst $38
    ld [hl], a
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
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    ld a, [hl]
    and b
    ld b, d
    ld b, d
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    jr @+$01

    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    db $db
    inc h
    cp l
    ld b, d
    cp l
    ld b, d
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    nop
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
    cp $fe
    db $fc
    rst $38
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    cp a
    nop
    and c
    ld [bc], a
    and c
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld [hl], e
    adc h
    inc sp
    call z, $cc33
    call z, $ccff
    rst $38
    call z, $8cff
    rst $38
    adc h
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    ld l, l
    sub d
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld b, b
    cp a
    ld a, a
    add b
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    add b
    db $fc
    nop
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
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
    and $f9
    rst $18
    ldh [$bf], a
    ret nz

    sbc $e1
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
    ccf
    ccf
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    ld a, a
    rst $00
    ld a, c
    ld b, a
    ld sp, hl
    ld b, e
    ld sp, hl
    ld b, a
    rst $38
    ld b, a
    ld sp, hl
    ld b, a
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld sp, hl
    ld b, e
    ld sp, hl
    ld b, e
    ei
    ld b, c
    db $fd
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, h
    rst $38
    ld a, a
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
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
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$e7], a
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
    ld a, a
    rst $38
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
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $3f
    rst $38
    rst $08
    rst $38
    di
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    sbc a
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    cp $cf
    rst $38
    pop af
    rst $38
    cp $ff
    ld a, a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
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
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3e], a
    ret nz

    dec a
    ret nz

    inc sp
    ret nz

    cpl
    ret nz

    rra
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    ccf
    ld [c], a
    ccf
    db $ec
    ccf

jr_0a1_4afb:
    ld hl, sp+$2f

jr_0a1_4afd:
    ldh a, [$27]

jr_0a1_4aff:
    ld hl, sp+$27

jr_0a1_4b01:
    add sp, $23

jr_0a1_4b03:
    db $ec
    inc hl

jr_0a1_4b05:
    db $ec
    ld hl, $20ee

jr_0a1_4b09:
    rst $28
    jr nz, jr_0a1_4afb

    jr nz, jr_0a1_4afd

    jr nz, jr_0a1_4aff

jr_0a1_4b10:
    jr nz, jr_0a1_4b01

    jr nz, jr_0a1_4b03

    jr nz, jr_0a1_4b05

    jr nz, @-$0f

    jr nz, jr_0a1_4b09

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, jr_0a1_4b10

    jr nz, @-$1d

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf

jr_0a1_4b2f:
    rst $38
    ld [hl-], a

jr_0a1_4b31:
    rst $28
    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, jr_0a1_4b2f

    jr nc, jr_0a1_4b31

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @-$0f

    and b
    rst $38
    ldh a, [$6f]
    ldh [$9f], a
    ldh [$f3], a
    ldh a, [$e8]
    ldh [$fe], a
    ldh [rIE], a
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    rst $28
    inc b
    sub a
    inc b
    ld [hl], a
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc h
    rst $30
    call nz, $84f7
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    scf
    call nz, $e417
    rlca
    db $f4
    rlca
    db $f4
    rlca
    db $f4
    ld bc, $04f6
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    inc b
    rla
    inc b
    rst $20
    and h
    rst $30
    db $f4
    rst $30
    db $f4
    rst $30
    inc d
    rst $38
    db $e4
    rst $38
    db $ec
    rst $30
    inc b
    rst $38
    inc c
    rst $30
    inc b
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    scf
    inc c
    add a
    ld c, $f5
    rrca
    db $f4
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    rlca
    ccf
    rlca
    rrca
    rlca
    rlca
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$39
    cp $f1
    rst $38
    db $fc
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
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    rst $38
    ret nz

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
    db $fc
    db $e3
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
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0001
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
    ret nz

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
    ret nz

    ccf
    ld hl, sp-$79
    cp $e1
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
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    inc bc
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
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    jp $f0ff


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
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    jp $f0ff


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
    ccf
    ccf
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
    ld [bc], a
    inc bc
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
    ld [$0009], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1011
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0a1_4dc0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a1_4dd0

    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a1_4de1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc l
    ld l, $2f
    ld [bc], a

jr_0a1_4dc0:
    inc hl
    inc hl
    jr nc, jr_0a1_4df5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a1_4e05

    ld l, $3a
    nop
    nop

jr_0a1_4dd0:
    inc hl
    inc hl
    jr nc, jr_0a1_4e0f

    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    inc hl

jr_0a1_4de1:
    inc hl
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
    ld [bc], a
    nop
    nop
    nop
    inc hl
    inc hl
    ld c, a
    ld d, b
    ld d, c

jr_0a1_4df5:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    ld e, c
    ld e, d
    ld e, e
    inc hl
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_0a1_4e05:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    ld h, [hl]
    ld h, a
    inc hl

jr_0a1_4e0f:
    inc hl
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
    nop
    ld [hl], e
    inc hl
    inc hl
    inc hl
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
    inc hl
    inc hl
    inc hl
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    inc l
    inc l
    adc c
    adc d
    adc e
    adc h
    inc hl
    inc hl
    inc l
    inc l
    inc l
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    inc l
    inc l
    inc l
    inc l
    sub d
    sub e
    sub h
    inc hl
    inc l
    inc l
    inc l
    sub l
    sub [hl]
    sub [hl]
    sub a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    sbc b
    sbc c
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
    inc l
    inc l
    inc l
    inc l
    and d
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    and l
    and [hl]
    inc l
    inc l
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and a
    xor b
    inc l
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0604
    ld b, $01
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0001
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
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
    inc bc
    cp $02
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
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
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$df], a
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $08
    ld [hl], b
    rst $00
    ld a, b
    and e
    ld a, h
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    db $f4
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc

jr_0a1_5109:
    nop
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
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    cp $00
    rst $38
    nop
    ret nz

    ccf
    ret nc

    jr nz, jr_0a1_5109

    jr nz, @-$22

    jr nz, @-$12

    db $10
    xor $10
    rst $28
    db $10
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    sub b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    ld c, b
    rst $10
    ld l, b
    db $db
    ld h, h
    db $db
    ld h, h
    db $db
    ld h, h
    bit 6, h
    db $eb
    inc [hl]
    db $eb
    inc [hl]
    push hl
    ld a, [hl-]
    push hl
    ld a, [hl-]
    push hl
    ld a, [hl-]
    push hl
    ld a, [hl-]
    push hl
    ld a, [hl-]
    sub e
    ld a, [hl]
    inc de
    cp $11
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
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
    add c
    rst $38
    add c
    rst $38
    add c

jr_0a1_519d:
    rst $38
    add c

jr_0a1_519f:
    rst $38
    ld b, c

jr_0a1_51a1:
    rst $38
    ld b, c

jr_0a1_51a3:
    rst $38
    ld b, c

jr_0a1_51a5:
    rst $38
    ld b, b

jr_0a1_51a7:
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld a, [hl-]

jr_0a1_51ad:
    rst $38
    ld a, $ff
    ccf

jr_0a1_51b1:
    rst $38
    ccf

jr_0a1_51b3:
    rst $18
    ccf

jr_0a1_51b5:
    rst $18
    ccf

jr_0a1_51b7:
    rst $18
    ccf

jr_0a1_51b9:
    rst $18
    ccf

jr_0a1_51bb:
    rst $18
    jr c, jr_0a1_519d

    jr c, jr_0a1_519f

    jr c, jr_0a1_51a1

    jr c, jr_0a1_51a3

    jr c, jr_0a1_51a5

    jr c, jr_0a1_51a7

    jr c, @-$1f

    jr c, @-$1f

    jr c, jr_0a1_51ad

    jr c, @-$1f

    jr c, jr_0a1_51b1

    jr c, jr_0a1_51b3

    jr c, jr_0a1_51b5

    jr c, jr_0a1_51b7

    jr c, jr_0a1_51b9

    jr c, jr_0a1_51bb

    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    cp a
    ld [hl], c
    cp [hl]
    ld [hl], c
    cp [hl]
    ld [hl], c
    cp [hl]
    ld [hl], c
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld sp, hl
    ld b, $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
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
    ccf
    ret nz

    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, b
    add b
    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld e, [hl]
    and b
    sbc [hl]
    ld h, b
    xor a
    ld d, b
    xor a
    ld d, b
    or a
    ld c, b
    or a
    ld c, b
    cp e
    ld b, h
    db $db
    inc h
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld l, a
    sub b
    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    or a
    ret z

    sub a
    add sp, -$69
    add sp, -$31
    ld hl, sp-$31
    ld hl, sp-$35
    db $fc
    call nz, $c4ff
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
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
    nop

jr_0a1_52ee:
    ldh a, [rP1]
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
    inc h
    nop
    ld bc, $0800
    nop
    daa
    nop
    dec de
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_0a1_52ee

    jr nz, jr_0a1_5331

    rst $38
    ld de, $11ff
    rst $38
    add hl, bc
    rst $38
    adc c
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    rst $28

jr_0a1_5331:
    db $10
    rst $28
    db $10
    xor $11
    ld [hl+], a
    db $fd
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

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
    add c
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
    ldh [rIE], a
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
    nop
    nop
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
    add hl, bc
    nop
    add hl, bc
    nop
    ld de, $9100
    nop
    add hl, bc
    db $10
    dec c
    db $10
    inc e
    ld hl, $211c
    call c, Call_0a1_5c21
    ld hl, $41be
    cp [hl]
    ld b, c
    cp e
    ld b, h
    cp a
    ld b, b
    ld a, a
    add b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add b
    rst $38
    nop
    rst $38
    db $10
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
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, e
    rst $38
    inc bc
    rst $38
    inc bc
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
    add a
    ld hl, sp-$80
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    nop
    nop
    ld a, a
    nop
    and b
    nop
    jr nz, jr_0a1_542e

jr_0a1_542e:
    jr nz, jr_0a1_5430

jr_0a1_5430:
    jr nz, jr_0a1_5432

jr_0a1_5432:
    jr nz, jr_0a1_5434

jr_0a1_5434:
    jr nz, jr_0a1_5436

jr_0a1_5436:
    jr nz, jr_0a1_5438

jr_0a1_5438:
    jr nz, jr_0a1_543a

jr_0a1_543a:
    inc hl
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    ld bc, $01a2
    sub c
    ld [bc], a
    pop de
    ld [bc], a
    sub c
    ld [bc], a
    push de
    ld [bc], a
    push de
    ld [bc], a
    ld l, c
    sub d
    ld c, l
    sub d
    ld l, l
    sub d
    ld h, l
    sub d
    ld c, l
    sub d
    ld c, c
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
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
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    sub d
    ld a, a
    sub d
    ld a, a
    sub d
    ld d, e
    cp $52
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, e
    rst $38
    ld c, a
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
    cp $ff
    ld a, a
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_0a1_54ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_54d7:
    nop
    nop
    nop
    rst $38
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_0a1_54e2

jr_0a1_54e2:
    jr nz, jr_0a1_54e4

jr_0a1_54e4:
    inc h
    nop
    ld de, $1200
    nop
    sub c
    nop
    ld [$0880], sp
    add b
    ld a, [bc]
    add b
    ld b, h
    add b
    and l
    ld b, b
    or h
    ld b, b
    or d
    ld b, b
    jp nc, $da20

    jr nz, jr_0a1_54d7

    ld hl, $11ec
    xor $11
    rst $28
    db $10

jr_0a1_5506:
    rst $28
    db $10

jr_0a1_5508:
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    add h
    ei
    add h
    ei
    add h
    rst $38
    add b
    rst $38
    nop
    cp $01
    xor $11
    rst $28
    db $10
    rst $08
    jr nc, jr_0a1_5506

    jr nz, jr_0a1_5508

    jr nz, jr_0a1_54ca

    ld h, b
    ld a, h
    jp $ff40


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rlca
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
    rst $38
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    inc bc
    nop
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    ld bc, $0000
    rlca
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_55b8:
    ld a, a
    nop
    add b
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld b, l
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    ld b, b
    inc b
    db $10
    inc b
    ld e, d
    inc b
    rla
    ld [$0817], sp
    or a
    ld [$11ee], sp
    ld l, a
    db $10
    db $ed
    ld [de], a
    rst $18
    jr nz, jr_0a1_55b8

    inc h
    cp a
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $28
    db $10
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    or [hl]
    ld c, c
    cp h
    ld b, e
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $11ff
    rst $38
    ld de, $13ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
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
    ldh [rIE], a
    inc bc
    db $fc
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
    db $fc
    nop
    ld hl, sp+$00
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
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
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0106
    ld b, $01
    dec c
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    db $ed
    ld [de], a
    adc l
    ld [de], a
    adc l
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec de
    inc h
    dec de
    inc h
    sbc e
    inc h
    db $db
    inc h
    db $db
    dec h
    ld e, e
    and l
    db $db
    dec h
    db $db
    dec h
    db $db
    dec h
    db $db
    dec h
    db $db
    dec h
    rst $10
    add hl, hl
    rst $10
    add hl, hl
    or a
    ld c, c
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    or a
    ld c, d
    xor a
    ld d, d
    xor a
    ld d, d
    xor a
    ld d, h
    ld l, a
    sub h
    ld [hl], a
    sbc h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    sub a
    db $fc
    sub a
    db $fc
    and a
    db $fc
    xor a
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp-$51
    ld hl, sp+$2f
    ld hl, sp+$2f
    ld hl, sp+$2f
    ld hl, sp-$01
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
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    ld a, a
    nop
    nop
    inc c
    ccf
    ld e, $3f
    ld a, $7f
    ld a, $3f
    add $ee
    add d
    ld b, a
    add d
    ld b, a
    rst $00
    jr z, @+$01

    ldh [$3f], a
    jr nz, jr_0a1_5772

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
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    db $fc
    ld [bc], a

jr_0a1_5772:
    db $fc
    ld [bc], a
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$00
    ld a, [$fd02]
    dec b
    cp $02
    rst $38
    rlca
    rst $30
    rrca
    di
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [rIE]
    ld hl, sp-$09
    db $fc
    ei
    cp $7d
    cp $3d
    rst $38

jr_0a1_57bb:
    ld a, $ff
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_57d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    rlca
    db $f4
    rlca
    db $e4
    rlca
    add sp, $0f
    add sp, $0f
    jr z, jr_0a1_57bb

    jr z, @+$51

    jr z, jr_0a1_583f

    ld [$104f], sp
    ld e, a
    db $10
    rra
    ld [hl], b
    ld a, a
    jr nz, jr_0a1_57d9

    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld b, a
    sbc h
    ld b, b
    add a
    ld b, b
    reti


    ld [c], a
    db $d3
    ldh a, [$cc]
    cp $e1
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    ld bc, $40ff
    rst $38
    ld b, b
    rst $08
    ld b, b
    jp $c340


    ld b, b

jr_0a1_583f:
    jp $f330


    ld [$c6fb], sp
    db $fd
    jr nz, @+$01

    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc h
    rst $38
    xor h
    rst $38
    ld c, b
    ld c, b
    sub b
    sub b
    ret nc

    ret nc

    ldh [$e0], a
    pop hl
    pop bc
    ld h, c
    pop hl
    ld sp, $00f1
    rst $38
    nop
    rst $38
    nop
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

    cp a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    ld a, [hl]
    ld a, l
    ccf
    ld a, $3f
    ld a, $1f
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
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
    inc bc
    rra
    inc hl
    ld c, a
    ld h, e
    rrca
    add e
    rst $08
    rla
    sbc a
    rlca
    rst $38
    rlca
    ccf
    rst $00
    rst $08
    or $f7
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    ld a, a
    cp b
    ccf
    cp b
    ccf
    jr c, jr_0a1_590d

    jr nc, jr_0a1_590f

    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    di
    db $fc
    ei
    cp $fd
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ccf
    ccf
    rra

jr_0a1_590d:
    rra
    rra

jr_0a1_590f:
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    cp $ff
    cp $ff
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
    cp $ff
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
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$09
    db $fc
    di
    cp $f9
    rst $38
    db $fc
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    cp a
    ldh [$9f], a
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    di
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
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    rst $38
    nop
    nop
    ld bc, $0200
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    rlca
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17

Jump_0a1_5a7f:
    add hl, bc
    jr jr_0a1_5a9b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a1_5aab

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    jr z, jr_0a1_5ac0

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_0a1_5a9b:
    ld l, $2f
    jr nc, jr_0a1_5ad0

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

jr_0a1_5aab:
    nop
    inc sp
    inc [hl]
    dec [hl]
    dec hl
    ld [hl], $37
    jr c, jr_0a1_5aed

    ld a, [hl-]
    ld [hl+], a
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a1_5ac0:
    add hl, bc
    add hl, bc
    dec a
    ld a, $3e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_0a1_5ad0:
    add hl, bc
    add hl, bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add hl, bc
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add hl, bc
    ld d, b
    add hl, bc
    add hl, bc
    add hl, bc
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

jr_0a1_5aed:
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld d, l
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
    add hl, bc
    ld l, e
    ld l, h
    ld d, e
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
    add hl, bc
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
    add hl, bc
    add hl, bc
    ld a, b
    add [hl]
    add a
    adc b
    adc c
    ld a, l
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    add hl, bc
    add hl, bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
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
    sbc b
    ld a, $09
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
    sbc c
    sbc d
    sbc e
    sbc h
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
    nop
    nop
    nop
    inc sp
    sbc l
    sbc [hl]
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    and e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    inc b
    dec b
    dec b
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000

Call_0a1_5c21:
    nop
    inc b
    inc b
    dec b
    ld bc, $0601
    ld b, $04
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    inc b
    dec b
    dec b
    ld bc, $0401
    ld b, $06
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    inc b
    inc b
    dec b
    ld bc, $0401
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0504
    dec b
    dec b
    ld bc, $0604
    ld b, $04
    inc b
    inc b
    inc b
    ld bc, $0000
    ld bc, $0404
    dec b
    inc b
    ld bc, HeaderLogo
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    ld bc, $0401
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    db $fc

jr_0a1_5d89:
    jr c, @-$02

jr_0a1_5d8b:
    jr c, jr_0a1_5d89

jr_0a1_5d8d:
    jr c, jr_0a1_5d8b

jr_0a1_5d8f:
    jr c, jr_0a1_5d8d

jr_0a1_5d91:
    jr c, jr_0a1_5d8f

    jr c, jr_0a1_5d91

jr_0a1_5d95:
    jr c, jr_0a1_5d95

    inc e
    cp $1c
    cp $1c
    cp $1c
    cp $1c
    cp $1c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
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
    ld bc, $01ff
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
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    cp $71
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    call c, $9c3f
    ld a, a
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
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
    rra
    nop
    rra
    nop
    rra
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
    rlca
    nop
    add a
    nop
    add a
    nop
    add a
    nop
    add a
    nop
    add a
    nop
    rst $00
    nop
    jp $c300


    nop
    jp $e300


    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    add b
    pop hl
    add b
    pop af
    add b
    pop af
    add b
    pop af
    add b
    ld sp, hl
    add b
    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    cp $c0
    cp $e0
    cp $e0
    cp $e0
    cp $e0
    cp $e0
    cp $e0
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

jr_0a1_5edd:
    jr c, jr_0a1_5edd

    add hl, sp
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    xor $1f
    xor $1f
    adc $3f
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
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
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
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
    ld b, b
    sbc a
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$e0], a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add c
    cp $81
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
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
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rlca
    rst $38
    rlca
    rst $38

jr_0a1_6134:
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
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $44
    db $fc
    ld [$e7f9], sp
    inc b
    rst $28
    jr z, jr_0a1_6134

    db $10
    rst $18
    ld d, b
    rst $08
    ret nc

    rst $00

jr_0a1_615b:
    ret c

    jp Jump_0a1_41dc


    adc $20

jr_0a1_6161:
    rst $28
    jr nc, jr_0a1_615b

    jr jr_0a1_6161

    adc h
    ld a, l
    add $3e
    db $e3
    rra
    rst $38
    nop
    rst $38
    nop
    rlca
    rlca
    daa
    inc h
    add a
    add a
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    ld [$18f8], sp
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$3c
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc

jr_0a1_61ae:
    inc a
    db $fc

jr_0a1_61b0:
    inc a
    db $fc

jr_0a1_61b2:
    inc a
    db $fc
    jr c, jr_0a1_61ae

    jr c, jr_0a1_61b0

    jr c, jr_0a1_61b2

    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$fc], a
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
    nop
    rst $38
    nop
    rst $38
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
    rlca
    nop
    jp $c120


    ld a, b
    add b
    ld a, h
    add b
    db $fc
    nop
    ld a, [$f804]
    ld b, $00
    cp $00
    cp $70
    adc h
    ld bc, $03f9
    ld a, [c]
    rlca
    inc b
    rrca
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    nop
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

jr_0a1_623c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38

jr_0a1_624e:
    ld b, e
    jp $c040


    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_0a1_623c

    jr nc, jr_0a1_624e

    inc a
    db $fc
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
    inc bc
    rst $38
    nop
    rst $38
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
    rlca
    db $fd
    ld b, $7c
    add a
    ld a, h
    add a
    ld a, e
    adc a
    ld a, e
    adc h
    ld a, c
    adc a
    ld a, a
    adc a
    ld a, a
    adc c
    ld a, e
    adc l
    add hl, sp
    rst $08
    ccf
    rst $10
    ld [hl], $db
    ld [hl], $db
    ld a, $df
    inc bc
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
    ld a, a
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

jr_0a1_62b2:
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
    cp $04
    db $fc
    ld [$04f9], sp
    rst $20
    rst $28
    jr z, jr_0a1_62b2

    db $10
    rst $18
    ld d, b
    ld c, a
    ld d, b
    ld b, a
    ld e, b
    ld b, e
    ld e, h
    ld b, c
    ld e, [hl]
    ld b, b
    ld c, a
    and b
    rst $28
    or b
    ld [hl], a
    sbc b
    ld a, e
    adc h
    ld a, l
    add $3e
    db $e3
    rra
    rst $38
    nop
    rst $38
    nop
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
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
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, [hl]
    cp e
    call $ee99
    adc b
    rst $38
    db $fc
    rst $38
    ld [hl], a
    sbc e
    inc de
    db $fd
    pop af
    rst $38
    ld a, a
    sbc a
    scf
    reti


    inc hl
    db $fd
    ld a, [c]
    rst $38
    rst $28
    ccf
    ld l, [hl]
    or e
    and $fb
    ld e, $ff
    ld bc, $00ff
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    nop
    jp $c120


    ld a, b
    add b
    ld a, h
    add b
    db $fc
    nop
    ld a, [$f804]
    ld b, $70
    adc [hl]
    nop
    cp $00
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
    db $fc
    db $fc
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
    rst $38
    nop
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
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
    add b
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    add b
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
    ld hl, sp-$41
    rst $08
    sbc e
    db $ec
    adc c
    cp $f8
    rst $38
    ld a, a
    sbc a
    scf
    reti


    inc de
    db $fd
    pop af
    rst $38
    ld a, a
    sbc a
    scf
    reti


    and e
    db $fd
    pop af
    ld a, a
    ld l, a
    cp [hl]
    cpl
    ld a, [c]
    rst $30
    ld a, [$fe0f]
    rra
    ldh [rSB], a
    cp $e0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a1_6465:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a1_646f:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld [$04f9], sp
    rst $20
    jr z, jr_0a1_646f

    rst $18
    db $10
    rst $18
    ld d, b
    ld c, a
    ld d, b
    ld c, a

jr_0a1_6487:
    ld d, b
    ld b, a
    ld e, b
    ld b, a
    ld e, b
    ld b, e
    ld e, h
    ld b, c
    ld c, [hl]
    and b
    rst $28
    or b
    ld [hl], a
    sbc b
    ld a, e
    adc h
    ld a, l
    add $3e
    db $e3
    rra
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_0a1_6465

    jr nc, jr_0a1_6487

    jr @+$01

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
    rrca
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    ld a, h
    ld a, a
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $c103
    jp $fffd


    db $fc
    rst $38
    inc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$10
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
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    rra
    nop
    rlca
    nop
    jp $c120


    ld a, b
    add b
    ld a, h
    add b
    db $fc
    nop
    ld a, [$f804]
    ld b, $70
    adc [hl]
    nop
    cp $00
    cp $00
    cp $70
    adc h
    ld bc, $03f9
    ld a, [c]
    rlca
    inc b
    rrca
    ld [$f0ff], sp
    nop
    nop
    nop
    nop
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
    di
    rrca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    dec sp
    rst $00
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
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $20
    rlca
    rst $20
    and a
    rst $20
    rst $00
    rst $00
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
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
    ld e, a
    cp a
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
    ld hl, sp-$01
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
    nop
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
    nop
    nop
    nop
    jr jr_0a1_6618

jr_0a1_6618:
    ld [$0010], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    inc c
    rrca
    jr jr_0a1_664d

    ld h, b
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
    rlca
    nop
    ld [hl], a
    ld [hl], c
    add a
    ld sp, $23c7
    ld d, a
    inc bc
    rlca
    rlca
    rst $38
    rra
    rst $38
    rst $38

jr_0a1_664d:
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
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
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    inc b
    dec b
    ld b, $06
    ld b, $07
    ld [$0006], sp
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $06
    ld b, $06
    rrca
    db $10
    ld b, $00
    nop
    nop
    nop
    add hl, bc
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0a1_6777

    ld a, [de]
    ld b, $00
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a1_678c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld b, $00
    nop
    nop
    nop
    nop
    ld h, $27

jr_0a1_6777:
    daa
    daa
    daa
    jr z, jr_0a1_67a3

    add hl, hl
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    daa
    daa
    daa
    inc l
    dec l

jr_0a1_678c:
    ld b, $06
    ld b, $06
    ld l, $00
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_0a1_67ca

    ld sp, $0632
    ld b, $06
    ld b, $06
    inc sp
    inc [hl]
    dec [hl]

jr_0a1_67a3:
    ld [hl], $37
    jr c, jr_0a1_67e0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, $06
    ld b, $06
    ld b, $2e
    ld a, $3f
    ld b, b
    ld b, c
    ld b, $42
    ld b, e
    daa
    daa
    ld b, h
    ld b, $06
    ld b, $06
    ld b, $2e
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, h

jr_0a1_67ca:
    ld c, l
    ld b, $06
    ld b, $06
    ld b, $2e
    ld a, $00
    ld c, [hl]
    ld c, a
    ld b, $50
    ld d, c
    ld b, $06
    ld d, d
    ld d, e
    ld b, $06
    ld b, $06

jr_0a1_67e0:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, $58
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld b, $06
    ld b, $06
    ld e, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld b, $06
    ld b, $64
    ld h, l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, a
    ld b, $06
    ld l, b
    ld l, c
    ld l, d
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, $6f
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $70
    ld [hl], c
    ld b, $72
    ld l, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $73
    ld [hl], h
    ld l, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $75
    db $76
    ld b, $06
    ld b, $06
    ld [hl], a
    ld a, b
    ld a, c
    ld b, $06
    ld b, $06
    ld b, $7a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld b, $06
    ld b, $7f
    add b
    add c
    ld b, $06
    ld b, $06
    ld b, $82
    add e
    add h
    add l
    add [hl]
    dec h
    ld b, $06
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
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
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
    nop
    nop
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
    nop
    nop
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
    jr nz, jr_0a1_69af

jr_0a1_69af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    rra
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
    rst $38
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    ldh [$03], a
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    jr @+$1b

    rlca
    ld bc, $011f
    rra
    ld bc, $e10f
    rrca
    ld b, c
    rrca
    ld bc, $010f
    rrca
    ld bc, $030f
    rrca
    rlca
    inc b
    dec b
    inc bc
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    add b
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
    ccf
    ret nz

    nop
    rst $38

jr_0a1_6ab0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rra
    ldh [rIE], a
    nop
    ld hl, sp-$01
    add d
    rst $38
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00

jr_0a1_6ace:
    inc bc
    rst $00
    inc b
    rst $00
    jr jr_0a1_6ab0

    jr nz, jr_0a1_6ace

    ret nc

    ldh a, [rNR10]
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    ld de, $12d1
    db $d3
    inc d
    rst $10
    ld a, [de]
    rst $18
    ld [de], a
    rst $18
    ld [hl+], a
    rst $38
    ld d, d
    rst $38
    sub d
    rst $38
    ld d, d
    rst $38
    db $d3
    rst $38
    jp nc, $d4ff

    cp $d8
    db $fc
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    add b
    rst $38
    nop
    ld bc, $ff00
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    ld hl, sp-$09
    ldh a, [$f7]
    ld [hl], b
    rst $30
    ld [hl], b
    rst $10
    ld d, b
    sbc e
    db $10
    or e
    ld de, $0acb
    adc e
    dec bc
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    dec bc
    rst $18
    add hl, de
    rst $18
    jr @+$01

    add hl, hl
    rst $38
    dec d
    rst $38
    dec d
    cp $17
    cp $13
    db $fc
    rla
    db $fc
    rla
    ld hl, sp+$1f
    ld hl, sp+$0f
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rst $38
    rlca
    rst $38
    dec sp
    cp $fb
    cp $c3
    db $fc
    ccf
    ret nz

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
    ldh [$e0], a
    and b
    ldh a, [rNR41]
    db $fc
    and b
    cp $a0
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    and b
    cp a
    and b
    cp a
    and b
    cp a
    and b
    cp a
    and b
    cp a
    and b
    cp a
    ret nz

    rst $38
    sub b
    rst $18
    ld d, b
    rst $18
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    sub b
    rst $18
    ld d, b
    rst $18
    ld c, b
    ld c, a
    ld c, b
    ld c, a
    ld c, b
    ld c, a
    ld [$08ef], sp
    rst $28
    jr c, @+$01

    add sp, $7f
    add sp, -$01
    ret z

    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $08
    adc a
    add a
    rst $38
    adc a
    rrca
    rlca
    cp $0f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $c3
    db $fc
    jp $87fc


    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$3f], a
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
    nop
    nop
    nop
    nop
    nop
    add b
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    ld h, b
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
    ld a, a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    db $10
    inc c
    ld de, $120c
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld a, a
    add b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    jr nc, jr_0a1_6d7f

    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    rla
    jr z, jr_0a1_6d5c

    inc h
    dec de
    inc h
    dec de
    inc h
    dec de
    inc h
    dec de
    inc h
    dec de
    inc h
    dec de
    inc h
    dec de
    inc h
    inc e
    daa
    rla
    cpl
    ld h, h
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $ec
    scf

jr_0a1_6d5c:
    rst $20
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    db $e4
    ccf
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]

jr_0a1_6d7f:
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    di
    rra
    db $10
    rra
    db $10
    rra
    rra
    rra
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $feff
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
    ei
    inc b
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
    db $fc
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    cp $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    inc e
    ld [c], a
    call c, $dd22
    ld [hl+], a
    rst $18
    ld [hl+], a
    db $db
    ld h, $db
    ld h, $d3
    ld l, $c3
    ld a, $e3
    ld a, $a3
    ld a, [hl]
    inc hl
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $e3
    cp $03
    cp $03
    cp $03
    cp $e3
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $23
    cp $e2
    cp $02
    cp $02
    cp $fe
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
    rra
    nop
    ccf
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
    jp $c304


    inc b
    jp $c314


    inc d
    jp $c304


    inc b
    jp $ff3c


    nop
    rst $38
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
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rrca
    dec bc
    inc b
    inc bc
    inc c
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    db $eb
    inc d
    rlca
    ld hl, sp+$0f
    nop
    rrca
    nop
    rrca
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0cf3], sp
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f0
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
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    di
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
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
    nop
    rst $38
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    rlca
    ld a, b
    rlca
    jr c, jr_0a1_6fd8

    inc e
    inc bc
    adc h

jr_0a1_6fd8:
    inc bc
    call nz, $c601
    add c
    ld h, d
    ldh [rNR11], a
    ldh a, [$09]
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add c
    add b
    add a
    add b
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_0a1_7038

    nop
    rrca
    nop
    adc a
    nop
    rst $00
    nop
    jp $e100


    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop

jr_0a1_7038:
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
    add b
    rst $38
    ret nz

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
    add a
    nop
    jp $c100


    nop
    pop hl
    nop
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
    rst $38
    rst $38
    rst $38
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
    add e
    nop
    jp $c100


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
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    ld h, e
    rst $38
    inc a
    rst $38
    ld de, $0eff
    rst $38
    ld [$07ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    pop hl
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rlca
    rst $38
    ld a, b
    rst $38
    add a
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a1_7148:
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
    rst $08
    jr nc, jr_0a1_7148

    inc a
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
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
    ld e, $ff
    ldh a, [rIE]
    rlca
    rst $38
    ld a, b
    rst $38
    add a
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    adc a
    ldh a, [$f3]
    db $fc
    db $fc
    ei
    rst $38
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
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0001
    ld bc, $0101
    ld c, $0f
    db $10
    ld de, $1312
    ld a, [bc]
    inc d
    dec d
    ld d, $01
    ld bc, $0100
    ld bc, $1701
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$03

    ld bc, $0100
    ld bc, $0101
    ld bc, $2101
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    jr z, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $2901
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld a, [hl+]
    ld bc, $0101
    ld bc, $0101
    ld bc, $2b01
    inc l
    ld bc, $0101
    ld bc, $2d01
    ld bc, $0101
    ld bc, $0101
    ld bc, $2e01
    cpl
    ld bc, $302c
    ld bc, $3101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2e01
    cpl
    ld bc, $3332
    ld bc, $3401
    dec [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $362e
    ld bc, $3837
    ld bc, $3901
    ld a, [hl-]
    ld bc, $0101
    ld bc, $0101
    ld bc, $3b2e
    inc a
    dec a
    ld a, $3f
    ld bc, $4140
    ld bc, $0101
    ld bc, $0101
    ld bc, $422e
    ld bc, $0101
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $0101
    ld bc, $0101
    ld c, b
    ld c, c
    ld bc, $4a01
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld bc, $0101
    ld bc, $0101
    ld d, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $5251
    ld d, e
    ld bc, $5401
    ld d, l
    ld d, [hl]
    ld d, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld bc, $0101
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld bc, $0101
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld bc, $6701
    ld l, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld l, d
    ld l, e
    ld bc, $0101
    ld l, h
    ld l, l
    ld h, [hl]
    ld bc, $666e
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, a
    ld [hl], b
    ld bc, $0101
    ld bc, $7271
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
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
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    dec b
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    rst $38
    ld l, h
    inc bc
    ld l, [hl]
    ld bc, $016e
    or [hl]
    ld bc, $01b6
    or a
    nop
    or a
    nop
    db $db
    nop
    db $db
    nop
    db $db
    nop
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
    db $fc
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    nop
    rst $38
    nop
    rst $38
    inc sp
    nop
    inc sp
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    call z, $cc00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    di
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld hl, $11ff
    rst $38
    ld de, $11ff
    nop
    rst $38
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    nop
    db $fc
    nop
    db $fc
    db $fc
    rst $38
    inc bc
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ld h, b
    ld e, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    jr nc, jr_0a1_75e7

    ldh a, [rIF]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    rlca
    rst $38
    inc bc
    rst $38
    or e
    rrca
    cp e
    rlca
    db $db
    rlca
    reti


    rlca
    reti


    rlca
    db $dd
    inc bc
    db $ed
    inc bc
    db $ec
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a1_75da:
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

jr_0a1_75e7:
    rst $38
    nop
    rst $38
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    ret nz

    cp a
    jr nz, jr_0a1_75da

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    rst $38
    rst $38
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
    rst $18
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
    ld bc, $01fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    ei
    add a
    ei
    add a
    ei
    add a
    inc bc
    rst $38
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $0100
    nop
    ccf
    ccf
    rst $38
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    cp $05
    cp $0b
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    rla
    ld hl, sp+$17
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$5f]
    ldh [$df], a
    ldh [$bf], a
    ret nz

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
    db $fc
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $00fe
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    nop
    nop
    rrca
    rrca
    add b
    ld a, a
    rst $38
    nop
    nop
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    rrca
    rst $38
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00e1], sp
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
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
    ret nz

    ccf
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld bc, $ffff
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a1_78dc:
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01

jr_0a1_7916:
    rst $38
    nop

jr_0a1_7918:
    rst $38
    nop

jr_0a1_791a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

jr_0a1_7932:
    rst $38
    ret nz

jr_0a1_7934:
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
    rst $30
    ld [$08f7], sp
    rst $20
    jr jr_0a1_7932

    jr jr_0a1_7934

    jr jr_0a1_7916

    jr c, jr_0a1_7918

    jr c, jr_0a1_791a

    jr c, jr_0a1_78dc

    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rlca
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
    ld bc, $f1fe
    cp $f9
    cp $19
    cp $1c
    rst $38
    inc c
    rst $38
    ld c, $ff
    rlca
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
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
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    ldh a, [$37]
    ldh a, [$37]
    ldh a, [rNR31]
    ld hl, sp+$19
    ld hl, sp+$0d
    db $fc
    inc b
    db $fc
    add [hl]
    ld a, [hl]
    jp nz, $e33e

    rra
    pop af
    rrca
    ld sp, hl
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    nop
    rst $38
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop

jr_0a1_79f8:
    rst $38
    ld [bc], a
    cp $02
    cp $02
    ld a, a
    add h
    ld a, a
    add h
    ccf
    call nz, $c43f
    ccf
    call nz, $e41f
    rra
    add sp, $0f
    ld hl, sp+$0f
    ld hl, sp-$01
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    add b
    sbc a
    add b
    ld c, a
    ret nz

    ld b, a
    ret nz

    and a
    ld h, b
    and e
    ld h, b
    db $d3
    jr nc, jr_0a1_79f8

    jr nc, @-$1e

    db $10
    ldh [rNR10], a
    ld hl, sp+$00
    db $fc
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
    rst $38
    nop
    nop
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
    nop
    rst $38
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
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    add a
    nop
    add a
    nop
    jp RST_00


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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    db $fc
    nop
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
    db $fc
    nop
    cp $00
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
    ld a, a
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
    rrca
    ld hl, sp+$07
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    nop
    rst $38
    nop
    ld a, a
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
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    add b
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0906], sp
    ld a, [bc]
    dec bc
    inc c
    ld bc, $0d01
    ld c, $06
    ld b, $06
    ld b, $0f
    db $10
    ld b, $06
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0a1_7c0f

    ld b, $06
    add hl, de
    ld a, [de]
    ld b, $06

jr_0a1_7c0f:
    ld b, $1b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a1_7c38

    ld [hl+], a
    ld b, $06
    inc hl
    inc h
    ld b, $06
    ld b, $06
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld b, $06
    inc l
    dec l
    ld b, $06
    ld b, $06
    ld b, $2e
    cpl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_0a1_7c38:
    ld [hl], $37
    ld b, $06
    ld b, $06
    ld b, $06
    jr c, @+$3b

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    inc a
    inc a
    dec a
    ld a, $06
    ld b, $06
    ld b, $06
    ld b, $3f
    ld a, [hl-]
    ld b, b
    dec [hl]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, a
    ld b, $06
    ld de, $4948
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $68
    ld l, c
    ld l, d
    ld l, d
    ld l, d
    ld l, e
    ld l, h
    ld b, $6d
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $6e
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, a
    ld b, $70
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $6a
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld b, $71
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $6a
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld [hl], d
    ld [hl], e
    ld b, $74
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $6a
    ld l, d
    ld l, d
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
    ld b, $06
    ld b, $6a
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
    ld b, $06
    ld l, d
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    ld b, $06
    ld b, $95
    ld b, $06
    ld l, d
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $9b
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
    dec b
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $06
    ld b, $06
    ld b, $05
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec h
    nop
    jr nz, jr_0a1_7d95

jr_0a1_7d95:
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
    dec b
    inc bc
    inc bc
    ld b, l
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
    dec b
    dec b
    dec b
    ld b, $00
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
    dec b
    dec b
    dec b
    ld b, $04
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
    ld bc, $0000
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add e
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
    rst $38
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
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    di
    rst $38
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    add e
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
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc b
    adc b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    rst $38
    ld c, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    nop
    ld hl, sp+$09
    adc b
    add hl, bc
    adc b
    add hl, bc
    call nz, $c405
    inc b
    call nz, $c404
    inc b
    call nz, $c484
    add h
    ld [c], a
    add d
    ld [c], a
    add d
    ld [c], a
    add d
    rst $20
    rst $00
    rst $38
    ret c

    ei
    rst $00
    di
    rst $08
    pop af
    rst $08
    pop af
    rst $08
    pop af
    rst $28
    pop af
    rst $28
    ldh a, [$ef]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld sp, hl
    rst $30
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$04
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    add e
    nop
