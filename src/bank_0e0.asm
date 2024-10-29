SECTION "ROM Bank $0e0", ROMX[$4000], BANK[$e0]

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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l

jr_0e0_4023:
    ld a, [hl]
    inc bc
    inc bc
    cp [hl]
    rst $38
    rlca
    rlca
    cp e
    rst $38
    rrca
    rrca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rra
    rra
    ret nz

    rst $38
    rra
    rra
    ret nz

    rst $38
    rra
    inc de
    ret nz

    rst $38
    cpl
    jr nc, jr_0e0_4023

    rst $38

jr_0e0_4044:
    dec sp
    inc h
    cp a
    ld a, a
    inc a
    inc hl
    ld h, b
    rst $38
    ld a, $21
    ldh a, [rIE]
    cpl
    jr nc, jr_0e0_4044

    rst $38
    rla
    dec de
    cp $ff
    rrca
    rrca
    pop af
    rst $38
    rrca
    ld c, $60
    rst $38
    rrca
    inc c
    db $f4
    ld c, a
    dec c
    ld c, $f2
    rst $08
    rlca
    rlca
    pop hl
    sbc a
    inc bc
    inc bc
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
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0e0_40e8

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ldh [$e0], a

jr_0e0_40e8:
    xor $ff
    ldh a, [$f0]
    ret nz

    rst $38
    ld hl, sp-$08
    nop
    rst $38
    add sp, -$08
    ld bc, $fcff
    db $fc
    ld bc, $fcff
    db $fc
    ld bc, $fcff
    db $e4
    add e
    rst $38
    ld a, [$fe86]
    rst $38
    xor $12
    inc bc
    rst $38
    ld e, $e2
    rlca
    rst $38
    cp [hl]
    jp nz, $ffc7

    ld a, [$bf86]
    ld a, a
    db $f4
    db $ec
    rst $00
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld a, b
    cp b
    rla
    ld sp, hl
    ld hl, sp+$18
    daa
    ld sp, hl
    ret c

    cp b
    jp $f0fc


    ldh a, [$80]
    rst $38
    ldh [$e0], a
    add b
    rst $38
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
    ld h, c
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ld e, [hl]
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e0_41a1

    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
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
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop

jr_0e0_41a1:
    nop
    dec a
    ld a, $00
    nop
    sbc $ff
    ld bc, $fd01
    rst $38
    ld [bc], a
    inc bc
    ldh a, [rIE]
    dec b
    ld b, $70
    rst $38
    ld b, $07
    ldh a, [rIE]
    rlca
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    cp e
    ld b, h
    ld [bc], a
    inc bc
    add a
    ld a, b
    ld bc, $7f01
    add b
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr c, jr_0e0_420f

    nop
    nop
    jr c, jr_0e0_4213

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
    db $10
    rra
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $3d01
    rst $38
    ld bc, $0101

jr_0e0_420f:
    rst $38
    ld bc, $0101

jr_0e0_4213:
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a
    cp $01
    ld bc, $fc04
    nop
    nop
    ld hl, sp-$08
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
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    sbc h
    nop
    nop
    rst $38
    ld a, a
    ldh [$e0], a
    rst $38
    rst $18
    ld a, b
    ld hl, sp-$21
    rst $28
    ld a, h
    db $fc
    xor $ff
    ld a, d
    sbc [hl]
    dec sp
    db $fc
    ld l, $de
    dec bc
    db $fc
    adc $3e
    dec c
    or $ee
    ld e, $be
    ld a, e
    db $ec
    inc e
    db $fd
    dec hl
    jr @-$06

    cp a
    ld a, a
    ldh a, [$f0]
    ld bc, $80ff
    add b
    inc bc
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld e, a
    cp a
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld [$80ff], sp
    add b
    db $10
    rst $38
    add b
    add b
    ldh [rIE], a
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
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    pop hl
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ld e, [hl]
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e0_4321

    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
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
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop

jr_0e0_4321:
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$400f], sp
    rst $38
    ld [$600f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    rrca
    ld [$ff60], sp
    rrca
    ld [$ff70], sp
    ld [$710f], sp
    rst $38
    rlca
    rlca
    cp [hl]
    rst $38
    rlca
    rlca
    pop af
    cp a
    rlca
    rlca
    and b
    rst $38
    inc bc
    ld [bc], a
    call nz, $017f
    ld bc, $ffc2
    nop
    nop
    ld b, c
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
    ld b, b
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $78ff
    adc b
    add e
    rst $38
    ld hl, sp+$08
    rst $38
    rst $38
    ld hl, sp+$08
    inc bc
    rst $38
    ld l, b
    sbc b
    rlca
    rst $38
    ldh a, [rNR10]
    rst $00
    rst $38
    ldh a, [rNR10]
    cp a
    ld a, a
    ldh a, [rNR10]
    rst $00
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ldh a, [$f0]
    ld de, $f0fe
    ldh a, [rNR42]
    cp $70
    ldh a, [$c1]
    rst $38
    and b
    ld h, b
    add b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    db $e3
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    ld e, $1e
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$400f], sp
    rst $38
    ld [$600f], sp
    rst $38
    rrca
    ld [$ff7f], sp
    rrca
    ld [$ff60], sp
    rrca
    ld [$ff70], sp
    rrca
    ld [$ff71], sp
    ld [$7e0f], sp
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    call nz, Call_000_03bf
    inc bc
    jp nz, $01ff

    ld bc, $ffc1
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
    ld b, b
    ld a, a
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
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
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
    ld b, b
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
    ld e, $1e
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop

jr_0e0_4558:
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $88ff
    ld hl, sp-$7d
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld a, b
    adc b
    rlca
    rst $38
    jr c, jr_0e0_4558

    rst $00
    rst $38
    add sp, $18
    cp a
    ld a, a
    ldh a, [rNR10]
    rst $00
    rst $38
    ldh a, [rNR10]
    inc bc
    rst $38
    ldh a, [rNR10]
    ld [de], a
    rst $38
    ldh a, [$f0]
    inc hl
    cp $f0
    ldh a, [$c1]
    cp $f0
    ldh a, [$80]
    rst $38
    and b
    ld h, b
    add b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    cp [hl]
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    cp a
    cp a
    nop
    nop
    sbc [hl]
    sbc [hl]
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
    rrca
    rrca
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$400f], sp
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    ld a, a
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    rrca
    ld [$ff70], sp
    dec bc
    inc c
    ld [hl], c
    rst $38
    dec bc
    inc c
    ld a, [hl]
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    db $e4
    cp a
    rlca
    rlca
    add d
    rst $38
    inc bc
    ld [bc], a
    pop bc
    ld a, a
    ld bc, $c001
    rst $38
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
    ld b, b
    ld a, a
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
    ld a, a
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
    ld b, b
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e0_46cc:
    ldh a, [$f0]
    nop
    nop

jr_0e0_46d0:
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08

jr_0e0_46f4:
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $08ff
    ld hl, sp-$7d
    rst $38
    jr c, jr_0e0_46cc

    rst $38
    rst $38
    jr c, jr_0e0_46d0

    inc bc
    rst $38
    jr jr_0e0_46f4

    rlca
    rst $38
    ld a, b
    adc b
    rst $00
    rst $38
    ld l, b
    sbc b
    cp a
    ld a, a
    ld l, b
    sbc b
    rst $00
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    inc de
    cp $f0
    ldh a, [rNR41]
    rst $38
    ldh a, [$f0]
    pop bc
    rst $38
    ldh [rNR41], a
    add b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    cp a
    cp a
    nop
    nop
    ld e, $1e
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
    ld sp, $003f
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$c00f], sp
    rst $38
    rrca
    ld [$ff60], sp
    rrca
    ld [$ff7f], sp
    inc c
    dec bc
    ld h, b
    rst $38
    inc c
    dec bc
    ld [hl], b
    rst $38
    dec bc
    inc c
    ld [hl], c
    rst $38
    rlca
    inc b
    ld a, [hl]
    rst $38
    rlca
    inc b
    ld [hl], c
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    add h
    rst $38
    rlca
    rlca
    jp nz, $07bf

    rlca
    pop bc
    cp a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld bc, $c001
    rst $38
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
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, b
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
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
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
    db $fc
    db $fc
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop

