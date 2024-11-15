SECTION "ROM Bank $0cf", ROMX[$4000], BANK[$cf]

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
    rlca
    nop
    nop
    nop
    rlca
    rlca
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
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    inc bc
    ld c, $00
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
    rrca
    rra
    nop
    nop
    nop
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
    ld a, [de]
    rrca
    nop
    nop
    rra
    rrca
    nop
    nop
    inc e
    rrca
    nop
    nop
    dec e
    ld b, $00
    nop
    rrca
    rla
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
    ld b, $07
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
    rlca
    nop
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
    inc bc
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
    inc bc
    inc bc
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
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    ret c

    nop
    nop
    jr @-$06

jr_0cf_40da:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr c, jr_0cf_40da

    nop
    nop
    sbc [hl]
    cp $00
    nop
    jr nz, @+$01

    nop
    nop
    ret nz

    rst $38
    nop
    add b
    add h
    ei
    nop
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    nop
    add b
    sbc [hl]
    pop hl
    nop
    nop
    cp a
    ret nz

    nop
    nop
    dec sp
    call nz, RST_00
    rst $20
    ld hl, sp+$00
    nop
    sbc $e1
    nop
    nop
    cp [hl]
    ret nz

    nop
    nop
    db $fc
    add d
    nop
    nop
    db $fc
    call nz, RST_00
    call c, Call_000_006c
    nop
    ret nz

    ld a, h
    nop
    nop
    add b
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
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    adc b
    ld hl, sp+$00
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
    ld hl, sp+$00
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
    ld hl, sp-$08
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

jr_0cf_417f:
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
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld [$0017], sp
    nop
    inc a
    ccf
    nop
    nop
    ld [hl], a
    ld l, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    jr c, jr_0cf_417f

    nop
    ld bc, $49b6
    nop
    ld bc, $c0bf
    nop
    nop
    call c, Call_000_00e3
    nop
    nop
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
    rra
    nop
    nop
    dec [hl]
    rra
    nop
    nop
    ccf
    dec d
    nop
    nop
    ccf
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
    nop
    rrca
    nop
    nop
    nop
    rrca
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
    ld b, $07
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
    rlca
    nop
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
    inc bc
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
    inc bc
    inc bc
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
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    ret c

    nop
    nop
    jr @-$06

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    inc a
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    add a
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, e
    cp a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    nop
    cp $00
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
    ld d, h
    cp $00
    nop
    cp $54
    nop
    nop
    cp $fe
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
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    adc b
    ld hl, sp+$00
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
    ld hl, sp+$00
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
    ld hl, sp-$08
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
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
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld l, d
    ccf
    nop
    nop
    ld a, a
    ld a, [hl+]
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    inc bc
    ld a, l
    nop
    nop
    inc bc
    ld a, l
    nop
    nop
    ld bc, $003e
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
    ccf
    nop
    nop
    nop
    ccf
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rrca
    nop
    nop
    ld [bc], a
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
    inc bc
    inc bc
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    db $f4
    adc h
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    add sp, $18

jr_0cf_4412:
    nop
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ret nz

    jr nc, jr_0cf_442b

jr_0cf_442b:
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_4412

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, @-$0e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    db $fc
    db $fc
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
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
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld l, d
    ccf
    nop
    nop
    ld a, a
    ld a, [hl+]
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    add b
    ld a, a
    nop
    nop
    add b
    ld a, a
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    ccf
    nop
    nop
    ld bc, $007f
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld a, b
    ld a, c
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    rra
    rra
    ld hl, sp-$08
    rrca
    rrca
    db $fc
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rra
    rra
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, sp-$7c

jr_0cf_4582:
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    sbc b
    db $e4
    nop
    nop
    ret c

    db $e4
    nop
    nop
    ret nz

    db $fc

jr_0cf_4592:
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    db $fc
    sbc h
    nop
    nop
    db $fc
    call c, RST_00
    jr jr_0cf_4582

    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_4592

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    nop
    nop
    ldh [$fc], a
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
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
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
    ld hl, sp-$08
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
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
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld l, d
    ccf
    ld bc, $ff00
    xor d
    inc bc
    ld bc, $bfff
    inc bc
    ld bc, $ff80
    ld bc, $8000
    ld a, a
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
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld bc, $007f
    nop
    cp $ff
    nop
    nop
    cp $ff
    nop
    ld bc, $ff07
    nop
    ld bc, $ff04
    nop
    ld bc, $f900
    nop
    inc bc
    nop
    ld sp, hl
    nop
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp+$00
    ld bc, $f000
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    db $e3
    db $e3
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    ld a, a
    ret nz

    ret nz

    rra
    rra
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c

jr_0cf_46ed:
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ret nz

    cp $00
    nop
    db $fc
    jp nz, RST_00

    jr jr_0cf_46ed

    nop
    nop
    cp $f1
    nop
    nop
    cp $f9
    nop
    nop
    cp $f9
    nop
    nop
    and a
    rst $38
    nop
    nop
    rst $38
    and a
    nop
    nop
    rst $38
    rst $30

