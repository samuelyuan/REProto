SECTION "ROM Bank $0cb", ROMX[$4000], BANK[$cb]

    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    dec de
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
    rra
    ld c, $00
    nop
    rst $38
    xor $01
    ld bc, $eeff
    ld bc, $ff01
    xor $01
    ld bc, $e4ff
    ld bc, $ff01
    ldh [rSB], a
    nop
    rst $38
    jr nz, jr_0cb_4045

jr_0cb_4045:
    ld bc, $c01f
    nop
    ld bc, $df1f
    ld bc, $1f00
    ret nz

    ld bc, $9f00
    ld b, b
    nop
    ld bc, $c01f
    nop
    ld bc, $df1f
    nop
    ld bc, $ff3f
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $df01
    rst $18
    nop
    nop
    rst $18
    rra
    nop
    nop
    rra
    ld de, $0000
    ld de, $000f
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    ld [de], a
    inc c
    nop
    nop
    ld a, [de]
    inc b
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ret nz

    and b
    nop
    nop
    ldh [$c0], a
    nop
    nop
    ldh [$80], a
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    cp $0e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    rra
    add b
    add b
    rst $38
    rra
    add b
    add b
    rst $38
    rra
    add b
    add b
    rst $38
    jr jr_0cb_4103

jr_0cb_4103:
    nop
    ldh a, [rNR22]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    db $f4
    inc bc
    nop
    nop
    or $01
    nop
    nop
    ldh a, [rTAC]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    rst $30
    rst $30
    nop
    nop
    rst $30
    or $00
    add b
    rst $30
    or $00
    add b
    rst $30
    rst $30
    add b
    add b
    di
    ldh a, [rP1]
    nop
    ldh a, [$80]
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ret nc

    jr nz, jr_0cb_4153

jr_0cb_4153:
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    dec de
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
    ccf
    ld l, $00
    nop
    ld a, a
    ld l, [hl]
    nop
    nop
    rst $38
    xor $01
    ld bc, $eeff
    ld bc, $ff00
    db $e4
    ld [bc], a
    ld bc, $60ff
    nop
    inc bc
    rst $18
    nop
    nop
    inc bc
    rra
    add b
    inc bc
    nop
    ld e, a
    sbc a
    ld bc, $9f00
    ld b, b
    nop
    nop
    cp a
    ld b, b
    nop
    nop
    rst $18
    jr nz, jr_0cb_41d9

jr_0cb_41d9:
    nop
    ld a, a
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
    ccf
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld de, $0000
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    ld [de], a
    inc c
    nop
    nop
    ld a, [de]
    inc b
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ret nz

    and b
    nop
    nop
    ldh [$c0], a
    nop
    nop
    ldh [$80], a
    nop
    nop
    cp $06
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    ld b, $00
    ret nz

    cp $05
    nop
    add b
    ld a, [$00f9]
    add b
    ld a, [$0001]
    add b
    ld a, [$0001]
    add b
    cp $09
    nop
    add b
    db $fc
    ei
    nop
    nop
    db $fc
    ei
    nop
    nop
    db $fc
    ei
    nop
    nop
    db $fc
    ei
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    cp $ff
    nop
    nop
    rst $38
    rlca
    nop
    nop
    add c
    ld a, [hl]
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld b, h
    jr c, jr_0cb_42c3

jr_0cb_42c3:
    nop
    nop
    inc a
    nop
    nop
    jr nz, jr_0cb_42e6

    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    jr jr_0cb_42d8

    nop
    nop
    db $10
    ld c, $00
    nop

jr_0cb_42d8:
    nop
    ld c, $00
    nop
    add hl, bc
    ld b, $00
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca

jr_0cb_42e6:
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    adc a
    adc a
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rSB]
    ld bc, $30df
    ld bc, $cf01
    jr nc, @+$03

    ld bc, $3fcf
    ld bc, $9f01
    ld h, b
    ld bc, $8f01
    ld h, b
    ld bc, $8f01
    ld h, b
    ld bc, $8f01
    ld l, a
    ld bc, $ef01
    adc a
    ld bc, $cf01
    rst $08
    ld bc, $cf03
    rst $08
    nop
    inc bc
    rst $08
    ld c, a
    nop
    nop
    rrca
    rst $08
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
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
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    inc de
    nop
    nop
    rrca
    rrca
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    nop
    ldh [rIE], a
    inc c
    nop
    ldh [$f9], a
    ld [$6080], sp
    ld sp, hl
    ld hl, sp-$80
    ld h, b
    ld hl, sp+$00
    ldh [rNR10], a
    ld hl, sp+$00
    ret nz

    jr nc, @-$06

    nop
    ld b, b
    jr nc, @-$06

    ld hl, sp+$70
    db $10
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08

jr_0cb_4422:
    ld [hl], b
    ld h, b
    ld hl, sp-$08

jr_0cb_4426:
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    ld d, b
    jr nz, @-$06

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    or b
    ld b, b
    nop
    nop
    jr nz, jr_0cb_4422

    nop
    nop
    jr nz, jr_0cb_4426

    nop
    nop
    ld b, b
    or b
    nop
    nop
    ld b, b
    or b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    db $fc
    db $fc
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    stop
    nop
    ld l, a
    stop
    nop
    ld l, a
    rra
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld l, a
    stop
    nop
    ld l, a
    stop
    nop
    ld l, a
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    ld bc, $0006
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld bc, $0002
    nop
    ld bc, $0002
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rlca
    inc b
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    nop
    ldh [rIE], a
    inc c
    nop
    ldh [$fb], a
    ld [$e000], sp
    ld sp, hl
    ld hl, sp-$40
    jr nz, @-$05

    nop
    add b
    ld h, b
    ld hl, sp+$00
    add b
    ld h, b
    ld hl, sp+$00
    ret nz

    jr nz, @-$06

    ld hl, sp-$20
    ldh [$f9], a
    ld sp, hl

