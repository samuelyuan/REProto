SECTION "ROM Bank $0e9", ROMX[$4000], BANK[$e9]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0007
    nop
    inc bc
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ccf
    ei
    nop
    nop
    rra
    db $fd
    ld bc, $8e01
    rst $38
    inc bc
    ld bc, $ffc6
    inc bc
    ld bc, $ffe2
    rlca
    inc bc
    ldh a, [rIE]
    rlca
    inc bc
    ei
    rst $38
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    ld bc, $f001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rlca
    inc bc
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    rst $00
    rst $38
    ldh a, [$f0]
    db $e3
    rst $38
    ldh a, [$e0]
    pop af
    rst $38
    ldh a, [$e0]
    cp b
    rst $38
    ldh [$c0], a
    call c, $40ff
    ret nz

    cp $ef
    ld b, b
    ret nz

    or $ff

jr_0e9_4116:
    ld b, b
    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld hl, sp-$01
    ret nz

    ret nz

    ld sp, hl
    rst $38
    ret nz

    ret nz

    di
    rst $38
    add b
    add b
    ldh [$f8], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0e9_4116

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0007
    nop
    inc bc
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, $00
    nop
    ld c, $7f
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    db $e3
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $fd01
    cp $00
    nop
    db $fd
    cp $00
    nop
    db $fd
    cp $00
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld bc, $003f
    nop
    inc hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ld hl, sp-$08
    ld h, e
    ld a, a
    ld hl, sp-$04
    ld [hl], c
    rst $38
    ld hl, sp-$04
    jr c, @+$01

    ldh a, [$fc]
    db $fc
    rst $38
    ld a, h
    ldh a, [$fe]
    rst $30
    inc a
    ldh [rIE], a
    ei
    ld [$fff4], sp
    rst $38
    ld hl, sp-$20
    rst $38
    rst $38
    ldh a, [$e0]
    rst $38
    cp $c0
    ldh [rIE], a
    db $fc
    ret nz

    ld b, b
    rst $38
    ld a, [$0000]
    ld [hl], a
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld a, b
    add b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ret nz

    jr nz, jr_0e9_42bf

jr_0e9_42bf:
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0e9_434c

    nop
    nop
    inc a
    ld a, $00
    nop
    inc a
    ccf
    nop
    nop
    jr jr_0e9_435f

    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $000f
    nop
    inc bc
    rrca

jr_0e9_434c:
    nop
    nop
    ld b, $1f
    nop
    nop
    inc c
    ccf
    nop
    nop
    add hl, de
    ld a, a
    nop
    nop
    db $d3
    rst $38
    inc bc
    inc bc
    di

jr_0e9_435f:
    rst $38
    rlca
    rlca
    ld [hl], e
    rst $38
    rlca
    inc b
    dec sp
    rst $38
    rlca
    add hl, bc
    rra
    db $fd
    rlca
    dec bc
    adc a
    cp $03
    rlca
    add $ff
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh a, [$f7]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh [$e0], a
    add hl, sp
    rst $38
    ret nz

    ldh a, [rNR32]
    rst $38
    and b
    ret nc

    db $fd
    rst $28
    ld h, b
    sub b
    db $fc
    rst $30
    ld a, b
    sbc b
    ld hl, sp-$02
    ld d, b
    xor b
    ld hl, sp-$02
    add sp, -$08
    ld hl, sp-$04
    ldh a, [rSVBK]
    ld hl, sp-$08
    ld b, b
    jr nz, @-$0e

    ld hl, sp+$00
    nop
    ldh [$f0], a
    nop
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
    jr jr_0e9_44d0

    nop
    nop
    dec a
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    db $10
    rra
    nop
    nop
    ld bc, $000f
    nop
    inc bc
    rrca
    nop
    nop
    ld b, $1f

jr_0e9_44d0:
    nop
    nop
    inc c
    ccf
    nop
    nop
    add hl, de
    ld a, a
    nop
    nop
    db $d3
    rst $38
    nop
    ld bc, $fff3
    nop
    ld bc, $ff73
    nop
    inc bc
    dec sp
    rst $38
    ld bc, $1f03
    db $fd
    inc bc
    rlca
    adc a
    cp $03
    rlca
    add $ff
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$f0], a
    pop af
    rst $38
    ldh [$f0], a
    jr c, @+$01

    ret nz

    ldh [rNR32], a
    rst $38
    nop
    ret nz

    cp $ef
    nop
    add b
    db $fc
    rst $30
    nop
    add b
    ld hl, sp-$01
    nop
    add b
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    add b
    add b
    ld bc, $c101
    pop bc
    inc bc
    inc bc
    ld [c], a
    db $e3
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    adc e
    rst $38
    ld bc, $1601
    rst $38
    ld bc, $2c01
    rst $38
    nop
    ld bc, $ff69
    nop
    nop
    ld a, c
    rst $38
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    scf
    jr c, jr_0e9_4695

jr_0e9_4695:
    nop
    ld bc, $000f
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
    inc a
    nop
    nop
    ld a, $ce
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, a
    cp a
    nop
    nop
    rst $18
    rst $38
    add b
    add b

jr_0e9_46fc:
    add a
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    sbc h
    rst $38
    nop
    add b

jr_0e9_4710:
    ld c, $ff
    nop
    ret nz

    ld a, a
    rst $30
    nop
    ret nz

    rst $38
    ei
    jr nz, jr_0e9_46fc

jr_0e9_471c:
    db $fc
    rst $38
    jr nc, jr_0e9_4710

    db $fc
    rst $38
    jr z, jr_0e9_471c

    db $fc
    rst $38
    ld l, b
    ld hl, sp-$04
    db $fc
    ret c

    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    ldh a, [rSVBK]
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
    ld h, b
    ret nz

    nop
    nop
    ldh a, [$60]
    nop
    nop
    ld h, b
    ldh a, [rP1]
    nop
    and b
    ld h, b
    nop
    nop
    ld b, b
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    rlca
    nop
    nop
    nop
    inc bc
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
    add b
    pop bc
    rrca
    rrca
    nop
    db $e3
    ld c, $0f
    ld bc, $06f7
    rlca
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    nop
    inc bc
    inc c
    rst $38
    nop
    ld bc, $ff69
    nop
    nop
    ld a, c
    rst $38
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    db $fd
    cp $00
    nop
    ld a, e
    ld a, h
    nop
    nop
    scf
    jr c, jr_0e9_4815

jr_0e9_4815:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$08]
    nop
    nop
    ldh a, [$0c]
    nop
    nop
    xor $1e
    nop
    nop
    ld e, a
    cp a
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ccf
    ccf