jr_0cf_471e:
    nop
    nop
    rlca
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_471e

    nop
    nop
    jr nz, @-$0e

    nop
    nop
    ld b, b
    ldh a, [rP1]
    nop
    add b
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$fc]
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    db $fc
    nop
    nop
    ld b, $7e
    nop
    nop
    ld a, $3e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
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
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld l, d
    ccf
    nop
    nop
    ld a, a
    ld a, [hl+]
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    add b
    ld a, a
    nop
    nop
    add b
    ld a, a
    nop
    nop
    ld b, b
    ccf
    nop
    nop
    nop
    ccf
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
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $001f
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
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
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
    rra
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, sp-$7c

jr_0cf_4882:
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    sbc b
    db $e4
    nop
    nop
    ret c

    db $e4
    nop
    nop
    ret nz

    db $fc

jr_0cf_4892:
    nop
    nop
    sbc h
    db $fc

jr_0cf_4896:
    nop
    nop
    db $fc
    sbc h
    nop
    nop
    db $fc
    call c, RST_00
    jr jr_0cf_4882

    nop
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_4892

    nop
    nop
    jr nz, jr_0cf_4896

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ldh a, [rP1]
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    add b
    db $fc
    nop
    nop
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    add d
    cp $00
    nop
    ld c, $3e
    nop
    nop
    rra
    rra
    add b
    add b
    rrca
    rrca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, $7f
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld l, d
    ccf
    nop
    nop
    ld a, a
    ld a, [hl+]
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    inc bc
    ld a, l
    nop
    nop
    inc bc
    ld a, l
    nop
    nop
    ld hl, $003e
    nop
    jr nz, jr_0cf_49af

    nop
    nop
    db $10
    ccf
    nop
    nop
    db $10
    ccf
    nop
    nop
    db $10
    ccf
    nop
    nop
    jr nc, jr_0cf_49bf

    nop
    nop
    jr nc, jr_0cf_49c3

    nop
    nop
    db $10
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

jr_0cf_49af:
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
    ccf
    ccf
    nop
    nop
    ld a, a

jr_0cf_49bf:
    ld a, a
    nop
    nop
    nop

jr_0cf_49c3:
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    add sp, $18
    nop
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ret nz

    jr nc, jr_0cf_4a2b

jr_0cf_4a2b:
    nop
    nop
    ldh a, [rP1]
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
    jr nz, @-$1e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

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
    nop
    ldh [rP1], a
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
    db $fc
    db $fc
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, $7f
    nop
    nop
    nop
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
    ld a, a
    ld a, [hl]
    nop
    nop
    ld l, e
    ld a, $00
    nop
    ld a, [hl]
    dec hl
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    ld h, $39
    nop
    nop
    jr nz, @+$41

    nop
    nop
    db $10
    ccf
    nop
    nop
    db $10
    ccf
    nop
    nop
    db $10
    ccf
    nop
    nop
    ld [$007f], sp
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    inc b
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    inc b
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    ld a, e
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    rra
    rra
    ld hl, sp-$08
    rrca
    rrca
    db $fc
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rra
    rra
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    add sp, $1c
    nop
    nop
    add sp, $1c
    nop
    nop
    ld hl, sp+$1c
    nop
    nop
    db $ec
    inc e
    nop
    nop
    db $fc
    inc l
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc b
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
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$06

    nop
    nop
    ldh [$fc], a
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
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
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
    ld hl, sp-$08
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, $7f
    nop
    nop
    ld bc, $007e
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld l, e
    inc a
    nop
    nop
    ld a, [hl]
    add hl, hl
    nop
    nop
    ld a, a
    rra
    nop
    nop
    ld a, $5f
    nop
    nop
    inc e
    ld h, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    db $10
    ccf
    nop
    nop
    db $10
    ccf
    nop
    nop
    ld [$007f], sp
    nop
    ld [$007f], sp
    nop
    db $fc
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    ld bc, $ff03
    nop
    ld bc, $ff02
    nop
    ld bc, $f900
    nop
    inc bc
    nop
    ld sp, hl
    nop
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp+$00
    ld bc, $f000
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    db $e3
    db $e3
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ld a, a
    ld a, a
    ret nz

    ret nz

    rra
    rra
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    xor $1e
    nop
    nop
    db $ec
    ld e, $00
    nop
    ret c

    ccf
    nop
    nop
    sbc $39
    nop
    nop
    cp [hl]
    ld a, c
    nop
    nop
    ld a, [hl]
    ld sp, hl
    nop
    nop
    ld l, a
    rst $38
    nop
    nop
    rst $38
    xor a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rlca
    ld hl, sp+$00
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
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ldh a, [$fc]
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    db $fc
    nop
    nop
    ld b, $7e
    nop
    nop
    ld a, $3e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    dec e
    inc bc
    nop
    nop
    dec e
    rra
    nop
    nop
    inc e
    inc bc
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
    ld [bc], a
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    dec sp
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
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
    nop
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
    ld a, a
    ld a, [hl]
    nop
    nop
    ld l, e
    ld a, $00
    nop
    ld a, [hl]
    dec hl
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    ld b, $39
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
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
    ld [$001f], sp
    nop
    ld [$001f], sp
    nop
    ccf
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld bc, $003f
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
    rra
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
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
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    db $f4
    adc h
    nop
    nop
    ld [hl], b
    adc h
    nop
    nop
    add sp, $1c
    nop
    nop
    add sp, $1c
    nop
    nop
    ld hl, sp+$1c