jr_0e0_4858:
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a

jr_0e0_486c:
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08

jr_0e0_4874:
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $f8ff
    ld hl, sp-$7d
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    jr jr_0e0_4874

    rlca
    rst $38
    jr c, jr_0e0_4858

    rst $00
    rst $38
    jr z, jr_0e0_486c

    cp a
    ld a, a
    db $10
    ldh a, [$c7]
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    inc de
    cp $f0
    ldh a, [rNR42]
    rst $38
    ldh [$e0], a
    pop bc
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0e0_4911

    nop
    nop
    rra
    rra
    nop
    nop
    db $10
    ld e, $00
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

jr_0e0_4911:
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    ld [$ff40], sp
    rrca
    ld [$7fe0], sp
    rrca
    ld [$7fff], sp
    dec bc
    inc c
    ld h, b
    rst $38
    rlca
    inc b
    ldh a, [$7f]
    rlca
    inc b
    pop af
    ld a, a
    rlca
    inc b
    cp $7f
    inc b
    rlca
    ld [hl], c
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    call nz, $07bf
    rlca
    ld b, d
    cp a
    ld [bc], a
    inc bc
    pop bc
    ld a, a
    ld bc, $8001
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld a, a
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
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
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $08ff
    ld hl, sp-$7d
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    ld a, b
    adc b
    rlca
    rst $38
    ld a, b
    adc b
    rst $00
    rst $38
    ld [$bef8], sp
    ld a, a
    ldh a, [$f0]
    rst $00
    cp $f0
    ldh a, [rSC]
    rst $38
    ldh a, [$f0]
    ld de, $e0ff
    jr nz, jr_0e0_4a46

    rst $38
    ret nz

    ret nz

    pop bc
    rst $38
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
    add c
    rst $38
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
    jp Jump_000_00ff


    nop
    rst $38
    rst $38

jr_0e0_4a46:
    nop
    nop
    cp l
    rst $38
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
    add c
    rst $38
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$c00f], sp
    rst $38
    rrca
    ld [$ff60], sp
    rrca
    ld [$ff7f], sp
    rrca
    ld [$ff60], sp
    ld c, $09
    ld [hl], b
    rst $38
    dec bc
    inc c
    pop af
    ld a, a
    rlca
    inc b
    cp $7f
    rlca
    inc b
    pop af
    ld a, a
    rlca
    inc b
    ldh [$7f], a
    rlca
    rlca
    and h
    rst $38
    rlca
    rlca
    ld [c], a
    cp a
    rlca
    rlca
    pop bc
    cp a
    ld [bc], a
    inc bc
    add b
    ld a, a
    ld bc, $8001
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
    cp [hl]
    rst $38
    nop
    nop
    ld a, a
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
    ld a, [hl]
    ld a, [hl]
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
    ld hl, sp-$08
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $08ff
    ld hl, sp-$7d
    rst $38
    ld [$fff8], sp
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld a, b
    adc b
    rlca
    rst $38
    ld a, b
    adc b
    rst $00
    rst $38
    ld a, b
    adc b
    cp a
    ld a, a
    ld [$c7f8], sp
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    ld de, $f0fe
    ldh a, [rNR42]
    rst $38
    ldh [$e0], a
    pop bc
    rst $38
    ret nz

    ret nz

    add c
    rst $38
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
    add c
    rst $38
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
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
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
    add c
    rst $38
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
    ld b, d
    ld a, [hl]
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
    inc a
    inc a
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$400f], sp
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    ld a, a
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    rrca
    ld [$ff70], sp
    dec bc
    inc c
    ld [hl], c
    rst $38
    dec bc
    inc c
    ld a, [hl]
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    db $e4
    cp a
    rlca
    rlca
    add d
    rst $38
    inc bc
    ld [bc], a
    pop bc
    ld a, a
    ld bc, $8001
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, e
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
    ld a, [hl]
    ld a, [hl]
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
    ld b, [hl]
    ld a, [hl]
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e0_4ccc:
    ldh a, [$f0]
    nop
    nop

jr_0e0_4cd0:
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08

jr_0e0_4cf4:
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $08ff
    ld hl, sp-$7d
    rst $38
    jr c, jr_0e0_4ccc

    rst $38
    rst $38
    jr c, jr_0e0_4cd0

    inc bc
    rst $38
    jr jr_0e0_4cf4

    rlca
    rst $38
    ld a, b
    adc b
    rst $00
    rst $38
    ld l, b
    sbc b
    cp a
    ld a, a
    ld l, b
    sbc b
    rst $00
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    inc de
    cp $f0
    ldh a, [rNR41]
    rst $38
    ldh a, [$f0]
    pop bc
    rst $38
    ldh [rNR41], a
    add c
    rst $38
    ret nz

    ret nz

    add c
    rst $38
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
    add c
    rst $38
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
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
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
    add c
    rst $38
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
    ld b, d
    ld a, [hl]
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
    inc a
    inc a
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    ld a, l
    ld a, [hl]
    ld bc, $be01
    rst $38
    inc bc
    inc bc
    cp e
    rst $38
    rlca
    rlca
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$600f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    ld c, $09
    ld [hl], b
    rst $38
    ld a, [bc]
    dec c
    ld [hl], c
    rst $38
    inc b
    rlca
    ld a, [hl]
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    db $e4
    cp a
    inc bc
    inc bc
    jp nz, $01ff

    ld bc, $ffc1
    nop
    nop
    ld b, b
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
    add b
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
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
    add c
    rst $38
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
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
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
    ld a, h
    ld a, h
    nop
    nop
    inc c
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc b
    inc a
    nop
    nop
    inc e
    inc e
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ld a, $ff
    ret nz

    ret nz

    xor $ff
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    add sp, -$08