jr_0e9_487a:
    add b
    add b
    ld b, a
    ld a, a
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    sbc h
    rst $38
    nop
    add b
    ld c, $ff
    nop
    ret nz

    ld a, a
    rst $30
    nop
    ldh [rIE], a
    ei
    db $10
    ldh a, [$fc]
    rst $38
    jr @-$06

    db $fc
    rst $38
    inc d
    db $fc
    db $fc
    rst $38
    inc [hl]
    db $fc
    db $fc
    db $fc
    ld l, h
    db $fc
    ld hl, sp-$08
    jr c, jr_0e9_48e8

    ldh a, [rSVBK]
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
    jr c, jr_0e9_487a

    nop
    nop
    db $fc
    ld a, b
    nop
    nop
    ret c

    db $fc
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, b
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

jr_0e9_48e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    rlca
    ld b, $06
    ld bc, $0f0f
    rrca
    rlca
    sbc a
    rrca
    rrca
    inc c
    rst $38
    ld b, $07
    jr @+$01

    nop
    rlca
    inc sp
    rst $38
    nop
    inc bc
    ld h, a
    rst $38
    inc bc
    inc bc
    rst $08
    rst $38
    ld bc, $cf03
    rst $38
    nop
    inc bc
    rst $28
    rst $38
    nop
    inc bc
    ld a, a
    rst $30
    ld b, $07
    ccf
    ei
    rrca
    rrca
    inc e
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    add sp, -$04
    rrca
    rrca
    pop af
    rst $38
    rrca
    rrca
    rst $28
    pop af
    rlca
    rlca
    db $dd
    db $e3
    nop
    nop
    ld b, $3d
    nop
    nop
    dec b
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
    jr nc, jr_0e9_49f3

jr_0e9_49f3:
    nop
    rst $30
    rst $08
    nop
    nop
    rst $38
    sbc a
    add b
    add b
    rst $38
    cp a
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    adc a
    rst $38
    ret nz

    ret nz

    rst $00
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], d
    cp $00
    nop
    jr c, @+$01

    nop
    nop
    ld hl, sp-$21
    nop
    nop
    ldh a, [$ef]
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

    ldh [rP1], a
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
    add b
    nop
    nop
    nop
    ret nz

    add b
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $070f
    rlca
    add a
    sbc a
    rlca
    rlca
    inc c
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

    nop
    inc bc
    inc sp
    rst $38
    inc bc
    inc bc
    ld h, a
    rst $38
    inc bc
    inc bc
    rst $08
    rst $38
    ld bc, $cf03
    rst $38
    nop
    inc bc
    rst $28
    rst $38
    nop
    inc bc
    ld a, a
    rst $30
    ld b, $07
    ccf
    ei
    rrca
    rrca
    inc e
    rst $38
    rrca
    rrca
    adc b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ldh [$fe], a
    rrca
    rrca
    ldh [$f0], a
    rlca
    rlca
    ret nz

    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    rra
    ld a, a
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    adc a
    rst $38
    ret nz

    ret nz

    rst $00
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], d
    cp $00
    nop

jr_0e9_4b94:
    jr c, jr_0e9_4b94

    nop
    nop
    ld hl, sp-$22
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0e9_4c74

    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc b
    rra
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld d, $1f
    inc c
    inc c
    inc l
    ccf
    rla
    rra
    ld e, c
    ld a, a
    inc bc
    rra
    or e
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld e, $2f
    ld [hl], a
    rst $38
    ld e, $3f
    ccf
    ei

jr_0e9_4c74:
    rra
    ccf
    rra
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rrca
    rrca
    add $ff
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e081
    ldh [$87], a
    rst $30
    ldh a, [$f0]
    rst $00
    rst $38
    ld hl, sp-$08
    db $e3
    rst $38
    ld hl, sp-$08
    pop af
    rst $38
    ldh a, [$fc]
    add hl, sp
    rst $38
    add sp, -$0c
    inc e
    rst $38
    ret c

    db $e4
    db $fc
    rst $28
    sbc [hl]
    and $f8
    rst $30

jr_0e9_4d22:
    inc d
    ld a, [hl+]
    ld hl, sp-$02
    ld a, [hl-]
    ld a, $f8
    db $fc
    inc a
    inc e
    ld hl, sp-$08
    db $10
    ld [$f0f0], sp
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

jr_0e9_4d3e:
    nop
    nop
    jr nz, jr_0e9_4d22

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0e9_4d3e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    cp $01
    ld bc, $ffe0
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld bc, $007f
    nop
    ld bc, $003f
    nop
    nop
    rra
    nop
    nop
    inc bc
    rrca
    jr nc, jr_0e9_4e0e

    ld b, $1f
    ld a, b
    ld a, h
    inc c
    ccf
    adc b
    db $fc
    add hl, de
    ld a, a
    ld [hl], b
    adc b
    or e
    rst $38
    ld a, c
    add l
    rst $20
    rst $38
    db $76
    adc a
    rst $20
    rst $38
    ld l, [hl]
    rra
    ld [hl], a
    rst $38
    ld e, $7f
    ccf
    ei
    rra
    ccf
    rra
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rrca
    rrca
    add $ff
    inc bc
    inc bc
    ldh [rIE], a
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

jr_0e9_4e0e:
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
    ld bc, $e081
    ldh [$87], a
    rst $30
    ldh a, [$f0]
    rst $00
    rst $38
    ld hl, sp-$08
    db $e3
    rst $38
    ld hl, sp-$08
    pop af
    rst $38
    ldh a, [$fc]
    add hl, sp
    rst $38
    add sp, -$0c
    inc e
    rst $38
    ret c

    db $e4
    db $fc
    rst $28
    cp b
    call nz, $f7f8
    inc e
    inc l
    ld hl, sp-$02

jr_0e9_4ea6:
    ld a, [de]
    ld e, $f8
    db $fc
    inc [hl]
    ld a, [hl-]
    ld hl, sp-$08
    ld a, [hl-]
    ld a, $f0
    ldh a, [$3c]
    inc e
    ldh [$e0], a
    db $10
    ld [$c000], sp
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0e9_4ea6

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, @-$0e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0e9_4f5e

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
    ld a, $3e
    nop
    ld bc, $3f3e
    ld bc, $3c83
    ccf
    inc bc
    rst $20
    inc e
    rra

jr_0e9_4f5e:
    ld b, $ff
    ld [$0c0f], sp
    rst $38
    nop
    inc bc
    jr @+$01

    nop
    ld bc, $ff30
    nop
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    ld a, a
    nop
    nop
    ld e, d
    ld a, a
    nop
    nop
    ld e, $7f
    nop
    nop
    ld c, $7f
    nop
    nop
    rst $00
    rst $38
    ld bc, $e301
    rst $38
    ld bc, $f101
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    ei
    db $fc
    nop
    nop
    ld l, a
    ld [hl], b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    rla
    rst $18
    ld hl, sp-$08
    db $e3
    rst $38
    ld hl, sp-$08
    sub c
    rst $38
    ld hl, sp-$08
    jr c, @+$01

    ld hl, sp-$08