jr_0cf_4e92:
    nop
    nop
    db $ec
    inc e
    nop
    nop
    db $fc
    inc l
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    adc b
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_4e92

jr_0cf_4eb2:
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0cf_4eb2

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    add b
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld c, $3e
    nop
    nop
    rra
    rra
    add b
    add b
    rrca
    rrca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a

jr_0cf_4ef4:
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
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
    ld a, a
    ld a, a
    ldh a, [$f0]
    ld e, b
    ld h, a
    jr nc, jr_0cf_4ef4

    ld e, a
    ld h, b
    rst $08
    ccf
    inc b
    inc bc
    ldh [$df], a
    inc bc
    inc bc
    sbc c
    and $03
    ld [bc], a
    cp b
    rst $00
    ld bc, $d801
    and a
    nop
    nop
    ld [hl], b
    adc a
    nop
    nop
    inc bc
    ld [hl], a
    nop
    nop
    ld bc, $0007
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
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
    inc bc
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
    inc bc
    inc bc
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
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    add b
    add b
    scf
    ld e, a
    add b
    add b
    ld a, l
    ld b, a
    add b
    add b

jr_0cf_4fd8:
    ld hl, $801f
    add b
    ld b, $3f
    ret nz

    ret nz

    ld bc, $e03f
    ldh [$fc], a
    rst $38
    ldh a, [$f0]
    ld a, $ff
    ld [hl], b
    ldh a, [$1f]
    cp $f0
    ld [hl], b
    rra
    rst $38
    nop
    ldh a, [$1f]
    rst $38
    nop
    ldh a, [$3f]
    rst $38
    and b
    ret nc

    rst $38
    rst $38
    ret nc

    and b
    rst $38
    rst $38
    ret nc

    and b
    nop
    rst $38
    jr nz, jr_0cf_4fd8

    rst $38
    rst $38
    add b
    ldh a, [rIE]
    rst $38
    add b
    ldh a, [rIE]
    rst $38
    add b
    ldh a, [rHDMA5]
    rst $38
    ld d, b
    ldh a, [rIE]
    ld d, l
    ldh a, [$50]
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    nop
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld bc, $80ff
    add b
    ld [bc], a
    rst $38
    nop
    ret nz

    ld [bc], a
    rst $38
    nop
    ret nz

    inc b
    rst $38
    nop
    ret nz

    inc b
    rst $38
    nop
    ldh [rDIV], a
    rst $38
    nop
    ldh [rDIV], a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    add b
    ldh a, [rSC]
    rst $38
    nop
    ldh a, [rSC]
    rst $38
    nop
    ld hl, sp+$02
    rst $38
    nop
    ld hl, sp+$02
    rst $38
    nop
    ld hl, sp+$02
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ldh a, [$f8]
    ld hl, sp-$10
    ldh a, [$f8]
    ld hl, sp+$70
    ld [hl], b
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei
    db $fc
    db $fc
    ei
    ei
    cp $fe
    ld hl, sp-$08
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
    ld bc, $0000
    nop
    inc bc
    ld bc, $c601
    db $fd
    ld bc, $bb00
    ld e, h
    nop
    ld bc, $f83f
    nop
    nop
    dec sp
    inc a
    nop
    nop
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    inc a
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
    inc a
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
    ret nz

    ret nz

    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    dec e
    inc bc
    ldh [$e0], a
    dec e
    rra
    ldh [$60], a
    dec e
    ld [bc], a
    ld h, b
    ldh [rNR10], a
    rrca
    ld b, b
    ret nz

    inc bc
    rra
    ld hl, sp-$08
    ld e, $1f
    ld [hl], b
    db $fc

jr_0cf_5174:
    inc bc
    ld a, a
    jr nc, jr_0cf_5174

    ld bc, $fcff
    jr nc, jr_0cf_519e

    rst $18
    or b
    db $fc
    ld bc, $94ff
    db $fc
    ld bc, $d4ff
    db $ec
    inc bc
    rst $38
    db $ec
    call nc, Call_0cf_7f8f
    db $ec
    call nc, $3fc0
    ld d, b
    add sp, $7f
    rst $38
    ret nz

    ld hl, sp+$7f
    ld a, a
    ret nz

    ld hl, sp+$7f
    ld a, a

jr_0cf_519e:
    ret nz

    ld hl, sp-$56
    rst $38
    xor b
    ld hl, sp-$01
    xor d
    ld hl, sp-$58
    ld a, a
    rst $38
    ld hl, sp-$08