jr_0e0_4e74:
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    ld bc, $88ff
    ld hl, sp-$7d
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    jr jr_0e0_4e74

    rlca
    rst $38
    jr @-$16

    rst $00
    rst $38
    ld l, b
    sbc b
    cp a
    ld a, a
    ld [hl], b
    sub b
    rst $00
    rst $38
    ld [hl], b
    sub b
    inc bc
    rst $38
    db $10
    ldh a, [rNR10]
    rst $38
    ldh a, [$f0]
    ld hl, $f0fe
    ldh a, [$c1]
    cp $f0
    ldh a, [$81]
    rst $38
    and b
    ld h, b
    add c
    rst $38
    ret nz

    ret nz

    add c
    rst $38
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
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    inc bc
    inc bc
    cp l
    cp $07
    rlca
    cp a
    ei
    rrca
    rrca
    cp a
    db $fc
    dec bc
    rrca
    or l
    cp $0f
    rrca
    or [hl]
    rst $38
    rrca
    rrca
    add e
    rst $38
    ld c, $09
    add b
    rst $38
    rrca
    ld [$ff00], sp
    rrca
    ld [$ff40], sp
    ld a, [bc]
    dec c
    rst $38
    rst $38
    rrca
    ld [$ff40], sp
    rrca
    ld [$7fe1], sp
    rrca
    ld [$7edf], sp
    rrca
    ld [$fa47], sp
    dec bc
    rrca
    rst $00
    ei
    rrca
    rrca
    call z, Call_000_06ff
    rlca
    jp Jump_000_07ff


    ld b, $a1
    rst $18
    rlca
    rlca
    pop bc
    rst $38
    inc bc
    inc bc
    ld b, c
    rst $38
    ld bc, $c101
    ld a, a
    ld bc, $c101
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    rlca
    rlca
    pop bc
    rst $38
    rlca
    rlca
    cp $fe
    rlca
    rlca
    cp $fe
    inc bc
    inc bc
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc $3f
    ret nz

    ret nz

    cp $ef
    ldh [$e0], a
    rst $38
    rra
    ldh a, [$f0]
    rst $10
    cp a
    add sp, -$08
    scf
    rst $38
    ret c

    add sp, -$1f
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    cp $f0
    db $10
    add c
    cp $f0
    db $10
    db $f4
    ei
    ld d, b
    or b
    ccf
    ldh [$e0], a
    jr nz, @+$01

    ldh [rLCDC], a
    ret nz

    ld a, l
    di
    add b
    add b
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    add $fe
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
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0e0_50a6

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
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [$90]
    nop
    nop
    di
    sub e
    nop
    nop
    sbc [hl]
    rst $38
    nop
    nop
    sbc d
    db $fd
    nop
    nop
    rst $10
    inc a
    ld bc, $8701
    ld a, c
    inc bc
    inc bc
    rra
    db $fc
    rlca
    rlca
    rst $38
    inc e
    dec c
    rrca
    db $fd
    cp $0f
    inc c

jr_0e0_50a6:
    ld a, a
    rst $38
    rrca
    inc c
    or b
    ld a, a
    rrca
    inc c
    or b
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $8101
    rst $38
    ld bc, $8f01
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    dec a
    ld a, $00
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
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
    ccf
    ccf
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
    and b
    ld h, b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nc

    jr nc, jr_0e0_5153

jr_0e0_5153:
    nop
    ret nc

    jr nc, jr_0e0_5157

jr_0e0_5157:
    nop
    rst $38
    rrca
    ldh [$e0], a
    rst $38
    nop
    ld [hl], b
    ldh a, [$fb]
    inc b
    ld hl, sp+$78
    ld a, c
    add [hl]
    ld hl, sp+$78
    ret nz

    rst $38
    ld a, b
    ld hl, sp+$30
    rst $38
    ld hl, sp-$08
    rrca
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ld h, b
    ldh [rP1], a
    rst $38
    ld h, b
    ldh [$f0], a
    rst $38
    ret nz

    ret nz

    ld c, $ff
    ret nz

    ret nz

    ld bc, $80ff
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, c
    rst $38
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
    pop bc
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ld a, $00
    nop
    scf
    add hl, sp
    nop
    nop
    scf
    ld a, $00
    nop
    dec d
    dec de
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $fc
    sbc a
    rrca
    rrca
    rst $30
    sbc a
    rrca
    rrca
    sub b
    rst $38
    rrca
    dec bc
    rst $18
    xor a
    dec bc
    dec c
    rst $18
    cp h
    inc b
    rlca
    rst $38
    db $fc
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $c201
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
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
    ccf
    ccf
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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nc

    jr nc, jr_0e0_52d7

jr_0e0_52d7:
    nop
    ret nc

    jr nc, jr_0e0_52db

jr_0e0_52db:
    nop
    cp b
    ld a, b
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $20
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ldh [$e0], a
    cp $01
    ldh a, [$f0]
    db $fd
    ld [bc], a
    ld [hl], b
    ldh a, [$fd]
    ld [bc], a
    ld [hl], b
    ldh a, [$f9]
    ld b, $70
    ldh a, [rNR34]
    pop hl
    ld h, b
    ldh [rSB], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, c
    rst $38
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
    add c
    rst $38
    nop

jr_0e0_532f:
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    ld a, c
    nop
    nop
    ld l, a
    halt
    nop
    dec sp
    inc a
    rrca
    rrca
    push af
    cp $1f
    rra
    cp b
    rst $38
    rra
    rra
    or a
    rst $38
    dec de
    inc e
    inc bc
    rst $38
    rla
    jr jr_0e0_532f

    ld a, a
    ld de, $e01f
    rst $38
    inc c
    dec bc
    ldh [$3f], a
    ld [de], a
    rra
    jr nz, @+$01

    ld d, $1f
    rst $38
    ccf
    ld c, $0f
    cp $27
    ld c, $0f
    and $3f
    ld b, $07
    ccf
    rst $38
    ld [bc], a
    inc bc
    ldh [$bf], a
    ld bc, $c301
    rst $38
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
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
    ccf
    ccf
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    db $ec
    rst $38
    ret nz

    ret nz

    db $dd
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ret nc

    ldh a, [rNR34]
    pop hl
    or b
    ret nc

    xor $11
    ret nc

    ldh a, [$f1]
    ld c, $60
    ldh [$fe], a
    ld bc, $c0c0
    ei
    rlca
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, c
    rst $38
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
    pop bc
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld c, $00
    nop
    rra
    ld e, $00
    nop
    rra
    dec e
    nop
    nop
    inc sp
    dec a
    nop
    nop
    ld sp, $003f
    nop
    jr nc, jr_0e0_557b

    nop
    nop
    jr nc, jr_0e0_557f

    nop
    nop
    jr nc, @+$41

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    add hl, sp
    daa
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ei
    rst $28
    nop
    nop
    ret nc

    xor a
    nop
    nop
    ret z

    cp a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc d

jr_0e0_557b:
    rra
    nop
    nop
    inc h

jr_0e0_557f:
    ccf
    nop
    nop
    jr z, jr_0e0_55c3

    nop
    nop
    ld a, a
    ld a, a
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
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld bc, $0901
    ld sp, hl
    nop
    nop
    ldh a, [$f0]
    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    nop

jr_0e0_55c3:
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    db $fc
    inc b
    nop
    nop
    xor $5e
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    rst $30
    rst $38
    add b
    add b
    xor a
    ld a, a
    ret nz

    ret nz

    xor a
    ld a, a
    ret nz

    ret nz

    rst $28
    rst $18
    ret nz

    ret nz

    rst $30
    adc a
    ret nz

    ret nz

    dec sp
    rst $00
    ret nz

    ret nz

    dec a
    jp $8080


    ld e, $e1
    add b
    add b
    dec c
    di
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ret nc

    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    adc h
    db $fc
    nop
    nop
    cp $fe
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
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld c, $00
    nop
    rra
    ld e, $00
    nop
    rra
    dec e
    nop
    nop
    inc sp
    dec a
    nop
    nop
    ld sp, $003f
    nop
    jr nc, @+$41

    nop
    nop
    jr nc, jr_0e0_56f7

    nop
    nop
    jr nc, jr_0e0_56fb

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    add hl, sp
    daa
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    call c, Call_000_00af
    nop
    call z, Call_000_00bf
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    ld b, $07
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld de, $001f
    nop
    ld [de], a

jr_0e0_56f7:
    rra
    nop
    nop
    ld [hl+], a

jr_0e0_56fb:
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
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
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
    ld b, e
    ld a, a
    nop
    nop
    dec a
    dec a
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
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
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
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    db $fc
    inc b
    nop
    nop
    xor $5e
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    rst $30
    rst $38
    add b
    add b
    xor a
    ld a, a
    ret nz

    ret nz

    xor a
    ld a, a
    ret nz

    ret nz

    rst $28
    rst $18
    ret nz

    ret nz

    rst $30
    adc a
    ret nz

    ret nz

    dec sp
    rst $00
    ret nz

    ret nz

    dec a
    jp $8080


    ld e, $e1
    add b
    add b
    dec c
    di
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    add d
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
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nc

    ldh a, [rP1]
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

