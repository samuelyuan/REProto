SECTION "ROM Bank $0eb", ROMX[$4000], BANK[$eb]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    rlca
    rlca
    ldh [$c0], a
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    pop hl
    rst $38
    rrca
    rlca
    ret nz

    rst $38
    rrca
    rlca
    adc h
    rst $38
    rlca
    inc bc
    inc e
    rst $38
    ld [bc], a
    inc bc
    dec sp
    rst $38
    nop
    ld bc, $f77f
    nop
    ld bc, $ffef
    ld bc, $df01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    rra
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    add b
    ldh [rP1], a
    nop
    ret nz

    ldh a, [rP1]
    nop
    rst $20
    rst $38
    nop
    nop
    di
    rst $38
    add b
    add b
    pop af
    rst $38
    add b
    add b
    pop hl
    rst $38
    add b
    add b
    db $fd
    rst $18
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld [hl], c
    rst $38
    add b
    add b
    db $e3
    rst $38
    ret nz

    add b
    rst $00
    rst $38
    ret nz

    add b
    adc a
    rst $38
    ldh [$c0], a
    rra
    ld a, a
    ldh [$c0], a
    rra
    rra
    ret nz

    ret nz

    rrca
    inc bc
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_4198:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0eb_4198

    ld bc, $de01
    ldh [$03], a
    inc bc
    ei
    db $f4
    rlca
    rlca
    ei
    rst $38
    rlca
    rlca
    di
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    ld bc, $1f01
    ei
    nop
    nop
    ccf
    rst $30
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
    rst $18
    rst $38
    nop
    nop
    rra
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    rlca
    rra
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    add b
    nop
    nop
    db $fc
    inc e
    nop
    nop
    cp $be
    nop
    nop
    db $fc
    sbc $00
    nop
    db $ed
    cp $00
    nop
    rst $30
    cp $80
    nop
    pop af
    cp $80
    ld b, b
    pop af
    cp $c0
    nop
    db $e4
    rst $38
    cp $1e
    db $ec
    rst $18
    rst $38
    rra
    sbc h
    rst $38
    rlca
    rst $38
    jr c, @+$01

    di
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $00
    rst $38
    or $fe
    adc a
    rst $18
    ldh a, [$f0]
    rrca
    rrca
    ldh [$e0], a
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
    ld b, $3d
    rlca
    rlca
    db $dd
    db $e3
    rrca
    rrca
    rst $28
    pop af
    rrca
    rrca
    pop af
    rst $38
    rrca
    rrca
    add sp, -$04
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    inc e
    rst $38
    ld b, $07
    ccf
    ei
    nop
    inc bc
    ld a, a
    rst $30
    nop
    inc bc
    rst $28
    rst $38
    ld bc, $cf03
    rst $38
    inc bc
    inc bc
    rst $08
    rst $38
    nop
    inc bc
    ld h, a
    rst $38
    nop
    rlca
    inc sp
    rst $38
    ld b, $07
    jr @+$01

    rrca
    rrca
    inc c
    rst $38
    rrca
    rrca
    rlca
    sbc a
    ld b, $06
    ld bc, $000f
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    ret nz

    add b
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
    add b
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ldh a, [$ef]
    nop
    nop
    ld hl, sp-$21
    nop
    nop
    jr c, @+$01

    nop
    nop
    ld [hl], d
    cp $00
    nop
    db $e3
    rst $38
    add b
    add b
    rst $00
    rst $38
    add b
    add b
    adc a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rst $38
    cp a
    ret nz

    ret nz

    rst $38
    sbc a
    add b
    add b
    rst $30
    rst $08
    nop
    nop
    nop
    jr nc, jr_0eb_444f

jr_0eb_444f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    rlca
    rlca
    ret nz

    ldh [rIF], a
    rrca
    ldh [$f0], a
    rrca
    rrca
    ldh [$fe], a
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    adc b
    rst $38
    rrca
    rrca
    inc e
    rst $38
    ld b, $07
    ccf
    ei
    nop
    inc bc
    ld a, a
    rst $30
    nop
    inc bc
    rst $28
    rst $38
    ld bc, $cf03
    rst $38
    inc bc
    inc bc
    rst $08
    rst $38
    inc bc
    inc bc
    ld h, a
    rst $38
    nop
    inc bc
    inc sp
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

    rlca
    rlca
    inc c
    rst $38
    rlca
    rlca
    add a
    sbc a
    inc bc
    inc bc
    ld bc, $000f
    nop
    inc bc
    rlca
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ld hl, sp-$22
    nop
    nop

jr_0eb_45a8:
    jr c, jr_0eb_45a8

    nop
    nop
    ld [hl], d
    cp $00
    nop
    db $e3
    rst $38
    add b
    add b
    rst $00
    rst $38
    add b
    add b
    adc a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rra
    ld a, a
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rrca
    inc bc
    inc bc
    ldh [rIE], a
    rrca
    rrca
    add $ff
    rra
    rra
    adc [hl]
    rst $38
    rra
    ccf
    rra
    db $fd
    ld e, $3f
    ccf
    ei
    ld e, $2f
    ld [hl], a
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc bc
    rra
    or e
    rst $38
    rla
    rra
    ld e, c
    ld a, a
    inc c
    inc c
    inc l
    ccf
    nop
    nop
    ld d, $1f
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc b
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr c, jr_0eb_46c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_46c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_46de:
    nop
    nop
    nop
    nop

jr_0eb_46e2:
    nop
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
    jr nc, jr_0eb_46e2

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, jr_0eb_46de

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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    db $10
    ld [$fcf8], sp
    inc a
    inc e
    ld hl, sp-$02
    ld a, [hl-]
    ld a, $f8
    rst $30
    inc d
    ld a, [hl+]
    db $fc
    rst $28
    sbc [hl]
    and $1c
    rst $38
    ret c

    db $e4
    add hl, sp
    rst $38
    add sp, -$0c
    pop af
    rst $38
    ldh a, [$fc]
    db $e3
    rst $38
    ld hl, sp-$08
    rst $00
    rst $38
    ld hl, sp-$08
    add a
    rst $30
    ldh a, [$f0]
    ld bc, $e081
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
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rrca
    inc bc
    inc bc
    ldh [rIE], a
    rrca
    rrca
    add $ff
    rra
    rra
    adc [hl]
    rst $38
    rra
    ccf
    rra
    db $fd
    ld e, $7f
    ccf
    ei
    ld l, [hl]
    rra
    ld [hl], a
    rst $38
    db $76
    adc a
    rst $20
    rst $38
    ld a, c
    add l
    rst $20
    rst $38
    ld [hl], b
    adc b
    or e
    rst $38
    adc b
    db $fc
    add hl, de
    ld a, a
    ld a, b
    ld a, h
    inc c
    ccf
    jr nc, jr_0eb_4822

    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $007f
    nop
    ld b, b
    ld a, a
    ld bc, $e001
    rst $38
    inc bc
    inc bc
    db $fc
    cp $03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
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