jr_0cb_459e:
    ldh [$e0], a
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
    ld hl, sp-$07
    ldh [$e0], a
    ld sp, hl
    ld hl, sp+$00
    ldh [$fc], a
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp h
    inc b
    nop
    nop
    add h
    jr c, jr_0cb_45bb

jr_0cb_45bb:
    nop
    ret nz

    jr c, jr_0cb_45bf

jr_0cb_45bf:
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ret nz

    jr nc, jr_0cb_45cf

jr_0cb_45cf:
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0cb_459e

    nop
    nop
    ret nz

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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    nop
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ccf
    stop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
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
    ccf
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    nop
    nop
    nop
    ld bc, $0006
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
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
    nop
    nop
    rrca
    rrca
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    ret nz

    nop
    rst $38
    inc c
    nop
    ret nz

    ei
    ld [$c000], sp
    ei
    ld hl, sp-$80
    ld b, b
    ei
    nop
    nop
    ret nz

    ei
    nop
    nop
    ret nz

    ei
    nop
    nop
    ret nz

    ei
    ei
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ld sp, hl
    ei
    ret nz

    ret nz

    ld a, [$00f9]
    ret nz

    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, $00
    nop
    nop
    nop
    ld e, $00
    nop
    ld bc, $001e
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    add hl, de
    ld b, $00
    nop
    jr nz, jr_0cb_4770

    nop
    nop
    nop
    ld a, $00
    nop
    ld [bc], a
    inc a
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0cb_47a2

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop

jr_0cb_4770:
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc e
    nop
    nop
    cp $c6
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
    dec c
    nop
    nop

jr_0cb_47a2:
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ccf
    stop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rrca
    nop
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
    rrca
    rra
    nop
    nop
    rra
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    nop
    nop
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    inc e
    ld [bc], a
    nop
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    db $10
    ld c, $00
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    ld [$00c0], sp
    cp $09
    nop
    ret nz

    cp $09
    nop
    ret nz

    rst $38
    ld hl, sp+$40
    add b
    cp $01
    nop
    add b
    cp $01
    nop
    add b
    cp $01
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    nop
    ei
    rst $38
    add b
    add b
    db $fc
    ei
    add b
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    ld e, $00
    nop
    db $10
    ld c, $00
    nop
    ld bc, $000e
    nop
    ld [$0007], sp
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    add b
    nop
    ld b, $01
    nop
    add b
    inc b
    inc bc
    nop
    add b
    nop
    inc bc
    nop
    add b
    nop
    inc bc
    nop
    add b
    inc bc
    nop
    add b
    nop
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
    add e
    add e
    ret nz

    ret nz

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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ccf
    stop
    nop
    ccf
    nop
    nop
    nop
    rra
    rrca
    nop
    nop
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
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
    ld bc, $0000
    db $10
    ld c, $00
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $00
    nop
    ld [bc], a
    inc e
    nop
    nop
    jr nz, jr_0cb_49a8

    nop
    nop
    ld [hl], h
    ld [$0000], sp
    nop
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ld [$00f0], sp
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [$e0], a

jr_0cb_49a8:
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    ld [bc], a
    ldh a, [rSVBK]
    ld bc, $f801
    ld hl, sp+$00
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    ld [$40c0], sp
    db $fc
    inc de
    ld b, b
    ret nz

    db $fc
    inc de
    add b
    nop
    db $fc
    inc de
    nop
    nop
    ld sp, hl
    or $00
    nop
    ld hl, sp+$16
    nop
    nop
    ld hl, sp+$16
    nop
    nop
    ld hl, sp+$16
    nop
    nop
    cp $f8
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    call c, Call_000_00fc
    nop
    call z, Call_000_00f4
    nop
    ldh a, [$ec]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, $00
    nop
    nop
    db $10
    ld c, $00
    nop
    ld de, $000e
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    inc c
    inc bc
    add b
    nop
    nop
    rlca
    nop
    add b
    nop
    rlca
    nop
    add b
    nop
    rlca
    nop
    add b
    inc b
    inc bc
    nop
    add b
    nop
    inc bc
    nop
    add b
    inc bc
    nop
    add b
    nop
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    cp b
    cp b
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ccf
    stop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rrca
    nop
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
    rrca
    rra
    nop
    nop
    rra
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    ld [$0007], sp
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    add hl, de
    ld b, $00
    nop
    nop
    ld e, $00
    nop
    jr nz, @+$20

    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    inc b
    jr c, jr_0cb_4b21

jr_0cb_4b21:
    nop
    ld a, b
    ld h, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $f001
    ldh a, [rSB]
    nop
    ldh a, [rSVBK]
    ld bc, $f001
    ldh a, [rP1]
    nop
    ld hl, sp+$38
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    inc c
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    ld [$00c0], sp
    cp $09
    nop
    ret nz

    cp $09
    nop
    ret nz

    rst $38
    ld hl, sp+$40
    add b
    cp $01
    nop
    add b
    cp $01
    nop
    add b
    cp $01
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    nop
    ei
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp b
    add h
    nop
    nop
    add b
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    jr nc, jr_0cb_4bd6

    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e

