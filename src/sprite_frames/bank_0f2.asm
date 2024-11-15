SECTION "ROM Bank $0f2", ROMX[$4000], BANK[$f2]

    nop
    nop
    ld bc, $0001
    nop
    ld c, $0f
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc hl
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld e, $00
    nop
    ld e, $1f
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0f2_4077

    nop
    nop
    jr c, jr_0f2_407b

    nop
    nop
    jr c, jr_0f2_407f

    nop
    nop
    dec sp
    inc a
    nop
    nop
    dec sp
    inc a
    nop
    nop
    ccf
    inc a
    nop
    nop
    jr jr_0f2_406f

    nop
    nop
    add hl, de
    ld e, $00
    nop
    rra
    ld e, $00
    nop
    ld de, $001e
    nop
    ld hl, $003e
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    db $10

jr_0f2_406f:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0f2_4077:
    rra
    nop
    nop
    db $10

jr_0f2_407b:
    rra
    nop
    nop
    db $10

jr_0f2_407f:
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_40d7

    nop
    nop
    jr nz, jr_0f2_40db

    nop
    nop
    jr nz, jr_0f2_40df

    nop
    nop
    jr nz, jr_0f2_40e3

    nop
    nop

jr_0f2_40a6:
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    jr c, jr_0f2_40a6

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$d0]
    nop

jr_0f2_40d7:
    nop
    ret nc

    ldh a, [rP1]

jr_0f2_40db:
    nop
    or b
    ret nc

    nop

jr_0f2_40df:
    nop
    ldh a, [$90]
    nop

jr_0f2_40e3:
    nop
    ldh a, [$90]
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh [$e0], a

jr_0f2_40ee:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr z, jr_0f2_40ee

    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop

Call_0f2_40ff:
    nop
    xor h
    ld a, h
    nop
    nop
    sbc b
    ld a, b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret nc

    jr nc, jr_0f2_4113

jr_0f2_4113:
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    jr nc, jr_0f2_411b

jr_0f2_411b:
    nop
    ret nc

    jr nc, jr_0f2_411f

jr_0f2_411f:
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, b
    cp b

jr_0f2_4126:
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ld hl, sp-$18

jr_0f2_412e:
    nop
    nop
    ld l, b
    sbc b

jr_0f2_4132:
    nop
    nop
    jr nc, jr_0f2_4126

jr_0f2_4136:
    nop
    nop
    jr nz, @-$1e

jr_0f2_413a:
    nop
    nop
    jr nz, @-$1e

jr_0f2_413e:
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f2_412e

    nop
    nop
    jr nz, jr_0f2_4132

    nop
    nop
    jr nz, jr_0f2_4136

    nop
    nop
    jr nz, jr_0f2_413a

    nop
    nop
    jr nz, jr_0f2_413e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
    ret nz

    nop
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
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld c, $0f
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_41cf

    nop
    nop
    inc hl
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld e, $00
    nop
    ld e, $1f
    nop
    nop
    dec de
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0f2_41fb

    nop
    nop
    jr c, jr_0f2_41ff

    nop
    nop
    jr c, jr_0f2_4203

    nop
    nop
    dec sp
    inc a
    nop
    nop
    ccf
    inc a
    nop
    nop
    dec de

jr_0f2_41cf:
    inc e
    nop
    nop
    dec de
    inc e
    nop
    nop
    inc e
    rra
    nop
    nop
    ld de, $001e
    nop
    ld hl, $003e
    nop
    ld hl, $003e
    nop
    ld hl, $003e
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0f2_41fb:
    rra
    nop
    nop
    db $10

jr_0f2_41ff:
    rra
    nop
    nop
    inc e

jr_0f2_4203:
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_4257

    nop
    nop
    jr nz, jr_0f2_425b

    nop
    nop
    jr nz, jr_0f2_425f

    nop
    nop
    jr nz, jr_0f2_4263

    nop
    nop

jr_0f2_4226:
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    jr c, jr_0f2_4226

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$d0]
    nop

jr_0f2_4257:
    nop
    ret nc

    ldh a, [rP1]

jr_0f2_425b:
    nop
    or b
    ret nc

    nop

jr_0f2_425f:
    nop
    ldh a, [$90]
    nop

jr_0f2_4263:
    nop
    ldh a, [$90]
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc l
    db $fc
    nop
    nop
    sbc b
    ld a, b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ret nc

    jr nc, jr_0f2_429b

jr_0f2_429b:
    nop
    ret nc

    jr nc, jr_0f2_429f

jr_0f2_429f:
    nop
    ret nc

    jr nc, jr_0f2_42a3

jr_0f2_42a3:
    nop
    ret nc

    jr nc, jr_0f2_42a7

jr_0f2_42a7:
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    or b

jr_0f2_42ae:
    nop
    nop
    ld [hl], b
    or b

jr_0f2_42b2:
    nop
    nop
    ldh a, [$f0]

jr_0f2_42b6:
    nop
    nop
    ld [hl], b
    sub b

jr_0f2_42ba:
    nop
    nop
    jr nz, @-$1e

jr_0f2_42be:
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f2_42ae

    nop
    nop
    jr nz, jr_0f2_42b2

    nop
    nop
    jr nz, jr_0f2_42b6

    nop
    nop
    jr nz, jr_0f2_42ba

    nop
    nop
    jr nz, jr_0f2_42be

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
    ret nz

    nop
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
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rla
    jr jr_0f2_434d

jr_0f2_434d:
    nop
    inc hl
    inc a
    nop
    nop
    ld l, $31
    nop
    nop
    cpl
    inc sp
    nop
    nop
    inc l
    inc sp
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, $3d
    nop
    nop
    ld a, $3d
    nop
    nop
    inc a
    inc hl
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    jr jr_0f2_43c7

    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0f2_43be:
    rlca
    rlca
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp

jr_0f2_43c7:
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_43be

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $fc
    db $f4
    nop
    nop
    inc c
    db $f4
    nop
    nop
    rrca
    rst $30
    nop
    nop
    rrca
    ld a, [c]
    add b
    add b
    rrca
    rst $38
    ret nz

    ld b, b
    rla
    rst $38
    ret nz

    ld b, b
    rla
    db $fc
    add b
    add b
    inc de
    rst $38
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld c, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [$00fe]
    nop
    db $fc
    db $fc

jr_0f2_444e:
    nop
    nop
    inc c
    db $fc

jr_0f2_4452:
    nop
    nop
    jr jr_0f2_444e

jr_0f2_4456:
    nop
    nop
    jr jr_0f2_4452

    nop
    nop
    jr jr_0f2_4456

    nop
    nop
    jr nc, jr_0f2_4452

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    jr jr_0f2_44e7

    nop
    nop
    dec de
    inc e
    nop
    nop
    add hl, bc
    ld c, $00
    nop
    dec bc
    inc c
    nop
    nop
    dec bc
    inc c
    nop
    nop
    ld [$000f], sp
    nop
    rla
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    rla

jr_0f2_44e7:
    rra
    nop
    nop
    inc de
    inc e
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    jr @+$21

    nop
    nop
    jr jr_0f2_4527

    nop
    nop
    inc l
    ccf
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f2_4563

    nop
    nop
    db $10

jr_0f2_4527:
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop

jr_0f2_453e:
    rra
    rra
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_453e

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop

jr_0f2_4563:
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    adc h
    ld a, h
    nop
    nop
    adc [hl]
    ld a, [hl]
    nop
    nop
    rrca
    db $fd
    nop
    nop
    rrca
    db $fd
    nop
    nop
    ld d, $fa
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld de, $00ff
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    jr nz, @+$01

    add b
    add b
    ldh [rIE], a
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    cp a
    cp a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    cp a
    cp a
    ret nz

    ret nz

    rst $20
    rst $20
    ldh [$e0], a
    ldh a, [$f0]
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    dec c
    ld c, $00
    nop
    dec c
    ld c, $00
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0f2_468f

    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nc, jr_0f2_46c3

    nop
    nop
    jr c, jr_0f2_46c7

    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld b, b

jr_0f2_468f:
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f2_46be:
    inc a
    inc a
    ldh a, [$f0]
    nop

jr_0f2_46c3:
    nop
    ld [$00f8], sp

jr_0f2_46c7:
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_46be

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ret z

    jr c, jr_0f2_470f

jr_0f2_470f:
    nop
    add sp, $18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    add sp, $18
    nop
    nop
    ld [$00f8], sp
    nop
    add sp, -$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    ld a, h
    db $f4
    nop
    nop
    ld [hl], h
    adc h
    nop
    nop
    ld [de], a
    cp $00
    nop

jr_0f2_4738:
    ld de, $00ff
    nop

jr_0f2_473c:
    ld de, $00ff
    nop