jr_0eb_4822:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_485a:
    nop
    nop
    nop
    nop

jr_0eb_485e:
    nop
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
    jr nc, jr_0eb_485e

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, jr_0eb_485a

    nop
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
    ldh [$e0], a
    db $10
    ld [$f0f0], sp
    inc a
    inc e
    ld hl, sp-$08
    ld a, [hl-]
    ld a, $f8
    db $fc
    inc [hl]
    ld a, [hl-]
    ld hl, sp-$02
    ld a, [de]
    ld e, $f8
    rst $30
    inc e
    inc l
    db $fc
    rst $28
    cp b
    call nz, $ff1c
    ret c

    db $e4
    add hl, sp
    rst $38
    add sp, -$0c
    pop af
    rst $38
    ldh a, [$fc]
    db $e3
    rst $38
    ld hl, sp-$08
    rst $00
    rst $38
    ld hl, sp-$08
    add a
    rst $30
    ldh a, [$f0]
    ld bc, $e081
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
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f7]
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh [rIE], a
    inc bc
    rlca
    add $ff
    rlca
    dec bc
    adc a
    cp $07
    add hl, bc
    rra
    db $fd
    rlca
    inc b
    dec sp
    rst $38
    rlca
    rlca
    ld [hl], e
    rst $38
    inc bc
    inc bc
    di
    rst $38
    nop
    nop
    db $d3
    rst $38
    nop
    nop
    add hl, de
    ld a, a
    nop
    nop
    inc c
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000f
    nop
    nop
    rra
    nop
    nop
    jr jr_0eb_49a3

    nop
    nop
    inc a
    ccf
    nop
    nop
    inc a
    ld a, $00
    nop
    jr jr_0eb_49a8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_49a3:
    nop
    nop
    nop
    nop
    nop

jr_0eb_49a8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$08
    ld b, b
    jr nz, @-$06

    db $fc
    ldh a, [rSVBK]
    ld hl, sp-$02
    add sp, -$08
    ld hl, sp-$02
    ld d, b
    xor b
    db $fc
    rst $30
    ld a, b
    sbc b
    db $fd
    rst $28
    ld h, b
    sub b
    inc e
    rst $38
    and b
    ret nc

    add hl, sp
    rst $38
    ret nz

    ldh a, [$f1]
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    rlca
    rlca
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
    nop
    nop
    nop
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh [rIE], a
    inc bc
    rlca
    add $ff
    inc bc
    rlca
    adc a
    cp $01
    inc bc
    rra
    db $fd
    nop
    inc bc
    dec sp
    rst $38
    nop
    ld bc, $ff73
    nop
    ld bc, $fff3
    nop
    nop
    db $d3
    rst $38
    nop
    nop
    add hl, de
    ld a, a
    nop
    nop
    inc c
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000f
    nop
    db $10
    rra
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    jr jr_0eb_4b24

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_4b24:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    add b
    db $fc
    rst $30
    nop
    add b
    cp $ef
    nop
    add b
    inc e
    rst $38
    nop
    ret nz

    jr c, @+$01

    ret nz

    ldh [$f1], a
    rst $38
    ldh [$f0], a
    db $e3
    rst $38
    ldh [$f0], a
    rst $00
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    rlca
    rlca
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
    ld bc, $0001
    nop
    ld bc, $000f
    nop
    scf
    jr c, jr_0eb_4c31

jr_0eb_4c31:
    nop
    ld a, e
    ld a, h
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    nop
    ld bc, $ff69
    ld bc, $2c01
    rst $38
    ld bc, $1601
    rst $38
    inc bc
    inc bc
    adc e
    rst $38
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    ld [c], a
    db $e3
    ld bc, $c101
    pop bc
    nop
    nop
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    nop
    ld h, b
    ldh a, [rP1]
    nop
    ldh a, [$60]
    nop
    nop
    ld h, b
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
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop

jr_0eb_4d08:
    nop
    ldh [rP1], a
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b

jr_0eb_4d14:
    db $fc
    db $fc
    ret c

    ld hl, sp-$04
    rst $38
    ld l, b
    ld hl, sp-$04
    rst $38
    jr z, @-$06

    db $fc
    rst $38
    jr nc, jr_0eb_4d14

    rst $38
    ei
    jr nz, jr_0eb_4d08

    ld a, a
    rst $30
    nop
    ret nz

    ld c, $ff
    nop
    ret nz

    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$01
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    add a
    rst $38
    add b
    add b
    rst $18
    rst $38
    add b
    add b
    ld a, a
    cp a
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, $ce
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
    nop
    rrca
    nop
    nop
    scf
    jr c, jr_0eb_4db1

jr_0eb_4db1:
    nop
    ld a, e
    ld a, h
    nop
    nop
    db $fd
    cp $00
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    nop
    ld bc, $ff69
    nop
    inc bc
    inc c
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld b, $07
    inc bc
    rst $38
    ld c, $0f
    ld bc, $0ff7
    rrca
    nop
    db $e3
    rra
    rra
    add b
    pop bc
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld c, $0e
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
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
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

jr_0eb_4e26:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    nop
    xor b
    ret c

    nop
    nop
    ret c

    db $fc
    nop
    nop
    db $fc
    ld a, b
    nop
    nop
    jr c, jr_0eb_4e26

    nop
    nop
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
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    jr c, jr_0eb_4ecc

    db $fc
    db $fc
    ld l, h
    db $fc
    db $fc
    rst $38
    inc [hl]
    db $fc

jr_0eb_4e9c:
    db $fc
    rst $38
    inc d
    db $fc
    db $fc
    rst $38
    jr jr_0eb_4e9c

    rst $38
    ei
    db $10
    ldh a, [$7f]
    rst $30
    nop
    ldh [$0e], a
    rst $38
    nop
    ret nz

    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$01
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld b, a
    ld a, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ld a, a
    nop
    nop