jr_0e9_501c:
    inc e
    rst $38
    ld a, b
    ld hl, sp+$3e
    rst $38
    jr nc, jr_0e9_501c

    ld b, a
    rst $38
    nop
    db $fc
    sbc e
    rst $20
    add b
    db $fc
    dec a
    rst $18
    jp nz, Jump_0e9_7ffe

    cp [hl]
    add d
    cp $ff
    ld a, a
    ld b, $fe
    rst $38
    ld a, a
    adc [hl]
    cp $ff
    rst $38
    cp h
    cp h
    ld a, a
    rst $38
    sbc b
    sbc b
    rst $38
    cp a
    nop
    nop
    cp $de
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ret nc

    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [rSVBK], a
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    nop
    jr nc, jr_0e9_5067

jr_0e9_5067:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rrca
    rst $38
    jr jr_0e9_50fd

    ld a, a
    rst $38
    ld [$7f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld e, $1f
    rra
    rst $38
    ld e, $1f
    ld e, $ff
    rra
    rra
    rrca
    rst $38
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_50fd:
    rra
    ret nz

    cp $0f
    rrca
    rst $00
    rst $38
    rlca
    rlca
    xor h
    rst $18
    ld bc, $e002
    rra
    nop
    ld bc, $3ecd
    nop
    nop
    ld e, $ef
    nop
    nop
    ld h, $5f
    nop
    nop
    ccf
    rrca
    nop
    nop
    rra
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
    ldh a, [$f0]
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38
    db $fc
    db $fc
    call c, $fcff
    db $fc
    db $ec
    rst $18
    cp $fe
    or $cf
    ld a, [hl]
    cp $76
    adc a
    ld a, [hl]
    cp $76
    adc a
    ld e, b
    db $e4
    or b
    rst $08
    adc b
    db $f4
    db $e3
    rst $18
    ld [hl], b
    adc h
    call nz, $f23f
    ld c, $01
    ld [c], a
    db $e3
    rra
    inc bc
    add h
    rst $00
    ccf
    add hl, bc
    ld c, $9f
    ld e, a
    rra
    rra
    ld e, $9e
    sbc a
    rst $38
    inc c
    inc c
    ld a, [hl]
    sbc $00
    nop
    inc l
    db $fc
    nop
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rrca
    rst $38
    jr jr_0e9_527d

    ld a, a
    rst $38
    ld [$7f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld e, $1f
    rra
    rst $38
    ld e, $1f
    rra
    rst $38
    rra
    rra
    ld c, $ff
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_527d:
    rra
    ret nz

    cp $0f
    rrca
    ret nz

    ld hl, sp+$07
    rlca
    ret nz

    and b
    inc bc
    inc b
    ret nz

    jr nz, jr_0e9_5290

    nop
    add c
    ld [hl], c

jr_0e9_5290:
    ld bc, $bf02
    ld b, d
    nop
    ld bc, $877a
    nop
    nop
    ld a, e
    add a
    nop
    nop
    ld a, a
    inc bc
    nop
    nop
    dec de
    rlca
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
    ldh a, [$f0]
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38
    db $fc
    db $fc
    ld a, h
    sbc a
    db $fc
    db $fc
    call c, $feef
    cp $f6
    rst $28
    ld a, [hl]
    cp $f6
    rst $28
    ld a, d
    cp $e6
    rst $38
    ld [hl], h
    ld a, [$efd0]
    db $ec
    ld a, [c]
    db $e3
    rst $18
    inc c
    ld a, [c]
    call nz, Call_0e9_6ebf
    sub d
    nop
    pop hl
    rst $38
    inc bc
    ld bc, $fb80
    rlca
    rlca
    nop
    rst $30
    rrca
    dec bc
    inc c
    adc $1e
    inc c
    rra
    adc h
    adc h
    rrca
    ld a, a
    nop
    nop
    ld a, [hl]
    adc $00
    nop
    inc h
    db $fc
    nop
    nop
    ld e, b
    cp b
    nop
    nop
    ld l, b
    sbc b
    nop
    nop
    or h
    call z, RST_00
    call c, Call_000_00e4
    nop
    add sp, -$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rrca
    rst $38
    jr jr_0e9_53fd

    ld a, a
    rst $38
    ld [$7f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld e, $1f
    rra
    rst $38
    ld e, $1f
    rra
    rst $38
    rra
    rra
    ld c, $ff
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_53fd:
    rra
    ret nz

    cp $0f
    rrca
    ret nz

    ld hl, sp+$07
    rlca
    ldh [$90], a
    ld bc, $f002
    nop
    ld bc, $f000
    ld [$0100], sp
    ldh [rNR32], a
    nop
    nop
    ld e, $e0
    nop
    nop
    ld a, $41
    nop
    nop
    rra
    ld hl, $0000
    rra
    inc bc
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38
    db $fc
    db $fc
    ld a, h
    sbc a
    db $fc
    db $fc
    call c, $feef
    cp $f6
    rst $28
    ld a, [hl]
    cp $f6
    rst $28
    ld a, d
    cp $e6
    rst $38
    ld [hl], h
    ld hl, sp-$30
    rst $28
    db $ec
    ldh a, [$e3]
    rst $18
    inc e
    ldh [$c4], a
    cp a
    ld a, [hl-]
    add $00
    db $e3
    ccf
    rst $00
    nop
    add c
    ld [hl], a
    adc a
    nop
    ld bc, $8f7f
    nop
    nop
    cp $0e
    nop
    ld bc, $1cec
    ld bc, $c000
    jr nz, jr_0e9_54d0

    inc bc
    add b
    ret nz

jr_0e9_54d0:
    inc bc
    rla
    ret nz

    ret nz

    ld e, a
    ld [hl], a
    add b
    add b
    res 7, a
    nop
    nop
    add [hl]
    cp $00
    nop
    jp nc, Jump_000_00ee

    nop
    jp hl


    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $000f
    nop
    rlca
    rrca
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    cpl
    db $fd
    nop
    nop
    ld c, e
    rst $38
    ld bc, $8901
    rst $38
    nop
    inc bc
    rst $08
    db $fd
    nop
    inc bc
    rst $00
    cp $06
    rlca
    db $e3
    rst $38
    inc c
    rrca
    ld [hl], b
    rst $38
    rrca
    rrca
    db $10
    rst $38
    rra
    rra
    sub b
    rst $38
    rra
    ccf
    ret nz

    cp $5f
    ld a, a
    ld [c], a
    cp $c7
    rst $38
    rst $28
    rst $38
    jp $ffff


    rst $00
    ld b, c
    rst $38
    rst $38
    add a
    db $ec
    rst $38
    ld a, [bc]
    ld a, [$3f3f]
    nop
    nop
    ccf
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    adc a
    rst $38
    ld b, b
    add b
    rst $00
    rst $38
    ld h, b
    add b
    cp $ff
    ret nz

    jr nc, jr_0e9_5687

    rst $38
    ldh [rNR10], a
    rst $38
    rst $38
    db $fc
    inc e
    cp $ff
    db $fc
    cp [hl]
    cp $ff
    ld a, [hl]
    ld sp, hl
    cp $ff
    sbc $d0
    rst $38
    db $fd
    call nz, $ffc0
    ei
    add b
    add b
    rst $30
    rst $38
    nop
    nop
    inc b
    call nz, RST_00
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
    add b
    nop
    nop
    nop
    add b
    add b
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

jr_0e9_5687:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $000f
    nop
    dec bc
    ccf
    nop
    nop
    ld d, d
    ld a, a
    nop
    nop
    ld h, d
    rst $38
    nop
    nop
    ld [hl-], a
    rst $38
    ld bc, $7301
    rst $38
    inc bc
    inc bc
    cp c
    rst $38
    rlca
    rlca
    inc e
    rst $38
    rlca
    rrca
    adc b
    rst $38
    rlca
    rra
    ret z

    rst $38
    daa
    ccf
    ldh [rIE], a
    scf
    ccf
    ldh a, [$fc]
    inc hl
    ccf
    ldh [$f8], a
    jr nc, jr_0e9_573d

    rst $38
    adc $1e
    rra
    ld a, a
    adc [hl]
    ld e, $1e
    ld a, $4e
    dec e
    rra
    rra
    inc e
    rrca
    rrca
    adc d
    adc b
    rlca
    rlca
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

jr_0e9_573d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc hl
    cpl
    ret nz

    ret nz

    ld [hl], c
    rst $38
    ret nz

    ldh [$f9], a
    rst $38
    ldh a, [$c0]
    rst $18
    rst $38
    sub b
    ldh [rIE], a
    ccf
    ldh a, [$88]
    rst $38
    ld a, a
    ld hl, sp-$40
    ld a, a
    rst $38
    cp [hl]
    xor $ff
    rst $38
    sbc [hl]
    cp $ff
    ld a, a
    ld a, h
    cp $ff
    cp [hl]
    db $fc
    ld a, [$fffd]
    adc $c0
    ld [bc], a
    ld [c], a
    adc b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    rra
    rra
    add a
    add a
    ld e, $1f
    rrca
    cp a
    inc e
    rra
    rra
    rst $38
    jr @+$21

    ld a, a
    rst $38
    ld [$7f0f], sp
    rst $38
    ld [$3f0f], sp
    cp $08
    rrca
    dec a
    rst $20
    ld e, $1f
    dec de
    push af
    ld e, $1f
    inc e
    rst $38
    rra
    rra
    inc c
    rst $38
    rra
    rra
    add b
    rst $38
    jr jr_0e9_589d

    ret z

    ld a, [$0807]
    ld [hl], h
    db $fc
    inc bc
    inc b
    ld [$0076], a
    inc bc
    push af
    ei
    nop
    nop
    ld a, [$00fd]
    nop
    ld a, l
    halt
    nop
    ld [hl], $3b
    nop
    nop
    ld de, $0019

jr_0e9_589d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    ld hl, sp-$41
    db $fc
    db $fc
    db $fc
    rst $18
    db $fc
    db $fc
    db $ec
    rst $38
    cp $fe
    or [hl]
    rst $08
    ld l, [hl]
    cp $f6
    ld l, a
    ld [hl], d
    xor $f6
    rst $08
    ld e, b
    db $e4
    ldh [$9f], a
    cp b
    call nz, $3fc0
    ld a, b
    add h
    nop
    rst $38
    ld a, [c]
    ld c, $01
    ld [c], a
    db $e3
    rra
    inc bc
    add h
    jp $0b3f


    inc c
    rlca
    rst $38
    rra
    rra
    cp [hl]
    cp [hl]
    cpl
    ld e, a
    inc e
    inc e
    xor [hl]
    sbc $00
    nop
    call c, Call_000_00fc
    nop
    ld a, b
    ld hl, sp+$00
    nop
    and b
    ld h, b
    nop
    nop
    ld d, b
    or b
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0e9_5996

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_5996:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rlca
    rst $38
    jr jr_0e9_59fd

    ld l, a
    rst $38
    ld [$6f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$370f], sp
    rst $38
    ld e, $1f
    rra
    ei
    ld e, $1f
    dec e
    rst $38
    rra
    rra
    inc c
    rst $38
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_59fd:
    rra
    ret nz

    cp $0f
    rrca
    jp nz, $07fe

    rlca
    or l
    db $db
    ld bc, $ea02
    dec e
    nop
    ld bc, $1eed
    nop
    nop
    ld e, $7f
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec e
    ld e, $00
    nop
    ld b, $07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38

jr_0e9_5a92:
    db $fc
    db $fc
    db $fc
    rst $18
    db $fc
    db $fc
    db $fc
    rst $28
    cp $fe
    or $ff
    ld a, [hl]
    cp $f6
    rst $38
    ld a, d
    cp $f6
    rst $38
    ld [hl], h
    ld a, [$fff0]
    db $ec
    ld a, [c]
    db $e3
    rst $38
    inc c
    ld a, [c]
    call nz, Call_000_2eff
    jp nc, $e700

    ld a, a
    add e
    nop
    add c
    ld a, e
    add a
    nop
    ld bc, $0ff7
    ld [bc], a
    inc bc
    adc $2e
    ld [bc], a
    inc bc
    inc c
    call z, $8787
    add b
    add b
    ld b, a
    rst $18
    nop
    nop
    xor a
    ld [hl], a
    nop
    nop
    ld d, a
    cp a
    nop
    nop
    xor [hl]
    sbc $00
    nop
    call nc, Call_000_006c
    nop
    jr z, jr_0e9_5a92

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    ld bc, $1cff
    rra
    inc bc
    rst $38
    jr jr_0e9_5b7d

    ld h, a
    rst $38
    ld [$6f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$370f], sp
    rst $38
    inc e
    rra
    rra
    ei
    ld e, $1f
    rra
    db $fd
    rra
    rra
    inc c
    rst $38
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_5b7d:
    ld e, $04
    cp $03
    inc c
    call nz, $077c
    nop
    ld [c], a
    cp $01
    ld bc, $fbf5
    nop
    nop
    ld a, [$00fd]
    nop
    ld a, l
    halt
    nop
    ld h, $3b
    nop
    nop
    ld de, $0019
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    jr c, @+$01

    db $fc
    db $fc
    call c, $fcff
    db $fc
    db $fc
    rst $28
    cp $fe
    or $ff
    ld a, [hl]
    cp $f6
    rst $38
    ld a, d
    xor $f6
    rst $38
    ld h, b
    call c, $fff0
    ldh a, [$8c]
    db $e3
    rst $38
    ldh [rNR32], a
    call nz, $a2ff
    ld e, [hl]
    inc bc
    ldh [$c3], a
    ccf
    rlca
    add b
    jp $0b3f


    inc c
    add a
    ccf
    rra
    rra
    ld c, $0e
    ld e, $7e
    inc c
    inc c
    inc a
    ld e, h
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    and b
    ld h, b
    nop
    nop
    ld d, b
    or b
    nop
    nop
    and b
    ret nc

    nop
    nop
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    ld bc, $0701
    rlca
    nop
    ld bc, $0f0f
    add b
    add c
    rrca
    rrca
    add b
    add c
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    ret nz

    ld hl, sp+$07
    rlca
    add b
    db $fc
    rlca
    rlca
    nop
    cp $03
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    dec b
    ccf
    nop
    nop
    rrca
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
    ld de, $001f
    nop
    jr c, jr_0e9_5d4b

    nop
    nop
    inc a
    rra
    nop
    nop
    ld a, $1f
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    inc e
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

jr_0e9_5d4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    add b
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$3c
    inc c
    nop
    db $fc
    ld a, [hl]
    ld a, $00
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld c, $7f
    ccf
    cp $0f
    ccf
    rra
    cp $1b
    ld a, a
    adc [hl]
    db $fc
    dec a
    rst $38
    ret nz

    ld hl, sp+$7f
    cp $e0
    ld hl, sp-$01
    rst $38
    ld h, b
    ld hl, sp-$01
    rst $38
    add b
    ld hl, sp+$7f
    rst $38
    add b
    ldh a, [$7f]
    rst $38
    add b
    ldh [rIE], a
    cp a
    nop
    ret nz

    cp $df
    nop
    add b
    db $ec
    rst $38
    nop
    nop
    ld h, b
    cp $00
    nop
    jr nz, @-$02

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    add b
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
    ld bc, $0001
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    rrca
    nop
    nop
    nop
    ccf
    nop
    nop
    ret nz

    rst $38
    nop
    ld bc, $ffe7
    nop
    inc bc
    ld l, a
    rst $38
    ld c, $0f
    ld l, a
    rst $38
    ld e, $1f
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    ccf
    ccf
    ccf
    rst $38
    ccf
    ccf
    ccf
    rst $38
    ccf
    ccf
    rlca
    rst $38
    ccf
    rra
    add b
    db $fc
    inc e
    inc bc
    nop
    db $fc
    nop
    inc bc
    nop
    db $fc
    ld [bc], a
    inc bc
    nop
    ld hl, sp+$03
    inc bc
    ld [$01f8], sp
    ld bc, $f8f8
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
    add a
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld sp, $f8ff
    ld hl, sp+$30
    rst $38
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    jr @+$01

    cp $fc
    call z, Call_0e9_7eff
    db $fc
    db $ec
    rst $38
    ld a, [hl]
    ld hl, sp-$14
    rst $38
    ld a, [hl]
    ldh a, [$fc]
    rst $28
    ld a, $c2
    ldh a, [$ef]
    ld a, $be
    ldh [$fe], a
    inc a
    inc a
    ldh [$f0], a
    ld a, h
    inc a
    ret nz

    ret nz

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
    rrca
    rrca
    nop
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rlca
    rst $38
    jr jr_0e9_5ff9

    ld l, a
    rst $38
    ld [$6f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$370f], sp
    rst $38
    ld e, $1f
    rra
    ei
    ld e, $1f
    dec e
    rst $38
    rra
    rra
    inc c
    rst $38
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_5ff9:
    rra
    ret nz

    cp $0f
    rrca
    ret nz

    ld hl, sp+$07
    rlca
    and b
    ret nz

    ld bc, $dc02
    inc a
    nop
    ld bc, $7fbf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    inc b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38
    db $fc
    db $fc
    db $fc
    rst $18
    db $fc
    db $fc
    db $fc
    rst $28
    cp $fe
    or $ff
    ld a, [hl]
    cp $f6
    rst $38
    ld a, d
    cp $f6
    rst $38
    ld [hl], h
    ld a, [$fff0]
    db $ec
    ld a, [c]
    db $e3
    rst $38
    inc c
    ld a, [c]
    call nz, $6eff
    sub d
    nop
    rst $20
    rst $38
    inc bc
    ld bc, $fb81
    add a
    inc bc
    inc bc
    rst $30
    rst $08
    rlca
    dec bc
    xor $fe
    dec c
    inc de
    call z, Call_000_1dcc
    inc bc
    add b
    add b
    adc a
    sub e
    nop
    nop
    add $c6
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    ld bc, $1f1f
    add b
    add a
    ld e, $1f
    inc bc
    cp a
    inc e
    rra
    rlca
    rst $38
    jr jr_0e9_6179

    ld l, a
    rst $38
    ld [$6f0f], sp
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$370f], sp
    rst $38
    ld e, $1f
    rra
    ei
    ld e, $1f
    dec e
    rst $38
    rra
    rra
    inc c
    rst $38
    rra
    rra
    add b
    rst $38
    rra

jr_0e9_6179:
    rra
    ret nz

    cp $0f
    rrca
    ret nz

    ld hl, sp+$07
    rlca
    and b
    ret nz

    ld bc, $dc02
    inc a
    nop
    ld bc, $7fbf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    dec e
    ld e, $00
    nop
    dec c
    ld c, $00
    nop
    inc b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, $f87f
    ld hl, sp+$31
    rst $38
    db $fc
    db $fc
    cp b
    rst $38
    db $fc
    db $fc
    db $fc
    rst $18
    db $fc
    db $fc
    db $fc
    rst $28
    cp $fe
    or $ff
    ld a, [hl]
    cp $f6
    rst $38
    ld a, d
    cp $f6
    rst $38
    ld [hl], h
    ld a, [$fff0]
    db $ec
    ld a, [c]
    db $e3
    rst $38
    inc c
    ld a, [c]
    call nz, $6eff
    sub d
    nop
    rst $20
    rst $38
    inc bc
    ld bc, $fb81
    add a
    inc bc
    inc bc
    rst $30
    rst $08
    rlca
    dec bc
    xor $fe
    dec c
    inc de
    call z, Call_000_1dcc
    inc bc
    add b
    add b
    adc a
    sub e
    nop
    nop
    add $c6
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
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
    inc bc
    inc c
    inc c
    inc bc
    rlca
    ld e, $1e
    ld b, $0f
    rra
    rra
    inc c
    sbc a
    rra
    rra
    jr @+$01

    ld e, $1f
    jr nc, @+$01

    ld c, $0f
    ld h, c
    rst $38
    inc b
    rlca
    jp nz, Jump_000_00ff

    inc bc
    add h
    rst $38
    nop
    ld bc, $ff89
    ld bc, $6b01
    rst $38
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff39
    inc bc
    inc bc
    sbc l
    cp $03
    inc bc
    rst $08
    rst $38
    inc bc
    inc bc
    rst $20
    rst $38
    inc bc
    inc bc
    di
    rst $38
    inc bc
    inc bc
    ld hl, sp-$04
    ld bc, $fc01
    db $fc
    ld bc, $f801
    or $01
    ld bc, $c1fe
    nop
    nop
    rra
    ldh [rP1], a
    nop
    ld bc, $001e
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
    rrca
    rrca
    ret nz

    ret nz

    ld e, a
    ld a, a
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld b, a
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$e0], a
    ld [hl], c
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    ret nz

    ldh [rNR32], a
    rst $38
    nop
    ldh a, [$7e]
    rst $38
    nop
    ldh a, [rIE]
    ei
    ld [$fcf8], sp
    rst $38
    ld [$faf8], sp
    db $fd
    jr @-$06

    cp $f7
    jr c, @-$06

    cp $ec
    ldh a, [$f0]
    sbc $f8
    ld h, b
    ld h, b
    db $fc
    ld d, b
    nop
    nop

jr_0e9_63ac:
    cp b
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
    add b
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    cp $3c
    nop
    nop
    jr c, jr_0e9_63ac

    nop
    nop
    jr c, jr_0e9_6411

    nop
    nop
    ld c, $01
    add b
    nop
    nop
    inc c
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_6411:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc c
    inc bc
    rlca
    ld e, $1e
    ld b, $0f
    rra
    rra
    inc c
    sbc a
    rra
    rra
    jr @+$01

    ld e, $1f
    jr nc, @+$01

    ld c, $0f
    ld h, c
    rst $38
    inc b
    rlca
    jp nz, Jump_000_00ff

    inc bc
    add h
    rst $38
    nop
    ld bc, $fe89
    ld bc, $6b01
    db $fd
    nop
    ld bc, $fd7b
    nop
    ld bc, $ff3b
    inc bc
    inc bc
    sbc l
    rst $38
    inc bc
    inc bc
    rst $08
    cp $03
    inc bc
    rst $20
    rst $38
    inc bc
    inc bc
    di
    rst $38
    inc bc
    inc bc
    ld hl, sp-$04
    ld bc, $fc01
    db $fc
    ld bc, $f801
    or $01
    ld bc, $c1fe
    nop
    nop
    rra
    ldh [rP1], a
    nop
    ld bc, $001e
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
    rrca
    rrca
    ret nz

    ret nz

    ld e, a
    ld a, a
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld b, a
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$e0], a
    ld [hl], c
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    ret nz

    ldh [rNR32], a
    rst $38
    nop
    ldh a, [$6e]
    sbc a
    nop
    ldh a, [$f7]
    ld a, a
    ld [$fef8], sp
    ei
    ld [$fcf8], sp
    rst $38
    jr @-$06

    cp $ff
    jr c, @-$06

    cp $fe
    ldh a, [$f0]
    cp $fe
    ld h, b
    ld h, b
    db $fc
    db $fc
    nop
    nop