jr_0cb_4bd6:
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
    nop
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
    inc e
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ccf
    stop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    rrca
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
    ccf
    ccf
    nop
    nop
    rra
    ccf
    nop
    nop
    cpl
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
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
    rra
    rra
    nop
    nop
    rra
    inc bc
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
    nop
    nop
    nop
    nop
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    ret nz

    nop
    rst $38
    inc c
    nop
    ret nz

    ei
    ld [$c000], sp
    ei
    ld hl, sp-$80
    ld b, b
    ei
    nop
    nop
    ret nz

    ei
    nop
    nop
    ret nz

    ei
    nop
    nop
    ret nz

    ei
    ei
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ld sp, hl
    ei
    ret nz

    ret nz

    cp $fd
    nop
    ret nz

    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ld h, b
    sbc b
    nop
    nop
    ld b, b
    cp b
    nop
    nop
    ld b, b
    cp b
    nop
    nop
    ld b, b
    cp b
    nop
    nop
    ld b, b
    cp b
    nop
    nop
    add b
    jr c, jr_0cb_4d5f

jr_0cb_4d5f:
    nop
    add b
    cp b
    nop
    nop
    cp b
    add b
    nop
    nop
    jr c, jr_0cb_4da2

    nop
    nop
    jr c, jr_0cb_4da6

    nop
    nop
    jr c, jr_0cb_4daa

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
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
    dec c
    nop
    nop

jr_0cb_4da2:
    rrca
    rrca
    nop
    nop

jr_0cb_4da6:
    rlca
    rlca
    nop
    nop

jr_0cb_4daa:
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    stop
    nop
    ld l, a
    stop
    nop
    ld l, a
    rra
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld l, a
    stop
    nop
    ld l, a
    stop
    nop
    ld l, a
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0000
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    nop
    ldh [rIE], a
    inc c
    nop
    ldh [$fb], a
    ld [$e000], sp
    ld sp, hl
    ld hl, sp-$40
    jr nz, @-$05

    nop
    add b
    ld h, b
    ld hl, sp+$00
    add b
    ld h, b
    ld hl, sp+$00
    ret nz

    jr nz, @-$06

    ld hl, sp-$20
    ldh [$f9], a
    ld sp, hl
    ldh [$e0], a
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
    ld hl, sp-$07
    ldh [$e0], a
    ld sp, hl
    ld hl, sp+$00
    ldh [$f8], a
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ret z

    jr nc, jr_0cb_4ecf

jr_0cb_4ecf:
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
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
    rrca
    rlca
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    stop
    nop
    rrca
    ldh [rP1], a
    nop
    rrca
    rst $28
    nop
    nop
    adc a
    ld h, b
    nop
    nop
    rst $08
    jr nz, jr_0cb_4f89

jr_0cb_4f89:
    nop
    rrca
    ldh [rP1], a
    nop
    rrca
    rst $28
    nop
    nop
    rra
    rst $38
    nop
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
    nop
    nop
    rst $28
    rst $28
    rrca
    ld c, $ff
    ld a, a
    rrca
    inc bc
    rst $38
    sbc b
    rrca
    inc bc
    db $fd
    sbc d
    rrca
    rrca
    db $fc
    ei
    rra
    rlca
    cp $39
    rra
    rra
    ld sp, hl
    ld hl, sp+$1f
    ld b, $f0
    jr nc, jr_0cb_4fc1

jr_0cb_4fc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$d0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    nop
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    inc c
    add b
    nop
    ld hl, sp+$0b
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ld a, [$0001]
    add b
    ei
    nop
    nop
    add b
    ld hl, sp+$03

jr_0cb_504a:
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ei
    ei
    add b
    add b
    ei
    ei
    add b
    ld b, b
    ei
    ei
    add b
    ld b, b
    ei
    ei
    ret nz

    ret nz

    ld sp, hl
    ld hl, sp-$80
    nop
    ldh [rNR23], a
    nop
    nop
    ldh [rNR23], a
    nop
    nop
    jr nz, jr_0cb_504a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ret nz

    jr c, jr_0cb_507b

jr_0cb_507b:
    nop
    jr c, jr_0cb_507e

jr_0cb_507e:
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [$03], a
    ld bc, $e0ff
    ld bc, $bf02
    jr nz, jr_0cb_50cd

    inc bc
    rra
    sbc a
    inc bc

jr_0cb_50cd:
    inc b
    sbc a
    nop
    ld bc, $1f06
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    rra
    nop
    rlca
    rra
    rra
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    ld a, $be
    inc b
    inc bc
    cp [hl]
    ld a, $00
    nop
    ld a, $02
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    inc b
    jr c, jr_0cb_5115

jr_0cb_5115:
    nop
    nop
    jr c, jr_0cb_5119

jr_0cb_5119:
    nop
    nop
    jr c, jr_0cb_511d

jr_0cb_511d:
    nop
    nop
    jr c, jr_0cb_5121

jr_0cb_5121:
    nop
    jr c, jr_0cb_5124

jr_0cb_5124:
    nop
    nop
    jr c, jr_0cb_5160

    nop
    nop
    jr c, jr_0cb_5164

    nop
    nop
    jr c, jr_0cb_5168

    nop
    nop
    jr c, jr_0cb_516c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0cb_5160:
    ldh [$e0], a
    nop
    nop

jr_0cb_5164:
    ret nz

    ret nz

    nop
    nop

jr_0cb_5168:
    ldh a, [$80]
    nop
    nop