jr_0cf_51ac:
    nop
    rst $38
    ld [$00f8], sp
    rst $38
    jr jr_0cf_51ac

    nop
    rst $38
    ld [hl], b
    ldh a, [rIF]
    rst $38
    nop
    ldh a, [rP1]
    rst $20
    nop
    ldh a, [$c0]
    rst $00
    nop
    ldh a, [$c7]
    rst $00
    ldh a, [$f0]
    rlca
    add a
    ldh a, [$f0]
    rlca
    add a
    add b
    ld hl, sp+$00
    jp $f800


    nop
    pop bc
    nop
    db $fc
    nop
    pop hl
    nop
    db $fc
    nop
    pop hl
    nop
    cp $00
    ret nz

    nop
    cp $80
    add b
    nop
    db $fc
    ret nz

    ret nz

    ld c, $7e
    ret nz

    ret nz

    ld e, $1e
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    ld a, a
    ld a, a
    pop hl
    pop hl
    rst $38
    rst $38
    db $e3
    db $e3
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
    jr jr_0cf_525a

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    ret nz

jr_0cf_5250:
    sbc $f7
    ldh [$f0], a
    or l
    rst $08
    jr c, jr_0cf_5250

    ld [hl], e
    ld c, a

jr_0cf_525a:
    add b
    cp $25
    ccf
    ret nz

    rst $38
    ld [bc], a
    dec c
    ret nz

    rst $38
    dec b
    rlca
    pop bc
    rst $38
    rlca
    rlca
    jp nz, Jump_000_07ff

    nop
    ld b, h
    rst $38
    inc bc
    inc b
    jr @+$01

    rlca
    nop
    ld h, b
    rst $38
    rlca
    ld [$ff40], sp
    inc b
    dec bc
    ld b, a
    rst $38
    rra
    rra
    ld hl, sp-$01
    rra
    rra
    nop
    rst $38
    ld e, $1f
    nop
    rst $38
    inc e
    rrca
    inc bc
    rst $38
    ld e, $1f
    inc c
    rst $38
    rla
    rrca
    ldh a, [$f7]
    rra
    rra
    ret nz

    jp Jump_000_0714


    nop
    di
    nop
    rlca
    nop
    ld sp, hl
    nop
    inc bc
    nop
    ld sp, hl
    nop
    ld bc, $f908
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
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
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
    ret nz

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, @-$0e

    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
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
    ld [$1eff], sp
    sbc [hl]
    inc c
    rst $38
    ld a, $fe
    inc c
    rst $38
    ccf
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    rrca
    rst $08
    db $fc
    rst $38
    rlca
    add a
    db $fc
    db $fc
    rlca
    rlca
    ld a, b
    ld a, b
    inc bc
    inc bc
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
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    ld [$000f], sp
    nop
    ld [$003f], sp
    nop
    rra
    rst $38
    nop
    ld bc, $9f78
    nop
    inc bc
    ld a, a
    rst $38
    nop
    inc bc
    ld a, a
    rst $38
    nop
    rlca
    ld a, a
    rst $38
    inc bc
    inc b
    ld a, a
    rst $38
    rlca
    nop
    dec a
    rst $38
    inc b
    inc bc
    add b
    rst $38
    ld b, $01
    ld a, a
    rst $38
    inc bc
    inc b
    ld a, a
    rst $38
    inc bc
    nop
    rst $38
    ld a, a
    ld bc, $af02
    ld a, b
    inc bc
    inc bc
    db $fd
    xor d
    ld [bc], a
    inc bc
    rst $38
    ld e, b
    inc bc
    ld [bc], a
    ld h, b
    rst $18
    ld bc, $e801
    rst $18
    nop
    nop
    rst $00
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld b, e
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
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    nop
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
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop

jr_0cf_544c:
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    cp b
    add sp, $00
    nop
    sbc b
    ld l, b
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    inc a
    db $fc
    nop
    nop
    pop af
    rst $38
    add b
    add b
    inc hl
    rst $38
    nop
    ldh [$7e], a
    rst $20
    nop
    ldh a, [$fc]
    rst $38
    jr nz, jr_0cf_544c

    db $fc
    rst $38
    nop
    ld hl, sp-$04
    rst $38
    nop
    ld hl, sp-$04
    rst $38
    ld [hl], b
    adc b
    ld hl, sp-$01
    ld hl, sp+$00
    rlca
    rst $38
    ld a, b
    add b
    rst $38
    rst $38
    jr @-$1e

    rst $38
    rst $38
    ld a, b
    add b
    cp $ff
    ldh a, [$08]
    xor c
    cp $e0
    db $10
    rst $38
    xor a
    ret nz

    and b
    ei
    db $fc
    add b
    add b
    dec a
    db $d3
    add b
    add b
    cp a
    rst $18
    nop
    nop
    ld e, $e1
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
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
    db $fc
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    add b
    cp $00
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    cp $fe
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
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    ld [$000f], sp
    nop
    add hl, sp
    ld a, $00
    nop
    ld a, l
    cp $00
    ld bc, $ff7f
    nop
    ld bc, $ff7f
    nop
    ld bc, $ff7f
    nop
    ld bc, $7fff
    ld bc, $b702
    ld c, a
    ld bc, $fb02
    ld b, $00
    ld bc, $0ff7
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
    ld e, a
    ld [hl], c
    nop
    nop
    ld a, e
    ld d, l
    nop
    nop
    ld a, a
    ld [hl], c
    nop
    nop
    nop
    ccf
    nop
    nop
    add hl, bc
    ccf
    nop
    nop
    ld b, $7f
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    nop
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
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
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
    cp b
    ld a, b
    nop
    nop
    cp b
    add sp, $00
    nop
    sbc b
    ld l, b