jr_0e9_652c:
    ld hl, sp+$78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ld [hl], b
    nop
    nop
    cp $3c
    nop
    nop
    jr c, jr_0e9_652c

    nop
    nop
    jr c, jr_0e9_6591

    nop
    nop
    ld c, $01
    add b
    nop
    nop
    inc c
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_6591:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc c
    inc bc
    rlca
    ld e, $1e
    ld b, $0f
    rra
    rra
    inc c
    sbc a
    rra
    rra
    jr @+$01

    ld e, $1f
    jr nc, @+$01

    ld c, $0f
    ld h, c
    rst $38
    inc b
    rlca
    jp nz, Jump_000_00ff

    inc bc
    add h
    rst $38
    nop
    ld bc, $ff89
    ld bc, $6b01
    rst $38
    nop
    ld bc, $ff7b
    nop
    ld bc, $ff3b
    inc bc
    inc bc
    sbc a
    db $fd
    inc bc
    inc bc
    rst $08
    cp $03
    inc bc
    rst $20
    rst $38
    inc bc
    inc bc
    di
    rst $38
    inc bc
    inc bc
    ld hl, sp-$04
    ld bc, $fc01
    db $fc
    ld bc, $f801
    or $01
    ld bc, $c1fe
    nop
    nop
    rra
    ldh [rP1], a
    nop
    ld bc, $001e
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
    rrca
    rrca
    ret nz

    ret nz

    ld e, a
    ld a, a
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    ld b, a
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh [$e0], a
    ld [hl], c
    rst $38
    ldh [$e0], a
    ld hl, sp-$01
    ret nz

    ldh [rNR32], a
    rst $38
    nop
    ldh a, [$0e]
    rst $38
    nop
    ldh a, [rIE]
    rst $30
    ld [$fef8], sp
    ei
    ld [$fcf8], sp
    rst $38
    jr @-$06

    cp $ff
    jr c, @-$06

    cp $fe
    ldh a, [$f0]
    db $fc
    db $fc
    ld h, b
    ld h, b
    ld hl, sp-$08
    nop
    nop