jr_0eb_4ecc:
    ld e, a
    cp a
    nop
    nop
    xor $1e
    nop
    nop
    ldh a, [$0c]
    nop
    nop
    ldh a, [$08]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    ld a, a
    nop
    nop
    cp $ff
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    pop af
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld c, $7f
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    ld hl, $007f
    nop
    jr nc, jr_0eb_4fe7

    nop
    nop
    jr jr_0eb_4fab

    nop
    nop
    inc c
    rra
    nop
    nop
    ld b, $0f
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
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
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    jr nc, jr_0eb_4fcf

    nop
    nop
    db $fc
    cp $01
    ld bc, $fefe
    ld bc, $fc01
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

jr_0eb_4fab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_4fcf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_4fe7:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld b, b
    ld hl, sp+$00
    nop
    xor $fe
    nop
    nop
    rst $38
    rst $18
    nop
    nop
    cp a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rst $38
    ld a, a
    sub d
    add b
    rst $38
    ld a, a
    sub d
    sbc l
    ld a, a
    cp a
    adc [hl]
    dec c
    ccf
    sbc $de
    sbc $9d
    rst $20
    adc $da
    ld b, e
    rst $38
    adc h
    ld a, [c]
    ccf
    rst $38
    inc e
    ld a, [c]
    ld c, $ff
    inc [hl]
    ld a, [$ff1c]
    ld a, h
    ld a, [$ff98]
    ld hl, sp-$02
    pop hl
    rst $38
    db $fc
    cp $13
    rst $38
    db $fc
    db $fc
    inc bc
    jp $f8f8


    ld bc, $f081
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
    inc bc
    inc bc
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    dec a
    ld a, $00
    nop
    dec sp
    inc a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_512b

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_512b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    adc a
    add b
    add b
    add e
    rst $38
    ret nz

    ret nz

    pop hl
    sbc a
    ret nz

    ret nz

    reti


    and a
    add b
    add b
    sbc h
    ld [c], a
    nop
    nop
    sbc $e1
    nop
    nop
    cpl
    ldh a, [rP1]
    add b
    rla
    ld hl, sp-$40
    ret nz

    jp nc, $e0f5

    ldh [$c8], a
    ei
    ldh a, [$f0]
    ld bc, $fcf9
    db $fc
    ldh [rNR23], a
    xor $fe

jr_0eb_519c:
    ldh a, [$0c]
    scf
    ld e, a
    ret c

    inc [hl]
    daa
    ld a, e
    jr c, jr_0eb_519c

    ld c, c
    ld [hl], a
    db $f4
    cp $93
    rst $28
    db $fc
    rst $38
    adc a
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    ld e, e
    cp $f8
    rst $38
    dec bc
    db $f4
    ldh [rIE], a
    ld h, [hl]
    sbc b
    add c
    rst $38
    or b
    call z, $ff03
    ldh a, [$c8]
    rlca
    rst $38
    ldh [$d0], a
    rra
    rst $38
    ret nz

    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    inc a
    nop
    nop
    dec a
    dec sp
    nop
    nop
    rlca
    dec sp
    nop
    nop
    dec bc
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_52ab

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_52ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    rst $38
    add b
    add b
    ld a, l
    add e
    ret nz

    ret nz

    cp [hl]
    pop bc
    ret nz

    ret nz

    rst $00
    ld hl, sp+$00
    add b
    rst $28
    ldh a, [rP1]
    nop
    rst $28
    ldh a, [$80]
    nop
    daa
    ld hl, sp-$40
    ld b, b
    inc de
    db $fc
    and b
    ld h, b
    pop de
    ld hl, sp-$50
    ld [hl], b
    ret


    ld hl, sp+$79
    ld sp, hl
    nop
    ld hl, sp-$0a
    rst $38
    and b
    ld e, b
    dec d
    ld l, [hl]
    ret nc

    db $ec
    dec de
    inc l
    ld hl, sp-$0c
    ld d, $39
    ld hl, sp-$02
    ld bc, $f81f
    cp $1b
    rla
    db $fc
    rst $38
    rrca
    rrca
    db $fc
    rst $38
    add hl, bc
    ld b, $fc
    rst $38
    rrca
    add b
    ld hl, sp-$01
    rrca
    sub b
    ldh [rIE], a
    rrca
    ldh a, [$81]
    rst $38
    rst $20
    sbc b
    inc bc
    rst $38
    ld hl, sp-$3a
    rlca
    rst $38
    ld hl, sp-$3c
    rra
    rst $38
    ldh a, [$c8]
    rra
    rst $38
    ret nz

    ldh [rIE], a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    inc a
    nop
    nop
    dec a
    dec sp
    nop
    nop
    rlca
    dec sp
    nop
    nop
    dec bc
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_542b

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_542b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_5464:
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    adc a
    adc a
    add b
    add b
    ld [hl], a
    adc a
    ret nz

    ret nz

    cp l
    jp $c0c0


    rst $18
    ldh [$80], a
    ld b, b
    rst $28
    ldh a, [$c0]
    jr nz, jr_0eb_5464

    db $fc
    add sp, $18
    jr nz, @+$01

    db $fc
    inc e
    db $10
    rst $38
    ld a, $5e
    ret nc

    db $fc
    rra
    rra
    ret z

    ld hl, sp+$05
    rrca
    nop
    ld hl, sp+$06
    inc bc
    and b
    ld e, b
    inc b
    rrca
    ret nc

    db $ec
    nop
    rlca
    ld hl, sp-$0c
    ld b, $05
    ld hl, sp-$02
    inc bc
    inc bc
    ld hl, sp-$02
    ld bc, $fc03
    rst $38
    rlca
    nop
    db $fc
    rst $38
    rlca
    ld [$fffc], sp
    rlca
    sbc b
    ld hl, sp-$01
    scf
    ret z

    ldh [rIE], a
    ld a, d
    add l
    add c
    rst $38
    ld hl, sp-$7a
    inc bc
    rst $38
    ld hl, sp-$3c
    rlca
    rst $38
    ldh a, [$c8]
    rra
    rst $38
    ret nz

    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    jr jr_0eb_5550

    nop
    nop
    ld a, h
    ld h, b
    nop
    nop
    ld a, b
    ld [hl], b
    nop
    ld bc, $f878
    ld [bc], a
    ld bc, $30f0
    rlca
    nop
    db $fc
    inc e
    ld bc, $ee06
    ld a, $0e
    rrca
    ld b, a
    rst $38
    rra
    rra
    rst $38
    ei