jr_0cb_516c:
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    add b
    nop
    ei
    ld [$8000], sp
    ldh a, [$f3]
    ld b, b
    add b
    di
    nop
    add b
    ld b, b
    pop af
    nop
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    pop af
    pop af
    ret nz

    ret nz

    di
    di
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ld sp, hl
    ei
    ret nz

    ret nz

    ld a, [$40f9]
    add b
    ld hl, sp-$80
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld b, b
    jr c, jr_0cb_51d3

jr_0cb_51d3:
    nop
    nop
    jr c, jr_0cb_51d7

jr_0cb_51d7:
    nop
    nop
    jr c, jr_0cb_51db

jr_0cb_51db:
    nop
    nop
    jr c, jr_0cb_51df

jr_0cb_51df:
    nop
    jr c, jr_0cb_51e2

jr_0cb_51e2:
    nop
    nop
    jr c, jr_0cb_521e

    nop
    nop
    jr c, jr_0cb_5222

    nop
    nop
    jr c, jr_0cb_5226

    nop
    nop
    jr c, jr_0cb_522a

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    rrca
    rrca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop

jr_0cb_521e:
    rra
    ld e, $00
    nop

jr_0cb_5222:
    rrca
    rrca
    nop
    nop

jr_0cb_5226:
    rlca
    rlca
    nop
    nop

jr_0cb_522a:
    rst $38
    db $e3
    ld bc, $ff01
    db $e3
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    inc bc
    nop
    rst $38
    pop hl
    inc b
    inc bc
    ld a, a
    and b
    nop
    rlca
    sbc a
    nop
    ld bc, $1f0e
    nop
    ld [bc], a
    inc c
    rra
    rra
    rrca
    nop
    rra
    nop
    rlca
    nop
    sbc a
    nop
    inc bc
    nop
    rst $18
    ld b, b
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $18
    ld bc, $df01
    rst $38
    ld bc, $bf01
    rst $38
    ld bc, $3f00
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ld a, l
    dec b
    nop
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    jr jr_0cb_52f4

    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    db $fc
    adc h
    nop
    nop
    rst $38
    add a
    nop
    nop
    rst $38
    add a
    add b
    add b

jr_0cb_52f4:
    rst $38
    add a
    ret nz

    ret nz

    rst $38
    rlca
    ret nz

    ret nz

    rst $38
    rlca
    ret nz

    ret nz

    rst $38
    inc b
    ret nz

    nop
    ei
    ld [$00c0], sp
    ldh a, [$f1]
    ld b, b
    add b
    ldh a, [rSB]
    ld b, b
    add b
    ldh a, [rSB]
    ld b, b
    add b
    ld a, [c]
    ld bc, $00c0
    ldh a, [$f3]
    add b
    nop
    ldh a, [$f3]
    add b
    nop
    ld hl, sp-$05
    add b
    nop
    ld hl, sp-$05
    add b
    nop
    ei
    ei
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    jp $8080


    db $e4
    sbc e
    add b
    nop
    ld b, h
    jr c, jr_0cb_533f

jr_0cb_533f:
    nop
    ld b, h
    jr c, jr_0cb_5343

jr_0cb_5343:
    nop
    inc b
    jr c, jr_0cb_5347

jr_0cb_5347:
    nop
    ld [hl+], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld b, $18
    nop
    nop
    nop
    ld c, $00
    nop
    add hl, bc
    ld b, $00
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
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
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
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
    rrca
    rrca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e0ff
    rlca
    nop
    cp a
    jr nz, jr_0cb_53cc

    inc b
    sbc a
    rra

jr_0cb_53cc:
    inc bc
    inc b
    sbc a
    nop
    rlca
    nop
    sbc a
    nop
    inc bc
    inc bc
    rst $18
    add b
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    ld bc, $9f01
    sbc a
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
    ccf
    ccf
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ccf
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    dec e
    ld [hl+], a
    nop
    nop
    ccf
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    add hl, de
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld [hl], d
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld c, b
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ei
    ld [$00c0], sp
    di
    ldh a, [$c0]
    nop
    di
    nop
    add b
    nop
    ldh a, [$03]
    nop
    add b
    ldh a, [$03]
    nop
    add b
    di
    ldh a, [$80]
    nop
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    rst $30
    add b
    add b
    ld sp, hl
    ld a, [$0000]
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [$08]
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ldh a, [rP1]
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
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e0ff
    rlca
    nop
    cp a
    jr nz, jr_0cb_554c

    inc b
    sbc a
    rra

jr_0cb_554c:
    ld bc, $9f06
    nop
    ld bc, $9f06
    nop
    rlca
    nop
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $9f01
    sbc a
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
    ccf
    inc hl
    nop
    nop
    inc hl
    dec e
    nop
    nop
    inc hl
    dec e
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    inc hl
    inc e
    nop
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    dec e
    ld [hl+], a
    nop
    nop
    ccf
    inc e
    nop
    nop
    inc a
    inc a
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
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    ld sp, hl
    ld sp, hl
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ld a, [$0009]
    ret nz

    di
    ldh a, [$80]
    ld b, b
    di
    nop
    add b
    ld b, b
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    ld bc, $8000
    ld a, [c]
    pop af
    nop
    add b
    di
    ldh a, [$80]
    nop
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    ei
    rst $38
    add b
    add b
    ld sp, hl
    ld a, [$0000]
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    sbc b
    ld h, b
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    db $10
    ldh [rP1], a
    nop
    sub b
    ld h, b
    nop
    nop
    sub b
    ld h, b
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e0ff
    ld bc, $bf06
    jr nz, @+$03

    ld b, $9f
    rra
    inc bc
    inc b
    sbc a
    nop
    nop
    rlca
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc b
    inc bc
    sbc a
    rra
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    cp a
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld bc, $0000
    inc bc
    dec a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    ccf
    nop
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    ld a, $00
    nop
    nop
    inc a
    inc a
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
    inc e
    inc e
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
    ccf
    ccf
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$c000], sp
    di
    ldh a, [rP1]
    ret nz

    di
    nop
    add b
    ld b, b
    ld a, [c]
    ld bc, $c000
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    pop af
    ld b, b
    add b
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    rst $30
    add b
    add b
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [rP1]
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
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    ldh [rP1], a
    rlca
    cp a
    jr nz, jr_0cb_584c

    inc b
    sbc a
    rra