jr_0e9_66ac:
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
    add b
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    cp $3c
    nop
    nop
    jr c, jr_0e9_66ac

    nop
    nop
    jr c, jr_0e9_6711

    nop
    nop
    ld c, $01
    add b
    nop
    nop
    inc c
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_6711:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    add b
    di
    rrca
    rrca
    nop
    rst $38
    ld c, $0f
    nop
    rst $38
    ld c, $0f
    ld sp, $0eff
    rrca
    inc sp
    rst $38
    ld b, $07
    dec sp
    rst $38
    ld b, $07
    dec de
    rst $38
    ld b, $07
    dec de
    rst $38
    rlca
    rlca
    dec de
    db $fd
    rrca
    rrca
    adc l
    cp $0f
    rrca
    adc h
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    cp $0f
    rlca
    ret nz

    or b
    rrca
    nop
    db $fc
    inc a
    rlca
    nop
    ld [$0376], a
    ld [bc], a
    rst $10
    add sp, $01
    ld bc, $ecdc
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    jr nz, jr_0e9_693c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_693c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ldh [$e0], a
    dec sp
    rst $38
    ldh a, [$f0]
    add hl, de
    rst $38
    ld hl, sp-$08
    inc e
    rst $38
    db $fc
    ld hl, sp-$12
    rst $38
    db $fc
    ld hl, sp-$0a
    rst $28
    ld a, b
    ldh a, [$fe]
    rst $30
    jr nc, @-$06

    cp $ff
    inc b
    db $fc
    db $fc
    rst $38
    inc b
    db $fc
    db $fc
    rst $38
    inc b
    db $fc
    db $fc
    rst $38
    inc c
    db $fc
    ld hl, sp-$07
    inc e
    db $fc
    ld [hl], b
    ldh a, [$7c]
    ld a, h
    nop
    add b
    jr c, jr_0e9_69f4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_69f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    dec sp
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    db $fc
    di
    ld bc, $ff01
    db $ed
    ld bc, $fb01
    db $dd
    nop
    nop
    ei
    or h
    ld bc, $6501
    cp $03
    inc bc
    cp d
    push bc
    ld bc, $dd03
    di
    nop
    rlca
    rst $20
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    ld c, $0f
    jr nc, @+$01

    rra
    rra
    ld bc, $1fff
    rra
    and d
    rst $18
    rra
    rra
    xor l
    ld d, a
    rlca
    rrca
    rst $38
    rlca
    rrca
    rlca
    db $fc
    rrca
    ld b, $07
    ld [hl], b
    adc a
    inc bc
    inc b
    cp b
    rlc e
    inc b
    ei
    ei
    ld bc, $7002
    ldh a, [rP1]
    ld bc, $20c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_6af4:
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, l
    ld a, [hl]
    add b
    add b
    ld a, a
    rst $38
    ret nz

    and b
    ccf
    rst $38
    ldh [$90], a