jr_0eb_5550:
    rra
    rra
    rst $38
    db $fd
    dec e
    rra
    cp $ff
    add hl, de
    rra
    rst $38
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    rst $38
    cp l
    nop
    inc bc
    rst $30
    db $db
    nop
    inc bc
    and $ff
    nop
    ld bc, $ff7c
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld hl, $007f
    nop
    rla
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld [$000f], sp
    nop
    ld bc, $0007
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    add b
    nop
    nop
    rrca
    call nz, RST_00
    rlca
    rst $20
    nop
    nop
    rrca
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    rlca
    db $fc
    add b
    add b
    db $e3
    db $fc
    nop
    add b
    adc a
    db $fc
    nop
    add b
    sbc a
    cp $00
    add b
    ccf
    rst $38
    nop
    add b
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld a, [hl]
    rst $38
    ld l, h
    db $fc
    db $fc
    rst $38
    db $ec
    db $fc
    ld hl, sp-$01
    ld hl, sp-$08
    jr c, jr_0eb_5699

    ld a, b
    ld hl, sp+$00
    rra
    ldh a, [$f0]
    rrca
    rrca
    add b
    add b
    ld b, $07
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

jr_0eb_5699:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld e, $00
    nop
    rra
    inc e
    nop
    nop
    ccf
    ld e, [hl]
    ld bc, $fe00
    ld c, $01
    ld [bc], a
    db $76
    sbc [hl]
    rlca
    rlca
    ld h, a
    cp a
    rrca
    rrca
    ei
    rst $38
    rrca
    rrca
    rst $38
    db $fd
    inc c
    rrca
    cp $ff
    ld [$ff0f], sp
    rst $38
    ld bc, $ff07
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
    rst $38
    cp l
    ld bc, $ef03
    sbc e
    nop
    inc bc
    add $ff
    nop
    ld bc, $ff7c
    nop
    nop
    ld bc, $00ff
    nop
    ld b, e
    rst $38
    nop
    nop
    cpl
    ld a, a
    nop
    nop
    ld e, $7f
    nop
    nop
    inc [hl]
    ccf
    nop
    nop
    ld [bc], a
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, $e0
    add b
    nop
    rlca
    rst $20
    ret nz

    nop
    rlca
    rst $30
    add b
    add b
    rst $00
    rst $38
    ret nz

    ret nz

    rla
    ld hl, sp-$80
    add b
    ccf
    ld hl, sp+$00
    nop
    ld a, [hl]
    db $fd
    nop
    nop
    db $fc
    cp $60
    ld h, b
    ld hl, sp-$02
    ldh a, [$f0]
    ei
    rst $38
    ld h, b
    ldh [$f3], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ret nz

    ret nz

    rla
    ld a, a
    add b
    add b
    inc a
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
    inc bc
    inc bc
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
    ld a, [hl]
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
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    dec a
    ld a, $00
    nop
    ccf
    ld a, [hl-]
    nop
    nop
    ld c, $37
    nop
    nop
    rrca
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
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_58ab

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_58ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_58b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    adc a
    add b
    add b
    ld bc, $c0ff
    ret nz

    ld [hl], b
    adc a
    ret nz

    ret nz

    ld hl, sp+$07
    ret nz

    ret nz

    cp h
    jp $8080


    sbc $e1
    nop
    nop
    ld l, $f1
    add b
    add b
    rlca
    ld hl, sp-$40
    ret nz

    jp $e0fc


    ldh [$c0], a
    ei
    ldh a, [$f0]
    ld bc, $f9f9
    ld sp, hl
    ret nz

    jr c, jr_0eb_58b6

    ei
    ldh [$9c], a
    ld l, l
    rra
    ldh a, [$cc]
    ld a, [de]
    ld a, l
    ldh a, [$6e]
    dec [hl]
    dec sp
    ldh a, [$be]
    ld a, [hl+]
    ld [hl], $d0
    rst $28
    ld d, h
    ld l, h
    db $ec
    cp $ac
    ret c

    db $fd
    rst $08
    ld e, b
    or [hl]
    ld hl, sp-$21
    cp [hl]
    cp $e0
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [hl], b
    or b
    ld b, $ff
    ret nz

    jr nz, jr_0eb_596b

    rst $38
    ret nz

    jr nz, jr_0eb_596f

    rst $38
    add b
    ld b, b
    rst $38
    rst $38
    nop
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

jr_0eb_596b:
    nop
    nop
    nop
    nop

jr_0eb_596f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    dec a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_5a2b

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_5a2b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    rst $38
    add b
    add b
    ld a, l
    add e
    ret nz

    ret nz

    cp [hl]
    pop bc
    ret nz

    ret nz

    rst $00
    ld hl, sp+$00
    nop
    rst $28
    ldh a, [rP1]
    add b
    rst $20
    ld hl, sp-$80
    ld b, b
    ld hl, $a0fe
    ld h, b
    db $10
    rst $38
    inc a
    db $fc
    ret nc

    db $fc
    cp $fe
    ret z

    db $fc
    ccf
    ccf
    nop
    ld hl, sp+$0a
    rla
    ldh [$f8], a
    dec b
    ld e, $f0
    db $fc
    ld a, [bc]
    dec c
    ld hl, sp-$04
    dec d
    dec de
    ld hl, sp-$02
    dec hl
    ld [hl], $f8
    cp $56
    ld l, l
    ldh a, [rIE]
    xor l
    rst $18
    db $fc
    rst $28
    ld e, a
    cp a
    call c, Call_000_3eff
    cp $78
    rst $38
    ld c, [hl]
    cp $e0
    rst $38
    ld [hl], h
    adc h
    add c
    rst $38
    or b
    ret z

    inc bc
    rst $38
    ldh a, [$c0]
    rlca
    rst $38
    ldh [$d0], a
    rra
    rst $38
    ret nz

    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    dec a
    nop
    nop
    dec sp
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000f
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_5bab

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_5bab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    adc a
    add b
    add b
    ld bc, $c0ff
    ret nz

    add b
    rst $38
    ret nz

    ret nz

    ldh [$1f], a
    add b
    add b
    ld hl, sp-$79
    nop
    nop
    cp $c0
    nop
    nop
    ccf
    ldh [rP1], a
    nop
    rla
    ldh a, [$80]
    add b
    rst $10
    ldh a, [$c0]
    ret nz

    jp z, $e0f9

    ldh [rSB], a
    ld sp, hl
    ldh a, [$f0]
    ldh [$f8], a
    ld [$f0fb], a
    db $fc
    dec l
    ld e, [hl]
    ld hl, sp-$04
    ld a, [de]
    ld a, l
    ld hl, sp-$02
    dec d
    dec de
    ld hl, sp-$02
    ld a, [hl+]
    ld [hl], $f8
    rst $30
    ld d, h
    ld l, h
    db $fd
    rst $28
    xor h
    ret c

    call c, Call_000_18ff
    or $78
    rst $38
    ld a, [hl-]
    cp $e0
    rst $38
    ld a, h
    db $fc
    add b
    rst $38
    ld hl, sp-$08
    ld [bc], a
    rst $38
    ldh a, [rSVBK]
    rlca
    cp $e0
    jr nz, jr_0eb_5c5c

    rst $38
    ret nz

    nop
    rra
    rst $38
    ld b, b
    add b
    rst $38
    rst $38
    nop
    add b
    rra
    rra
    nop
    nop