jr_0f2_4740:
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    jr nz, jr_0f2_4738

    and b
    cp a
    jr nz, jr_0f2_473c

    and b
    cp a
    jr nz, jr_0f2_4740

    inc de
    rra
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0f2_480f

    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr c, jr_0f2_4843

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b

jr_0f2_480f:
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld [bc], a
    rst $38
    ld bc, $8601
    rst $38
    ld bc, $e901
    ld sp, hl
    inc bc
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $f001
    ldh a, [$f0]
    ldh a, [rP1]

jr_0f2_4843:
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr @-$16

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ret z

    jr c, jr_0f2_488f

jr_0f2_488f:
    nop
    add sp, $18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld l, h
    sbc h
    nop
    nop
    ld a, $fe
    nop
    nop
    ccf
    db $fd
    nop
    nop
    rra
    db $fd
    nop
    nop
    ld c, $f2
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    jr c, @-$06

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ld a, h
    ld a, h
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    ld e, $1f
    nop
    nop
    daa
    ccf
    nop
    nop
    dec l
    scf
    nop
    nop
    cpl
    scf
    nop
    nop
    jr z, @+$39

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr c, jr_0f2_49a7

    nop
    nop
    jr c, jr_0f2_499b

    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    jr jr_0f2_49b3

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0f2_499b:
    rra
    nop
    nop
    jr nz, jr_0f2_49df

    nop
    nop
    jr nz, jr_0f2_49e3

    nop
    nop
    dec a

jr_0f2_49a7:
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a

jr_0f2_49b3:
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop

jr_0f2_49be:
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_49be

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00

jr_0f2_49df:
    nop
    ld hl, sp+$48
    nop

jr_0f2_49e3:
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    db $ec
    inc e
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    cp h
    call nz, RST_00
    ld e, h
    db $e4
    nop
    nop
    ld e, a
    rst $20
    nop
    nop
    cpl
    ld a, [c]
    add b
    add b
    rra
    rst $38
    ret nz

    ld b, b
    rrca
    rst $38
    ret nz

    ld b, b
    rlca
    db $fc
    add b
    add b
    rlca
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0f2_4b0b

    nop
    nop
    jr jr_0f2_4b0f

    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    jr @+$21

    nop
    nop
    jr jr_0f2_4b27

    nop
    nop
    inc l

jr_0f2_4b0b:
    ccf
    nop
    nop
    daa

jr_0f2_4b0f:
    ccf
    nop
    nop
    jr nz, jr_0f2_4b53

    nop
    nop
    jr nz, jr_0f2_4b57

    nop
    nop
    jr nz, jr_0f2_4b5b

    nop
    nop
    jr nz, jr_0f2_4b5f

    nop
    nop
    jr nz, jr_0f2_4b63

    nop
    nop
    db $10

jr_0f2_4b27:
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop

jr_0f2_4b3e:
    rra
    rra
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop

jr_0f2_4b53:
    nop
    jr jr_0f2_4b3e

    nop

jr_0f2_4b57:
    nop
    add sp, -$08
    nop

jr_0f2_4b5b:
    nop
    ld e, b
    add sp, $00

jr_0f2_4b5f:
    nop
    ld hl, sp+$48
    nop

jr_0f2_4b63:
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ret z

    jr c, jr_0f2_4b8f

jr_0f2_4b8f:
    nop
    add sp, $18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld l, h
    sbc h
    nop
    nop
    ld a, $fe
    nop
    nop
    ccf
    db $fd
    nop
    nop
    rra
    db $fd
    nop
    nop
    ld c, $f2
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld hl, $00ff
    nop
    ld h, c
    rst $38
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    cp a
    cp a
    ret nz

    ret nz

    rst $20
    rst $20
    ldh [$e0], a
    ldh a, [$f0]
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    dec c
    ld c, $00
    nop
    dec c
    ld c, $00
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0f2_4c8b

    nop
    nop
    jr jr_0f2_4c8f

    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld de, $001f
    nop
    db $10
    rra
    nop
    nop
    jr nc, jr_0f2_4cc3

    nop
    nop
    jr c, jr_0f2_4cc7

    nop
    nop
    ld c, a

jr_0f2_4c8b:
    ld a, a
    nop
    nop
    ld b, b

jr_0f2_4c8f:
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld h, d
    ld a, [hl]
    nop
    nop
    db $fc
    db $fc
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f2_4cbe:
    inc a
    inc a
    ldh a, [$f0]
    nop

jr_0f2_4cc3:
    nop
    ld [$00f8], sp

jr_0f2_4cc7:
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_4cbe

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ret z

    jr c, jr_0f2_4d0f

jr_0f2_4d0f:
    nop
    add sp, $18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    add sp, $18
    nop
    nop
    ld [$00f8], sp
    nop
    add sp, -$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    ld a, h
    db $f4
    nop
    nop
    ld [hl], h
    adc h
    nop
    nop
    ld [bc], a
    cp $00
    nop

jr_0f2_4d38:
    ld bc, $00ff
    nop

jr_0f2_4d3c:
    add c
    rst $38
    nop
    nop

jr_0f2_4d40:
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ldh [rIE], a
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    jr nz, jr_0f2_4d38

    and b
    cp a
    jr nz, jr_0f2_4d3c

    and b
    cp a
    jr nz, jr_0f2_4d40

    db $10
    rra
    ld b, b
    ret nz

    dec bc
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    jr jr_0f2_4de7

    nop
    nop
    dec de
    inc e
    nop
    nop
    add hl, bc
    ld c, $00
    nop
    dec bc
    inc c
    nop
    nop
    dec bc
    inc c
    nop
    nop
    ld [$000f], sp
    nop
    rla
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    rla

jr_0f2_4de7:
    rra
    nop
    nop
    inc de
    inc e
    nop
    nop
    jr jr_0f2_4e0f

    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld b, c

jr_0f2_4e0f:
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    db $fc
    db $fc
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rP1]
    nop

jr_0f2_4e3e:
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0f2_4e3e

    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    ld d, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    adc b
    ld a, b
    nop
    nop
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    adc h
    ld a, h
    nop
    nop
    adc [hl]
    ld a, [hl]
    nop
    nop
    rrca
    db $fd
    nop
    nop
    rrca
    db $fd
    nop
    nop
    ld b, $fa
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

    ld a, $3e
    nop
    nop
    jr c, jr_0f2_4f36

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_4f36:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_4fdb

    nop
    nop
    jr nz, jr_0f2_4fdf

    nop
    nop
    jr nz, jr_0f2_4fe3

    jp $a0c3


    cp a
    db $e4
    rst $20
    ld h, b
    rst $38
    db $fc
    rst $38
    ld de, $f8ff
    rst $38
    ld a, $fe
    ld hl, sp-$01
    ld a, $fe
    ret nz

    jp $fc3c


    ret nz

    ret nz

    jr jr_0f2_5038

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_4fdb:
    nop
    nop
    nop
    nop

jr_0f2_4fdf:
    nop
    nop
    nop
    nop

jr_0f2_4fe3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e001
    ldh [rSC], a
    inc bc
    db $10
    ldh a, [rDIV]
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    ld [$1a0f], sp
    xor $3f
    ccf
    jp c, $fdfe

    cp $b4
    call z, $fdff
    ld hl, sp-$28
    cp $ff
    ldh a, [rNR10]
    cp $ff
    ret nc

    jr nc, jr_0f2_5028

    rst $38
    ld h, b
    ldh [rSC], a
    rst $38
    ret nz

    ret nz

jr_0f2_5028:
    ld [bc], a
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop

jr_0f2_5038:
    rst $20
    ld sp, hl
    nop
    nop
    ccf
    pop hl
    nop
    nop
    rst $38
    pop hl
    nop
    nop
    rrca
    ldh a, [$80]
    add b
    rlca
    ld hl, sp-$40
    ret nz

    add e
    db $fc
    and b
    ld h, b
    ld d, e
    db $fc
    ldh a, [rSVBK]
    ld h, c
    cp $f0
    jr nc, jr_0f2_50d4

    rst $38
    ldh a, [$f0]
    ld c, a
    rst $08
    ldh a, [$f0]
    sub b
    sbc a
    ld a, b
    add sp, -$60
    cp a
    ld a, b
    add sp, -$60
    cp a
    ld a, b
    add sp, $40
    ld a, a
    ld hl, sp-$38
    ld a, a
    ld a, a
    ld a, b
    ld c, b
    ldh a, [$f0]
    jr nc, jr_0f2_50a8

    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    add sp, -$08
    ld bc, $0401
    db $fc
    ld b, $07
    inc e
    db $ec
    ld [$1c0f], sp
    db $fc
    db $10
    rra
    ld hl, sp-$18
    add hl, bc
    rrca
    db $f4
    db $fc
    rlca
    rlca
    db $ec
    db $f4
    rlca
    rlca
    cp l
    push hl