jr_0e9_6b08:
    adc h
    rst $38
    jr nc, jr_0e9_6af4

    rst $00
    ld hl, sp-$08
    ld [hl], b
    db $e3
    db $fc
    ld hl, sp+$30
    ld l, a
    ldh a, [$f0]
    jr c, @-$7b

    db $fc
    ldh a, [rSVBK]

jr_0e9_6b1c:
    rlca
    ld sp, hl
    ld h, b
    ldh [$86], a
    rst $38
    nop
    ret nz

    adc d
    rst $38
    jr nz, jr_0e9_6b08

    sub [hl]
    rst $38
    jr nc, jr_0e9_6b1c

    inc l
    rst $38
    jr nc, @-$0e

    ld l, b
    rst $38
    ld [hl], b
    ldh a, [$f0]
    rst $08
    ldh a, [$f0]
    ld h, e
    jp $e0e0


    ret nz

    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
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
    ld [hl], b
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $fcfc
    ld bc, $fe01
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr nz, @+$41

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
    ld bc, $000f
    nop
    inc bc
    rrca
    nop
    nop
    ld b, $1f
    nop
    nop
    inc c
    ccf
    inc c
    ld c, $19
    ld a, a
    ld e, $1f
    db $d3
    rst $38
    ld [hl+], a
    ccf
    di
    rst $38
    inc e
    inc hl
    ld [hl], e
    rst $38
    ld e, $21
    dec sp
    rst $38
    dec e
    inc hl
    rra
    db $fd
    dec de
    rlca
    adc a
    cp $07
    rra
    add $ff
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    adc a
    ldh [$e0], a
    rrca
    rst $38
    ldh [$e0], a
    rst $00
    rst $38
    ldh [$e0], a
    db $e3
    rst $38
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ldh [$f8], a
    add hl, sp
    rst $38
    ret nc

    add sp, $1d
    rst $38
    or b
    ret z

    db $fd
    rst $28
    ld [hl], b
    adc b
    db $fc
    or $38
    ld e, b
    ld hl, sp-$02
    inc [hl]
    inc a
    ld hl, sp-$02
    ld l, b
    ld [hl], h
    ld hl, sp-$04
    ld [hl], h
    ld a, h
    ld hl, sp-$08
    ld a, b
    jr c, @-$0e

    ld hl, sp+$20
    db $10
    ldh [$f0], a
    nop
    nop
    nop
    ldh [rP1], a
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
    jr c, jr_0e9_6ef4

    nop
    nop
    ld a, [hl]