jr_0eb_5c5c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $18
    nop
    nop
    ccf
    ld a, $00
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ccf
    nop
    nop
    ld a, h
    ccf
    nop
    nop
    jr c, jr_0eb_5ce3

    nop
    nop
    ld de, $001f
    nop
    inc bc
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    ld c, $3f
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ld bc, $06ff
    rlca
    nop
    rst $38
    ld c, $0f
    nop

jr_0eb_5ce3:
    db $fd
    rra
    rra
    nop
    ld hl, sp+$1f
    rra
    add b
    ldh a, [$1f]
    rra
    nop
    ld bc, $1f1f
    nop
    inc bc
    rra
    rra
    nop
    rlca
    ld c, $0e
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld a, $3f
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
    inc a
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
    nop
    ld hl, sp+$00
    nop
    ld h, b
    db $fc
    nop
    nop
    ldh [$fe], a
    nop
    nop
    call c, Call_000_00ff
    nop
    cp $bf
    nop
    add b
    ld a, a
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    add b
    ldh [rIE], a
    rst $38
    add b
    ldh a, [rIE]
    rst $38
    nop
    ldh a, [rIE]
    cp $e0
    ldh a, [$7f]
    db $fd
    ret nz

    ld hl, sp+$33
    rst $38
    adc h
    db $fc
    rra
    rst $38
    ld e, $fc
    ld c, $ff
    ld a, $fc
    inc e
    rst $38
    ld a, a
    cp $08
    rst $38
    rst $38
    cp $01
    ld sp, hl
    cp $fe
    nop
    ldh a, [$fc]
    sbc h
    nop
    ldh [rNR23], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld a, a
    ld a, b
    nop
    nop
    rst $38
    db $fc
    nop
    nop
    rst $38
    cp $00
    nop
    rst $38
    cp $00
    nop
    cp $ff
    inc bc
    inc bc
    ldh a, [rIE]
    rlca
    rlca
    add b
    rst $38
    ld c, $0f
    nop
    rst $38
    inc e
    rra
    rrca
    rst $38
    jr jr_0eb_5e79

    ccf
    rst $38
    jr c, jr_0eb_5e9d

    pop af
    cp $38
    ccf
    rst $00
    rst $38
    jr c, jr_0eb_5ea5

    rrca
    rst $38
    inc a
    ccf
    rrca
    rst $38
    inc e
    dec e
    rrca
    rst $38
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop

jr_0eb_5e79:
    nop
    rlca
    ld a, a
    nop
    nop
    ld bc, $003e
    nop
    rrca
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0eb_5eab

    nop
    nop
    nop
    rrca
    nop
    nop
    inc bc
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

jr_0eb_5e9d:
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_0eb_5ea5:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_5eab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    jr nz, jr_0eb_5f06

jr_0eb_5f06:
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
    nop
    ret nz

    nop
    nop
    add b
    ld h, b
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
    ldh a, [$fe]
    nop
    nop
    ldh [rIE], a
    ret nz

    ret nz

    ldh [$7f], a
    ld h, b
    ldh [$e0], a
    rst $38
    ld h, b
    ldh [$80], a
    rst $38
    ld h, b
    ldh [$08], a
    rst $38
    ld h, b
    ldh [$78], a
    rst $38
    ret nz

    ret nz

    ld sp, hl
    rst $38
    add b
    add b
    db $fc
    ld hl, sp+$00
    nop
    db $fc
    ld hl, sp+$00
    nop
    db $fc
    ld hl, sp+$00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    dec a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_6027

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_6027:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    rst $38
    add b
    add b
    ld a, l
    add e
    ret nz

    ret nz

    cp [hl]
    pop bc
    ret nz

    ret nz

    rst $00
    ld hl, sp+$00
    add b
    rst $28
    ldh a, [$80]
    add b
    rst $28
    pop af
    ret nz

    ret nz

    daa
    ei
    ldh [$e0], a
    inc de
    rst $38
    ldh a, [$f0]
    pop de
    db $fd
    sbc b
    ld hl, sp-$38
    db $fc
    ld hl, sp+$08
    nop
    ld hl, sp+$70
    add b
    ldh [$f8], a
    ld [hl+], a
    ld d, b
    ldh a, [$fc]
    ld b, $04
    ld hl, sp-$04
    dec bc
    dec c
    ld hl, sp-$02
    dec e
    dec de
    ld hl, sp-$02
    dec de
    inc e
    ldh a, [rIE]
    inc e
    rra
    db $fc
    rst $28
    ccf
    ccf
    call c, Call_000_3fff
    cp a
    ld a, b
    rst $38
    ld a, $be
    ldh [rIE], a
    ld e, h
    cp h
    add c
    rst $38
    xor b
    ret c

    inc bc
    rst $38
    ldh a, [$c0]
    rlca
    rst $38
    ldh [$d0], a
    rra
    rst $38
    ret nz

    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld bc, $003f
    nop
    rlca
    ccf
    nop
    nop
    ld c, $3f
    nop
    nop
    ccf
    dec a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld [$000f], sp
    nop
    jr jr_0eb_61a7

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_61a7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc a
    rst $38
    add b
    add b
    ld a, l
    add e
    ret nz

    ret nz

    cp [hl]
    pop bc
    ret nz

    ret nz

    rst $00
    ld hl, sp+$00
    add b
    rst $28
    ldh a, [$80]
    add b
    rst $28
    pop af
    ret nz

    ret nz

    daa
    ei
    ldh [$e0], a
    inc de
    rst $38
    ldh a, [$f0]
    pop de
    db $fd
    sbc b
    ld hl, sp-$38
    db $fc
    ld hl, sp+$08
    nop
    ld hl, sp+$70
    add b
    ldh [$f8], a
    ld [hl+], a
    ld d, b
    ldh a, [$fc]
    ld b, $04
    ld hl, sp-$04
    dec bc
    dec c
    ld hl, sp-$02
    dec e
    dec de
    ld hl, sp-$02
    dec de
    inc e
    ldh a, [rIE]
    inc e
    rra
    db $fc
    rst $28
    ccf
    ccf
    call c, Call_000_3fff
    cp a
    ld a, b
    rst $38
    ld a, $be
    ldh [rIE], a
    ld e, h
    cp h
    add c
    rst $38
    xor b
    ret c

    inc bc
    rst $38
    ldh a, [$c0]
    rlca
    rst $38
    ldh [$d0], a
    rra
    rst $38
    ret nz

    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld a, a
    rra
    rra
    inc bc
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    db $10
    cp $3e
    ccf
    scf
    ld a, [$3f3c]
    ld a, e
    rst $28
    jr c, jr_0eb_6311

    rst $38
    db $fd
    ld de, $ff1f
    cp $03
    rra
    cp a
    rst $38
    rla
    rra
    cp a
    rst $38
    ld a, [bc]
    rrca
    sbc a
    rst $38
    ld [$4f1f], sp
    rst $38
    inc c
    rra
    ld h, $ff
    ld b, $0f
    db $10
    rst $38
    inc bc
    rlca
    rrca
    rst $38
    ld bc, $8303
    rst $38
    nop
    ld bc, $ffc7
    nop
    ld bc, $ff66
    nop
    inc bc
    jr c, @+$01

    inc bc
    inc bc
    inc b
    rst $38
    rlca