jr_0e0_57de:
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0e0_57de

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
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
    dec bc
    inc c
    nop
    nop
    ld e, $17
    nop
    nop
    rla
    jr jr_0e0_5828

    inc bc
    sub [hl]
    sbc c

jr_0e0_5828:
    inc bc
    ld [bc], a
    ei
    db $fc
    inc bc
    ld [bc], a
    db $fc
    rst $38
    inc bc
    ld [bc], a
    rst $30
    rst $38
    ld b, $07
    add e
    rst $38
    rrca
    inc c
    ldh [$7f], a
    rra
    inc e
    cp $d9
    inc e
    rra
    rst $18
    add sp, $1f
    inc e
    ld a, a
    ld hl, sp+$1e
    rra
    call Call_000_177e
    rra
    rst $38
    rst $38
    dec de
    rla
    add b
    rst $38
    rra
    inc de
    add b
    rst $38
    inc c
    dec bc
    add b
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc b
    rst $38
    ld bc, $0501
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    nop
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
    ld a, [hl]
    ld a, [hl]
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
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ret nc

    jr nc, jr_0e0_58e3

jr_0e0_58e3:
    nop
    ret nc

    jr nc, jr_0e0_58e7

jr_0e0_58e7:
    nop
    cp b
    ld a, b
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    reti


    rst $38
    add b
    add b
    add e
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ldh [$e0], a
    dec e
    db $e3
    ldh [$e0], a
    sbc [hl]
    ld h, c
    and b
    ldh [$e3], a
    inc e
    ldh [$e0], a
    cp $01
    ldh [$e0], a
    ld a, l
    add e
    ret nz

    ret nz

    inc bc
    rst $38
    add b
    add b
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    add [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    add [hl]
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld a, c
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, c
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
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0e0_59a6

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
    nop
    nop
    nop
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
    ld [$0000], sp
    rra
    rla
    nop
    nop

jr_0e0_59a6:
    rra
    stop
    nop
    rrca
    add hl, bc
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    ld a, h
    rst $38
    rrca
    rrca
    ld [hl], a
    rst $38
    rla
    rra
    inc bc
    rst $38
    rra
    rra
    nop
    rst $38
    rla
    rra
    ldh [rIE], a
    dec de
    rla
    and b
    ld a, a
    dec e
    inc de
    ld h, b
    cp a
    dec bc
    ld c, $3d
    cp $17
    ld a, [de]
    ld e, a
    db $ec
    rla
    ld a, [de]
    ld a, l
    cp $09
    rrca
    ldh [rIE], a
    rlca
    rlca
    db $e3
    rst $38
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc b
    rst $38
    ld bc, $0501
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    nop
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
    ld a, [hl]
    ld a, [hl]
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
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
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
    ldh [rNR41], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, l
    rst $38
    add b
    add b
    db $dd
    rst $38
    ret nz

    ret nz

    add e
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    or b
    ret nc

    ld b, $f9
    ret nc

    ldh a, [$0e]
    pop af
    ld [hl], b
    ldh a, [$2e]
    pop de
    ldh [$60], a
    pop af
    ld c, $40
    ret nz

    cp $01
    add b
    add b
    di
    rrca
    nop
    nop
    ld e, $fe
    nop
    nop
    add [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    add [hl]
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld a, c
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, c
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
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0e0_5b26

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
    nop
    nop
    nop
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
    inc c
    inc bc
    inc bc

jr_0e0_5b26:
    rst $38
    rst $30
    rlca
    rlca
    ld a, a
    ld hl, sp+$0f
    rrca
    ei
    db $fd
    rrca
    rrca
    db $ec
    rst $38
    dec de
    rla
    rlca
    rst $38
    rra
    rra
    nop
    rst $38
    rla
    rra
    ldh [rIE], a
    dec de
    rla
    and b
    rst $38
    ld e, $11
    and b
    rst $38
    ld e, $11
    cp c
    rst $38
    dec d
    dec de
    rst $20
    rst $38
    rrca
    dec bc
    ldh [$bf], a
    dec bc
    rrca
    ldh a, [$bf]
    rlca
    rlca
    rst $38
    cp a
    inc bc
    inc bc
    cp $bb
    inc bc
    inc bc
    ld a, [$01bf]
    ld bc, $bfff
    ld bc, $e001
    cp a
    ld bc, $e801
    cp a
    ld bc, $a501
    rst $38
    ld bc, $e201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    nop
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
    ld a, [hl]
    ld a, [hl]
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
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
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
    ld h, b
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    adc $ff
    add b
    add b
    inc bc
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    or b
    ldh a, [rIF]
    rst $38
    ld d, b
    or b
    rrca
    rst $38
    or b
    ldh a, [$f6]
    ld sp, hl
    ldh a, [$f0]
    rrca
    ldh a, [rSVBK]
    ldh a, [rPCM12]
    adc c
    ld h, b
    ldh [$f9], a
    ld b, $40
    ret nz

    cp $01
    add b
    add b
    ei
    rlca
    nop
    nop
    or $8e
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld a, c
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, c
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
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0e0_5ca6

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e0_5ca6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    rra
    rla
    nop
    nop
    rra
    stop
    nop
    rrca
    add hl, bc
    nop
    nop
    ei
    db $fc
    inc bc
    inc bc
    ld a, h
    rst $38
    rlca
    rlca
    ld [hl], a
    rst $38
    rrca
    rrca
    inc bc
    rst $38
    rla
    rra
    nop
    rst $38
    rra
    rra
    add b
    rst $38
    rra
    rra
    add b
    rst $38
    db $10
    rra
    add b
    rst $38
    inc e
    inc de
    pop bc
    rst $38
    inc e
    inc de
    rst $38
    rst $38
    jr jr_0e0_5d19

    ret nz

    rst $38
    ld e, $11
    ldh [rIE], a
    ld d, $19
    db $e3
    rst $38
    ld d, $19
    db $fd
    cp $0f
    rrca
    db $e3
    rst $38
    rrca
    rrca
    ld b, b
    rst $38
    rrca

jr_0e0_5d19:
    rrca
    ret z

    ld a, a
    rrca
    rrca
    inc b
    rst $38
    rlca
    inc b
    add e
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    ld bc, $8101
    rst $38
    ld bc, $8101
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    jp $03ff


    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp l
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

jr_0e0_5d60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rNR41], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop

jr_0e0_5d94:
    ldh [rNR41], a
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, l
    rst $38
    add b
    add b
    db $dd
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    ldh [$e0], a
    ld bc, $d0ff
    ldh a, [$03]
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    db $10
    ldh a, [rTMA]
    rst $38
    ld [hl], b
    sub b
    cp $ff
    ld [hl], b
    sub b
    ld b, $ff
    jr nc, jr_0e0_5d94

    ld c, $ff
    ldh a, [rNR10]
    adc [hl]
    rst $38
    ret nc

    jr nc, jr_0e0_5e4b

    rst $38
    ret nc

    jr nc, jr_0e0_5d60

    rst $38
    ldh [$e0], a
    dec b
    rst $38
    ldh [$e0], a
    daa
    db $fd
    ldh [$e0], a
    ld b, c
    rst $38
    ldh [$e0], a
    add e
    cp $c0
    ld b, b
    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    add a
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, e
    rst $38
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
    dec b
    ld b, $00
    nop
    rst $38
    ei
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    db $fd
    cp $02
    inc bc
    or $ff
    inc bc
    inc bc
    jp $03ff


    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ret nz

    rst $38
    inc b
    rlca
    ld [hl+], a
    rst $38
    rlca
    inc b
    sbc [hl]

jr_0e0_5e4b:
    ld a, a
    dec bc
    inc c
    jp $0b3f


    inc c
    ldh [$3f], a
    rrca
    rrca
    ld h, b
    rst $38
    rla
    rra
    or b
    cp a
    rla
    rra
    or c
    cp a
    jr @+$21

    cp a
    cp a
    dec e
    ld a, [de]
    or a
    cp c
    dec c
    dec bc
    ld b, e
    ld a, h
    ld b, $06
    ld b, l
    ld a, [hl]
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    ld bc, $f901
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
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
    ccf
    ccf
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

    jr nc, jr_0e0_5ee3

jr_0e0_5ee3:
    nop
    ld hl, sp-$18
    nop
    nop
    db $fc
    inc e
    nop
    nop
    rst $18
    cp a
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    dec e
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    or b
    ldh a, [rTAC]
    rst $38
    ld d, b
    or b
    rlca
    rst $38
    or b
    ldh a, [rIE]
    rst $38
    ldh a, [$f0]
    rlca
    ld hl, sp+$70
    ldh a, [rIF]
    ldh a, [$60]
    ldh [$08], a
    rst $30
    ld b, b
    ret nz

    rst $38
    ldh [rLCDC], a
    ret nz

    cp $e1
    add b
    add b
    reti


    cp a
    nop
    nop
    and c
    rst $38
    nop
    nop
    pop bc
    ld a, a
    nop
    nop
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    inc a
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp h
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    ld b, $07
    nop
    nop
    rra
    dec e
    nop
    nop
    db $ed
    cp $01
    ld bc, $eff6
    inc bc
    inc bc
    di
    rst $08
    dec b
    rlca
    ldh a, [$cf]
    rlca
    rlca
    ldh a, [$cf]
    rlca
    rlca
    ldh a, [$cf]
    rlca
    inc b
    pop af
    ld c, a
    rlca
    inc b
    rst $38
    ld c, a
    rlca
    inc b
    jp hl


    rst $38
    inc bc
    inc bc
    ld hl, sp+$4f
    inc bc
    inc bc
    ld hl, sp+$4f
    ld bc, $f101
    rst $18
    nop
    nop
    cp $ff
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    ld bc, $f901
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
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
    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ld e, a
    cp a
    add b
    add b
    cp e
    rst $38
    ldh [$e0], a
    db $fd
    rst $38
    ldh a, [$f0]
    or c
    adc $f8
    ld a, b

jr_0e0_607c:
    cp l
    jp nz, Jump_0e0_78b8

jr_0e0_6080:
    ld e, [hl]
    pop hl
    cp b
    ld a, b
    cpl
    pop af
    jr c, jr_0e0_6080

    inc de
    rst $38
    jr nc, jr_0e0_607c

    rra
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    ld bc, $80ff
    add b
    inc bc
    rst $38
    add b
    add b
    jp $80ff


    add b
    cp a
    ld a, a
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    inc a
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp h
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    ld b, $07
    nop
    nop
    rra
    dec e
    nop
    nop
    db $ed
    cp $01
    ld bc, $eff6
    inc bc
    inc bc
    di
    rst $08
    dec b
    rlca
    ldh a, [$cf]
    rlca
    rlca
    ldh a, [$cf]
    rlca
    rlca
    ldh a, [$cf]
    rlca
    inc b
    pop af
    ld c, a
    rlca
    inc b
    rst $38
    ld c, a
    rlca
    inc b
    jp hl


    rst $38
    inc bc
    inc bc
    ld hl, sp+$4f
    inc bc
    inc bc
    ld hl, sp+$4f
    ld bc, $f101
    rst $18
    nop
    nop
    cp $ff
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    jr nz, jr_0e0_619f

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e0_61ab

    nop
    nop
    jr nz, jr_0e0_61af

    nop
    nop
    jr nz, jr_0e0_61b3

    nop
    nop
    jr nz, jr_0e0_61b7

    nop
    nop
    jr nz, jr_0e0_61bb

    nop
    nop
    jr nz, jr_0e0_61bf

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
    ld b, b

jr_0e0_619f:
    ld a, a
    nop
    nop
    jr nz, jr_0e0_61e3

    nop
    nop
    rra
    rra
    nop
    nop
    rrca

jr_0e0_61ab:
    rrca
    nop
    nop
    rrca

jr_0e0_61af:
    rrca
    nop
    nop
    rrca

jr_0e0_61b3:
    rrca
    nop
    nop
    ccf

jr_0e0_61b7:
    ccf
    nop
    nop
    rst $38

jr_0e0_61bb:
    rst $38
    ld bc, $ff01

jr_0e0_61bf:
    rst $38
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ld e, a
    cp a
    add b

jr_0e0_61e3:
    add b
    cp e
    rst $38
    ldh [$e0], a
    db $fd
    rst $38
    ldh a, [$f0]
    or c
    adc $f8
    ld a, b

jr_0e0_61f0:
    cp l
    jp nz, Jump_0e0_78b8

jr_0e0_61f4:
    ld e, [hl]
    pop hl
    cp b
    ld a, b
    cpl
    pop af
    jr c, jr_0e0_61f4

    inc de
    rst $38
    jr nc, jr_0e0_61f0

    rra
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    ld bc, $80ff
    add b
    inc bc
    rst $38
    add b
    add b
    jp $80ff


    add b
    cp a
    ld a, a
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    jr nz, @+$01

    add b
    add b
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
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    pop hl
    rst $38
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
    ld e, $ff
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    add b
    add b
    sbc a
    sbc a
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    ld c, $0e
    nop
    nop
    rrca
    rrca
    nop
    nop
    sbc a
    sbc a
    add b
    add b
    sbc a
    sbc a
    ret nz

    ret nz

    sbc a
    sbc a
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
    inc bc
    inc bc
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
    rra
    ld e, $00
    nop
    ld l, a
    ld a, d
    inc bc
    inc bc
    cp d
    rst $08
    rlca
    rlca
    ld [hl], a
    adc a
    ld c, $0f
    ld [c], a
    rra
    rrca
    ld c, $87
    ld a, a
    ld c, $0f
    add hl, bc
    rst $38
    rlca
    rlca
    db $10
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $8001
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
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
    ccf
    ccf
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
    inc l
    inc [hl]
    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, b
    or b
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ld a, b
    add sp, $00
    nop
    xor b
    ld e, b
    nop
    nop
    ld l, b
    sbc b
    nop
    nop
    sbc $3e
    nop
    nop
    dec a
    rst $38
    ret nz

    ret nz

jr_0e0_6368:
    db $ed
    rst $38
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ret nc

    ldh a, [rLCDC]
    rst $38
    or b
    ret nc

    pop bc
    rst $38
    ret nc

    or b
    ld a, a
    rst $38
    jr nz, jr_0e0_6368

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    cp $c0
    ld b, b
    add a
    db $fc
    ret nz

    ld b, b
    ld a, a
    db $fc
    ret nz

    ld b, b
    add b
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    and b
    ldh [$81], a
    rst $38
    ldh [rNR41], a
    add c
    rst $38
    and b
    ldh [$81], a
    cp $c0
    ld b, b
    ld b, c
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop bc
    rst $38
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
    inc a
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec sp
    inc a
    ld bc, $df01
    rst $30
    inc bc
    inc bc
    rst $18
    ld hl, sp+$04
    rlca
    ld l, e
    db $fd
    dec bc
    rrca
    db $fc
    rst $38
    rrca
    rrca
    rst $30
    rst $38
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    dec bc
    inc c
    ldh [$3f], a
    dec c
    ld a, [bc]
    ret nz

    ccf
    ld c, $09
    ld bc, $0fff
    ld [$7ffe], sp
    dec bc
    inc c
    nop
    rst $38
    inc c
    rrca
    add c
    rst $38
    rrca
    rrca
    cp $ff
    ld c, $0f
    pop de
    ccf
    dec c
    ld c, $ce
    ccf
    rrca
    inc c
    inc b
    rst $38
    inc b
    rlca
    call $073f
    rlca
    ld a, e
    sbc e
    rlca
    rlca
    ei
    rlc a
    rlca
    cp $e7
    inc b
    rlca
    ld c, $f3
    inc b
    rlca
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    db $fc
    db $fc
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
    ld bc, $fc01
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rrca
    rrca
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $e3
    db $e3
    ret nz

    ret nz

    rst $38
    rst $38
    ld h, b
    ldh [$b7], a
    ld a, a
    ld hl, sp-$08
    ei
    rst $18
    cp $fe
    db $fd
    ccf
    xor l
    rst $30
    xor l
    ld a, a
    xor a
    push af
    ld h, c
    rst $38
    ld a, a
    cp l
    pop bc
    rst $38
    jp $01fd


    rst $38
    ld a, $3e
    inc bc
    rst $38
    nop
    nop
    ld c, a
    rst $38
    nop
    nop
    db $76
    cp $00
    nop
    add $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc a
    db $fc
    nop
    nop
    call nz, Call_000_00fc
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
    ld a, [c]
    cp $00
    nop
    ld a, [$00fe]
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [c]
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
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    ld bc, $fd01
    cp $03
    inc bc
    sbc $ff
    rlca
    rlca
    ld l, e
    rst $38
    ld b, $07
    reti


    ld h, a
    ld b, $07
    ret c

    ld l, a
    ld b, $07
    ldh a, [$7f]
    inc bc
    inc bc
    ld h, b
    sbc a
    ld bc, $f001
    rst $38
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
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
    ccf
    ccf
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [$90]
    nop
    nop
    sbc $3e
    nop
    nop
    dec a
    rst $38
    ret nz

    ret nz

jr_0e0_6668:
    db $ed
    rst $38
    ldh [$e0], a
    ret nz

    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ret nc

    ldh a, [rLCDC]
    rst $38
    or b
    ret nc

    pop bc
    rst $38
    ret nc

    or b
    ld a, a
    rst $38
    jr nz, jr_0e0_6668

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    rlca
    cp $c0
    ld b, b
    add a
    db $fc
    ret nz

    ld b, b
    ld a, a
    db $fc
    ret nz

    ld b, b
    add b
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    ld b, c
    rst $38
    and b
    ldh [$81], a
    rst $38
    ldh [rNR41], a
    add c
    rst $38
    and b
    ldh [$81], a
    cp $c0
    ld b, b
    ld b, c
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop bc
    rst $38
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
    inc a
    inc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    inc bc
    nop
    nop
    ld a, a
    ld a, l
    nop
    nop
    rst $38
    cp $01
    ld bc, $fffe
    ld bc, $7b01
    rst $38
    inc bc
    ld [bc], a
    pop hl
    rst $38
    rlca
    inc b
    ldh [rIE], a
    rlca
    inc b
    ldh [rIE], a
    rlca
    inc b
    ld h, b
    rst $38
    rlca
    inc b
    db $10
    rst $38
    rrca
    inc c
    ld l, a
    cp a
    inc c
    rrca
    and b
    rst $38
    dec e
    ld e, $f0
    rst $38
    ld e, $1d
    or b
    cp a
    ld e, $1d
    sbc b
    sbc a
    dec c
    rrca
    jr jr_0e0_68ff

    ld b, $06
    rra
    rra
    nop
    nop
    jr jr_0e0_6907

    nop
    nop
    jr nz, jr_0e0_692b

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b

jr_0e0_68ff:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    rst $38

jr_0e0_6907:
    rst $38
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
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e0_6963

    nop
    nop
    rra
    rra
    nop
    nop
    rrca

jr_0e0_692b:
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
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
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
    add sp, $18
    nop

jr_0e0_6963:
    nop
    db $fc
    db $f4
    nop
    nop
    cp $0e
    nop
    nop
    rst $28
    ld e, a
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    di
    rst $38
    and b
    ldh [rNR30], a
    rst $20
    ldh a, [$f0]
    dec l
    rst $18
    ld hl, sp-$08
    rra
    ei
    ret c

    ld hl, sp-$45
    rst $38
    xor b
    ret c

    sbc a
    rst $38
    ret c

    ld hl, sp-$0d
    rst $38
    ld hl, sp-$08
    ld e, $e1
    cp b
    ld a, b
    ld c, $f1
    ldh a, [$30]
    rrca
    ldh a, [$a0]
    ld h, b
    rst $20
    ld hl, sp+$40
    ret nz

    ld e, c
    cp a
    add b
    add b
    pop hl
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    sbc [hl]
    rst $38
    ld b, b
    ret nz

    cp a
    rst $38
    ld b, b
    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    sbc $ff
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    add b
    add b
    sbc a
    sbc a
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    ld c, $0e
    nop
    nop
    rrca
    rrca
    nop
    nop
    sbc a
    sbc a
    add b
    add b
    sbc a
    sbc a
    ret nz

    ret nz

    sbc a
    sbc a
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
    ld bc, $8001
    add b
    inc bc
    ld [bc], a
    ld b, b
    ret nz

    rlca
    ld b, $e1
    ld hl, $0706
    and e
    ld h, e
    rlca
    rlca
    jp nz, Jump_000_07c3

    rlca
    rst $00
    push bc
    rlca
    rlca
    add l
    add [hl]
    dec bc
    inc c
    ld b, l
    add $0b
    inc c
    ld c, [hl]
    rst $08
    rla
    jr jr_0e0_6aae

    rst $38
    rla
    jr jr_0e0_6aa0

    rst $38
    rla
    jr jr_0e0_6a97

    rst $38
    db $10
    rra
    ld [hl], b
    rst $38
    ld [$300f], sp
    rst $38
    inc b
    rlca
    jr nc, @+$01

    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $a001
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr @+$21

    nop
    nop
    jr jr_0e0_6a7b

    nop
    nop
    jr jr_0e0_6a7f

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
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e0_6ab7

    nop
    nop
    ld b, b

jr_0e0_6a7b:
    ld a, a
    nop
    nop
    ld b, b

jr_0e0_6a7f:
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b

jr_0e0_6a97:
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a

jr_0e0_6aa0:
    nop
    nop
    jr nz, jr_0e0_6ae3

    nop
    nop
    ld de, $001f
    nop
    ld c, $0e
    nop
    nop

jr_0e0_6aae:
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    rra

jr_0e0_6ab7:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0e0_6afc

    nop
    nop
    ld e, b
    ld l, b
    ldh a, [$f0]
    db $fc
    adc h
    ld hl, sp-$08
    xor h
    call c, Call_000_18e8
    ld a, h
    ld a, h
    cp h
    db $f4
    ld a, h
    ld a, h
    db $f4
    inc c
    inc a

jr_0e0_6ae3:
    inc a
    or h
    ld c, h
    ld e, d
    ld h, [hl]
    xor $1e
    ld e, d
    ld h, [hl]
    rra
    rst $38
    db $dd
    db $e3
    or $ff
    db $dd
    db $e3
    ldh [rIE], a
    db $dd
    db $e3
    ld bc, $c1ff
    rst $38

jr_0e0_6afc:
    ld bc, $82ff
    cp $01
    rst $38
    add h
    db $fc
    nop
    rst $38
    adc b
    ld hl, sp+$00
    rst $38
    or b
    ldh a, [rSTAT]
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld e, a
    cp a
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ldh [rIE], a
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    or b
    cp a
    ld b, b
    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    add b
    add b
    ld de, $001f
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
    cp a
    cp a
    add b
    add b
    cp a
    cp a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    nop
    rrca
    dec bc
    ld bc, $ff01
    ld hl, sp+$03
    inc bc
    cp a
    db $fc
    rlca
    rlca
    cp l
    cp $0b
    rrca
    add [hl]
    rst $38
    rrca
    dec bc
    add e
    rst $38
    dec bc
    rrca
    pop bc
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$c00f], sp
    rst $38
    rra
    db $10
    ld b, b
    rst $38
    rra
    db $10
    ld a, b
    rst $38
    inc e
    inc de
    ld h, a
    rst $38
    rla
    jr jr_0e0_6daf

    rst $38
    ld c, $09
    ldh [rIE], a
    ld [$b10f], sp
    cp a
    rrca
    rrca
    ld a, [hl]
    rst $38
    rrca
    rrca
    pop af
    ld a, a
    rrca
    rrca
    ldh [$7f], a
    dec b
    ld b, $a2
    cp a
    inc bc
    inc bc
    ld b, c
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
    ld b, b
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
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, b
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
    add b
    rst $38
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
    inc e