jr_0cb_584c:
    inc bc
    inc b
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    rra
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    cp a
    rst $38
    ld bc, $3f00
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ccf
    nop
    nop
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    inc e
    nop
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
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$00c0], sp
    di
    ldh a, [$80]
    ld b, b
    di
    nop
    nop
    ret nz

    di
    nop
    nop
    ret nz

    di
    nop
    ret nz

    nop
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$00f0], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $9e
    nop
    nop
    ld a, [hl]
    ld h, [hl]
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    ldh [rTAC], a
    nop
    cp a
    jr nz, jr_0cb_59d0

    nop
    sbc a
    rra
    inc bc
    nop
    sbc a
    nop

jr_0cb_59d0:
    nop
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $3f00
    cp a
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
    ccf
    ld hl, $0000
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ccf
    nop
    nop
    nop
    rra
    jr nz, jr_0cb_5a0d

jr_0cb_5a0d:
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    inc hl
    inc e
    nop
    nop
    inc bc
    inc e
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
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
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$00c0], sp
    di
    ldh a, [$80]
    ld b, b
    di
    nop
    add b
    ld b, b
    di
    nop
    ret nz

    nop
    rst $30
    inc bc
    add b
    add b
    di
    rst $30
    add b
    add b
    rst $30
    rst $30
    add b
    add b
    di
    di
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld hl, sp+$00
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld [hl], b
    adc b
    nop
    nop
    ld hl, sp+$70
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    sbc h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc h
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    ldh [rP1], a
    rlca
    cp a
    jr nz, jr_0cb_5b4c

    inc b
    sbc a
    rra

jr_0cb_5b4c:
    inc bc
    inc b
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    rra
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    cp a
    rst $38
    ld bc, $3f00
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    inc bc
    nop
    nop
    ld hl, $001f
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    inc sp
    inc c
    nop
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld de, $000e
    nop
    ld [de], a
    inc c
    nop
    nop
    ld [de], a
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$00c0], sp
    di
    ldh a, [$80]
    ld b, b
    di
    nop
    nop
    ret nz

    di
    nop
    nop
    ret nz

    di
    nop
    ret nz

    nop
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld [hl], b
    adc b
    nop
    nop
    ld hl, sp+$70
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e0ff
    ld bc, $bf06
    jr nz, @+$03

    ld b, $9f
    rra
    inc bc
    inc b
    sbc a
    nop
    nop
    rlca
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc b
    inc bc
    sbc a
    rra
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
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
    rra
    ld bc, $0000
    ld de, $000e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    rra
    nop
    nop
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    nop
    ld e, $00
    nop
    db $10
    ld c, $00
    nop
    ld e, $00
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
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
    ld a, a
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$c000], sp
    di
    ldh a, [rP1]
    ret nz

    di
    nop
    add b
    ld b, b
    ld a, [c]
    ld bc, $c000
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    pop af
    ld b, b
    add b
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    ei
    rst $38
    add b
    add b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$00
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    rrca
    rrca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e0ff
    rlca
    nop
    cp a
    jr nz, jr_0cb_5e4c

    inc b
    sbc a
    rra

jr_0cb_5e4c:
    ld bc, $9f06
    nop
    ld bc, $9f06
    nop
    rlca
    nop
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $9f01
    sbc a
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
    ccf
    ccf
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ccf
    nop
    nop
    nop
    ld hl, $001e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    inc a
    inc a
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
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $f2
    nop
    nop
    db $fc
    call z, RST_00
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ld a, [$0009]
    ret nz

    di
    ldh a, [$80]
    ld b, b
    di
    nop
    add b
    ld b, b
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    ld bc, $8000
    ld a, [c]
    pop af
    nop
    add b
    di
    ldh a, [$80]
    nop
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    ei
    rst $38
    add b
    add b
    ld sp, hl
    ld a, [$0000]
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    inc bc
    ld bc, $ff01
    db $e3
    inc bc
    inc bc
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [$03], a
    ld bc, $e0ff
    ld bc, $bf02
    jr nz, jr_0cb_6001

    inc bc
    rra
    sbc a
    inc bc