jr_0eb_6309:
    rlca
    ret nz

    ldh a, [rIF]
    rrca
    ldh [$e0], a
    rrca

jr_0eb_6311:
    rrca
    ret nz

    ret nz

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

jr_0eb_634d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    add b
    add b
    ld b, $00
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    jr jr_0eb_6309

    nop
    ld c, b
    jr nc, jr_0eb_634d

    nop
    ld c, b
    ld [hl], h
    ldh [$80], a
    ld a, b
    ld [hl], h
    ldh [$c0], a
    ldh a, [$f0]
    ld h, b
    add b
    ld [hl], b
    ret nc

    ret nz

    ldh [rLCDC], a
    and b
    ldh [$a1], a
    ret nz

    jr nz, @-$0e

    ld [hl], c
    ret nz

    jr nz, jr_0eb_641a

    ld a, [c]
    add b
    ld b, b
    push hl
    cp $80
    ld b, b
    rst $08
    db $fc
    add b
    ld b, b
    sbc a
    cp $80
    ld b, b
    ccf
    cp $00
    add b
    ld a, a
    rst $38
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_641a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld a, a
    rra
    rra
    inc bc
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    db $10
    cp $3e
    ccf
    dec sp
    rst $38
    inc a
    ccf
    ld a, a
    rst $30
    jr c, jr_0eb_6491

    rst $28
    rst $38
    ld de, $df1f
    rst $38
    inc bc
    rra
    cp a
    rst $18
    rla
    rra
    cp a
    rst $18
    ld a, [bc]
    rrca
    sbc a
    rst $28
    ld [$4f1f], sp
    rst $30
    inc c
    rra
    daa
    ld sp, hl
    ld b, $0f
    db $10
    rst $38
    inc bc
    rlca
    rrca
    rst $38
    ld bc, $8303
    rst $38
    nop
    ld bc, $ffc7
    nop
    ld bc, $ff66
    nop
    inc bc
    jr c, @+$01

    inc bc
    inc bc
    inc b
    rst $38
    rlca

jr_0eb_6489:
    rlca
    ret nz

    ldh a, [rIF]
    rrca
    ldh [$e0], a
    rrca

jr_0eb_6491:
    rrca
    ret nz

    ret nz

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

jr_0eb_64cd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    add b
    add b
    ld b, $00
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    jr jr_0eb_6489

    add b
    ld c, b
    jr nc, jr_0eb_64cd

    ret nz

    ld c, b
    ld [hl], h
    ldh [$e0], a
    ld a, b
    ld [hl], h
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh [$e0], a
    ld b, b
    and b
    ldh [$c1], a
    ret nz

    jr nz, @-$0e

    or c
    ret nz

    jr nz, jr_0eb_659a

    ld a, [c]
    add b
    ld b, b
    push hl
    cp $80
    ld b, b
    rst $08
    db $fc
    add b
    ld b, b
    sbc a
    cp $80
    ld b, b
    ccf
    cp $00
    add b
    ld a, a
    rst $38
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_659a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld a, a
    rra
    rra
    inc bc
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    add c
    rst $38
    ccf
    ccf
    db $10
    cp $3e
    ccf
    dec sp
    rst $38
    inc a
    ccf
    ld a, a
    rst $30
    jr c, jr_0eb_6611

    rst $38
    rst $28
    ld de, $df1f
    rst $38
    inc bc
    rra
    sbc a
    rst $38
    rla
    rra
    sbc a
    rst $38
    ld a, [bc]
    rrca
    sbc a
    rst $38
    ld [$4f1f], sp
    rst $38
    inc c
    rra
    daa
    rst $38
    ld b, $0f
    db $10
    rst $38
    inc bc
    rlca
    rrca
    rst $38
    ld bc, $8303
    rst $38
    nop
    ld bc, $ffc7
    nop
    ld bc, $ff66
    nop
    inc bc
    jr c, @+$01

    inc bc
    inc bc
    inc b
    rst $38
    rlca
    rlca
    ret nz

    ldh a, [rIF]

jr_0eb_660d:
    rrca
    ldh [$e0], a
    rrca

jr_0eb_6611:
    rrca
    ret nz

    ret nz

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
    add b
    add b
    ld [bc], a
    nop
    add b
    add b
    ld b, $00
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    jr jr_0eb_6689

jr_0eb_6689:
    nop
    ld c, b
    jr nc, jr_0eb_660d

    add b
    ld c, b
    ld [hl], h
    ret nz

    ret nz

    ld a, b
    ld [hl], h
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$e0], a

jr_0eb_669a:
    ld [hl], b
    ret nc

    ldh [$e0], a
    ld b, b
    and b
    ret nz

    pop hl
    ret nz

    jr nz, @-$0e

    or c
    ret nz

    jr nz, jr_0eb_669a

    ld [hl], d
    add b
    ld b, b
    push hl
    cp $80
    ld b, b
    rst $08
    db $fc
    add b
    ld b, b
    sbc a
    cp $80
    ld b, b
    ccf
    cp $00
    add b
    ld a, a
    rst $38
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc bc
    nop
    nop
    ld a, b
    ld [hl], a
    nop
    nop
    db $fc
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $9e01
    rst $38
    nop
    ld bc, $ff3f
    nop
    nop
    rst $30
    ei
    nop
    nop
    rst $28
    rst $30
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    nop
    inc bc
    ccf
    nop
    nop
    rrca
    ld a, a
    ld bc, $8e01
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc a
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
    nop
    nop
    nop
    nop
    ldh a, [$f0]

