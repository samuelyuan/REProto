SECTION "ROM Bank $0ed", ROMX[$4000], BANK[$ed]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    rlca
    rra
    ld bc, $cf01
    rst $38
    inc bc
    inc bc
    sbc a
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld l, a
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $30
    ld [bc], a
    inc bc
    dec sp
    rst $38
    rlca
    inc bc
    dec e
    rst $38
    rrca
    rlca
    adc a
    rst $38
    rrca
    rlca
    rst $00
    rst $38
    rrca
    rrca
    db $e3
    rst $38
    rrca
    rrca
    ldh a, [$f0]
    rlca
    rlca
    ldh [$c0], a
    inc bc
    inc bc
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
    inc bc
    nop
    nop
    nop
    rrca
    inc bc
    add b
    add b
    sbc a
    sbc a
    ret nz

    ret nz

    rst $18
    rst $38
    ldh [$c0], a
    rrca
    rst $38
    ldh [$c0], a
    ld b, a
    rst $38
    ret nz

    add b
    ld h, e
    rst $38
    ret nz

    add b
    ld [hl], c
    rst $38
    add b
    add b
    ld hl, sp-$41
    nop
    nop
    db $fc
    rst $18
    nop
    nop
    xor $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    ld a, [$00fe]
    nop
    ldh a, [$fc]
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    add b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    ld c, $0f
    nop
    nop
    rrca
    dec b
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    ld [hl], a
    nop
    nop
    rst $38
    ld a, a
    ld bc, $ff00
    ld a, a
    ld bc, $0f02
    db $fd
    inc bc
    nop
    rst $00
    ld a, [hl]
    inc bc
    nop
    db $e3
    rst $38
    nop
    inc bc
    pop af
    rst $38
    ld bc, $f803
    rst $38
    ld bc, $fc03
    rst $38
    ld bc, $fe01
    cp $00
    nop
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    inc e
    rra
    ld b, b
    ret nz

    jr jr_0ed_4291

    nop
    ret nz

    dec de
    rra
    ldh [$e0], a
    dec de
    rlca
    ldh a, [$f0]
    dec sp
    ld b, a
    ldh a, [$f0]
    ei
    rlca
    ld hl, sp-$08

jr_0ed_4284:
    pop hl
    rra
    ld hl, sp-$08
    add b
    rst $38
    ld hl, sp-$08
    sbc h
    rst $38
    ld [hl], b
    ldh a, [$0e]

jr_0ed_4291:
    rst $38
    jr nc, jr_0ed_4284

    rst $20
    rst $38
    nop
    ldh [$fb], a
    rst $30
    add b
    ret nz

    ld sp, hl
    rst $38
    ret nz

    ldh [$fd], a
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ld b, b
    ret nz

    cp $ff
    nop
    add b
    db $fc
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    ldh [$f0], a
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    ld [bc], a
    inc b
    rra
    rra
    rrca
    ld c, $1f
    ccf
    rla
    rra
    rra
    ld a, a
    ld a, [bc]
    dec d
    rra
    ld a, a
    ld e, $19
    ccf
    rst $28
    ld b, $09
    cp a
    rst $30
    dec b
    dec bc
    jr c, @+$01

    inc bc
    rrca
    sbc h
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    rst $00
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_43eb:
    nop
    nop
    nop
    nop
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rst $28
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    ld h, e
    rst $38
    ret nz

    ldh [$f1], a
    ld a, a
    ldh [$d0], a
    ld hl, sp-$41
    ldh [$90], a
    call c, $e0ff
    jr nz, jr_0ed_43eb

    rst $38
    ldh [$e0], a
    rst $08
    rst $38
    ret nz

    ret nz

    set 7, a
    nop
    nop
    sbc b
    cp $00
    nop
    jr nc, @-$02

    nop
    nop
    ld h, b
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    add b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    jr @-$06

    nop
    nop
    inc a
    db $fc
    nop
    nop
    inc a
    ld a, h
    nop
    nop
    jr jr_0ed_4466

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_4466:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rra
    ld a, a
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    ld bc, $ff1f
    nop
    ld bc, $ef3f
    nop
    ld bc, $f77f
    nop
    inc bc
    jr c, @+$01

    inc bc
    rlca
    inc e
    rst $38
    rlca
    rrca
    adc a
    rst $38
    rlca
    rrca
    rst $00
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    ld h, e
    rst $38
    ret nz

    ldh [$f1], a
    ld a, a
    ret nz

    ldh [$f8], a
    cp a
    add b
    ret nz

    call c, Call_000_00ff
    ret nz

    adc $ff
    nop
    add b
    rst $08
    rst $38
    nop
    add b
    set 7, a
    nop
    nop
    sbc b
    cp $00
    nop
    jr nc, @-$02

    nop
    nop
    ld h, b
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    add b
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    sbc h
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    jr jr_0ed_45e2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_45e2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    dec b
    ld b, $00
    nop
    ld b, $0f
    nop
    nop
    rrca
    ld b, $00
    nop
    ld b, $03
    nop
    nop
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
    rrca
    ld c, $0e
    ld c, $1f
    rra
    dec de
    rra
    ccf
    ccf
    ld d, $1f
    ccf
    rst $38
    inc d
    rra
    ccf
    rst $38
    inc c
    rrca
    ccf
    rst $38
    inc b
    rlca
    rst $38
    rst $18
    nop
    inc bc
    cp $ef
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    ld bc, $ff39
    ld bc, $1f01
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $e101
    rst $38
    ld bc, $fb01
    rst $38
    nop
    nop
    cp $fd
    nop
    nop
    cp $f9
    nop
    nop
    ld a, h
    ld [hl], e
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    db $ec
    inc e
    nop
    nop
    sbc $3e
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    add $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$7e]
    nop
    nop
    cp b
    cp $00
    nop
    sbc h
    cp $00
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sub [hl]
    rst $38
    nop
    add b
    inc [hl]
    rst $38
    add b
    add b
    ld l, b
    rst $38
    add b
    add b
    pop de
    rst $38
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    ld b, a
    rst $00
    ret nz

    ret nz

    add e
    add e
    add b
    add b
    ld bc, $0001
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
    ld a, [bc]
    ld c, $00
    nop
    dec d
    dec de
    nop
    nop
    dec de
    ccf
    nop
    nop
    ccf
    ld e, $00
    nop
    inc e
    dec c
    nop
    nop
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
    rrca
    ld c, $1c
    inc e
    rra
    rra
    ld [hl], $3f
    ccf
    ccf
    inc l
    ccf
    ccf
    rst $38
    jr z, jr_0ed_481d

    ccf
    rst $38
    jr @+$21

    ccf
    rst $38
    ld [$ff0f], sp
    rst $18
    nop
    rlca
    cp $ef
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    ld bc, $ff39
    ld bc, $1f01
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $e201
    cp $01
    ld bc, $fcfc
    nop
    nop
    db $fc
    cp $00
    nop
    ld a, [$00fd]
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    rrca
    jr nc, jr_0ed_4819