Call_0e9_6ebf:
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc b
    rra
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld d, $1f
    inc c
    inc c
    inc l
    ccf
    rla
    rra
    ld e, c
    ld a, a
    inc bc
    rra
    or e
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld e, $2f
    ld [hl], a
    rst $38
    ld e, $3f
    ccf
    ei

jr_0e9_6ef4:
    rra
    ccf
    rra
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rrca
    rrca
    add $ff
    rlca
    rlca
    ldh [rIE], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e081
    ldh [$87], a
    rst $30
    ldh a, [$f0]
    rst $00
    rst $38
    ld hl, sp-$08
    db $e3
    rst $38
    ld hl, sp-$08
    pop af
    rst $38
    ldh a, [$fc]
    add hl, sp
    rst $38
    add sp, -$0c
    inc e
    rst $38
    ret c

    db $e4
    db $fc
    rst $28
    sbc [hl]
    and $f8
    rst $30
    inc d
    ld a, [hl+]
    ld hl, sp-$01
    ld a, [hl-]
    ld a, $f8
    rst $38
    inc a
    inc e
    ld hl, sp-$02
    db $10
    ld [$fcf0], sp
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $c101
    pop bc
    inc bc
    inc bc
    ld [c], a
    db $e3
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    adc e
    rst $38
    ld bc, $1601
    rst $38
    ld bc, $2c01
    rst $38
    nop
    ld bc, $ff69
    nop
    nop
    ld a, c
    rst $38
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    db $e3
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    cp $fe
    nop
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
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    ld e, a
    ld a, a
    add b
    add b
    add a
    rst $38
    ret nz

    ret nz

    db $e3
    rst $38
    ret nz

    ret nz

    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld hl, sp-$01
    add b
    add b
    sbc h
    rst $38
    nop
    add b
    ld c, $ff
    nop
    ret nz

    ld a, a
    rst $30
    nop
    ldh [rIE], a
    ei
    db $10
    ldh a, [$fc]
    rst $38
    jr @-$06

    db $fc
    rst $38
    inc d
    db $fc
    db $fc
    rst $38
    inc [hl]
    db $fc
    db $fc
    db $fc
    ld l, h
    db $fc
    ld hl, sp-$08
    jr c, jr_0e9_7168

    ldh a, [rSVBK]
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

jr_0e9_7168:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld c, $0e
    ld bc, $1f01
    rra
    ld bc, $1f01
    rra
    nop
    nop
    rra
    rra
    add b
    pop bc
    rrca
    rrca
    nop
    db $e3
    ld c, $0f
    ld bc, $06f7
    rlca
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    nop
    inc bc
    inc c
    rst $38
    nop
    ld bc, $ff69
    nop
    nop
    ld a, c
    rst $38
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    db $fd
    cp $00
    nop
    ld a, e
    ld a, h
    nop
    nop
    jr nc, jr_0e9_724b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e9_724b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, $ce
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, a
    cp a
    nop
    nop
    rst $18
    rst $38
    add b
    add b