jr_0eb_6972:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0eb_6972

    nop
    nop
    jr @-$06

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    nop
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
    ldh [$f8], a
    nop
    nop
    ldh [$d8], a
    ld b, b
    nop
    ret nz

    cp h
    ret nz

    add b
    ld sp, $60fd
    and b
    pop af
    db $fd
    and b
    ld h, b
    pop bc
    rst $38
    ld h, b
    sub b
    ld bc, $88ff
    ld hl, sp+$07
    db $fc
    ldh a, [$f0]
    ccf
    cp $f0
    ld [hl], b
    ld a, a
    cp $e0
    jr nz, @+$01

    cp $c0
    ld b, b
    rst $38
    cp $80
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0eb_6a84

    nop
    nop
    ld a, h
    cp h
    nop
    ld bc, $7efe
    ld bc, $be00
    ld h, a
    inc bc
    inc bc
    cp h
    jp $0103


    cp [hl]
    jp $0705


    cp a
    pop bc
    rlca
    rlca
    db $eb
    push de
    rlca
    rlca
    ret z

    rst $30
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    sbc b
    rst $38
    inc bc
    inc bc
    jr c, @+$01

    nop
    ld bc, $ff75
    nop
    ld bc, $fcef
    nop
    nop
    adc $f1
    nop
    nop
    add hl, sp
    ld l, a
    nop
    nop
    ld a, [hl]
    ld l, l
    nop
    nop
    ld a, [hl]
    ld [hl], a
    nop
    nop
    ld a, a
    ld a, e

jr_0eb_6a84:
    nop
    nop
    ccf
    dec a
    nop
    nop
    ld e, $1f
    nop
    nop
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
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
    inc b
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    ld h, b
    ld hl, sp+$00
    nop
    or b
    ld hl, sp+$00
    nop
    ld c, b
    ldh a, [$f8]
    ld hl, sp+$3c
    di
    inc a
    db $fc
    ld e, $ff
    inc e
    db $fc
    set 7, a
    inc c
    db $fc
    ld h, l
    rst $38
    adc b
    ld hl, sp-$5e
    ld a, a
    adc b
    ld hl, sp+$61
    cp a
    ret nz

    ldh [$c1], a
    ld a, $d8
    ld a, b
    ret c

    ld a, a
    db $fc
    inc c
    cp e
    ld a, h
    db $fc
    ld c, $70
    rst $38
    xor $1c
    db $e3
    cp $da
    inc a
    rst $00
    rst $38
    call c, $8fe2
    rst $38
    ld hl, sp-$1c
    rra
    ccf
    ldh [$f8], a
    rrca
    rrca
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    nop
    nop
    cp [hl]
    rst $00
    rlca
    rlca
    rst $18
    db $e3
    rrca
    rrca
    jp hl


    push af
    rrca
    rrca
    ldh a, [$f8]
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    inc e
    rst $38
    ld b, $07
    ccf
    ei
    nop
    inc bc
    ld a, a
    rst $30
    nop
    inc bc
    rst $28
    rst $38
    ld bc, $cf03
    rst $38
    ld bc, $8f07
    rst $38
    nop
    rrca
    ld h, a
    rst $38
    ld [$330f], sp
    rst $38
    jr jr_0eb_6d89

    jr @+$01

    jr c, jr_0eb_6dad

    inc c
    rst $38
    inc a
    ccf
    rlca
    sbc a
    ld a, [hl]
    ld a, a
    ld bc, $7c0f
    ld a, h
    inc bc
    rlca
    ld a, h
    ld a, h
    inc bc
    inc bc
    jr c, jr_0eb_6dba

    nop
    inc bc
    nop
    nop
    inc bc
    rlca
    nop

jr_0eb_6d89:
    nop
    ld b, $07
    nop
    nop
    ld b, $07
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

jr_0eb_6dad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_6dba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh [rP1], a
    nop
    ldh [$c0], a
    nop
    nop
    ret nz

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
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ld hl, sp-$22
    nop
    nop

jr_0eb_6e28:
    jr c, jr_0eb_6e28

    nop
    nop
    ld [hl], d
    cp $00
    nop
    db $e3
    rst $38
    add b
    add b
    rst $00
    rst $38
    add b
    add b
    adc a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    ld e, a
    cp a
    add b
    add b
    rst $28
    rra
    nop
    nop
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $000f
    nop
    scf
    jr c, jr_0eb_6eb1

jr_0eb_6eb1:
    nop
    ld a, e
    ld a, h
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    nop
    ld bc, $ff69
    ld bc, $2c01
    rst $38
    ld bc, $1601
    rst $38
    inc bc
    inc bc
    adc e
    rst $38
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    ld [c], a
    db $e3
    ld bc, $c101
    pop bc
    nop
    nop
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    nop
    ld h, b
    ldh a, [rP1]
    nop
    ldh a, [$60]
    nop
    nop
    ld h, b
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
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$78]
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
    cp $00
    nop
    db $fc
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    add b
    rst $38
    ei
    nop
    add b
    ld a, a
    rst $30
    nop
    add b
    ld c, $ff
    nop
    add b
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$01
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    db $e3
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    rst $18
    rst $38
    ret nz

    ret nz

    ld a, a
    cp a
    add b
    add b
    ld a, a
    sbc a
    nop
    nop
    ld a, $ce
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
    nop
    rlca
    ld bc, $c001
    rst $08
    inc bc
    inc bc
    ldh [rIE], a
    rlca
    rlca
    add $ff
    rrca
    rrca
    adc [hl]
    rst $38
    rrca
    rrca
    rra
    db $fd
    ld c, $0f
    ccf
    ei
    ld c, $0f
    ld [hl], a
    rst $38
    inc b
    rlca
    rst $20
    rst $38
    ld [bc], a
    inc bc
    rst $20
    rst $38
    ld bc, $b301
    rst $38
    nop
    nop
    ld e, c
    ld a, a
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld d, $1f
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc b
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr c, jr_0eb_70c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_70c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_70da:
    nop
    nop
    nop
    nop