jr_0e0_6daf:
    inc e
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    cp $9e
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    ld a, $ff
    ldh [$e0], a
    db $ed
    rst $38
    ret nc

    ldh a, [$c1]
    rst $38
    ldh a, [$d0]

jr_0e0_6df8:
    inc bc
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    ldh a, [$f0]
    ld bc, $f0fe
    db $10
    add a
    rst $38
    ldh a, [$90]
    ld a, [$f0fd]
    ld [hl], b
    inc b
    rst $38
    ret nc

    ld [hl], b
    inc b
    rst $38
    ld d, b
    ldh a, [$c6]
    rst $38
    jr nz, jr_0e0_6df8

    cp a
    ld a, a
    ret nz

    ret nz

    add $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    pop bc
    rst $38
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
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop bc
    rst $38
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
    cp [hl]
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    cp a
    cp a
    nop
    nop
    adc [hl]
    adc [hl]
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
    inc b
    nop
    nop
    rrca
    dec bc
    ld bc, $ff01
    ld hl, sp+$03
    inc bc
    cp a
    db $fc
    rlca
    rlca
    cp l
    cp $0b
    rrca
    or [hl]
    rst $38
    rrca
    dec bc
    add e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$c00f], sp
    rst $38
    ld c, $09
    ld a, b
    rst $38
    db $10
    rra
    ld b, a
    rst $38
    ld d, $19
    ld h, b
    rst $38
    rla
    jr jr_0e0_6f2b

    rst $38
    rrca
    ld [$ff60], sp
    ld [$710f], sp
    rst $18
    rlca
    rlca
    sbc $ff
    rlca
    rlca
    or c
    rst $38
    rlca
    rlca
    ldh a, [$bf]
    inc bc
    inc bc
    ld [c], a
    rst $38
    ld bc, $a101
    cp a
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
    ld b, b
    ld a, a
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
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, b
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
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc e