jr_0e9_727c:
    add a
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], c
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    sbc h
    rst $38
    nop
    add b

jr_0e9_7290:
    ld c, $ff
    nop
    ret nz

    ld a, a
    rst $30
    nop
    ret nz

    rst $38
    ei
    jr nz, jr_0e9_727c

jr_0e9_729c:
    db $fc
    rst $38
    jr nc, jr_0e9_7290

    db $fc
    rst $38
    jr z, jr_0e9_729c

    db $fc
    rst $38

jr_0e9_72a6:
    ld l, b
    ld hl, sp-$04
    db $fc
    ret c

    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    ldh a, [rSVBK]
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    jr nc, jr_0e9_72a6

    nop
    nop
    ld hl, sp+$30
    nop
    nop
    or b
    ld a, b
    nop
    nop
    ret nc

    or b
    nop
    nop
    and b
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
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    rlca
    jr c, jr_0e9_7376

    nop
    inc bc
    ld a, h
    ld a, h
    inc bc
    inc bc
    ld a, h
    ld a, h
    inc bc
    rlca
    ld a, [hl]
    ld a, a
    ld bc, $3c0f
    ccf
    rlca
    sbc a
    jr c, jr_0e9_7391

    inc c
    rst $38
    jr jr_0e9_7375

    jr @+$01

    ld [$330f], sp
    rst $38
    nop
    rrca
    ld h, a
    rst $38
    ld bc, $8f07
    rst $38
    ld bc, $cf03
    rst $38
    nop
    inc bc
    rst $28
    rst $38
    nop
    inc bc
    ld a, a
    rst $30
    ld b, $07
    ccf
    ei
    rrca

jr_0e9_7375:
    rrca

jr_0e9_7376:
    inc e
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    ldh a, [$f8]
    rrca
    rrca
    jp hl


    push af
    rlca
    rlca
    rst $18
    db $e3
    nop
    nop
    cp [hl]
    rst $00
    nop

jr_0e9_7391:
    nop
    dec b
    ld a, [hl]
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$08]
    nop
    nop
    ldh a, [$08]
    nop
    nop
    rst $28
    rra
    nop
    nop
    ld e, a
    cp a
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    adc a
    rst $38
    ret nz

    ret nz

    rst $00
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld [hl], d
    cp $00
    nop

jr_0e9_7414:
    jr c, jr_0e9_7414

    nop
    nop
    ld hl, sp-$22
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

    ldh [rP1], a
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
    ret nz

    add b
    nop
    nop
    ldh [$c0], a
    nop
    nop
    ret nz

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
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    add b
    add b
    ld bc, $c101
    pop bc
    inc bc
    inc bc
    ld [c], a
    db $e3
    inc bc
    inc bc
    push bc
    rst $30
    inc bc
    inc bc
    adc e
    rst $38
    ld bc, $1601
    rst $38
    ld bc, $2c01
    rst $38
    nop
    ld bc, $ff69
    nop
    nop
    ld a, c
    rst $38
    nop
    nop
    add hl, sp
    ld a, a
    nop
    nop
    dec e
    ld a, a
    nop
    nop
    rrca
    ld a, [hl]
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    scf
    jr c, jr_0e9_7515

jr_0e9_7515:
    nop
    ld bc, $000f
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
    inc a
    nop
    nop
    ld a, $ce
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, a
    cp a
    add b
    add b
    rst $18
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    db $e3
    rst $38
    ret nz

    ret nz

    ld [hl], c
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    sbc h
    rst $38
    nop
    add b
    ld c, $ff
    nop
    add b
    ld a, a
    rst $30
    nop
    add b
    rst $38
    ei
    nop
    add b
    db $fc
    rst $38
    nop
    add b
    db $fc
    rst $38
    nop
    nop
    db $fc
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$78]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
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
    ld h, b
    ret nz

    nop
    nop
    ldh a, [$60]
    nop
    nop
    ld h, b
    ldh a, [rP1]
    nop
    and b
    ld h, b
    nop
    nop
    ld b, b
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
    jr c, jr_0e9_7674

    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc b
    rra
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld d, $1f
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld e, c
    ld a, a
    ld bc, $b301
    rst $38
    ld [bc], a
    inc bc
    rst $20
    rst $38
    inc b
    rlca
    rst $20
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    ld c, $0f
    ccf
    ei

jr_0e9_7674:
    rrca
    rrca
    rra
    db $fd
    rrca
    rrca
    adc [hl]
    rst $38
    rlca
    rlca
    add $ff
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $c001
    rst $08
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add a
    ldh [$e0], a
    adc a
    rst $38
    ldh a, [$f0]
    rst $00
    rst $38
    ldh a, [$f0]
    db $e3
    rst $38
    ldh a, [$f0]
    pop af
    rst $38
    ldh [$e0], a
    add hl, sp
    rst $38
    ldh [$e0], a
    inc e
    rst $38
    ret nz

    ret nz

    db $fc
    rst $28
    add b
    add b
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$02

jr_0e9_7726:
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    ldh [rP1], a
    nop
    jr nz, jr_0e9_7726

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, @-$0e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    cp $01
    ld bc, $ffe0
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld bc, $007f
    nop
    ld bc, $003f
    nop
    nop
    rra
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld b, $1f
    inc c
    inc c
    inc c
    ccf
    rla
    rra
    add hl, de
    ld a, a
    inc bc
    rra
    or e
    rst $38
    ld c, $13
    rst $20
    rst $38
    inc e
    daa
    rst $20
    rst $38
    ld e, $2f
    ld [hl], a
    rst $38
    ld e, $3f
    ccf
    ei
    rra
    ccf
    rra
    db $fd
    rra
    rra
    adc [hl]
    rst $38
    rrca
    rrca
    add $ff
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e081
    ldh [$87], a
    rst $30
    ldh a, [$f0]
    rst $00
    rst $38
    ld hl, sp-$08
    db $e3
    rst $38
    ld hl, sp-$08
    pop af
    rst $38
    ldh a, [$f0]
    add hl, sp
    rst $38
    ldh [$f8], a
    inc e
    rst $38
    ret nc

    add sp, -$04
    rst $28
    or b
    ret z

    ld hl, sp-$09

jr_0e9_78a2:
    inc a
    call z, $fef8
    jr z, jr_0e9_78fc

    ld hl, sp-$04
    ld [hl], h
    ld a, h
    ld hl, sp-$08
    ld a, b
    jr c, @-$0e

    ldh a, [rNR41]
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

jr_0e9_78be:
    nop
    nop
    jr nz, jr_0e9_78a2

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0e9_78be

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

jr_0e9_78fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0e9_7eff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0e9_7ffe:
    nop
    nop