jr_0eb_70de:
    nop
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
    jr nc, jr_0eb_70de

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, jr_0eb_70da

    nop
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    db $fc
    rst $28
    add b
    add b
    inc e
    rst $38
    ret nz

    ret nz

    add hl, sp
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh a, [$f0]
    rst $00
    rst $38
    ldh a, [$f0]
    adc a
    rst $38
    ldh a, [$f0]
    rlca
    add a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rrca
    inc bc
    inc bc
    ldh [rIE], a
    rrca
    rrca
    add $ff
    rra
    rra
    adc [hl]
    rst $38
    rra
    ccf
    rra
    db $fd
    ld e, $3f
    ccf
    ei
    ld e, $2f
    ld [hl], a
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc bc
    rra
    or e
    rst $38
    rla
    rra
    add hl, de
    ld a, a
    inc c
    inc c
    inc c
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $007f
    nop
    ld b, b
    ld a, a
    ld bc, $e001
    rst $38
    inc bc
    inc bc
    db $fc
    cp $03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
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

jr_0eb_725e:
    nop
    nop
    nop
    nop

jr_0eb_7262:
    nop
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
    jr nc, jr_0eb_7262

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, jr_0eb_725e

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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    jr nz, @+$12

    ld hl, sp-$08
    ld a, b
    jr c, @-$06

    db $fc
    ld [hl], h
    ld a, h
    ld hl, sp-$02
    jr z, jr_0eb_72f0

    ld hl, sp-$09
    inc a
    call z, $effc
    or b
    ret z

    inc e
    rst $38
    ret nc

    add sp, $39
    rst $38
    ldh [$f8], a
    pop af
    rst $38
    ldh a, [$f0]
    db $e3
    rst $38
    ld hl, sp-$08
    rst $00
    rst $38
    ld hl, sp-$08
    add a
    rst $30
    ldh a, [$f0]
    ld bc, $e081
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

jr_0eb_72f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    inc bc
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh [rIE], a
    rlca
    rra
    add $ff
    dec de
    rlca
    adc a
    cp $1d
    inc hl
    rra
    db $fd
    ld e, $21
    dec sp
    rst $38
    inc e
    inc hl
    ld [hl], e
    rst $38
    ld [hl+], a
    ccf
    di
    rst $38
    ld e, $1f
    db $d3
    rst $38
    inc c
    ld c, $19
    ld a, a
    nop
    nop
    inc c
    ccf
    nop
    nop
    ld b, $1f
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $000f
    nop
    nop
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    jr nz, jr_0eb_73c7

    nop
    nop
    ldh a, [rIE]
    ld bc, $fe01
    rst $38
    ld bc, $fc01
    db $fc
    ld bc, $f801
    ld hl, sp+$00
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

jr_0eb_73c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    jr nz, jr_0eb_7428

    ld hl, sp-$08
    ld a, b
    jr c, @-$06

    db $fc
    ld [hl], h
    ld a, h
    ld hl, sp-$02
    ld l, b
    ld [hl], h
    ld hl, sp-$02
    inc [hl]
    inc a

jr_0eb_7428:
    db $fc
    or $38
    ld e, b
    db $fd
    rst $28
    ld [hl], b
    adc b
    dec e
    rst $38
    or b
    ret z

    add hl, sp
    rst $38
    ret nc

    add sp, $71
    rst $38
    ldh [$f8], a
    db $e3
    rst $38
    ldh a, [$f0]
    rst $00
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    ldh [$e0], a
    rrca
    adc a
    ldh [$e0], a
    rlca
    rlca
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
    nop
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    add $ff
    rra
    rra
    adc [hl]
    rst $38
    rra
    ccf
    rra
    db $fd
    ld e, $3f
    ccf
    ei
    ld e, $2f
    ld [hl], a
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc bc
    rra
    or e
    rst $38
    rla
    rra
    ld e, c
    ld a, a
    inc c
    inc c
    inc l
    ccf
    nop
    nop
    ld d, $1f
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc b
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    jr c, jr_0eb_7540

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_7540:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$02
    db $10
    ld [$fff8], sp
    inc a
    inc e
    ld hl, sp-$01
    ld a, [hl-]
    ld a, $f8
    rst $30
    inc d
    ld a, [hl+]
    db $fc
    rst $28
    sbc [hl]
    and $1c
    rst $38
    ret c

    db $e4
    add hl, sp
    rst $38
    add sp, -$0c
    pop af
    rst $38
    ldh a, [$fc]
    db $e3
    rst $38
    ld hl, sp-$08
    rst $00
    rst $38
    ld hl, sp-$08
    add a
    rst $30
    ldh a, [$f0]
    ld bc, $e081
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    nop
    ld bc, $ff69
    ld bc, $2c01
    rst $38
    ld bc, $1601
    rst $38
    inc bc
    inc bc
    adc e
    rst $38
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    ld [c], a
    db $e3
    ld bc, $c101
    pop bc
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
    nop
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
    ldh [rP1], a
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    jr c, jr_0eb_774c

    db $fc
    db $fc
    ld l, h
    db $fc
    db $fc
    rst $38
    inc [hl]
    db $fc

jr_0eb_771c:
    db $fc
    rst $38
    inc d
    db $fc
    db $fc
    rst $38
    jr jr_0eb_771c

    rst $38
    ei
    db $10
    ldh a, [$7f]
    rst $30
    nop
    ldh [$0e], a
    rst $38
    nop
    ret nz

    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$01
    add b
    add b
    ld [hl], c
    rst $38
    ret nz

    ret nz

    db $e3
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    ld e, a
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop

jr_0eb_774c:
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0eb_77e7

    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    db $fd
    cp $00
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    nop
    ld bc, $ff69
    nop
    inc bc
    inc c

jr_0eb_77e7:
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld b, $07
    inc bc
    rst $38
    ld c, $0f
    ld bc, $0ff7
    rrca
    nop
    db $e3
    rra
    rra
    add b
    pop bc
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $0e01
    ld c, $01
    ld bc, $0000
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0eb_785a:
    nop
    nop
    nop
    nop
    nop
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
    ret nc

    or b
    nop
    nop
    or b
    ld a, b
    nop
    nop
    ld hl, sp+$30
    nop
    nop
    jr nc, jr_0eb_785a

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

jr_0eb_7888:
    nop
    ldh [rP1], a
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b

jr_0eb_7894:
    db $fc
    db $fc
    ret c

    ld hl, sp-$04
    rst $38
    ld l, b
    ld hl, sp-$04
    rst $38
    jr z, @-$06

    db $fc
    rst $38
    jr nc, jr_0eb_7894

    rst $38
    ei
    jr nz, jr_0eb_7888

    ld a, a
    rst $30
    nop
    ret nz

    ld c, $ff
    nop
    ret nz

    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$01
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    add a
    rst $38
    add b
    add b
    rst $18
    rst $38
    add b
    add b
    ld a, a
    cp a
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, $ce
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