jr_0ed_4819:
    nop
    rrca
    stop

jr_0ed_481d:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    db $ec
    inc e
    nop
    nop
    sbc $3e
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    add $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$7e]
    nop
    nop
    cp b
    cp $00
    nop
    sbc h
    cp $00
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sub [hl]
    rst $38
    nop
    add b
    jr nc, @+$01

    nop
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld h, b
    ldh [$80], a
    rst $28
    ld [hl], b
    ldh a, [rP1]
    rst $00
    ldh a, [$f0]
    ld bc, $f883
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    ret nz

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
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
    ld bc, $0001
    nop
    ld bc, $0003
    nop
    inc bc
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
    ld bc, $0000
    inc bc
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $30
    nop
    nop
    rra
    ei
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $c701
    rst $38
    ld bc, $e301
    rst $38
    inc bc
    inc bc
    pop af
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    rst $38
    db $fd
    ld bc, $ff01
    ld sp, hl
    nop
    nop
    rst $28
    di
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld h, b
    cp h
    nop
    nop
    cp e
    rst $00
    ldh [$e0], a
    rst $30
    adc a
    ldh a, [$f0]
    adc a
    rst $38
    ldh a, [$f0]
    rla
    ccf
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [$38]
    rst $38
    ldh a, [$f0]
    db $fc
    rst $18
    ld h, b
    ldh [$fe], a
    rst $28
    nop
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    di
    rst $38
    add b
    ret nz

    di
    rst $38
    ret nz

    ret nz

    and $ff
    nop
    ret nz

    call z, Call_000_00ff
    ldh [rNR23], a
    rst $38
    ld h, b
    ldh [$30], a
    rst $38
    ldh a, [$f0]
    ldh [$f9], a
    ldh a, [$f0]
    add b
    ldh a, [$60]
    ld h, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    rra
    ld a, e
    nop
    nop
    inc e
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $c701
    rst $38
    ld bc, $e301
    rst $38
    inc bc
    inc bc
    pop af
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    cp $00
    nop
    ldh [$f8], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    rlca
    ldh [$e0], a
    rlca
    rrca
    ldh a, [$f0]
    rlca
    ld a, a
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld de, $f0ff
    ldh a, [$38]
    rst $38
    ldh a, [$f0]
    db $fc
    rst $18
    ld h, b
    ldh [$fe], a
    rst $28
    nop
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    di
    rst $38
    add b
    ret nz

    di
    rst $38
    ret nz

    ret nz

    and $ff
    ret nz

    ret nz

    call z, Call_000_00ff
    ret nz

    jr @+$01

    ld b, b
    ret nz

    jr nc, @+$01

    ldh [$e0], a
    pop hl
    ld sp, hl
    ldh [$e0], a
    add b
    ldh a, [$c0]
    ret nz

    ret nz

    ldh [rP1], a
    nop
    ret nz

    ret nz

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
    rlca
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    inc b
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    ld [$1f10], sp
    rra
    inc a
    jr c, jr_0ed_4c76

    ccf
    ld e, h
    ld a, h
    rra
    ld a, a
    jr z, jr_0ed_4cb2

    rra
    rst $28
    ld a, c
    ld h, a
    ccf
    rst $30
    dec de
    daa
    jr c, @+$01

    rla
    cpl
    sbc h
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rra
    rra
    rst $00
    rst $38
    rra
    rra

jr_0ed_4c76:
    db $e3
    rst $38
    rrca
    rrca
    pop hl
    rst $28
    rlca
    rlca
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_4cb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    nop
    ldh a, [rP1]
    nop