jr_0cf_55da:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr c, jr_0cf_55da

    nop
    nop
    cp $7e
    nop
    nop
    jr nc, @+$01

    nop
    add b
    ret nz

    rst $38
    nop
    ret nz

    cp d
    push bc
    ld b, b
    and b
    db $fd
    add d
    nop
    ldh [$fc], a
    jp $e000


    rst $18
    and b
    nop
    ret nz

    ldh [$9f], a
    nop
    add b
    nop
    cp $00
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
    ld d, h
    cp $00
    nop
    cp $54
    nop
    nop
    cp $fe
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    add h
    db $fc
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
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff00
    ld bc, $ff02
    rst $38
    ld bc, $ff02
    rst $38
    inc bc
    inc b
    rst $38
    rst $38
    rlca
    rlca
    rst $18
    pop af
    rlca
    rlca
    ei
    push de
    rlca
    rlca
    rst $38
    pop af
    rrca
    rlca
    add b
    rst $38
    rlca
    nop
    ld de, $007f
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld [$007f], sp
    nop
    ld [$007f], sp
    nop
    rrca
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld bc, $007f
    nop
    nop
    ld a, a
    nop
    nop
    ld b, b
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop

jr_0cf_572a:
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, l
    ld a, l
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

jr_0cf_573e:
    ld a, [hl]
    ld a, [hl]
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_572a

    nop
    nop
    jr nz, jr_0cf_573e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f2], a
    rst $38
    ret nz

    jr nz, jr_0cf_5793

    rst $38
    ret nz

jr_0cf_5787:
    jr nz, jr_0cf_5787

    rst $38

jr_0cf_578a:
    ret nz

    jr nz, jr_0cf_578a

    cp $c0
    jr nz, @-$01

    cp $80

jr_0cf_5793:
    ld b, b
    ld d, a
    db $fc
    add b
    ld b, b
    rst $38
    ld d, a
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rlca
    ld hl, sp+$00
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
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
    add b
    ldh a, [rP1]
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    nop
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $ff02
    rst $38
    inc bc
    nop
    ld a, e
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    inc b
    rst $38
    rst $38
    inc bc
    inc b
    rst $38
    rst $38
    rlca
    nop
    rst $38
    rst $38
    rlca
    ld b, $5f
    pop af
    rrca
    rrca
    ld a, e
    ld d, l
    rra
    rrca
    ld a, a
    ld [hl], c
    rra
    rrca
    nop
    ld a, a
    ld c, $00
    ld de, $007f
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ccf
    nop
    nop
    ld [$003f], sp
    nop
    ld [$003f], sp
    nop
    rrca
    rra
    nop
    nop
    ld [$001f], sp
    nop
    ld [$001f], sp
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
    db $10
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0cf_58aa:
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rra
    rra
    nop
    nop

jr_0cf_58be:
    rrca
    rrca
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_58aa

    nop
    nop
    jr nz, jr_0cf_58be

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f2], a
    rst $38
    ret nz

    jr nz, @+$10

    rst $38
    ldh [rP1], a
    cp $ff
    ld h, b
    add b
    rst $38
    cp $e0
    nop
    db $fd
    db $fc
    ldh [rP1], a
    ld d, h
    db $fd
    ldh [rP1], a
    db $fd
    ld d, l
    ldh [$e0], a
    db $fd
    db $fd
    ldh [$e0], a
    ld bc, $e0fb
    ldh [$03], a
    ld sp, hl
    ret nz

    ldh [rSB], a
    ld a, [$4080]
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
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    nop
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    inc bc
    inc b
    ld a, e
    rst $38
    rlca
    nop
    nop
    rst $38
    rlca
    ld [$ffff], sp
    rrca
    nop
    rst $38
    rst $38
    ld c, $01
    rst $38
    rst $38
    inc b
    ld a, [bc]
    ld e, a
    ld [hl], c
    inc a
    inc e
    ld a, e
    ld d, l
    inc a
    inc e
    ld a, a
    ld [hl], c
    inc a
    inc e
    nop
    ld a, a
    inc e
    inc b
    ld de, $007f
    nop
    ld c, $3f
    nop
    nop
    inc b
    ccf
    nop
    nop
    inc b
    rra
    nop
    nop
    ld [$001f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
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
    rra
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
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld bc, $003f
    nop
    ld e, $1e
    nop
    nop

jr_0cf_5a2a:
    ld e, $1e
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [bc], a
    ld e, $00
    nop

jr_0cf_5a3e:
    ld b, $06
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_5a2a

    nop
    nop
    jr nz, jr_0cf_5a3e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f2], a
    rst $38
    nop
    ldh a, [$0e]
    rst $38
    nop
    ldh a, [$fe]
    cp $00
    ld hl, sp-$02
    cp $60
    sbc b
    db $fc
    db $fc
    ld h, b
    jr jr_0cf_5ae9