jr_0cb_6001:
    inc b
    sbc a
    nop
    ld bc, $1f06
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    rra
    nop
    rlca
    rra
    rra
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    ld a, $be
    inc b
    inc bc
    cp $fe
    nop
    nop
    cp $92
    ld bc, $f801
    inc a
    ld bc, $f801
    db $fc
    ld bc, $f800
    ld a, h
    inc bc
    inc bc
    ld hl, sp-$1c
    inc bc
    nop
    call c, Call_000_00c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$80]
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    adc a
    add b
    add b
    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    add b
    nop
    ei
    ld [$8000], sp
    ldh a, [$f3]
    ld b, b
    add b
    di
    nop
    add b
    ld b, b
    pop af
    nop
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    pop af
    pop af
    ret nz

    ret nz

    di
    di
    ret nz

    ret nz

    ei
    ei
    ret nz

    ret nz

    ld sp, hl
    ei
    ret nz

    ret nz

    cp $ff
    ld b, b
    add b
    cp $92
    nop
    nop
    ccf
    ld a, c
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ccf
    ld a, h
    nop
    nop
    ccf
    ld c, a
    add b
    add b
    ld [hl], a
    ld b, $80
    nop
    nop
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
    rra
    rra
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
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rSB]
    nop
    rst $38
    jr nc, jr_0cb_6145

jr_0cb_6145:
    ld bc, $d01f
    nop
    ld bc, $df1f
    nop
    ld bc, $805f
    nop
    ld bc, $00df
    nop
    ld bc, $c01f
    nop
    ld bc, $df1f
    nop
    ld bc, $df1f
    ld bc, $df01
    rst $18
    ld bc, $df02
    rst $18
    ld bc, $df02
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    ld bc, $9f00
    rra
    nop
    nop
    rra
    inc bc
    nop
    nop
    inc bc
    dec e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [de], a
    inc c
    nop
    nop
    ld d, $08
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    ld c, $00
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
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
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    rst $38
    ld [$0000], sp
    ldh a, [rTAC]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    pop af
    ld b, $00
    nop
    di
    inc b
    nop
    nop
    ldh a, [rTAC]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    ld hl, sp-$01
    nop
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
    nop
    nop
    rst $30
    rst $30
    nop
    nop
    or $f0
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    sub b
    ld h, b
    nop
    nop
    or b
    ld b, b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    rra
    rra
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
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ld a, a
    ld a, b
    nop
    nop
    rst $38
    db $fc
    nop
    nop
    rst $38
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $ff00
    ld a, b
    ld [bc], a
    ld bc, $38ff
    nop
    inc bc
    rst $38
    jr nc, jr_0cb_62c5

jr_0cb_62c5:
    inc bc
    rra
    sub b
    inc bc
    nop
    rst $18
    rra
    ld bc, $df00
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    stop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rra
    cpl
    nop
    nop
    rra
    cpl
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld c, $00
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld b, $18
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
    nop
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
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    cp $e6
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    rst $38
    ld b, a
    nop
    nop
    rst $38
    rlca
    nop
    nop
    rst $38
    ld b, $00
    nop
    cp $05
    nop
    nop
    ld hl, sp-$05
    nop
    nop
    ld hl, sp+$03
    nop
    nop
    ld hl, sp+$03
    nop
    nop
    ld sp, hl
    ld [bc], a
    nop
    nop
    ld sp, hl
    cp $00
    nop
    ld sp, hl
    cp $00
    nop
    ld sp, hl
    cp $00
    nop
    ld sp, hl
    cp $00
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
    rlca
    nop
    nop
    adc a
    ld [hl], a
    nop
    nop
    dec c
    ld [hl], d
    nop
    nop
    ld b, h
    jr c, jr_0cb_63bf

jr_0cb_63bf:
    nop
    inc b
    jr c, jr_0cb_63c3

jr_0cb_63c3:
    nop
    inc h
    jr jr_0cb_63c7

jr_0cb_63c7:
    nop
    ld [bc], a
    inc e
    nop
    nop
    ld [de], a
    inc c
    nop
    nop
    ld d, $08
    nop
    nop
    nop
    ld c, $00
    nop
    add hl, bc
    ld b, $00
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    jr nc, jr_0cb_6441

jr_0cb_6441:
    rlca
    rst $38
    jr nc, @+$03

    ld b, $9f
    db $10
    ld bc, $9f06
    rra
    rlca
    ld [$001f], sp
    inc bc
    inc c
    rra
    nop
    ld [bc], a
    inc c
    rra
    nop
    ld c, $08
    rra
    rra
    ld c, $0e
    rra
    rra
    ld c, $06
    rra
    rra
    ld c, $0e
    rra
    rra
    ld a, [bc]
    inc b
    rra
    rra
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
    rra
    stop
    nop
    ld bc, $000e
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    ld [$0007], sp
    nop
    nop
    rlca
    nop
    nop
    dec c
    ld [bc], a
    nop
    nop
    inc b
    dec bc
    nop
    nop
    inc b
    dec bc
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    ld bc, $000e
    nop
    ld c, $00
    nop
    nop
    ld c, $0e
    nop
    nop
    xor $ee
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    ei
    inc c
    add b
    add b
    di
    inc c
    add b
    add b
    di
    db $fc
    add b
    add b
    ld sp, hl
    ld b, $80
    add b
    pop af
    ld b, $80
    add b
    pop af
    ld b, $80
    add b
    pop af
    or $80
    add b
    rst $30
    pop af
    add b
    add b
    di
    di
    add b
    add b
    di
    di
    add b
    ret nz

    di
    ld a, [c]
    nop
    ret nz

    ldh a, [$f3]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    jr nz, @-$3e

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$38
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
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    jr nc, jr_0cb_65c1

jr_0cb_65c1:
    rlca
    rst $38
    jr nc, jr_0cb_65c5

jr_0cb_65c5:
    rlca
    rst $18
    db $10
    inc bc
    inc b
    sbc a
    rra
    ld bc, $9f06
    nop
    ld bc, $1f06
    nop
    inc bc
    inc b
    rra
    nop
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    rra
    sbc a
    nop
    rlca
    sbc a
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
    dec a
    jr nz, jr_0cb_65f9