jr_0ed_4cfc:
    rlca
    rst $38
    ret nz

    ret nz

    ld h, e
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld hl, sp-$41
    ld hl, sp-$04
    db $fc
    rst $18
    ld a, b
    db $fc
    xor $ff
    ld a, b
    db $f4
    rst $20
    rst $38
    jr c, jr_0ed_4cfc

    rst $20
    rst $38
    ld [hl], b
    ret z

    call $c0ff
    ld hl, sp-$66
    cp $e8
    ld hl, sp+$34
    db $fc
    jr nc, jr_0ed_4d58

    ld l, b
    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nz, @-$06

    nop
    nop
    call nz, Call_000_00fc
    nop
    adc [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
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

jr_0ed_4d58:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    inc b
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
    ld [$0710], sp
    rlca
    inc a
    jr c, jr_0ed_4dde

    rrca
    ld e, h
    ld a, h
    rra
    rra
    inc l
    ld e, h
    rra
    ccf
    ld e, b
    ld a, b
    rra
    ld a, a
    jr c, jr_0ed_4e12

jr_0ed_4dde:
    rra
    rst $28
    dec e
    inc hl
    ccf
    rst $30
    dec de
    daa
    jr c, @+$01

    rla
    cpl
    sbc h
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rra
    rra
    rst $00
    rst $38
    rra
    rra
    db $e3
    rst $38
    rrca
    rrca
    pop hl
    rst $28
    rlca
    rlca
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_4e12:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ret nz

    ret nz

    ld h, e
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld hl, sp-$41
    ld hl, sp-$04
    db $fc
    rst $18
    ld a, b
    cp $ee
    rst $38
    db $76
    ld hl, sp-$19
    rst $38
    ld l, [hl]
    pop af
    rst $20
    rst $38
    sbc [hl]
    and c
    call $0eff
    ld de, $fe98
    ld de, $303f
    db $fc
    ld e, $3e
    ld h, b
    ld hl, sp+$0c
    inc e
    ret nz

    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    db $fc
    nop
    nop
    add b
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    rlca
    rst $38
    add b
    add b
    ccf
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rra
    inc bc
    nop
    nop
    rlca
    ld c, $00
    nop
    rlca
    rrca
    nop
    nop
    ld a, [de]
    dec bc
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
    ld a, a
    ld a, e
    nop
    nop
    rst $38
    db $fd
    add hl, de
    add hl, de
    cp $ff
    dec a
    dec a
    rst $38
    rst $38
    ld [hl], c
    ld a, a
    rst $38
    cp $60
    ld a, a
    rst $38
    cp $41
    ld a, a
    cp $7d
    ld b, e
    ld a, a
    cp h
    ei
    ld bc, $d93f
    rst $20
    nop
    ccf
    ld [c], a
    rst $38
    inc c
    rra
    ld a, h
    rst $38
    ld e, $1f
    jr c, @+$01

    rra
    rra
    inc e
    rst $38
    rra
    rra
    adc c
    rst $38
    rra
    rra
    rst $00
    rst $38
    rra
    rra
    add sp, -$05
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    or $0e
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    adc a
    rst $38
    add b
    add b
    rst $00
    rst $38
    add b
    add b
    db $e3
    rst $38
    nop
    nop
    ld [hl], b
    cp $00
    nop
    ld a, b
    cp $00
    nop
    ld e, d
    cp $00
    nop
    ld b, h
    cp $00
    nop
    add h
    rst $38
    nop
    nop
    inc c
    rst $38
    nop
    add b
    jr @+$01

    nop
    ret nz

jr_0ed_5030:
    jr nc, @+$01

    db $10
    ldh a, [$60]
    rst $38
    jr c, jr_0ed_5030

    ret nz

    rst $20
    inc a
    db $fc
    add b
    pop bc
    ld a, h
    db $fc
    nop
    add b
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
    jr jr_0ed_5068

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_5068:
    nop
    nop
    nop
    nop

jr_0ed_506c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $00
    nop
    inc c
    rrca
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    ccf
    dec a
    jr @+$1a

    ld a, h
    ld a, a
    inc a
    inc a
    ld a, h
    db $fc
    ld a, h
    ld a, l
    ret z

    jr c, jr_0ed_5142

    ld a, [hl]
    ldh [rNR10], a
    ld h, e
    ld a, h
    ret nz

    inc hl
    daa
    jr c, jr_0ed_506c

    ld e, [hl]
    rlca
    jr jr_0ed_5142

    db $fd
    ld [$8617], sp
    ld sp, hl
    dec c
    inc de
    scf
    ld hl, sp+$3f
    ccf
    scf
    ld hl, sp+$3f
    ccf
    scf
    ld sp, hl
    ccf
    ccf
    sbc e
    db $fd
    rra
    rra
    sbc l
    rst $38
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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

jr_0ed_511f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_5142:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    ld a, [hl]
    ld hl, sp+$00
    nop
    ld [hl-], a
    db $fd
    nop
    nop
    cp h
    ld a, e
    nop
    add b
    ld e, c
    cp [hl]
    add b
    ld b, b
    inc bc
    db $fc
    ret nz

    jr nz, jr_0ed_511f

    db $fd
    ldh a, [$f0]
    ld [hl], c
    ld a, a
    ld hl, sp-$08
    ld bc, $fc3f
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    ld a, b
    rst $38
    ld a, h
    db $fc
    cp h
    ld a, a
    inc a
    db $fc
    db $fc
    rst $38
    inc a
    db $fc
    cp $ff
    ld [$7ef8], sp
    rst $38
    ld [$7ff8], sp
    rst $38
    ld [$fff8], sp
    rst $38
    inc c
    db $fc
    ld hl, sp-$01
    inc e
    db $fc
    ldh [$fe], a
    inc a
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    nop
    nop
    ld d, $19
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $00
    nop
    ld [de], a
    rra
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    ld a, b
    ld a, a
    jr jr_0ed_525e

    sbc b
    db $fc
    add hl, sp
    inc a
    add sp, $18
    ld [hl], a
    ld a, b
    ldh a, [rP1]
    ld l, a
    ld [hl], b
    ret nz

    nop
    ld a, a
    ld h, b
    add b
    ld b, e
    dec sp
    inc h
    ld de, $18fe
    daa

jr_0ed_525e:
    ld h, e
    db $fd
    dec de
    daa
    add l
    ei
    rla
    cpl
    inc sp
    rst $38
    cpl
    ccf
    scf
    ei
    ccf
    ccf
    scf
    ei
    ccf
    ccf
    sbc l
    ei
    rra
    rra
    sbc a
    db $fc
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    ldh a, [rP1]
    nop
    rst $38
    ldh [rP1], a
    nop
    ld l, a
    ldh a, [rP1]
    add b
    cpl
    ldh a, [rP1]
    ret nz

    ld a, [hl]
    and c
    ret nz

    jr nz, jr_0ed_533d

    rst $00
    ldh [rP1], a
    ld bc, $e002
    db $10
    ld bc, $f002
    ldh a, [rSB]
    rrca
    ld hl, sp-$08
    ld bc, $fc3f
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr c, @+$01

    ld a, h
    db $fc
    db $fc
    rst $38
    inc a
    db $fc
    db $fc
    rst $38
    inc a
    db $fc
    cp $ff
    ld [$fef8], sp
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$fff8], sp
    rst $38
    inc c
    db $fc
    ld hl, sp-$01
    inc e
    db $fc
    ld h, b
    cp $3c
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop

jr_0ed_533d:
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_534b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    dec sp
    nop
    nop
    jr nc, jr_0ed_53ef

    nop
    nop
    ld l, c
    ld a, [hl]
    nop
    nop
    db $fd
    rst $30
    ld bc, $e001
    db $f4
    nop
    ld bc, $e0e0
    ld bc, $c002
    nop
    dec de
    inc e
    add b
    ld b, b
    ccf
    jr c, jr_0ed_534b

    nop
    ld a, a
    ld a, b
    nop
    ret nz

    ld [hl], a
    ld a, b
    nop
    ret nz

    ld a, [hl]
    ld [hl], c
    nop
    db $e3
    ld l, $31
    ld de, $1cfe
    inc bc
    ld h, e
    db $fd
    dec de
    rlca
    add l
    ei
    rla
    rrca
    inc sp
    rst $38
    cpl
    ccf
    scf
    ei
    ccf
    ccf
    scf

jr_0ed_53ef:
    ei
    ccf
    ccf
    sbc l
    ei
    rra
    rra
    sbc a
    db $fc
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ldh [rP1], a
    nop
    db $fc
    jp nz, RST_00

    cp [hl]
    pop bc
    nop
    nop
    inc a
    inc bc
    nop
    add b
    inc bc
    inc e
    add b
    ld b, b
    rlca
    ld [$00c0], sp
    rlca
    nop
    ret nz

    jr nz, jr_0ed_5488

    inc b
    ldh a, [$f0]

jr_0ed_5488:
    ld bc, $f80f
    ld hl, sp+$01
    ccf
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr c, @+$01

    ld a, h
    db $fc
    db $fc
    rst $38
    inc a
    db $fc
    db $fc
    rst $38
    inc a
    db $fc
    cp $ff
    ld [$fef8], sp
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$fff8], sp
    rst $38
    inc c
    db $fc
    ld hl, sp-$01
    inc e
    db $fc
    ld h, b
    cp $3c
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
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
    ld bc, $0000
    jr nz, jr_0ed_558b

    nop
    nop
    rst $28
    rst $38
    ld bc, $ff01
    rst $18
    inc hl
    inc bc
    rst $38
    cp a
    ld a, e
    dec bc
    ld a, a
    rst $38
    ld a, [hl]
    sbc a
    ld a, a
    rst $38
    ccf
    ld a, l
    ld a, a
    rst $38
    ccf
    jr c, @+$01

    rst $38
    rlca
    ld [$ff7e], sp
    inc bc
    inc c
    ld a, a