jr_0cf_5a95:
    db $fc
    ld h, b
    jr jr_0cf_5a95

jr_0cf_5a99:
    ld d, h
    ld a, b
    jr jr_0cf_5a99

    db $fc

jr_0cf_5a9e:
    ld a, b
    ld a, b
    nop
    ld hl, sp+$78
    ld hl, sp+$00
    ld hl, sp-$10
    ld a, b
    nop
    ld hl, sp+$60
    stop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cf_5a9e

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ld b, b
    ldh a, [rP1]
    nop
    ld b, b
    ldh a, [rP1]
    nop
    add b
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h

jr_0cf_5ae9:
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $ff02
    rst $38
    inc bc
    nop
    ld a, e
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    inc b
    rst $38
    rst $38
    inc bc
    inc b
    rst $38
    rst $38
    rlca
    nop
    rst $38
    rst $38
    rlca
    ld b, $5f
    pop af
    rrca
    rrca
    ld a, e
    ld d, l
    rra
    rrca
    ld a, a
    ld [hl], c
    rra
    rrca
    nop
    ld a, a
    ld c, $00
    ld de, $007f
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
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
    inc b
    ccf
    nop
    nop
    inc b
    rra
    nop
    nop
    inc b
    rra
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop

jr_0cf_5baa:
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
    rrca
    rrca
    nop
    nop

jr_0cf_5bbe:
    rra
    rra
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_5baa

    nop
    nop
    jr nz, jr_0cf_5bbe

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f2], a
    rst $38
    ret nz

    jr nz, @+$10

    rst $38
    ldh [rP1], a
    cp $ff
    ld h, b
    add b
    rst $38
    cp $e0
    nop
    db $fd
    db $fc
    ldh [rP1], a
    ld d, h
    db $fd
    ldh [rP1], a
    db $fd
    ld d, l
    ldh [$e0], a
    db $fd
    db $fd
    ldh [$e0], a
    ld bc, $e0fb
    ldh [$03], a
    ld sp, hl
    ret nz

    ldh [rSB], a
    ld a, [$4080]
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$f0], a
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
    nop
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff00
    ld bc, $ff02
    rst $38
    ld bc, $ff02
    rst $38
    inc bc
    inc b
    rst $38
    ld a, a
    rlca
    rlca
    rst $18
    pop af
    rlca
    rlca
    ei
    push de
    rlca
    rlca
    rst $38
    pop af
    rrca
    rlca
    add b
    rst $38
    rlca
    nop
    ld de, $007f
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    rst $38
    nop
    nop
    inc b
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    cp $ff
    nop
    nop
    ld b, $ff
    nop
    nop
    inc bc
    ld a, a
    nop
    nop
    inc bc
    ld a, a
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld b, $07
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

jr_0cf_5d2a:
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop

jr_0cf_5d3e:
    rrca
    rrca
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_5d2a

    nop
    nop
    jr nz, jr_0cf_5d3e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f2], a
    rst $38
    ret nz

    jr nz, jr_0cf_5d93

    rst $38
    ret nz

jr_0cf_5d87:
    jr nz, jr_0cf_5d87

    rst $38

jr_0cf_5d8a:
    ret nz

    jr nz, jr_0cf_5d8a

    cp $c0
    jr nz, @-$01

    cp $80

jr_0cf_5d93:
    ld b, b
    ld d, a
    db $fc
    add b
    ld b, b
    rst $38
    ld d, a
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    rrca
    rst $30
    add b
    add b
    rlca
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    cp $00
    nop
    ldh a, [$fe]
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    db $fc
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff00
    ld bc, $ff00
    rst $38
    ld bc, $ff00
    rst $38
    nop
    ld bc, $ffff
    ld bc, $df01
    pop af
    ld bc, $fb01
    push de
    ld bc, $ff03
    pop af
    inc bc
    ld bc, $ff80
    ld bc, $9102
    ld a, a
    nop
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    db $fc
    db $fd
    nop
    nop
    inc b
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    ld bc, $fd01
    nop
    ld bc, $fd00
    nop
    ld bc, $f900
    nop
    ld bc, $f800
    nop
    ld bc, $f800
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ldh [$e0], a
    nop
    nop

jr_0cf_5eaa:
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    nop
    rlca
    ld [hl], b
    ldh a, [rSB]
    ld bc, $f0f0
    nop
    nop