jr_0e0_6f2b:
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    cp $9e
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    ld a, $ff
    ldh [$e0], a
    xor $ff
    ldh a, [$f0]
    ret nz

    rst $38
    add sp, -$08
    nop
    rst $38
    ld hl, sp-$18
    ld bc, $e8ff
    ld hl, sp-$7f
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    ld [hl], h
    adc h
    ld [bc], a
    rst $38
    inc [hl]
    call z, $ff02
    inc h
    call c, $ff03
    ret z

    ld hl, sp-$3a
    db $fd
    ret nc

    ld [hl], b
    cp h
    ld a, a
    ldh [$60], a
    rst $00
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    ld [hl+], a
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    add d
    cp $00
    nop
    add c
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    add c
    rst $38
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
    jp nz, Jump_000_00fe

    nop
    cp h
    cp h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop

jr_0e0_6fe3:
    nop
    ld a, [hl]
    ld a, [hl]
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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rst $38
    db $fc
    ld bc, $bd01
    cp $03
    inc bc
    cp d
    rst $38
    rlca
    rlca
    add e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    dec bc
    add b
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    inc c
    ret nz

    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    rla
    jr jr_0e0_6fe3

    ld a, a
    inc d
    dec de
    ld h, b
    rst $38
    rla
    dec de
    ldh a, [rIE]
    rrca
    ld c, $71
    cp a
    rrca
    ld c, $3e
    rst $38
    ld c, $0f
    ld [hl], c
    rst $38
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    and b
    cp a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
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
    cp a
    rst $38
    nop
    nop
    sbc [hl]
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
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
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    rst $38
    sbc a
    add b
    add b
    sbc $3f
    ret nz

    ret nz

    ld l, $ff
    ldh [$e0], a
    ldh [rIE], a
    ldh a, [$f0]
    ret nz

    rst $38
    add sp, -$08
    nop
    rst $38
    ld hl, sp-$18
    ld bc, $e8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    add sp, $18
    cp $ff
    add sp, $18
    ld [bc], a
    rst $38
    db $f4
    inc c
    inc bc
    rst $38
    inc d
    db $ec
    rlca
    rst $38
    db $f4
    db $ec
    rst $00
    cp $78
    cp b