jr_0ed_558b:
    rst $38
    ld b, $01
    db $e3
    rst $38
    ld [bc], a
    ld bc, $fff1
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    ld d, b
    ld e, a
    scf
    rst $38
    rst $38
    pop hl
    add d
    cp $ff
    db $e3
    jp $f7ff


    rst $38
    db $e3
    rst $38
    ld b, a
    ld a, a
    ld a, [$03fe]
    ld a, a
    ld hl, sp-$04
    add hl, bc
    rst $38
    ld hl, sp-$08
    ld [$f0ff], sp
    ldh a, [$0e]
    rst $38
    jr nc, @-$0e

    rst $00
    rst $38
    ld h, b
    ldh [$e3], a
    ld a, a
    nop
    ret nz

    di
    cp a
    nop
    ret nz

    sub c
    rst $38
    add b
    add b
    jp nc, Jump_000_00ff

    nop
    db $f4
    cp a
    nop
    nop
    ldh a, [$7e]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    add b
    ldh a, [rP1]
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $4001
    ld b, a
    ld [hl], e
    inc bc
    cp a
    rst $38
    ccf
    ld e, a
    rst $38
    ld a, l
    ld a, $7f
    rst $38
    cp $79
    ld a, a
    rst $38
    rst $38
    ld a, l
    ld [hl], a
    cp $ff
    rra
    inc bc
    rst $38
    cp $0f
    ld de, $fcff
    add hl, bc
    rlca
    ei
    rst $38
    rrca
    inc bc
    sbc a
    rst $38
    inc bc
    rlca
    adc [hl]
    rst $38
    inc bc
    inc bc
    call nz, Call_000_01f4
    ld bc, $e0e0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e001
    ldh [rHDMA1], a
    ld de, $f0f0
    ld hl, sp+$38
    cp b
    ld hl, sp+$7c
    ld [hl], d
    ld a, b
    ld a, b
    cp $71
    ld a, b
    ld hl, sp-$01
    ld [hl], e
    inc c
    db $fc
    rlca
    rra
    call nz, Call_000_0ffc
    ccf
    db $ec
    db $fc
    rlca
    rst $38
    db $e4
    db $fc
    inc de
    rst $38
    ldh [$f8], a
    ld de, $e0ff
    ldh a, [$38]
    rst $38
    ldh [$e0], a
    sbc l
    rst $38
    ret nz

    ret nz

    adc $ff
    add b
    add b
    ld c, h
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    nop
    ld c, d
    cp $00
    nop
    ret nc

    db $fc
    nop
    nop
    add b
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld b, $00
    nop
    dec d
    dec de
    nop
    nop
    ld a, [hl-]
    dec a
    nop
    nop
    ld [hl], l
    ld a, [hl]
    nop
    nop
    ld a, d
    ld [hl], a
    nop
    nop
    ld [hl], c
    ld a, l
    nop
    nop
    db $fc
    ldh a, [rNR23]
    add hl, de
    jr c, @-$1a

    add hl, sp
    ld a, $b0
    ld l, b
    ld [hl], a
    ld a, b
    and b
    ld h, b
    ld l, a
    ld [hl], b
    nop
    ret nz

    ld a, a
    ld h, b
    nop
    di
    ld a, [hl-]
    dec h
    ld de, $18ff
    daa
    ld h, e
    rst $38
    dec de
    daa
    add a
    rst $38
    rla
    cpl
    scf
    rst $38
    cpl
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    sbc a
    ei
    rra
    rra
    sbc a
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    cp b
    ld a, b
    nop
    nop
    call c, Call_000_00bc
    nop
    ld a, [hl]
    cp $00
    nop
    cp h
    ld a, a
    nop
    nop
    ld e, e
    cp h
    add b
    ld b, b
    xor e
    call c, Call_000_20c0
    ld d, [hl]
    ld l, l
    ldh a, [$f0]
    ld hl, $f83f
    ld hl, sp+$01
    ccf
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr @+$01

    ld a, h
    db $fc
    call c, Call_000_3cff
    db $fc
    db $fc
    rst $28
    inc a
    db $fc
    or $ff
    ld [$fef8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    inc c
    db $fc
    ldh a, [rIE]
    inc e
    db $fc
    ldh [$fe], a
    inc a
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld b, $00
    nop
    dec d
    dec de
    nop
    nop
    ld a, [hl-]
    dec a
    nop
    nop
    ld [hl], l
    ld a, [hl]
    nop
    nop
    ld a, d
    ld [hl], a
    nop
    nop
    ld [hl], c
    ld a, l
    nop
    nop
    db $fc
    ldh a, [rNR23]
    add hl, de
    jr c, @-$1a

    add hl, sp
    ld a, $b0
    ld l, b
    ld [hl], a
    ld a, b
    and b
    ld h, b
    ld l, a
    ld [hl], b
    nop
    ret nz

    ld a, a
    ld h, b
    nop
    di
    ld a, [hl-]
    dec h
    ld de, $18ff
    daa
    ld h, e
    rst $38
    dec de
    daa
    add a
    rst $38
    rla
    cpl
    scf
    rst $38
    cpl
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    sbc a
    ei
    rra
    rra
    sbc a
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    cp b
    ld a, b
    nop
    nop
    call c, Call_000_00bc
    nop
    ld a, [hl]
    cp $00
    nop
    cp h
    ld a, a
    nop
    nop
    ld e, e
    cp h
    add b
    ld b, b
    xor e
    call c, Call_000_20c0
    ld d, [hl]
    ld l, l
    ldh a, [$f0]
    ld hl, $f83f
    ld hl, sp+$01
    ccf
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr @+$01

    ld a, h
    db $fc
    call c, Call_000_3cff
    db $fc
    db $fc
    rst $28
    inc a
    db $fc
    or $ff
    ld [$fef8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    inc c
    db $fc
    ldh a, [rIE]
    inc e
    db $fc
    ldh [$fe], a
    inc a
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_5aea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld b, $00
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld e, $1d
    jr jr_0ed_5b5e

    inc a
    ccf
    inc a
    inc a
    ld a, h
    ld a, h
    ld [hl], b
    ld a, [hl]
    add sp, $18
    ld h, c
    ld a, [hl]
    ldh a, [rP1]
    ld h, c
    ld a, [hl]
    ldh [$03], a
    inc hl
    inc a
    sub c
    rra
    inc bc
    inc e

jr_0ed_5b5e:
    db $e3
    ld a, a
    rlca
    jr jr_0ed_5aea

    rst $38
    rlca
    add hl, de
    scf
    rst $38
    cpl
    dec sp
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    sbc a
    ei
    rra
    rra
    sbc l
    rst $38
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
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
    ld b, h
    call z, RST_00
    or d
    ld l, [hl]
    nop
    nop
    ld e, a
    or a
    nop
    nop
    xor a
    rst $18
    add b
    add b
    ld d, a
    ld l, a
    ret nz

    ret nz

    inc hl
    ccf
    ldh a, [$80]
    ld de, $e01f
    jr jr_0ed_5c1d

    ccf
    ld a, h
    cp h
    nop
    rst $38
    db $fc
    db $fc
    jr @+$01

    ld a, h
    db $fc
    db $fc
    rst $18
    inc a
    db $fc
    db $fc

jr_0ed_5c1d:
    rst $28
    inc e
    db $fc
    or $ff
    ld [$fef8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    ld [$f3f8], sp
    rst $38
    inc c
    db $fc
    ldh [rIE], a
    inc e
    db $fc
    ret nz

    rst $38
    inc a
    db $fc
    nop
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0003
    nop
    nop
    rra
    nop
    nop
    inc b
    ccf
    nop
    nop
    ld b, $7f
    nop
    nop
    scf
    rst $38
    nop
    ld bc, $fb7f
    nop
    inc bc
    rst $38
    db $fd
    ld bc, $fe07
    rst $38
    ld bc, $fe0f
    rst $38
    ld bc, $ff1f
    rst $38
    ld b, $1f
    rst $38
    rst $38
    rlca
    rra
    cp $7f
    inc bc
    rra
    cp h
    rst $38
    ld [hl], c
    ccf
    ret c

    cp $f8
    ld a, a
    ldh a, [$fc]
    db $fc
    ld a, a
    ld [hl], b
    cp $fe
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    ld a, h
    nop
    ccf
    inc a
    jr nc, jr_0ed_5d03

jr_0ed_5d03:
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    ld bc, $0007
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ed_5d6a

jr_0ed_5d6a:
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fc
    nop
    nop
    cp $fc
    nop
    nop
    ld a, h
    ld hl, sp+$00
    nop
    inc a
    ld hl, sp+$00
    nop
    inc e
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    and b
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ret nz

    ret nz

    nop
    ld a, a
    ldh [$e0], a
    ld bc, $e03f
    ldh [$03], a
    rra
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [rSB]
    add c
    ldh a, [$f0]
    ld bc, $f081
    ldh a, [rP1]
    add b
    ldh [$e0], a
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    ld a, $3c
    rlca
    rrca
    inc a
    inc a
    rlca
    ld a, a
    ld a, h
    ld a, l
    rrca
    rst $30
    ld a, h
    ld b, e
    ccf
    rst $30
    ld a, [hl]
    rrca
    scf
    rst $38
    ld a, [hl]
    rra
    scf
    rst $38
    ld a, [hl]
    ccf
    inc sp
    rst $38
    ld a, a
    ccf
    jr @+$01

    ccf
    ccf
    jr @+$01

    ccf
    ccf
    inc c
    rst $38
    rra
    rra
    adc h
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    pop hl
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_5ed4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    db $10
    rra
    ret nz

    ret nz

    nop
    rra
    ld b, b
    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    ccf
    jr c, jr_0ed_5ed4

    ld bc, $fc3f
    ld hl, sp-$20
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    cp $f7
    ld a, h
    db $fc
    cp $f7
    ld a, b
    ld hl, sp-$0a
    rst $38
    ld [hl], b
    ldh a, [$f6]
    rst $38
    nop
    ret nz

    rst $20
    rst $38
    nop
    add b
    inc bc
    rst $38
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld sp, $0031
    nop
    ld a, b
    ld h, h
    nop
    nop
    call c, Call_000_19e0
    add hl, de
    ret c

    db $e4
    dec sp
    ccf
    ldh a, [$e8]
    ld [hl], a
    ld a, c
    ldh [$e0], a
    ld l, a
    ld [hl], b
    ret nz

    ret nz

    ld a, a
    ld h, b
    add b
    ld [hl], e
    dec sp
    inc h
    ld de, $18ff
    daa
    ld h, e
    rst $38
    dec de
    daa
    add a
    rst $38
    rla
    cpl
    scf
    rst $38
    cpl
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    sbc a
    ei
    rra
    rra
    sbc a
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [hl], b
    nop
    nop
    ret c

    cp b
    nop
    nop
    ld e, h
    cp h
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    ld b, b
    dec e
    ld e, $c0
    jr nz, @+$04

    ld bc, $f0f0
    ld bc, $f80f
    ld hl, sp+$01
    ccf
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr @+$01

    ld a, h
    db $fc
    call c, Call_000_3cff
    db $fc
    db $fc
    rst $28
    inc a
    db $fc
    or $ff
    ld [$fef8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    inc c
    db $fc
    ldh a, [rIE]
    inc e
    db $fc
    ldh [$fe], a
    inc a
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld sp, $0031
    nop
    ld a, b
    ld h, h
    nop
    nop
    call c, Call_000_19e0
    add hl, de
    ret c

    db $e4
    dec sp
    ccf
    ldh a, [$e8]
    ld [hl], a
    ld a, c
    ldh [$e0], a
    ld l, a
    ld [hl], b
    ret nz

    ret nz

    ld a, a
    ld h, b
    add b
    ld [hl], e
    dec sp
    inc h
    ld de, $18ff
    daa
    ld h, e
    rst $38
    dec de
    daa
    add a
    rst $38
    rla
    cpl
    scf
    rst $38
    cpl
    ccf
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    sbc a
    ei
    rra
    rra
    sbc a
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rra
    rra
    add $ff
    rrca
    rrca
    add $ff
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [hl], b
    nop
    nop
    ret c

    cp b
    nop
    nop
    ld e, h
    cp h
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    ld b, b
    dec e
    ld e, $c0
    jr nz, @+$04

    ld bc, $f0f0
    ld bc, $f80f
    ld hl, sp+$01
    ccf
    db $fc
    db $fc
    nop
    rst $38
    db $fc
    db $fc
    jr @+$01

    ld a, h
    db $fc
    call c, Call_000_3cff
    db $fc
    db $fc
    rst $28
    inc a
    db $fc
    or $ff
    ld [$fef8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    ld [$fbf8], sp
    rst $38
    inc c
    db $fc
    ldh a, [rIE]
    inc e
    db $fc
    ldh [$fe], a
    inc a
    db $fc
    add b
    ldh a, [$fc]
    db $fc
    nop
    ret nz

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    inc bc
    nop
    nop
    jr nc, jr_0ed_62b2

    nop

jr_0ed_62b2:
    ld [hl], b
    add b
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    ld a, e
    nop
    nop
    ld a, a
    inc a
    nop
    nop
    add hl, bc
    ld c, $00
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
    dec e
    inc bc
    nop
    nop
    ccf
    ld a, [bc]
    ld b, $06
    ld a, e
    rra
    rrca
    rrca
    ld a, a
    scf
    inc e
    rra
    ld a, a
    rst $28
    jr jr_0ed_630d

    ld e, a
    cp a
    db $10
    rra
    ccf
    rst $38
    db $10
    rra
    rst $38
    rst $18
    nop
    rrca
    ld a, [hl]
    rst $38
    nop
    rrca
    jr c, @+$01

    inc bc
    rlca
    rra
    rst $38
    rlca
    rlca
    adc [hl]
    rst $38
    rlca
    rlca
    rst $00
    rst $38
    rlca

jr_0ed_630d:
    rlca
    ld [c], a
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ld a, [$03fe]
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$07
    nop
    nop
    ld a, a
    add e
    add b
    add b
    rra
    ld l, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    rra
    ccf
    ret nz

    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    rst $20
    rst $38
    ret nz

    ret nz

jr_0ed_639c:
    di
    rst $38
    ret nz

    ret nz

    cp c
    ld a, a
    ret nz

    ret nz

    sbc h
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    sub $ff
    add b
    add b
    sub c
    rst $38
    nop
    add b
    ld hl, $00ff
    ret nz

    ld b, e
    rst $38
    jr nz, jr_0ed_639c

    add [hl]
    rst $38
    ld [hl], b
    ldh a, [$0c]
    rst $38
    ld a, b

jr_0ed_63c3:
    ld hl, sp+$18
    rst $38
    ld hl, sp-$08
    jr nc, jr_0ed_63c3

    ld hl, sp-$08
    ld h, b
    ldh a, [$78]
    ld a, b
    ret nz

    ldh [$30], a
    jr nc, jr_0ed_63d5

jr_0ed_63d5:
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
    ld b, $00
    nop
    nop
    inc bc
    nop
    nop
    jr nc, jr_0ed_6432

    nop

jr_0ed_6432:
    ld [hl], b
    add b
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    ld a, e
    nop
    nop
    ld a, a
    inc a
    nop
    nop
    add hl, bc
    ld c, $00
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
    rra
    ld e, $00
    nop
    ccf
    ccf
    ld b, $06
    ld a, a
    ld a, a
    rrca
    rrca
    ld a, a
    ld a, a
    inc e
    rra
    ld a, a
    rst $38
    jr jr_0ed_648d

    ccf
    rst $38
    db $10
    rra
    ld a, a
    rst $18
    db $10
    rra
    rst $28
    cp $00
    rrca
    db $76
    ld sp, hl
    nop
    rrca
    jr c, @+$01

    inc bc
    rlca
    rra
    rst $38
    rlca
    rlca
    adc [hl]
    rst $38
    rlca
    rlca
    rst $00
    rst $38
    rlca

jr_0ed_648d:
    rlca
    ld [c], a
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ld a, [$03fe]
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$07
    nop
    nop
    ld a, a
    add e
    add b
    add b
    rra
    ld l, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    rra
    ccf
    ret nz

    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    rst $20
    rst $38
    ret nz

    ret nz

jr_0ed_651c:
    di
    ld a, a
    ret nz

    ret nz

    cp c
    rst $38
    ret nz

    ret nz

    call c, Call_000_00ff
    add b
    sbc $bf
    nop
    add b
    sub $bf
    add b
    add b
    sub c
    ld a, a
    nop
    add b
    ld hl, $00ff
    ret nz

    ld b, e
    rst $38
    jr nz, jr_0ed_651c

    add [hl]
    rst $38
    ld [hl], b
    ldh a, [$0c]
    rst $38
    ld a, b

jr_0ed_6543:
    ld hl, sp+$18
    rst $38
    ld hl, sp-$08
    jr nc, jr_0ed_6543

    ld hl, sp-$08
    ld h, b
    ldh a, [$78]
    ld a, b
    ret nz

    ldh [$30], a
    jr nc, jr_0ed_6555

jr_0ed_6555:
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
    ld b, $00
    nop
    nop
    inc bc
    nop
    nop
    jr nc, jr_0ed_65b2

    nop

jr_0ed_65b2:
    ld [hl], b
    add b
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    ld a, e
    nop
    nop
    ld a, a
    inc a
    nop
    nop
    add hl, bc
    ld c, $00
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
    ld c, $0f
    nop
    nop
    rra
    rra
    ld b, $06
    ccf
    ccf
    rrca
    rrca
    ld a, a
    ld a, a
    inc e
    rra
    ld a, a
    rst $38
    jr jr_0ed_660d

    ccf
    rst $38
    db $10
    rra
    ld a, a
    rst $18
    db $10
    rra
    rst $38
    rst $28
    nop
    rrca
    ld [hl], b
    rst $38
    nop
    rrca
    jr c, @+$01

    inc bc
    rlca
    rra
    rst $38
    rlca
    rlca
    adc [hl]
    rst $38
    rlca
    rlca
    rst $00
    rst $38
    rlca

jr_0ed_660d:
    rlca
    ld [c], a
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ld a, [$03fe]
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$07
    nop
    nop
    ld a, a
    add e
    add b
    add b
    rra
    ld l, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    rra
    ccf
    ret nz

    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    rst $20
    rst $38
    ret nz

    ret nz

jr_0ed_669c:
    di
    ld a, a
    ret nz

    ret nz

    ld sp, hl
    cp a
    ret nz

    ret nz

    call c, Call_000_00ff
    add b
    sbc $ff
    nop
    add b
    sub $ff
    add b
    add b
    sub c
    rst $38
    nop
    add b
    ld hl, $00ff
    ret nz

    ld b, e
    rst $38
    jr nz, jr_0ed_669c

    add [hl]
    rst $38
    ld [hl], b
    ldh a, [$0c]
    rst $38
    ld a, b

jr_0ed_66c3:
    ld hl, sp+$18
    rst $38
    ld hl, sp-$08
    jr nc, jr_0ed_66c3

    ld hl, sp-$08
    ld h, b
    ldh a, [$78]
    ld a, b
    ret nz

    ldh [$30], a
    jr nc, jr_0ed_66d5

jr_0ed_66d5:
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
    inc e
    inc e
    nop
    ld bc, $3e3e
    ld c, $0f
    jr c, jr_0ed_691d

    rra
    sbc a
    jr nc, jr_0ed_6921

    ccf
    rst $38
    jr nz, jr_0ed_6925

    ccf
    rst $38
    jr nz, jr_0ed_6929

    ccf
    rst $38
    jr nz, jr_0ed_692d

    ld a, a
    rst $38
    inc c
    rra
    ld a, a
    rst $28
    ld e, $0f
    ld l, a
    rst $30
    ccf
    rra
    ld [hl], a
    rst $38
    ccf
    rra
    jr c, @+$01

    rra
    rra
    sbc b
    rst $38
    rrca
    rrca
    call c, Call_000_07ff
    rlca
    ret nz

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

jr_0ed_691d:
    nop
    nop
    nop
    nop

jr_0ed_6921:
    nop
    nop
    nop
    nop

jr_0ed_6925:
    nop
    nop
    nop
    nop

jr_0ed_6929:
    nop
    nop
    nop
    nop

jr_0ed_692d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rrca
    nop
    nop
    dec sp
    scf
    add b
    add b
    db $eb
    rla
    ret nz

    ld b, b
    ld d, a
    ld l, [hl]
    ldh [rP1], a
    ccf
    inc a
    ldh a, [rP1]
    inc bc
    dec c
    ldh a, [$e0]
    inc bc
    ld a, a
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [$31]
    rst $38
    ldh a, [$f0]
    or c
    ld a, a
    ldh a, [$f0]
    ret c

    cp a
    ldh [$e0], a
    ret c

    rst $38
    ld h, b
    ldh [$d8], a
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ld h, b
    ldh [$cc], a
    rst $38
    ld [hl], b
    ldh a, [$8c]
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ldh a, [$f0]
    ld bc, $e0cf
    ldh [rTAC], a
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_6a19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    jr c, jr_0ed_6a87

    nop
    nop
    jr nc, jr_0ed_6a8b

    nop
    nop
    jr nz, jr_0ed_6a8f

    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    dec c
    rra
    rra
    rra
    ld a, [de]
    rrca
    inc a
    ccf
    inc a
    rst $08
    jr c, jr_0ed_6aa5

    ld e, b
    rst $38
    jr nc, jr_0ed_6aa9

    db $d3
    rst $38
    ld sp, $a63f
    rst $38
    ld de, $451f
    cp $01
    rrca
    add [hl]
    db $fd
    dec de
    ld e, $83
    ld a, h
    ccf
    jr c, @+$09

    cp $3f
    ld [hl], b
    db $db
    ld a, $7f
    jr nc, jr_0ed_6aa3

jr_0ed_6a87:
    rst $38
    ld a, a
    jr c, jr_0ed_6a19

jr_0ed_6a8b:
    ld a, a
    jr nc, jr_0ed_6aed

    rst $00

jr_0ed_6a8f:
    rst $38
    rra
    daa
    di
    rst $38
    rrca
    rla
    ld hl, sp-$02
    ld b, $05
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop

jr_0ed_6aa3:
    nop
    nop

jr_0ed_6aa5:
    nop
    nop
    nop
    nop

jr_0ed_6aa9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_6aed:
    nop
    nop
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
    ld [de], a
    nop
    nop
    ld a, [hl-]
    dec a
    nop
    nop
    ld a, a
    ld a, h
    nop
    add b
    ld [hl], a
    ld c, h
    nop
    add b
    add hl, sp
    rst $00
    add b
    add b
    rst $38
    jp $80c0


    rst $38
    add e
    add b
    ret nz

    rst $10
    xor e
    ldh [$e0], a
    rla
    rst $28
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    ld sp, $c0ff
    ret nz

    jr c, @+$01

    add b
    add b
    sbc h
    rst $38
    nop
    add b
    xor $3f
    nop
    nop
    ld [hl], a
    adc a
    nop
    nop
    sbc d
    cp $00
    nop
    ld a, h
    or h
    nop
    nop
    ld a, [hl]
    xor $00
    nop
    cp $de
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rlca
    rrca
    inc b
    ld [$1f0f], sp
    ld e, $1c
    rra
    rra
    ld l, $3e
    rra
    ccf
    ld d, $2e
    rra
    ld a, a
    inc l
    inc a
    rra
    ld a, a
    inc e
    ld a, [de]
    ccf
    ld l, a
    ld c, $11
    cp a
    rst $30
    dec c
    inc de
    cp b
    rst $38
    dec bc
    rla
    sbc h
    rst $38
    rlca
    rra
    adc [hl]
    rst $38
    rrca
    rrca
    rst $00
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rlca
    rlca
    ldh a, [$f1]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_6de4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    ld h, e
    rst $38
    ldh [$f8], a
    pop af
    ld a, a
    ret c

    ldh [$f8], a
    cp a
    cp b
    call nz, $ffdc
    ld a, b
    add h
    adc $ff
    jr c, jr_0ed_6de4

    rst $08
    rst $38
    ld b, h
    db $fc
    set 7, a
    ld a, b
    ld hl, sp-$68
    cp $30
    ld [hl], b
    jr nc, @-$02

    nop
    nop
    ld h, b
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    add b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ccf
    ccf
    add b
    add b
    rra
    rra
    add b
    add b
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
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    ccf
    ld [$1f10], sp
    ld a, a
    inc a
    jr c, jr_0ed_6ef6

    rst $38
    ld e, h
    ld a, h
    rra
    rst $38
    jr z, jr_0ed_6f32

    rra
    rst $28
    ld a, c
    ld h, a
    ccf
    rst $30
    dec de
    daa
    jr c, @+$01

    rla
    cpl
    sbc h
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rra
    rra
    rst $00
    rst $38
    rra
    rra

jr_0ed_6ef6:
    db $e3
    rst $38
    rrca
    rrca
    pop hl
    rst $28
    rlca
    rlca
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_6f32:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c001
    ret nz

jr_0ed_6f7c:
    rlca
    rst $38
    ldh [$e0], a
    ld h, e
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld hl, sp-$41
    ld hl, sp-$04
    db $fc
    rst $18
    ld a, b
    db $fc
    xor $ff
    ld a, b
    db $f4
    rst $20
    rst $38
    jr c, jr_0ed_6f7c

    rst $20
    rst $38
    ld [hl], b
    ret z

    call $c0ff
    ld hl, sp-$66
    cp $e8
    ld hl, sp+$34
    db $fc
    jr nc, jr_0ed_6fd8

    ld l, b
    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nz, @-$06

    nop
    nop
    call nz, Call_000_00fc
    nop
    adc [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
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

jr_0ed_6fd8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld c, $1c
    inc e
    rra
    rra
    ld [hl], $3f
    ccf
    ccf
    inc l
    ccf
    ccf
    rst $38
    jr z, jr_0ed_709d

    ccf
    rst $38
    jr jr_0ed_7081

    ccf
    rst $38
    ld [$ff0f], sp
    rst $18
    nop
    rlca
    cp $ef
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    ld bc, $ff39
    ld bc, $1f01
    rst $38
    inc bc
    inc bc
    adc [hl]
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    inc bc

jr_0ed_7081:
    inc bc
    pop hl
    rst $38
    ld bc, $fa01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ed_709d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
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
    rst $38
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $00
    rst $38
    nop
    nop
    ld [c], a
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    cp b
    cp $00
    nop
    sbc h
    cp $00
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sub [hl]
    rst $38
    nop
    add b
    inc [hl]
    rst $38
    add b
    add b
    ld l, b
    rst $38
    add b
    add b
    pop de
    rst $38
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    ld b, a
    rst $00
    ret nz

    ret nz

    add e
    add e
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    dec bc
    dec c
    nop
    nop
    dec c
    ld e, $00
    nop
    rra
    inc c
    nop
    nop
    inc c
    rlca
    nop
    nop
    nop
    ld bc, $0000
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
    rrca
    ld c, $0e
    ld c, $1f
    rra
    dec de
    rra
    ccf
    ccf
    ld d, $1f
    ccf
    rst $38
    inc d
    rra
    ccf
    rst $38
    inc c
    rrca
    ccf
    rst $38
    inc b
    rlca
    rst $38
    rst $18
    nop
    inc bc
    cp $ef
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    ld bc, $ff39
    ld bc, $1f01
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $e101
    rst $38
    ld bc, $fb01
    rst $38
    nop
    nop
    cp $fd
    nop
    nop
    cp $f9
    nop
    nop
    ld a, h
    ld [hl], e
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $ec
    nop
    nop
    sbc $3e
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    add $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$7e]
    nop
    nop
    cp b
    cp $00
    nop
    sbc h
    cp $00
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sub [hl]
    rst $38
    nop
    add b
    jr nc, @+$01

    nop
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld h, b
    ldh [$80], a
    rst $28
    ld [hl], b
    ldh a, [rP1]
    rst $00
    ldh a, [$f0]
    ld bc, $f883
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    add b
    add b
    ld hl, sp-$08
    add b
    add b
    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

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
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    inc bc
    nop
    nop
    inc bc
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
    inc bc
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    rra
    ld a, e
    nop
    nop
    inc e
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $c701
    rst $38
    ld bc, $e301
    rst $38
    inc bc
    inc bc
    pop af
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $fa01
    db $fd
    nop
    nop
    rst $30
    ld hl, sp+$00
    nop
    rrca
    stop
    nop
    rrca
    stop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    and b
    ld a, [hl]
    nop
    nop
    ld a, l
    db $e3
    nop
    nop
    ei
    rst $00
    ldh [$e0], a
    sub a
    xor a
    ldh a, [$f0]
    rrca
    rra
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [$38]
    rst $38
    ldh a, [$f0]
    db $fc
    rst $18
    ld h, b
    ldh [$fe], a
    rst $28
    nop
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    di
    rst $38
    add b
    ret nz

    pop af
    rst $38
    add b
    ldh [$e6], a
    rst $38
    nop
    ldh a, [$cc]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    jr @-$06

    jr nc, @+$01

    inc e
    db $fc
    ldh [$f9], a
    inc a
    db $fc
    add b
    ldh a, [$7e]
    cp $c0
    ldh [$3e], a
    ld a, $c0
    ret nz

    ld a, $3e
    nop
    ret nz

    inc e
    inc e
    ret nz

    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
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
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    ld b, $0f
    nop
    nop
    rrca
    ld b, $00
    nop
    ld b, $03
    nop
    nop
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
    rrca
    ld e, $00
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
    ld a, a
    nop
    nop
    ccf
    rst $38
    nop
    ld bc, $ff3f
    nop
    ld bc, $dfff
    nop
    ld bc, $effe
    nop
    ld bc, $ff70
    nop
    ld bc, $ff39
    ld bc, $1f01
    rst $38
    ld bc, $8e01
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    inc bc
    inc bc
    pop hl
    rst $38
    inc bc
    inc bc
    ei
    rst $38
    ld bc, $fe01
    db $fd
    nop
    nop
    cp $f9
    nop
    nop
    ld a, h
    ld [hl], e
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    db $ec
    inc e
    nop
    nop
    sbc $3e
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    add $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$7e]
    nop
    nop
    cp b
    cp $00
    nop
    sbc h
    cp $00
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sub [hl]
    rst $38
    nop
    add b
    inc [hl]
    rst $38
    add b
    add b
    ld l, b
    rst $38
    add b
    add b
    pop de
    rst $38
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    ld b, a
    rst $00
    ret nz

    ret nz

    add e
    add e
    add b
    add b
    ld bc, $0001
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
    rlca
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    inc b
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
    ccf
    nop
    nop
    rra
    ld a, a
    nop
    nop
    rra
    rst $28
    ld bc, $3f01
    rst $30
    inc bc
    inc bc
    jr c, @+$01

    rlca
    rlca
    sbc h
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rrca
    rrca
    rst $00
    rst $38
    rrca
    rrca
    db $e3
    rst $38
    rrca
    rrca
    pop af
    rst $38
    rlca
    rlca
    ldh [$e1], a
    ld bc, $c001
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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop

jr_0ed_76f8:
    inc bc
    di
    add b
    add b
    rlca
    rst $38
    ret nz

    ret nz

    ld h, e
    rst $38
    ldh [$e0], a
    ld [hl], c
    rst $38
    ldh a, [$f0]
    ld hl, sp-$41
    ldh a, [$f0]
    db $fc
    rst $18
    ld [hl], b
    ldh a, [$ee]
    rst $38
    ld [hl], b
    ldh a, [$e7]
    rst $38
    jr nz, jr_0ed_76f8

    rst $20
    rst $38
    ld b, b
    ret nz

    call $80ff
    add b
    sbc d
    cp $00
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld l, b
    ld hl, sp+$00
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nz, @-$06

    nop
    nop
    call nz, Call_000_00fc
    nop
    adc [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    inc b
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
    rlca
    rlca
    inc b
    ld [$0f0f], sp
    ld e, $1c
    rra
    rra
    ld l, $3e
    rra
    ccf
    inc d
    ld a, [hl+]
    rra
    ld a, a
    inc a
    inc sp
    rra
    rst $28
    dec c
    inc de
    ccf
    rst $30
    dec bc
    rla
    jr c, @+$01

    rlca
    rra
    sbc h
    rst $38
    rrca
    rrca
    adc a
    rst $38
    rra
    rra
    rst $00
    rst $38
    rra
    rra
    db $e3
    rst $38
    rrca
    rrca
    pop hl
    rst $28
    rlca
    rlca
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    nop
    ldh a, [rP1]
    nop

jr_0ed_787c:
    rlca
    rst $38
    ret nz

    ret nz

    ld h, e
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld hl, sp-$41
    ld hl, sp-$04
    db $fc
    rst $18
    ld a, b
    db $fc
    xor $ff
    ld a, b
    db $f4
    rst $20
    rst $38
    jr c, jr_0ed_787c

    rst $20
    rst $38
    ld [hl], b
    ret z

    call $c0ff
    ld hl, sp-$68
    cp $e8
    ld hl, sp+$30
    db $fc
    jr nc, jr_0ed_78d8

    ld h, b
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    db $fc
    nop
    nop
    add b
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    rlca
    rst $38
    add b
    add b
    ccf
    ld a, a
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

    inc bc
    inc bc
    add b
    add b
    nop
    nop
    nop
    nop

jr_0ed_78d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