jr_0cf_5ebe:
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_5eaa

    nop
    nop
    jr nz, jr_0cf_5ebe

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f1], a
    cp $c0
    jr nz, jr_0cf_5f14

    db $fc
    ret nz

    jr nz, @+$01

    db $fc
    add b
    ld b, b
    ei
    db $fc
    add b
    ld b, b
    ei
    db $fc
    nop
    add b

jr_0cf_5f14:
    ld d, a
    ld hl, sp+$00
    add b
    rst $38
    ld d, [hl]
    nop
    add b
    rst $38
    rst $38
    nop
    nop
    rra
    rst $28
    nop
    nop
    rra
    rst $28
    nop
    nop
    ld c, $f0
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
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    cp $00
    nop
    ld hl, sp-$02
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    ld a, h
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    ld bc, $f001
    ccf
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ffff
    nop
    ld bc, $ff7b
    nop
    nop
    nop
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
    ld e, a
    ld [hl], c
    nop
    nop
    ld a, e
    ld d, l
    nop
    nop
    ld a, a
    pop af
    nop
    nop
    add b
    ld a, a
    nop
    nop
    ld de, $007f
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    nop
    db $fd
    ld bc, $f001
    db $fc
    ld bc, $f801
    ld hl, sp+$00
    ld bc, $f808
    nop
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [rP1]
    rlca
    nop
    ldh a, [rP1]
    rlca
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh [$03], a
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc

jr_0cf_602a:
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    inc bc
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    nop
    inc bc
    ld b, b
    ret nz

    nop
    nop

jr_0cf_603e:
    ret nz

    ret nz

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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_602a

    nop
    nop
    jr nz, jr_0cf_603e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f3], a
    db $fc
    add b
    ld b, b
    dec bc
    db $fc
    add b
    ld b, b
    rst $38
    ld hl, sp-$80
    nop
    rst $30
    ld hl, sp+$00
    add b
    rst $38
    ldh a, [rP1]
    nop
    ld e, [hl]
    pop af
    nop
    nop
    db $f4
    ld e, d
    nop
    nop
    db $fc
    call c, RST_00
    inc a
    call c, RST_00
    inc a
    call c, RST_00
    jr @-$1e

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    cp $00
    nop
    ld hl, sp-$02
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    add b
    nop
    ccf
    nop
    add b
    nop
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
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

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    add b
    add b
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
    nop
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
    inc b
    dec bc
    nop
    nop
    db $10
    rra
    nop
    nop
    ld de, $017f
    ld bc, $ff3e
    inc bc
    inc bc
    ldh a, [$3f]
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff00
    ld bc, $ff00
    rst $38
    ld bc, $ff00
    rst $38
    nop
    ld bc, $ffff
    ld bc, $df01
    pop af
    ld bc, $fb01
    push de
    ld bc, $ff03
    pop af
    inc bc
    ld bc, $ff80
    ld bc, $9102
    ld a, a
    nop
    nop
    ld c, $7f
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    inc b
    rst $38
    nop
    nop
    inc b
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld b, $ff
    nop
    nop
    db $fd
    db $fd
    nop
    ld bc, $fdf0
    nop
    ld bc, $fd00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop

jr_0cf_61aa:
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    rra
    rra

jr_0cf_61be:
    ld hl, sp-$08
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ret nc

    nop
    nop
    jr nc, jr_0cf_61aa

    nop
    nop
    jr nz, jr_0cf_61be

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ret nz

    db $fc
    rst $08
    nop
    ldh [$f8], a
    rst $38
    ld b, b
    and b
    ld hl, sp-$01
    nop
    ldh [$f8], a
    rst $38
    nop
    ldh [$fa], a
    rst $38
    nop
    ldh [$f1], a
    cp $c0
    jr nz, jr_0cf_6214

    db $fc
    ret nz

    jr nz, @+$01

    db $fc
    add b
    ld b, b
    ei
    db $fc
    add b
    ld b, b
    ei
    db $fc
    nop
    add b

jr_0cf_6214:
    ld d, a
    ld hl, sp+$00
    add b
    rst $38
    ld d, [hl]
    nop
    add b
    rst $38
    rst $38
    nop
    nop
    rra
    rst $28
    nop
    nop
    rra
    rst $28
    nop
    nop
    ld c, $f0
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
    ld [$00fc], sp
    nop
    ld hl, sp-$04
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
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld [bc], a
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
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
    ld a, $3e
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
    inc c
    rrca
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    ld b, $01
    cp $fe
    nop
    rlca
    and d
    ld e, [hl]
    nop
    inc bc
    cp [hl]
    ld b, d
    inc e
    rra
    inc bc
    db $fd
    rst $30
    ccf
    ld e, l
    inc hl
    daa
    ld hl, sp+$1b
    ccf
    rst $18
    ldh [rNR24], a
    rra
    cp a
    ret nz

    rlca
    rlca
    or a
    ret z

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    scf
    ld a, a
    nop
    nop
    nop
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
    ccf
    nop
    nop
    ld a, $23
    nop
    nop
    scf
    ld a, [hl+]
    nop
    nop
    ccf
    inc hl
    nop
    nop
    nop
    rra
    nop
    nop
    inc b
    rra
    nop
    nop
    jr jr_0cf_630b

    nop
    nop
    ld [$001f], sp
    nop
    ld [$001f], sp
    nop
    ld [$001f], sp
    nop
    ld [$001f], sp
    nop
    inc e
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
    rrca