jr_0e0_7110:
    cp [hl]
    ld a, a
    ld a, b
    cp b
    rst $00
    rst $38
    jr c, jr_0e0_7110

    inc bc
    rst $38
    ldh a, [$f0]
    ld [bc], a
    cp $e0
    ldh [rNR43], a
    cp $00
    nop
    pop bc
    rst $38
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
    jp Jump_000_00ff


    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld a, a
    ld a, a
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
    add b
    add b
    jr c, jr_0e0_71a9

    ld b, b
    ret nz

    jr nc, jr_0e0_71ad

    add b
    add b
    inc hl
    ccf
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    ccf
    inc a
    ld bc, $fd01
    cp $03

jr_0e0_71a9:
    inc bc
    cp [hl]
    rst $38
    rlca

jr_0e0_71ad:
    rlca
    cp e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    dec bc
    add b
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rla
    jr jr_0e0_7242

    rst $38
    ld d, $19
    jr nz, @+$01

    ld [de], a
    dec e
    jr nz, @+$01

    add hl, bc
    rrca
    ldh [rIE], a
    dec b
    rlca
    or c
    ld e, a
    inc bc
    inc bc
    sbc [hl]
    ld a, a
    ld bc, $f101
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
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
    ld b, b
    ld a, a
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
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc [hl]
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
    inc a
    inc a
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
    jr jr_0e0_7244

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e0_7242:
    nop
    nop

jr_0e0_7244:
    nop
    nop
    nop
    nop

jr_0e0_7248:
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    rst $38
    rrca
    ret nz

    ret nz

    cp $9f
    ldh [$e0], a
    sbc $3f
    ldh a, [$f0]
    ld [hl], $ff
    add sp, -$08
    ldh [rIE], a
    ld hl, sp-$18
    ret nz

    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    adc b
    ld hl, sp-$71
    rst $38
    jr c, jr_0e0_7248

    pop af
    rst $38
    inc b
    db $fc
    inc bc
    rst $38
    inc [hl]
    call z, $ff03
    ld [hl], h
    adc h
    inc bc
    rst $38
    ld a, b
    adc b
    rst $00
    db $fd
    ld [$bdf8], sp
    ld a, a
    ldh a, [$f0]
    add $ff
    ldh a, [$f0]
    rlca
    cp $f0
    ldh a, [rNR44]
    rst $38
    ldh [$e0], a
    jp nz, $c0fe

    ret nz

    add c
    rst $38
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
    add c
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
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b