jr_0f2_50a8:
    rlca
    rlca
    cp $a7
    rrca
    rrca
    db $d3
    db $fc
    rra
    rra
    ccf
    ret nz

    jr c, jr_0f2_50f5

    ld a, $c1
    ld h, b
    ld a, a
    ld e, $e7
    ld h, b
    ld a, a
    dec de
    rst $38
    jr nz, @+$41

    ld [hl], c
    rst $38
    inc de
    rra
    add b
    rst $38
    ld c, $0f
    db $10
    rst $38
    rrca
    rrca
    ld de, $05ff
    rlca
    xor $ff

jr_0f2_50d4:
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld bc, $07ff
    rlca
    rst $38
    rst $20
    inc b
    rlca
    ld bc, $08ff
    rrca
    ld bc, $08ff
    rrca
    jr nz, @+$01

    ld [$140f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b

jr_0f2_50f5:
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $0e01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld c, $0f
    inc h
    rst $20
    rlca
    rlca
    ld b, e

jr_0f2_512f:
    jp Jump_000_0707


    add c
    add c
    rrca
    rrca
    add c
    add c
    rrca
    rrca
    pop bc
    pop bc
    rrca
    rrca

jr_0f2_513e:
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0f2_5184

    ld bc, $d401
    db $ec
    ld c, $0f
    db $fc
    inc b
    rla
    jr jr_0f2_512f

    jr c, jr_0f2_5178

    db $10
    ld h, b
    ldh [$1f], a
    rla
    ret nz

    ret nz

    ld a, e
    ld a, l
    ret nz

    ret nz

    cp e
    db $dd
    add b
    add b
    rst $38
    rrca
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld c, h
    or h
    nop
    nop
    jr c, jr_0f2_513e

    nop
    nop

jr_0f2_5178:
    ld [hl], b
    sub b
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0f2_5184:
    and b
    ldh [rP1], a
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
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
    nop

jr_0f2_519a:
    nop
    nop
    nop
    nop

jr_0f2_519e:
    nop
    nop
    nop
    nop

jr_0f2_51a2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_519a

    nop
    nop
    jr nz, jr_0f2_519e

    nop
    nop
    jr nz, jr_0f2_51a2

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld bc, $c201
    cp $02
    inc bc
    ld bc, $04ff
    rlca
    rlca
    ei
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    cp $fa
    inc bc
    inc bc
    ld a, [$03fe]
    inc bc
    sub $fa
    inc bc
    inc bc
    cp $d2
    ccf
    ccf
    rst $18
    di
    ld a, a
    ld a, a
    ld [hl], e
    sbc a
    rst $38
    rst $38
    rst $30
    adc a
    ret nz

    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    nop
    ld b, b
    ld a, a
    rst $28
    db $10
    ld e, a
    ld a, a
    add b
    rst $38
    ld [hl+], a
    ccf
    db $10
    rst $38
    dec de
    rra
    ld de, $0fff
    rrca
    xor $ff
    inc b
    rlca
    ld bc, $04ff
    rlca
    ld bc, $07ff
    rlca
    rst $38
    rst $20
    inc b
    rlca
    ld bc, $08ff
    rrca
    ld bc, $08ff
    rrca
    jr nz, @+$01

    ld [$140f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $0e01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld c, $0f
    inc h
    rst $20
    rlca
    rlca
    ld b, e
    jp Jump_000_0707


    add c
    add c
    rrca
    rrca
    add c
    add c
    rrca
    rrca
    pop bc
    pop bc
    rrca
    rrca
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    ret c

    rst $10
    inc a
    call nz, $f0ff
    db $fc
    inc b
    rst $38
    ldh a, [$fc]
    inc b
    cp a
    ld a, [hl]
    ld hl, sp+$78
    rst $28
    ld [hl-], a
    add b
    add b
    cp [hl]
    ld a, a
    add b
    add b
    rst $30
    adc a
    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    ldh [$e0], a
    nop
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
    nop

jr_0f2_531a:
    nop
    nop
    nop
    nop

jr_0f2_531e:
    nop
    nop
    nop
    nop

jr_0f2_5322:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_531a

    nop
    nop
    jr nz, jr_0f2_531e

    nop
    nop
    jr nz, jr_0f2_5322

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld bc, $c201
    cp $02
    inc bc
    ld bc, $04ff
    rlca
    rlca
    ei
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    cp $fa
    inc bc
    inc bc
    ld a, [$03fe]
    inc bc
    sub $fa
    inc bc
    inc bc
    cp $d2
    rra
    rra
    rst $18
    di
    ccf
    ccf
    ld [hl], e
    sbc a
    ld a, a
    ld a, a
    rst $30
    adc a
    pop hl
    rst $38
    or a
    rst $08
    ret nz

    rst $38
    dec sp
    rst $38
    add b
    rst $38
    ld de, $80ff
    rst $38
    ldh [$1f], a
    ld b, b
    ld a, a
    db $fc
    inc bc
    ld a, $3f
    ccf
    ret nz

    dec c
    rrca
    rst $28
    ldh a, [rDIV]
    rlca
    add hl, de
    cp $04
    rlca
    rlca
    rst $38
    rlca
    rlca
    rst $38
    rst $20
    inc b
    rlca
    ld bc, $08ff
    rrca
    ld bc, $08ff
    rrca
    jr nz, @+$01

    ld [$140f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $0e01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld c, $0f
    inc h
    rst $20
    rlca
    rlca
    ld b, e
    jp Jump_000_0707


    add c
    add c
    rrca
    rrca
    add c
    add c
    rrca
    rrca
    pop bc
    pop bc
    rrca
    rrca
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop

jr_0f2_546f:
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    sbc [hl]
    cp $00
    nop
    db $fd
    sub e
    add b
    add b
    rst $30
    ld hl, sp+$60
    ldh [$db], a
    ld l, h
    ret nc

    jr nc, jr_0f2_546f

    db $ed
    ld hl, sp+$08
    ei
    db $fd

jr_0f2_549a:
    cp b
    ret z

    ld a, $3e

jr_0f2_549e:
    ld [hl], b
    ld [hl], b
    nop
    nop

jr_0f2_54a2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_549a

    nop
    nop
    jr nz, jr_0f2_549e

    nop
    nop
    jr nz, jr_0f2_54a2

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add a
    rst $38
    nop
    nop
    add a
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $e101
    rra
    inc bc
    ld [bc], a
    ld sp, hl
    rra
    inc bc
    ld [bc], a
    rst $28
    cpl
    ld [bc], a
    inc bc
    add sp, $2f
    ld bc, $e801
    cpl
    ld bc, $fc01
    rst $38
    ld bc, $bf01
    rst $38
    ld bc, $f001
    cp a
    ld bc, $f001
    rst $08
    nop
    nop
    ldh a, [$8f]
    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $01
    ld bc, $fe02
    inc bc
    inc bc
    add h
    db $fc
    dec b
    rlca
    db $e4
    db $fc
    ld [$7c0f], sp
    db $fc
    ld [$180f], sp
    ld hl, sp+$10
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    jr nz, @-$1e

    ld [$200f], sp
    ldh [rNR32], a
    rra
    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop

jr_0f2_55b8:
    ccf
    ccf
    nop
    nop
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
    rlca
    rlca
    add b
    add b
    jr c, @+$41

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f2_55b8

    add b
    rst $38
    ldh [$60], a
    adc a
    rst $38
    ldh [$e0], a
    ld a, a
    ld a, a
    ret nz

    ld b, b
    ld a, a
    ld a, a
    ld e, h
    call c, $fffa
    cp $62
    rst $38
    ld a, [$62fe]
    ei
    cp $fe
    ld [hl], d
    cp $f3
    ld a, [hl]
    cp $e7
    ld hl, sp-$02
    ld a, [hl]
    rst $00
    rst $38
    ld a, l
    di
    ld [bc], a
    rst $38
    ccf
    pop af
    nop
    rst $38
    rra
    pop hl
    nop
    rst $38
    rra
    pop hl
    add d
    rst $38
    cpl
    pop af
    ld a, [$75ff]
    ei
    rlca
    rst $38
    adc $ce
    inc bc
    rst $38
    add b
    add b
    cp $c6
    nop
    nop

jr_0f2_5620:
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    and c
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b

jr_0f2_5634:
    ret nz

    rst $38
    ld b, b
    ret nz

    jr nz, jr_0f2_5679

    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0f2_5620

    ld [$200f], sp
    ldh [rDIV], a
    rlca
    db $10
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    db $10
    rra
    ldh a, [$f0]
    db $10
    rra
    jr nz, jr_0f2_5634

    jr nz, jr_0f2_5695

    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f2_56a6

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a

jr_0f2_5679:
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_5695:
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_0f2_56a6:
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add a
    rst $38
    nop
    nop
    add a
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $e101
    rra
    inc bc
    ld [bc], a
    ld sp, hl
    rra
    inc bc
    ld [bc], a
    rst $28
    cpl
    ld [bc], a
    inc bc
    add sp, $2f
    ld bc, $e801
    cpl
    ld bc, $fc01
    rst $38
    ld bc, $bb01
    rst $38
    ld bc, $f801
    cp a
    ld bc, $f001
    rst $08
    nop
    nop
    ldh a, [$8f]
    nop
    nop
    ld h, b
    ld e, a
    nop
    nop
    jr nz, jr_0f2_572b

    nop
    nop
    jr nz, jr_0f2_572f

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f2_573b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $01
    ld bc, $fe02
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld a, b

jr_0f2_572b:
    ld a, b
    nop
    nop
    ld a, b

jr_0f2_572f:
    ld a, b

jr_0f2_5730:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc

jr_0f2_573b:
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rlca
    add b
    add b
    jr c, @+$41

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f2_5730

    add b
    rst $38
    ldh [$60], a
    adc a
    rst $38
    ldh [$e0], a
    ld a, a
    ld a, a
    ret nz

    ld b, b
    ld a, a
    ld a, a
    ld e, h
    call c, $fffa
    cp $62
    rst $38
    ld a, [$62fe]
    ei
    cp $fe
    ld [hl], d
    cp $f3
    ld a, [hl]
    cp $e7
    ld hl, sp-$02
    ld a, [hl]
    rst $00
    rst $38
    ld a, l
    di
    ld [bc], a
    rst $38
    ccf
    pop af
    nop
    rst $38
    rra
    pop hl
    nop
    rst $38
    rra
    pop hl
    add d
    rst $38
    cpl
    pop af
    ld a, [$75ff]
    ei
    rlca
    rst $38
    adc $ce
    inc bc
    rst $38
    add b
    add b
    cp $c6
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld d, d
    cp $00
    nop
    ld h, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    sub e
    sbc a
    ret nz

    ret nz

    db $10
    rra
    ld b, b
    ret nz

    jr nz, @+$41

    ld b, b
    ret nz

    jr nz, jr_0f2_5811

    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    add b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    ld h, d
    ld a, [hl]
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld bc, $c201
    cp $02

jr_0f2_5811:
    inc bc
    ld bc, $04ff
    rlca
    rlca
    ei
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    cp $fa
    inc bc
    inc bc
    ld a, [$03fe]
    inc bc
    sub $fa
    inc bc
    inc bc
    cp $d2
    ccf
    ccf
    rst $18
    di
    ld a, a
    ld a, a
    ld [hl], e
    sbc a
    rst $38
    rst $38
    rst $30
    adc a
    adc a
    rst $38
    or a
    rst $08
    add e
    rst $38
    cp c
    rst $38
    add e
    rst $38
    db $10
    rst $38
    add d
    rst $38
    nop
    rst $38
    jp nz, $11ff

    rst $38
    ccf
    inc hl
    rra
    rst $38
    inc a
    inc hl
    cp $ff
    ld a, a
    ld h, e
    rst $38
    db $fd
    rst $38
    db $e3
    rst $30
    ld a, [$f0ef]
    or a
    ld a, e
    ld [hl], a
    ld a, b
    cp l
    ld a, a
    jr c, @+$41

    ld bc, $08ff
    rrca
    jr nz, @+$01

    ld [$140f], sp
    rst $38
    ld [$080f], sp
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $0e01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [$080f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld b, $07
    inc h
    rst $20
    rlca
    rlca
    ld b, e
    jp Jump_000_0707


    add c
    add c
    rrca
    rrca
    add c
    add c
    rrca
    rrca
    pop bc
    pop bc
    rrca
    rrca
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    inc bc
    inc bc
    ld hl, sp-$08
    inc e
    rra
    ld hl, sp-$08
    rst $20
    ld hl, sp-$01
    rst $38
    ld a, h
    add e
    and $f9
    rla
    rst $28
    ld a, [hl]
    pop bc
    cp b
    ld e, b
    di
    adc a
    ld e, b
    ld hl, sp-$33
    or e
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    add b
    add b

jr_0f2_591a:
    nop
    nop
    nop
    nop

jr_0f2_591e:
    nop
    nop
    nop
    nop

jr_0f2_5922:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_591a

    nop
    nop
    jr nz, jr_0f2_591e

    nop
    nop
    jr nz, jr_0f2_5922

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
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
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0101
    cp $01
    ld bc, $ff1f
    nop
    nop
    rst $38
    cp $00
    nop
    cp $ff
    nop
    nop
    push af
    cp $00
    nop
    rst $38
    db $f4
    rrca
    rrca
    rst $30
    db $fc
    rra
    rra
    call c, Call_0f2_7fe7
    ld a, a
    db $fd
    db $e3
    ld h, e
    ld a, a
    db $ed
    di
    ld b, e
    ld a, a
    xor $ff
    ld b, c
    ld a, a
    call nz, Call_0f2_40ff
    ld a, a
    add b
    rst $38
    inc a
    inc hl
    add h
    rst $38
    ld a, [hl]
    ld h, e
    call nz, $ffff
    db $e3
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    ld sp, hl
    rst $20
    db $ec

jr_0f2_59db:
    rst $30
    ld l, a
    ld [hl], b
    rst $28
    ld [hl], l
    daa
    jr c, jr_0f2_59db

    ld a, a
    rra
    rra
    nop
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f2_5a43

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rla
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $8401
    db $fc
    ld bc, $d801
    ld hl, sp+$01
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    nop

jr_0f2_5a43:
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    inc h
    db $fc

jr_0f2_5a86:
    nop
    nop
    ld a, [hl-]
    and $00
    nop
    ld e, l
    db $e3
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $18
    jr nz, jr_0f2_5b0e

    cp $bf
    ld a, a
    rst $08
    rst $08
    ret nz

    ret nz

    ld b, a
    rst $00
    add b
    add b
    jr nz, jr_0f2_5a86

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    call z, Call_000_00fc
    nop
    ld b, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_5b0e:
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    inc bc
    inc bc
    rst $38
    db $fd
    rlca
    rlca
    db $fd
    rst $38
    inc c
    rrca
    rst $38
    db $fd
    ld [$3e0f], sp
    rst $38
    ld [$3f0f], sp
    cp $08
    rrca
    inc a
    rst $38
    ld [$500f], sp
    rst $38
    ld a, e
    ld a, h
    sub b
    rst $38
    rst $30
    ld hl, sp-$70
    rst $38
    rst $30
    ld hl, sp-$70
    rst $38
    db $f4
    ei
    sbc b
    rst $38
    ld [hl], a
    ld a, b
    cp a
    ld a, a
    rla
    jr @-$1f

    inc a
    dec bc
    inc c
    rst $18
    ccf
    rlca
    rlca
    ei
    db $fd
    ld [bc], a
    inc bc
    rrca
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    db $10
    rst $38
    inc b
    rlca
    ld a, [bc]
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, a
    ld a, a
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    rlca
    rlca
    ld [de], a
    di
    inc bc
    inc bc
    and c
    pop hl
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_5bca:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0f2_5bca

    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    add sp, -$68
    nop
    nop
    ld hl, sp-$28
    nop
    nop
    add sp, $18
    nop
    nop
    ret nc

    jr nc, jr_0f2_5bef

jr_0f2_5bef:
    nop
    ret c

    jr c, jr_0f2_5bf3

jr_0f2_5bf3:
    nop
    inc a
    db $fc
    nop
    nop
    cp $3e
    nop
    nop
    ld a, [$00fe]
    nop
    ld c, c
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld c, c
    rst $38
    nop
    nop
    sub a
    ld sp, hl
    nop
    nop
    or $f9

jr_0f2_5c12:
    add b
    add b
    db $76
    ld sp, hl

jr_0f2_5c16:
    add b
    add b
    ld hl, sp+$07
    ret nz

    ret nz

    ccf
    ret nz

    cp h
    ld a, h
    xor b
    ld [hl], a
    ld a, d
    add [hl]
    jp c, $bfdd

    ld b, c
    ld b, a
    call nz, $f977
    ld b, e
    jp $8e8e


    jr nz, jr_0f2_5c12

    nop
    nop
    jr nz, jr_0f2_5c16

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, @-$06

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec e
    ld e, $00
    nop
    rra
    ld e, $00
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$180f], sp
    jr jr_0f2_5d9f

    ld a, a
    inc a
    inc a
    adc b
    rst $38
    ccf
    ccf
    inc b
    rst $38
    ccf
    ccf
    ld [bc], a
    rst $38
    ld [hl], e
    ld [hl], e
    ld [bc], a
    rst $38
    ld [hl], c
    ld [hl], c
    ld bc, $60ff
    ld h, b
    add c
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
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc e
    db $ec
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    add sp, -$08
    nop
    nop
    ld e, b
    add sp, $00
    nop
    ld hl, sp+$48
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ret z

    ld hl, sp+$00

jr_0f2_5d9f:
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, @-$06

    nop
    nop
    inc d
    db $fc
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    sub $3e
    nop
    nop
    call z, Call_000_003c
    nop
    ld hl, sp+$38
    nop
    nop
    ld c, b
    cp b
    nop
    nop
    add sp, $18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    add sp, $18
    nop
    nop
    add sp, $18
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp h
    call c, RST_00
    cp h
    call c, RST_00
    ld a, h
    db $f4

jr_0f2_5de2:
    nop
    nop
    inc [hl]
    call z, RST_00
    jr jr_0f2_5de2

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    or c
    rst $08
    nop
    nop
    pop af
    adc a
    ld bc, $6501
    sbc a
    ld bc, $7f01
    add e
    ld bc, $7e01
    add e
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
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
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add c
    cp $a0
    ldh [$fd], a
    rst $38
    and b
    ldh [$fb], a
    db $ec
    ld b, b
    ret nz

    rst $28
    db $fd
    ldh [$e0], a
    cp $f1
    ldh a, [$f0]
    db $fc
    di
    ld hl, sp-$08
    pop af
    rst $18
    ld hl, sp-$08
    db $dd
    rst $38
    ld hl, sp-$08
    adc b
    rst $38
    add sp, -$08
    nop
    rst $38
    ld c, b
    ld hl, sp+$08
    rst $38
    ld e, b
    add sp, $09
    cp $b8
    ld c, b
    rst $30
    sbc $d8
    ld l, b

jr_0f2_5f14:
    pop hl
    ld e, [hl]
    ret c

    ld l, b

jr_0f2_5f18:
    ldh [$df], a
    ret c

    add sp, -$01
    di
    ld [hl], b
    sub b
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    db $10
    rst $38
    ld b, b
    ret nz

    ld a, [bc]
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    jr nz, jr_0f2_5f14

    ld [bc], a
    rst $38
    jr nz, jr_0f2_5f18

    ld [bc], a
    rst $38
    db $10
    ldh a, [$82]
    rst $38
    db $10
    ldh a, [$81]
    rst $38
    db $10
    ldh a, [rSTAT]
    ld a, a
    ld [$41f8], sp
    ld a, a
    ld [$21f8], sp
    ccf
    ld [$5ff8], sp
    ld a, a
    ld hl, sp-$08
    add a
    rst $38
    jr c, @-$06

    ld bc, $08ff
    ld hl, sp+$02
    rst $38
    ld [$04f8], sp
    rst $38
    ld [$0cf8], sp
    rst $38
    ld [$12f8], sp
    di
    db $10
    ldh a, [$e1]
    pop hl
    ldh [$e0], a
    add b
    add b
    ldh [$e0], a
    ret nz

    ret nz

    ldh a, [$f0]
    ldh [$e0], a
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    nop
    nop
    pop hl
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    inc bc
    db $fd
    ld [bc], a
    inc bc
    ccf
    rst $38
    ld bc, $ff01
    db $fd
    ld bc, $fd01
    rst $38
    ld bc, $eb01
    db $fd
    ld bc, $ff01
    jp hl


    ld bc, $ef01
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    rst $28
    rlca
    rlca
    rst $38
    pop af
    ld [$7f0f], sp
    ld sp, hl
    db $10
    rra
    ccf
    rst $38
    db $10
    rra
    jr c, @+$01

    inc c
    dec bc
    ld [hl+], a
    rst $38
    rrca
    ld [$ff01], sp
    rra
    db $10
    pop hl
    ld a, a
    rra
    db $10
    rra
    rst $38
    rrca
    ld [$07fe], sp
    rlca
    rlca
    cp $07
    ld bc, $ff01
    db $fd
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd

jr_0f2_5ffc:
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    inc b
    rlca
    inc a
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0f2_5ffc

    ld b, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld [hl-], a
    ld a, $00
    nop
    inc a
    inc a
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
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
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $32
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $be
    nop
    nop
    db $fd
    inc sp
    nop
    nop
    rst $38
    ld sp, $0000
    rst $38
    ld hl, $0000
    rst $18
    ld hl, $0000
    rst $08
    ld sp, $0000
    push af
    dec sp
    nop
    nop
    sbc $fe
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop

jr_0f2_60a4:
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    inc c
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    jr nz, jr_0f2_6101

    jr nz, jr_0f2_60a4

    rra
    rra
    ldh [$e0], a
    rla
    rra
    ldh [$e0], a
    jr nz, jr_0f2_610d

    ld b, b
    ret nz

    jr nz, jr_0f2_6111

    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f2_6126

    nop
    nop
    jr c, jr_0f2_612a

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    nop

jr_0f2_6101:
    nop
    inc bc
    inc bc
    nop
    nop
    inc e
    rra
    nop
    nop
    jr nz, jr_0f2_614b

    nop

jr_0f2_610d:
    nop
    ld b, b
    ld a, a
    nop

jr_0f2_6111:
    nop
    ld b, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    ccf
    dec a
    nop
    nop

jr_0f2_6126:
    dec a
    ccf
    nop
    nop

jr_0f2_612a:
    ld a, a
    ld a, l
    nop
    nop
    rst $38
    cp $01
    ld bc, $ff0f
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld bc, $8401
    ld a, a
    ld bc, $e001
    rra
    inc bc
    ld [bc], a
    db $fc
    rrca
    inc bc
    ld [bc], a
    db $e3

jr_0f2_614b:
    rra
    ld bc, $ff01
    nop
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f2_619b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f2_61af

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201

jr_0f2_619b:
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd
    nop
    nop

jr_0f2_61a6:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    ld bc, $e001

jr_0f2_61af:
    ldh [rSB], a
    ld bc, $c0c0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f2_61a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$a0], a
    nop
    nop
    and e
    db $e3
    add b
    add b
    ld h, a
    and h
    ret nz

    ld b, b
    rst $20
    inc h
    ret nz

    ld b, b
    rst $20
    ld h, $c0
    ld b, b
    cpl
    rst $28
    ret nz

    ret nz

    rst $38
    scf
    ret nz

    ret nz

    rst $38
    ld h, $a0
    ld h, b
    rst $38
    and $e0
    jr nz, jr_0f2_6218

    db $e4
    ldh [rNR41], a
    ld e, e
    db $e4
    ldh [rNR41], a
    add hl, sp
    and $e0
    jr nz, jr_0f2_6243

    rst $20
    and b
    ld h, b
    ei
    rst $38
    ret nz

    ret nz

    sbc $ea
    nop
    nop
    sbc $ea
    nop
    nop
    ld a, [$00be]
    nop

jr_0f2_6218:
    inc a
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld l, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop

jr_0f2_6243:
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0f2_6268:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    ld [$0cf8], sp
    rrca
    jr c, jr_0f2_6268

    db $10
    rra
    jr c, @-$06

    jr nz, @+$41

    ld [hl], b
    ret nc

    ld hl, $e83f
    ld hl, sp+$1b
    rra
    rst $18
    rst $28
    rrca
    rrca
    ld sp, hl
    cp $1d
    rra
    db $e3
    db $fc
    dec sp
    ccf
    jp Jump_0f2_7ffc


    ld a, a
    ret nz

    rst $38
    db $fd
    rst $38
    jp $f8ff


    rst $38
    call c, $38ff
    rst $38
    nop
    rst $38
    jr @+$01

    rra
    rst $38
    ld c, l
    cp a
    pop hl
    rst $38
    ld l, [hl]
    sbc a
    ld bc, $34ff
    rst $10
    ld bc, $34ff
    rst $10
    ld [bc], a
    cp $35
    rst $10
    cp $fe
    ld [hl], $d7
    ld [bc], a
    cp $fc
    rst $38
    ld [bc], a
    cp $f8
    rst $38
    ld bc, $78ff
    ld a, a
    dec b
    rst $38
    ld [hl], b
    ld a, a
    jr z, @+$01

    jr nc, jr_0f2_6329

    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    ld [$100f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld [$280f], sp
    rst $28
    inc c
    rrca
    daa
    rst $20
    rra
    rra
    rst $20
    rst $20
    rra
    rra
    db $e4
    rst $20
    inc de
    rra
    ret z

    rst $08
    jr nz, jr_0f2_6351

    ld c, b
    rst $08
    jr nz, jr_0f2_6355

    adc b
    adc a
    jr nz, jr_0f2_6359

    adc b
    adc a
    ld b, c
    ld a, a
    ld [$410f], sp
    ld a, a
    ld [$3e0f], sp
    ld a, $07
    rlca
    inc a

jr_0f2_6329:
    inc a
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp $fe
    rlca
    rlca
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ld d, h
    ld l, h
    inc bc

jr_0f2_6351:
    inc bc
    xor b
    ret c

    dec b

jr_0f2_6355:
    rlca
    ret nc

    or b
    rra

jr_0f2_6359:
    rra
    ldh [$60], a
    db $fd
    db $e3
    ld h, b
    ldh [$fd], a
    inc bc
    ret nz

    ret nz

    rst $20
    rra
    add b
    add b
    sbc b
    ld a, b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_6396:
    nop
    nop
    nop
    nop

jr_0f2_639a:
    nop
    nop
    nop
    nop

jr_0f2_639e:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

jr_0f2_63ae:
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_6396

    nop
    nop
    jr nz, jr_0f2_639a

    nop
    nop
    jr nz, jr_0f2_639e

    nop
    nop
    ldh [$e0], a

jr_0f2_63c2:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f2_63ae

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f2_63c2

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    ccf
    rst $38
    ld [bc], a
    inc bc
    ld a, b
    rst $38
    ld [bc], a
    inc bc
    ld h, b
    rst $38
    inc b
    rlca
    ld c, b
    rst $38
    ld b, $07
    ld b, h
    rst $38
    dec b
    rlca
    jp Jump_000_04ff


    rlca
    ld [hl], h
    rst $38
    inc b
    rlca
    dec bc
    rst $38
    rlca
    rlca
    ld bc, $04ff
    rlca
    db $e3
    rst $38
    ld [$1d0f], sp
    rst $38
    ld [$000f], sp
    rst $38
    ld [$280f], sp
    rst $38
    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    db $10
    rst $38
    inc b
    rlca
    jr @+$01

    rlca
    rlca
    cp $ff
    dec bc
    rrca
    ld sp, hl
    ld sp, hl
    db $10
    rra
    ld [de], a
    di
    jr nz, jr_0f2_64d5

    ld [hl+], a
    db $e3
    ld b, b
    ld a, a
    ld b, h
    rst $00
    add b
    rst $38
    add h
    add a
    ld bc, $04ff
    rlca
    add d
    cp $02
    inc bc
    ld a, h
    ld a, h
    ld bc, $7001
    ld [hl], b
    ld bc, $7001
    ld [hl], b
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    cp $fe
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

jr_0f2_64d5:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld b, $fb
    add b
    add b
    or $ff
    add b
    add b
    db $ed
    or e
    nop
    nop
    cp [hl]
    or $00
    nop
    db $fc
    call nz, RST_00
    db $f4
    db $ec
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc [hl]
    call z, RST_00
    ld a, d
    add $00
    nop
    db $dd
    db $e3
    nop
    nop

jr_0f2_6528:
    xor [hl]
    or c
    add b
    add b
    rla
    add hl, de
    ret nz

    ret nz

    dec bc
    rrca
    ldh [$e0], a
    add a
    add a
    jr nc, jr_0f2_6528

    ld h, e
    db $e3
    ld l, b
    cp b
    ld de, $f4f1
    db $ec
    ld [$daf8], sp
    and $04
    db $fc
    dec l
    inc sp
    inc a
    db $fc
    ld d, $19
    db $fc
    db $fc
    dec bc
    inc c
    inc b
    db $fc
    dec b
    ld b, $08
    ld hl, sp+$03
    inc bc
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rlca
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc e
    db $ec
    ld de, $fc1f
    db $fc
    rrca
    rrca
    ld hl, sp-$18
    rrca
    rrca
    add sp, -$08
    rrca
    rrca
    ld e, b
    add sp, $0f
    rrca
    ld hl, sp+$48
    rrca
    rrca
    ld a, a
    rst $08
    ccf
    ccf
    ld sp, hl
    cp $7f
    ld a, a
    db $e3
    db $fc
    db $fd
    rst $38
    jp $f8fc


    rst $38
    ret nz

    rst $38
    jr c, @+$01

    ret nz

    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    ld c, l
    cp a
    db $fd
    rst $38
    ld l, [hl]
    sbc a
    ld bc, $34ff
    rst $10
    ld bc, $34ff
    rst $10
    ld [bc], a
    cp $37
    rst $10
    cp $fe
    inc [hl]
    rst $10
    ld [bc], a
    cp $fc
    rst $38
    ld [bc], a
    cp $f8
    rst $38
    ld bc, $78ff
    ld a, a
    dec b
    rst $38
    ld [hl], b
    ld a, a
    jr z, @+$01

    jr nc, jr_0f2_6629

    db $10
    rst $38
    db $10
    rra
    db $10
    rst $38
    ld [$100f], sp
    rst $38
    ld [$100f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld [$280f], sp
    rst $28
    inc c
    rrca
    daa
    rst $20
    rra
    rra
    rst $20
    rst $20
    rra
    rra
    db $e4
    rst $20
    inc de
    rra
    ret z

    rst $08
    jr nz, jr_0f2_6651

    ld c, b
    rst $08
    jr nz, jr_0f2_6655

    adc b
    adc a
    jr nz, jr_0f2_6659

    adc b
    adc a
    ld b, c
    ld a, a
    ld [$410f], sp
    ld a, a
    ld [$3e0f], sp
    ld a, $07
    rlca
    inc a

jr_0f2_6629:
    inc a
    rlca
    rlca
    ld a, b
    ld a, b
    rlca
    rlca
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    cp $fe
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

jr_0f2_6651:
    nop
    nop
    nop
    nop

jr_0f2_6655:
    nop
    nop
    nop
    nop

jr_0f2_6659:
    nop
    nop
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

    nop
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    jp $ff3f


    add b
    cp l
    ld b, e
    rst $38
    ld b, c
    add c
    ld a, a
    ld a, [hl]
    cp $ff
    rst $38
    ret nz

    ret nz

    jp $80c3


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f2_6696:
    nop
    nop
    nop
    nop

jr_0f2_669a:
    nop
    nop
    nop
    nop

jr_0f2_669e:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

jr_0f2_66ae:
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f2_6696

    nop
    nop
    jr nz, jr_0f2_669a

    nop
    nop
    jr nz, jr_0f2_669e

    nop
    nop
    ldh [$e0], a

jr_0f2_66c2:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f2_66ae

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f2_66c2

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    db $fd
    ld b, $07
    ccf
    ld hl, sp+$04
    rlca
    ld a, $f9
    inc b
    rlca
    ld e, $f9
    dec b
    ld b, $8e
    ld a, c
    rlca
    inc b
    adc [hl]
    ld a, c
    dec bc
    inc c
    ld l, $f9
    dec bc
    inc c
    rst $38
    ld e, $0b
    inc c
    rst $30
    ld a, [de]
    inc b
    rlca
    rra
    cp $03
    inc bc
    rst $38
    rst $38
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f2_692f

    nop
    nop
    jr nz, jr_0f2_6933

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_6963

    nop
    nop
    jr nz, jr_0f2_6967

    nop
    nop
    jr jr_0f2_694b

    nop
    nop
    rra

jr_0f2_692f:
    rra
    nop
    nop
    inc e

jr_0f2_6933:
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
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

jr_0f2_694b:
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    dec c
    rst $30
    nop

jr_0f2_6963:
    nop
    db $ed
    rst $38
    nop

jr_0f2_6967:
    nop
    jp c, Jump_000_0066

    nop
    ld a, a
    rst $28
    nop
    nop
    rst $30
    adc a
    add b
    add b
    rst $20
    sbc a
    ret nz

    ret nz

    adc a
    rst $38
    ret nz

    ret nz

    rst $28
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld c, d
    rst $30
    ret nz

    ld b, b
    ld c, l
    ld a, [c]
    ret nz

    ld b, b
    cp [hl]
    di
    ret nz

    ld b, b
    ld c, $f3
    ret nz

    ld b, b
    ld b, $ff
    ret nz

    ld b, b
    ei
    sbc h
    add b
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    ld d, d
    cp $00
    nop
    ld hl, $00ff
    nop
    ld de, $00ff
    nop
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld [$80ff], sp
    add b
    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    add hl, sp
    rst $38
    ret nz

    ret nz

    ld [$40ff], sp
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    sub b
    sbc a
    add b
    add b
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    add a
    add a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $8801
    ld hl, sp+$02
    inc bc
    ld [$04f8], sp
    rlca
    ld [$08f8], sp
    rrca
    ld a, b
    add sp, $08
    rrca
    db $ec
    db $f4
    add hl, bc
    rrca
    cp [hl]
    ld h, d
    rlca
    rlca
    sub $ba
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    pop hl
    cp $03
    inc bc
    pop bc
    cp $03
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $2001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    jr z, jr_0f2_6a97

    nop
    nop
    jr z, jr_0f2_6a9b

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f2_6aaf

    nop
    nop
    jr nz, jr_0f2_6ab3

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
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
    ld bc, $0001
    nop
    ld [bc], a

jr_0f2_6a97:
    inc bc
    nop
    nop
    inc b

jr_0f2_6a9b:
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld b, $07
    nop
    nop
    inc bc

jr_0f2_6aaf:
    inc bc
    nop
    nop
    inc bc

jr_0f2_6ab3:
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
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
    jr c, jr_0f2_6b02

    nop
    nop
    ld l, h
    ld d, h
    nop
    nop
    ld e, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    sub $ba
    nop
    nop
    db $76
    ld a, d
    nop
    nop
    ld a, $3e
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    ld l, $32
    nop
    nop
    ld l, $32
    nop
    nop
    xor $d2
    nop
    nop
    ld [hl], d
    adc [hl]
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ret c

    jr c, jr_0f2_6aff

jr_0f2_6aff:
    nop
    inc c
    db $fc

jr_0f2_6b02:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr jr_0f2_6b02

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$d0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    ld [hl], b
    ld a, a
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc de
    inc e
    nop
    nop
    ld a, [hl+]
    dec [hl]
    nop
    nop
    cpl
    jr nc, jr_0f2_6d49

jr_0f2_6d49:
    nop
    inc l
    inc sp
    nop
    nop
    ld e, d
    ld h, a
    nop
    nop
    ld d, a
    ld l, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $c801
    cp a
    ld bc, $f801
    ld e, a
    ld bc, $f801
    ld a, a
    nop
    nop
    ld hl, sp-$61
    nop
    nop
    ld h, h
    ld h, a
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    cp $ff
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    ld [bc], a
    rst $38
    ld [hl], b
    ld [hl], b
    ld [c], a
    rst $38
    ld [hl], b
    ld [hl], b
    ld e, $1f
    ld h, b
    ld h, b
    ld [bc], a
    inc bc
    ld h, b
    ld h, b
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    inc bc
    inc bc
    add h
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $08
    rrca
    ld c, $f6
    ld [$fe0f], sp
    cp $07
    rlca
    db $fc
    db $f4
    rlca
    rlca
    db $f4
    db $fc
    ld a, a
    ld a, a
    xor h
    db $f4
    rst $38
    rst $38
    db $fc
    and h
    rst $38
    rst $38
    cp h
    db $e4
    ld e, $ff
    db $e4
    db $fc
    rrca
    rst $38
    ld hl, sp+$78
    ld c, $ff
    ldh [$60], a
    ld [$30ff], sp
    ldh a, [$d0]
    ccf
    or b
    ldh a, [$f0]
    ccf
    or b
    ldh a, [$09]
    rst $38
    ld a, [hl]
    cp $06
    rst $38
    push af
    ei
    nop
    rst $38
    dec de
    push af
    add d
    rst $38
    ei
    dec d
    ld a, [hl]
    rst $30
    dec d
    ei
    dec b
    db $fd
    cp $fe
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0f2_6ecf

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr z, jr_0f2_6ef3

    nop
    nop
    dec l
    ld [hl-], a
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld c, h
    ld [hl], e
    nop
    nop
    ld e, b
    ld h, a
    nop
    nop
    ld e, b

jr_0f2_6ecf:
    ld h, a
    nop
    nop
    cp [hl]
    rst $38
    nop
    nop
    push hl
    rst $18
    nop
    nop
    db $fc
    xor a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f2_6f2b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c

jr_0f2_6ef3:
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    cp $ff
    ld bc, $7c01
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    add hl, bc
    rst $38
    ld [bc], a
    inc bc
    ld c, $fe
    ld [bc], a
    inc bc
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc
    db $10
    ldh a, [$03]
    inc bc
    ldh a, [$f0]

jr_0f2_6f28:
    rlca
    rlca
    ret nz

jr_0f2_6f2b:
    ret nz

    rlca
    rlca
    add b
    add b
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ret nz

    ret nz

    inc e
    rra
    jr nz, jr_0f2_6f28

    jr nz, jr_0f2_6f89

    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [hl], b
    or b
    ld b, a
    ld a, a
    ldh a, [$f0]
    ccf
    ccf
    ldh [$a0], a
    ccf
    ccf
    and b
    ldh [$fd], a
    rst $38
    ld h, b
    and b
    rst $38
    db $fd
    ldh [rNR41], a
    db $fd
    rst $38
    ldh [rNR41], a
    rst $30
    rst $38
    jr nz, @-$1e

    rst $38
    rst $38
    ret nz

    ret nz

    ld [hl], a
    db $fd
    add b
    add b
    ld h, l
    rst $38
    add b
    add b
    jp $80ff


    add b
    ld b, e
    rst $38
    add b
    add b
    daa
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    rra

jr_0f2_6f89:
    rst $38
    add b
    add b
    dec [hl]
    adc $40
    ret nz

    ld e, $e5
    ret nz

    ld b, b
    xor $75
    ret nz

    ld b, b
    dec a
    cp $40
    ret nz

    rla
    rst $30
    add b
    add b
    db $10
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld c, $0f
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    jr jr_0f2_7077

    nop
    nop
    jr @+$21

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f2_70b3

    nop
    nop
    ld h, b

jr_0f2_7077:
    ld a, a
    nop
    nop
    ld hl, sp-$01
    ld bc, $3f01
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    inc b
    rlca
    ld [bc], a
    cp $08
    rrca
    inc b
    db $fc
    db $10
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rNR34]
    rra
    ld h, b
    ldh [$3f], a
    ccf
    add b
    add b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    rlca
    rlca
    nop

jr_0f2_70b3:
    nop
    nop
    nop
    nop
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
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc e
    db $ec
    ld de, $fc1f
    db $fc
    rrca
    rrca
    ld hl, sp-$18
    rrca
    rrca
    add sp, -$08
    rrca
    rrca
    ld e, b
    add sp, $7f
    ld a, a
    ld hl, sp+$48
    rst $38
    rst $38
    ld a, b
    ret z

    db $fd
    rst $38
    ret z

    ld hl, sp-$01
    rst $38
    ldh a, [$f0]
    adc l
    rst $38
    ret nz

    ret nz

    inc b
    rst $38
    ret nz

    ret nz

    ld [$60ff], sp
    ldh [rDIV], a
    rst $38
    ld h, b
    ldh [$dc], a
    ccf
    ld h, b
    ldh [$f3], a
    rrca
    ret nz

    ret nz

    ei
    rlca
    add b
    add b
    ld a, a
    sbc a
    nop
    nop
    dec de
    rst $38
    add b
    add b

jr_0f2_7110:
    rst $30
    ld a, [$8080]
    rrca
    cp $c0
    ret nz

    rrca
    pop af
    add b
    add b
    ld [bc], a
    cp $00
    nop
    add hl, bc
    rst $38
    nop
    nop
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0f2_7110

    jr nc, @+$01

    db $10
    ldh a, [rOBP0]
    rst $08
    ldh a, [$f0]
    adc a
    adc a
    ldh a, [$f0]

jr_0f2_713c:
    add [hl]
    add a
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rSC]
    inc bc
    jr nz, jr_0f2_713c

    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    ld bc, $ff01
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $f8f8
    ld bc, $e001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec bc
    dec c
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    ld a, [bc]
    dec c
    nop
    nop
    dec d
    dec de
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld d, $1b
    nop
    nop
    rra
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    cp a
    rst $38
    inc bc
    inc bc
    rrca
    rst $38

jr_0f2_7204:
    inc b
    rlca
    ld bc, $0cff
    rrca
    ld [bc], a
    cp $3e
    ccf
    inc c
    db $fc
    ld a, a
    ld a, a
    jr nc, jr_0f2_7204

    db $fc
    db $fc
    ret nz

    ret nz

    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc e
    db $ec
    ld de, $fc1f
    db $fc
    rrca
    rrca
    ld hl, sp-$18
    rrca
    rrca
    add sp, -$08
    rra
    rra
    ld e, b
    add sp, $7f
    ld a, a
    ld hl, sp+$48
    rst $38
    rst $38
    ld a, b
    ret z

    db $fd
    rst $38
    ret z

    ld hl, sp-$01
    rst $38
    ldh a, [$f0]

jr_0f2_7270:
    ld h, e
    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    ld h, b
    ldh [$81], a
    rst $38
    jr nc, @-$0e

    add d
    rst $38
    jr nc, jr_0f2_7270

    rst $28
    db $d3
    ld h, b
    ldh [rNR10], a
    rst $28
    ret nz

    ret nz

    rra
    pop hl
    ret nz

    ret nz

    rrca
    ldh a, [$fc]
    inc a
    rst $20
    ld hl, sp-$12
    ld [hl], $18
    rst $30
    ld l, $f6
    inc bc
    rst $38
    db $fc
    db $fc
    ld [bc], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld de, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    add b
    add b
    ld a, $3e
    nop
    nop
    jr c, jr_0f2_7332

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop

jr_0f2_7332:
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld d, $19
    nop
    nop
    inc d
    dec de
    nop
    nop
    inc l
    inc sp
    nop
    nop
    dec hl
    scf
    nop
    nop
    ld [hl], $2f
    nop
    nop
    ld [hl], $2f
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    db $e4
    rst $18
    nop
    nop
    db $fc
    xor a
    nop
    nop
    db $fc
    cp a
    nop
    nop
    ld a, h
    ld c, a
    nop
    nop
    ld [hl], $37
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld a, a
    ld bc, $7fff
    ld a, a
    nop
    rst $38
    ld [hl], b
    ld [hl], b
    ldh [rIE], a
    ld [hl], b
    ld [hl], b
    rra
    rra
    ld h, b
    ld h, b
    inc b
    rlca
    ld h, b
    ld h, b
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rlca
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    db $10
    rra
    inc e
    db $ec
    ld de, $fc1f
    db $fc
    rrca
    rrca
    ld hl, sp-$18
    rrca
    rrca
    add sp, -$08
    ccf
    ccf
    ld e, b
    add sp, -$01
    rst $38
    ld hl, sp+$48
    rst $38
    rst $38
    ld a, b
    ret z

    db $fd
    rst $38
    ret z

    ld hl, sp-$01
    rst $38
    ldh a, [$f0]

jr_0f2_73f4:
    ld h, e
    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    ld h, b
    ldh [$c1], a
    rst $38
    jr nc, @-$0e

    add c
    rst $38
    jr nc, jr_0f2_73f4

    db $fd
    add e
    ld [hl], b
    ldh a, [$7e]
    pop bc
    cp $fe
    rra
    ldh [$b7], a
    ld a, e
    rlca
    ld hl, sp-$09
    dec de
    ret nz

    rst $38
    ld e, $fe
    ccf
    ei
    ldh [$e0], a
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    dec d
    dec de
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld a, [hl+]
    scf
    nop
    nop
    ld a, [hl+]
    scf
    nop
    nop
    inc l
    scf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr z, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr z, @+$41

    nop
    nop
    jr z, @+$41

    nop
    nop
    ld h, $3f
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, [hl]
    ld a, a
    nop
    nop
    ld e, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $8001
    rst $38
    inc bc
    inc bc
    rst $20
    rst $38
    rlca
    rlca
    ld a, [$0ffe]
    rrca
    jp nz, Jump_000_1ffe

    rra
    call nz, Call_000_0ffc
    rrca
    call nz, $03fc
    inc bc
    ld hl, sp-$08

jr_0f2_7528:
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $e0e0
    ld c, $0f
    db $10
    ldh a, [rNR10]
    rra
    ld [$20f8], sp
    ccf
    jr c, jr_0f2_7528

    inc hl
    ccf
    ld hl, sp-$08
    rra
    rra
    ldh a, [$d0]
    rra
    rra
    ret nc

    ldh a, [$3e]
    ccf
    or b
    ret nc

    rst $38
    cp $f0
    sub b
    cp $ff
    ldh a, [$90]
    ei
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    add b
    add b
    add d
    rst $38
    ret nz

    ret nz

    ld [bc], a
    rst $38
    ld h, b
    ldh [rDIV], a
    rst $38
    ld h, b
    ldh [$de], a
    and a
    ret nz

    ret nz

    ld hl, $80df
    add b
    ccf
    jp $8080


    rra
    ldh [$f8], a
    ld a, b
    rst $08
    ldh a, [$dc]
    ld l, h
    jr nc, @+$01

    ld e, h
    db $ec
    rrca
    rst $38
    ld hl, sp-$08
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr c, jr_0f2_76b3

    nop
    nop
    ld a, $3f

jr_0f2_7678:
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    add e
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    cp $08
    rrca
    inc c
    db $fc
    db $10
    rra
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0f2_7678

    rra
    rra
    ld b, b
    ret nz

    ccf
    ccf
    add b
    add b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    inc bc
    add b

jr_0f2_76b3:
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
    inc bc
    inc bc
    add h
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $08
    rrca
    ld c, $f6
    ld [$fe0f], sp
    cp $07
    rlca
    db $fc
    db $f4
    rlca
    rlca
    db $f4
    db $fc
    rlca
    rlca
    xor h
    db $f4
    ccf
    ccf
    db $fc
    and h
    ld a, a
    ld a, a
    cp h
    db $e4
    cp $ff
    db $e4
    db $fc

jr_0f2_76e8:
    rst $38
    rst $38
    ld hl, sp-$08

jr_0f2_76ec:
    add $ff
    ldh [$e0], a

jr_0f2_76f0:
    add d
    rst $38
    ld h, b
    ldh [rDIV], a
    rst $38
    jr nc, jr_0f2_76e8

    ld [bc], a
    rst $38
    jr nc, jr_0f2_76ec

    xor $1f
    jr nc, jr_0f2_76f0

    ld sp, hl
    rlca
    ldh [$e0], a
    ld a, l
    add e
    ret nz

    ret nz

    ccf
    rst $08
    add b
    add b
    dec c
    rst $38
    ret nz

    ret nz

jr_0f2_7710:
    ei
    db $fd
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ld b, b
    rlca
    ld hl, sp-$80
    add b
    inc bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0f2_7710

    jr nc, @+$01

    db $10
    ldh a, [$5f]
    rst $18
    ldh a, [$f0]
    rst $08
    rst $08
    ld hl, sp-$08
    call nz, Call_000_08c7
    ld hl, sp-$7c
    add a
    ld [$04f8], sp
    rlca
    ld [$02f8], sp
    inc bc
    ld [$02f8], sp
    inc bc
    ld [$02f8], sp
    inc bc
    ld [$02f8], sp
    inc bc
    ld [$02f8], sp
    inc bc
    db $10
    ldh a, [rSB]
    ld bc, $f0f0
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    dec b
    ld b, $00
    nop
    dec bc
    inc c
    nop
    nop
    add hl, bc
    ld c, $00
    nop
    dec bc
    inc c
    nop
    nop
    dec bc
    inc c
    nop
    nop
    rla
    rra
    nop
    nop
    inc e
    dec de
    nop
    nop
    rra
    dec d
    nop
    nop
    rra
    rla
    nop
    nop
    ld e, $19
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    add hl, de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    rst $08
    rst $38
    ld bc, $0301
    rst $38
    ld [bc], a
    inc bc
    ld bc, $06ff
    rlca
    ld [bc], a
    cp $1f
    rra
    inc b
    db $fc
    ccf
    ccf
    sbc b
    ld hl, sp+$7e
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    inc bc
    inc bc
    add h
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $08
    rrca
    ld c, $f6
    ld [$fe0f], sp
    cp $07
    rlca
    db $fc
    db $f4
    rlca
    rlca
    db $f4
    db $fc
    ld a, a
    ld a, a
    xor h
    db $f4
    rst $38
    rst $38
    db $fc
    and h
    rst $38
    rst $38
    cp h
    db $e4
    cp $ff
    db $e4
    db $fc
    rra
    rst $38
    ld hl, sp-$08
    ld c, $ff
    ldh a, [$b0]
    inc c
    rst $38
    or b
    ldh a, [rNR23]
    rst $38
    ld [hl], b
    ldh a, [$a8]
    ld e, a
    ld [hl], b
    ldh a, [$c4]
    ccf
    ldh [$e0], a
    add e
    ld a, a
    ret nz

    ret nz

    inc bc
    rst $38
    ldh a, [$f0]
    ld b, $f9
    xor b
    ret c

    ld [hl], e
    db $fc
    ret c

    xor b
    adc l
    cp $d8
    xor b
    add a
    rst $38
    xor b
    ret c

    inc b
    db $fc
    ldh a, [$f0]
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    cp a
    cp a
    nop
    nop
    cp l
    cp a
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    ldh a, [$f0]
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    add b
    add b
    ld a, $3e
    nop
    nop
    jr c, jr_0f2_7932

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f2_7932:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0f2_7fe7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0f2_7ffc:
    nop
    nop
    nop
    nop