jr_0cf_630b:
    rra
    nop
    nop
    inc b
    rra
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    inc b
    rrca
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    rlca
    rlca
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
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

    ld [hl], b

jr_0cf_6356:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr jr_0cf_6356

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    inc de
    rst $28
    nop
    nop
    add e
    ld a, a
    nop
    nop
    add e
    ld a, a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld hl, sp-$58
    nop
    nop
    ld hl, sp-$08
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
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]

jr_0cf_63c2:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr jr_0cf_63c2

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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rra
    nop
    nop
    rrca
    add hl, sp
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rra
    rst $38
    pop bc
    cp $ff
    rra
    nop
    ld bc, $9f7e
    ld bc, $9b01
    halt
    nop
    cp $ff
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld a, [bc]
    nop
    nop
    rrca
    ld [$0000], sp
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    ld a, $3f
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
    nop
    ccf
    nop
    nop
    nop
    ccf
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
    nop
    rra
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    cp $fe
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
    rrca
    nop
    nop
    rst $30
    db $fd
    nop
    nop
    di
    dec c
    nop
    nop

jr_0cf_64e8:
    ld b, d
    cp [hl]
    nop
    nop
    rlca
    rst $38
    add b
    add b
    add hl, de
    rst $38
    ldh [$e0], a
    ld [c], a
    rst $38
    jr nc, jr_0cf_64e8

    inc c
    di
    db $10
    ldh a, [$fc]
    rst $38
    ld b, b
    or b
    ld hl, sp-$01
    nop
    ldh a, [$fc]
    di
    nop
    ldh a, [$fe]
    pop hl
    nop
    ldh [$2c], a
    db $d3
    nop
    ret nz

    ldh a, [rIF]
    add b
    add b
    db $fd
    inc bc
    add b
    add b
    rst $30
    rrca
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    xor d
    rst $38
    add b
    add b
    rst $38
    xor d
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    dec c
    rst $38
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    call nz, Call_000_00fc
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
    ld [hl+], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld b, c
    rst $38
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
    sbc $de
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    sbc $f6
    ld [bc], a
    inc bc
    ld a, [hl+]
    rst $10
    dec e
    rra
    rst $38
    db $e3
    dec a
    ccf
    ld a, e
    add a
    dec a
    ccf
    ld [hl], a
    rst $08
    dec a
    ccf
    adc l
    rst $38
    inc a
    ccf
    ld hl, sp-$01
    inc a
    inc bc
    nop
    rst $38
    inc a
    ld bc, $ff00
    inc a
    nop
    jr nz, @+$01

    inc a
    nop
    ld a, a
    ld a, a
    jr @+$26

    inc bc
    inc a
    inc a
    nop
    ld a, a
    ld a, b
    inc a
    nop
    rst $38
    db $fc
    jr c, jr_0cf_660a

    ld hl, sp-$01
    jr c, jr_0cf_6642

jr_0cf_660a:
    cp $7f
    jr c, jr_0cf_6626

    ld a, a
    ld a, a
    ld e, b
    ld a, b
    ld b, c
    ld a, a
    ld a, b
    ld [hl], b
    nop
    ccf
    ld [hl], h
    ld a, b
    nop
    ccf
    ld d, b
    jr nz, jr_0cf_661f

jr_0cf_661f:
    rra
    nop
    nop
    nop
    rrca
    nop
    nop

jr_0cf_6626:
    nop
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    rlca
    rlca
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

jr_0cf_6642:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    sbc h
    cp $00
    nop

jr_0cf_669c:
    or [hl]
    cp $00
    nop
    ld [$00f6], a
    nop
    db $76
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    inc a
    jp nz, RST_00

    inc a
    jp nz, RST_00

    inc [hl]
    jp z, RST_00

    jp z, Jump_000_0036

    nop
    or $0e
    nop
    nop
    cp h
    ld a, [hl]
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ret c

    db $fc
    nop
    nop
    ld h, b
    db $fc

jr_0cf_66d6:
    nop
    nop
    jr nz, jr_0cf_66d6

    nop
    nop
    jr nz, @+$01

    nop
    nop
    ld [hl+], a
    rst $38
    jr c, jr_0cf_669c

    ld b, d
    rst $38
    ld a, h
    db $fc
    jp nz, Jump_0cf_7cff

    db $fc
    ld [c], a
    rst $38
    ld a, [hl]
    cp $e2
    rst $38
    ld a, $3e
    cp $fe
    rra
    rra
    db $fc
    db $fc
    rrca
    rrca
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0cf_7cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0cf_7f8f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