jr_0e0_72d0:
    add b
    rst $38
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
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    ld a, $3f
    jr nz, jr_0e0_72d0

    jr c, jr_0e0_7331

    ld b, b
    ret nz

    jr nc, jr_0e0_7335

    add b
    add b
    inc hl
    ccf
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    ccf
    inc a
    ld bc, $fd01
    cp $03
    inc bc
    cp [hl]
    rst $38
    dec b

jr_0e0_7331:
    rlca
    db $db
    rst $38
    rlca

jr_0e0_7335:
    dec b
    pop bc
    rst $38
    dec b
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    inc b
    ret nz

    ccf
    rlca
    inc b
    ldh a, [rIE]
    rlca
    rlca
    xor a
    ld e, a
    dec b
    rlca
    sub b
    ld a, a
    dec b
    rlca
    db $10
    rst $38
    ld [bc], a
    inc bc
    ld sp, $01ff
    ld bc, $fffe
    nop
    nop
    ld sp, $003f
    nop
    jr nz, jr_0e0_73a3

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp [hl]
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
    ld b, c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    jr c, jr_0e0_73d4

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e0_73a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0e0_73d4:
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    rst $38
    rrca
    ret nz

    ret nz

    cp $9f
    ldh [$e0], a
    sbc $3f
    ldh a, [$f0]
    jr nc, @+$01

    add sp, -$08
    ldh [rIE], a
    ld hl, sp-$18
    pop bc
    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    adc b
    ld hl, sp+$01
    rst $38
    ld a, h
    add h
    adc a
    rst $38
    ld a, h
    add h
    di
    rst $38
    inc e
    db $e4
    inc bc
    rst $38
    ld [hl], h
    adc h
    inc bc
    rst $38
    cp b
    ret z

    add $fe
    adc b
    ld hl, sp-$41
    ld a, a
    ld a, b
    ld hl, sp-$39
    rst $38
    ld hl, sp+$78
    inc bc
    rst $38
    ld hl, sp+$78
    ld [hl+], a
    cp $d0
    or b
    pop bc
    rst $38
    ld h, b
    ld h, b
    add c
    rst $38
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
    add c
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
    cp l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    ccf
    inc a
    ld bc, $fd01
    cp $03
    inc bc
    cp [hl]
    rst $38
    rlca
    rlca
    cp e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    dec bc
    add b
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rla
    jr jr_0e0_7542

    rst $38
    ld d, $19
    jr nz, @+$01

    ld [de], a
    dec e
    jr nz, @+$01

    add hl, bc
    rrca
    ldh [rIE], a
    dec b
    rlca
    or c
    ld e, a
    inc bc
    inc bc
    sbc [hl]
    ld a, a
    ld bc, $f101
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
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
    ld b, b
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
    ld b, b
    ld a, a
    nop
    nop
    ld hl, $003f
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
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e0_7542:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e0_7548:
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e0_7550:
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    rst $38
    rrca
    ret nz

    ret nz

    cp $9f
    ldh [$e0], a
    sbc $3f
    ldh a, [$f0]
    ld [hl], $ff
    add sp, -$08
    ldh [rIE], a
    ld hl, sp-$18
    ret nz

    rst $38
    add sp, -$08
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    adc b
    ld hl, sp-$71
    rst $38
    jr c, jr_0e0_7548

    pop af
    rst $38
    ld [$03f8], sp
    rst $38
    jr c, jr_0e0_7550

    inc bc
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld a, b
    adc b
    rst $00
    db $fd
    ld [$bdf8], sp
    ld a, a
    ldh a, [$f0]
    add $ff
    ldh a, [$f0]
    rlca
    cp $f0
    ldh a, [rNR44]
    rst $38
    ldh [$e0], a
    jp nz, $c0fe

    ret nz

    add c
    rst $38
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
    add c
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
    nop

jr_0e0_75e3:
    nop
    ld a, $3e
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
    nop
    nop
    ld e, $1e
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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    rst $38
    db $fc
    ld bc, $bd01
    cp $03
    inc bc
    cp d
    rst $38
    rlca
    rlca
    add e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    dec bc
    add b
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    inc c
    ret nz

    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    rla
    jr jr_0e0_75e3

    ld a, a
    inc d
    dec de
    ld h, b
    rst $38
    rla
    dec de
    ldh a, [rIE]
    rrca
    ld c, $71
    cp a
    rrca
    ld c, $3e
    rst $38
    ld c, $0f
    ld [hl], c
    rst $38
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    and b
    cp a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
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
    ld a, a
    ld a, a
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
    db $fc
    db $fc
    ld bc, $0e01
    cp $00
    nop
    add [hl]
    cp $00
    nop
    ld h, d
    ld a, [hl]
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    rst $38
    sbc a
    add b
    add b
    sbc $3f
    ret nz

    ret nz

    ld l, $ff
    ldh [$e0], a
    ldh [rIE], a
    ldh a, [$f0]
    ret nz

    rst $38
    add sp, -$08
    nop
    rst $38
    ld hl, sp-$18
    ld bc, $e8ff
    ld hl, sp+$01
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    add sp, $18
    cp $ff
    add sp, $18
    ld [bc], a
    rst $38
    db $f4
    inc c
    inc bc
    rst $38
    inc d
    db $ec
    rlca
    rst $38
    db $f4
    db $ec
    rst $00
    cp $78
    cp b

jr_0e0_7710:
    cp [hl]
    ld a, a
    ld a, b
    cp b
    rst $00
    rst $38
    jr c, jr_0e0_7710

    inc bc
    rst $38
    ldh a, [$f0]
    ld [bc], a
    cp $e0
    ldh [rNR43], a
    cp $00
    nop
    pop bc
    rst $38
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
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp h
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    cp [hl]
    cp [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    ld bc, $ff01
    ld hl, sp+$03
    inc bc
    cp a
    db $fc
    rlca
    rlca
    cp l
    cp $0b
    rrca
    or [hl]
    rst $38
    rrca
    dec bc
    add e
    rst $38
    dec bc
    rrca
    add c
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$c00f], sp
    rst $38
    ld c, $09
    ld a, b
    rst $38
    db $10
    rra
    ld b, a
    rst $38
    ld d, $19
    ld h, b
    rst $38
    rla
    jr jr_0e0_782b

    rst $38
    rrca
    ld [$ff60], sp
    ld [$710f], sp
    rst $18
    rlca
    rlca
    sbc $ff
    rlca
    rlca
    or c
    rst $38
    rlca
    rlca
    ldh a, [$bf]
    inc bc
    inc bc
    ld [c], a
    rst $38
    ld bc, $a101
    cp a
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
    ld b, b
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
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    ld bc, $fe01

jr_0e0_782b:
    cp $02
    inc bc
    ld a, $fe
    ld bc, $0e01
    cp $00
    nop
    add [hl]
    cp $00
    nop
    ld h, d
    ld a, [hl]
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    cp $9e
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    ld a, $ff
    ldh [$e0], a
    xor $ff
    ldh a, [$f0]
    ret nz

    rst $38
    add sp, -$08
    nop
    rst $38
    ld hl, sp-$18
    ld bc, $e8ff
    ld hl, sp-$7f
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    ld [hl], h
    adc h
    ld [bc], a
    rst $38
    inc [hl]
    call z, $ff02
    inc h
    call c, $ff03
    ret z

    ld hl, sp-$3a
    db $fd
    ret nc

    ld [hl], b
    cp h
    ld a, a
    ldh [$60], a
    rst $00
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    ld [hl+], a
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    add d
    cp $00
    nop
    add c
    rst $38
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

Jump_0e0_78b8:
    add c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp h
    rst $38
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
    jp Jump_000_00ff


    nop
    cp a
    cp a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