jr_0cb_65f9:
    nop
    ld hl, $001c
    nop
    inc bc
    inc e
    nop
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld de, $000e
    nop
    inc bc
    inc c
    nop
    nop
    nop
    rrca
    nop
    nop
    ld [$0007], sp
    nop
    nop
    rlca
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0001
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
    rlca
    rlca
    nop
    nop
    rrca
    ld c, $00
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
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    cp $08
    nop
    nop
    or $08
    nop
    nop
    or $f8

jr_0cb_668a:
    nop
    nop
    cp $00
    nop
    nop
    or $08
    nop
    nop
    or $08
    nop
    nop
    or $f8
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    add b
    ld h, b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0cb_668a

    nop
    nop
    add b
    ld b, b
    nop
    nop
    add b
    ld b, b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$80], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    nop
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
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [$03]
    nop
    rst $38
    jr nc, jr_0cb_6741

jr_0cb_6741:
    inc bc
    rst $38
    jr nc, jr_0cb_6745

jr_0cb_6745:
    inc bc
    rst $18
    db $10
    ld bc, $df02
    rra
    nop
    inc bc
    rst $18
    nop
    nop
    inc bc
    rst $18
    nop
    nop
    inc bc
    rst $18
    nop
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
    nop
    inc bc
    ld e, a
    sbc a
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
    ld a, h
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    sbc b
    ld h, b
    nop
    nop
    inc b
    ld a, b
    nop
    nop
    nop
    ld a, h
    nop
    nop
    ld b, b
    inc a
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    inc a
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
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    jr c, jr_0cb_67b9

jr_0cb_67b9:
    nop
    ld a, a
    ld h, e
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
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
    ld hl, sp-$04
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    add b
    ld h, b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ld h, b
    add b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh a, [$f0]
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
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [$03]
    nop
    rst $38
    stop
    inc bc
    ld a, a
    sub b
    nop
    inc bc
    ld a, a
    sub b
    ld [bc], a
    ld bc, $1fff
    nop
    ld bc, $807f
    nop
    ld bc, $807f
    nop
    ld bc, $807f
    nop
    ld bc, $ffff
    ld bc, $ff01
    rst $38
    ld bc, $ff00
    rst $38
    ld bc, $df01
    rst $38
    ld bc, $3f00
    rst $18
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, b
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld [$0070], sp
    nop
    add b
    ld [hl], b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh [rSB], a
    nop
    nop
    ldh [rP1], a
    ld bc, $8060
    nop
    ld bc, $c020
    nop
    ld bc, $c000
    nop
    ld bc, $c000
    ld bc, $c000
    nop
    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    inc bc
    inc bc
    pop bc
    pop bc
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    jr c, jr_0cb_6a12

    nop
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [$0070], sp
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0cb_6a12:
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    ld [bc], a
    rst $38
    db $10
    ld [bc], a
    inc bc
    ccf
    ret z

    ld bc, $3f00
    ret z

    nop
    nop
    ccf
    ret z

    nop
    nop
    sbc a
    ld l, a
    nop
    nop
    rra
    ld l, b

jr_0cb_6a50:
    nop
    nop
    rra
    ld l, b
    nop
    nop
    rra
    ld l, b
    nop
    nop
    ld a, a
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec sp
    ccf
    nop
    nop
    inc sp
    cpl
    nop
    nop
    rrca
    scf
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
    ld a, h
    nop
    nop
    nop
    ld [$0070], sp
    nop
    adc b
    ld [hl], b
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rSB]
    nop
    jr nc, jr_0cb_6a50

    nop
    ld bc, $e000
    nop
    ld bc, $e000
    nop
    ld bc, $e000
    nop
    ld bc, $c020
    nop
    ld bc, $c000
    ld bc, $c000
    nop
    ld bc, $c001
    ret nz

    dec e
    dec e
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    nop
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
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
    ldh a, [$f0]
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
    ldh a, [$80]
    nop
    nop
    ld [$0070], sp
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld b, b
    jr c, jr_0cb_6b47

jr_0cb_6b47:
    nop
    inc b
    jr c, jr_0cb_6b4b

jr_0cb_6b4b:
    nop
    ld l, $10
    nop
    nop
    nop
    ld e, $00
    nop
    ld bc, $001e
    nop
    db $10
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    nop
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

    rrca
    ld c, $c0
    ld b, b
    rra
    rra
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
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [$03]
    nop
    rst $38
    stop
    inc bc
    ld a, a
    sub b
    nop
    inc bc
    ld a, a
    sub b
    ld [bc], a
    ld bc, $1fff
    nop
    ld bc, $807f
    nop
    ld bc, $807f
    nop
    ld bc, $807f
    nop
    ld bc, $ffff
    ld bc, $ff01
    rst $38
    ld bc, $ff00
    rst $38
    ld bc, $df01
    rst $38
    ld bc, $3f00
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    dec e
    ld hl, $0000
    ld bc, $003c
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    inc c
    jr nc, jr_0cb_6c0d

jr_0cb_6c0d:
    nop
    nop
    jr c, jr_0cb_6c11

jr_0cb_6c11:
    nop
    nop
    jr c, jr_0cb_6c15

jr_0cb_6c15:
    nop
    nop
    jr c, jr_0cb_6c19

jr_0cb_6c19:
    nop
    nop
    jr c, jr_0cb_6c1d

jr_0cb_6c1d:
    nop
    nop
    jr c, jr_0cb_6c21

jr_0cb_6c21:
    nop
    nop
    jr c, jr_0cb_6c25

jr_0cb_6c25:
    nop
    jr c, jr_0cb_6c28

jr_0cb_6c28:
    nop
    nop
    jr c, jr_0cb_6c64

    nop
    nop
    jr c, jr_0cb_6c68

    nop
    nop
    jr c, jr_0cb_6c6c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
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
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0cb_6c64:
    ldh [$e0], a
    nop
    nop

jr_0cb_6c68:
    ldh a, [$e0]
    nop
    nop

jr_0cb_6c6c:
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    sbc b
    ld h, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    inc b
    ld a, b
    nop
    nop
    ld b, b
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    jr nz, jr_0cb_6cfa

    nop
    nop
    ld e, $06
    nop
    nop
    ld c, $0e
    nop
    nop
    rrca
    rrca
    add b
    add b
    rrca
    ld c, $80
    nop
    rrca
    rrca
    add b
    add b
    rra
    inc e
    nop
    nop
    rra
    rra

jr_0cb_6cfa:
    nop
    nop
    ld a, $30
    nop
    nop
    nop
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
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [$03]
    nop
    rst $38
    jr nc, jr_0cb_6d41

jr_0cb_6d41:
    inc bc
    rst $38
    jr nc, jr_0cb_6d45

jr_0cb_6d45:
    inc bc
    rst $18
    db $10
    ld bc, $df02
    rra
    nop
    inc bc
    rst $18
    nop
    nop
    inc bc
    rst $18
    nop
    nop
    inc bc
    rst $18
    nop
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    rst $18
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
    nop
    inc bc
    ld a, a
    cp a
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
    nop
    nop
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld b, $19
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld bc, $001c
    nop
    ld bc, $001d
    nop
    dec e
    ld bc, $0000
    inc e
    inc e
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
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    db $fc
    ld [$0000], sp
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop

jr_0cb_6e12:
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    ldh a, [rP1]
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
    ld hl, sp-$04
    nop
    nop
    db $f4
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
    nop
    add b
    ld b, b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    jr nz, jr_0cb_6e12

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$40
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    dec bc
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    ldh [rSB], a
    ld bc, $f0ff
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    jr nc, jr_0cb_6ec1

jr_0cb_6ec1:
    rlca
    rst $38
    jr nc, jr_0cb_6ec5

jr_0cb_6ec5:
    rlca
    rst $18
    db $10
    inc bc
    inc b
    sbc a
    rra
    ld bc, $9f06
    nop
    ld bc, $1f06
    nop
    inc bc
    inc b
    rra
    nop
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    rra
    sbc a
    nop
    rlca
    sbc a
    rra
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
    rra
    nop
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    inc de
    inc c
    nop
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    cp $fe
    nop
    nop
    ld a, a
    ld a, a
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
    ldh a, [$b0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    cp $ee
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    rrca
    nop
    nop
    cp $08
    nop
    nop
    or $08
    nop
    nop
    or $f8
    nop
    nop
    cp $00
    nop
    nop
    or $08
    nop
    nop
    or $08
    nop
    nop
    or $f8
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    rla
    rra
    nop
    nop
    rrca
    rla
    nop
    nop
    rra
    rrca
    nop
    nop
    rra
    rlca
    nop
    nop
    ld a, a
    ld bc, $0101
    rst $38
    pop bc
    inc bc
    inc bc
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    pop hl
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    rlca
    rst $38
    ldh [$03], a
    nop
    rst $38
    ld h, b
    nop
    inc bc
    ccf
    and b
    nop
    inc bc
    ccf
    cp a
    nop
    inc bc
    cp a
    nop
    ld bc, $bf02
    nop
    nop
    inc bc
    ccf
    add b
    nop
    inc bc
    ccf
    cp a
    nop
    inc bc
    ccf
    cp a
    inc bc
    inc bc
    cp a
    cp a
    inc bc
    dec b
    cp a
    cp a
    inc bc
    dec b
    cp a
    cp a
    rlca
    rlca
    cp a
    cp a
    inc bc
    nop
    ccf
    ccf
    nop
    nop
    rrca
    jr nc, jr_0cb_70ad

jr_0cb_70ad:
    nop
    rrca
    jr nc, jr_0cb_70b1

jr_0cb_70b1:
    nop
    ld [$0037], sp
    nop
    nop
    ccf
    nop
    nop
    rlca
    jr c, jr_0cb_70bd

jr_0cb_70bd:
    nop
    jr c, jr_0cb_70c0

jr_0cb_70c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$60], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$c0], a
    nop
    nop
    db $fc
    call c, RST_00
    cp $de
    nop
    nop
    cp $de
    nop
    nop
    cp $9e
    nop
    nop
    cp $1e
    nop
    nop
    cp $10
    nop
    nop
    ldh [$0e], a
    nop
    nop
    ldh [$ee], a
    nop
    nop
    ld [c], a
    inc c
    nop
    nop
    and $08
    nop
    nop
    ldh [$0e], a
    nop
    nop
    ldh [$ee], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    xor $ee
    nop
    nop
    rst $38
    db $fc
    ldh [$e0], a
    rst $38
    inc sp
    ldh [$80], a
    ld a, a
    or e
    ldh [$80], a
    ld a, a
    cp a
    ldh [$e0], a
    rst $38
    add hl, sp
    ldh a, [$c0]
    ccf
    ccf
    ldh a, [$f0]
    rra
    jr @-$0e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
