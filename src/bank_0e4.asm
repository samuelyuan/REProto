SECTION "ROM Bank $0e4", ROMX[$4000], BANK[$e4]

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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rra
    rra
    add b
    rst $38
    rra
    rra
    ret nz

    rst $38
    ld de, $c01f
    rst $38
    cpl
    jr nc, jr_0e4_40a3

jr_0e4_4043:
    rst $38
    cpl
    jr nc, jr_0e4_40c6

    rst $38
    cpl
    jr nc, jr_0e4_40ab

    rst $38
    ld hl, $e03e
    rst $38
    daa
    jr c, jr_0e4_4043

    rst $38
    inc de
    inc e
    rst $38
    rst $38
    add hl, bc
    rrca
    ldh a, [rIE]
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ret nz

    rst $38
    rlca
    rlca
    ret z

    cp a
    inc bc
    inc bc
    rst $00
    cp a
    ld bc, $8001
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
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101

jr_0e4_40a3:
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, b

jr_0e4_40ab:
    ld a, b
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
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0e4_40c6:
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
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08
    add b
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    call nz, $03fc
    rst $38
    ld a, d
    add [hl]
    rst $38
    rst $38
    ld a, d
    add [hl]
    inc bc
    rst $38
    ld a, d
    add [hl]
    inc bc
    rst $38
    jp nz, $07be

    rst $38
    ld a, [c]
    adc [hl]
    rst $38
    rst $38
    db $e4
    sbc h
    rlca
    rst $38
    ret z

    ld hl, sp+$03
    rst $38
    ld hl, sp-$08
    ld bc, $f8ff
    ld hl, sp+$09
    cp $f0
    ldh a, [$f1]
    cp $e0
    ldh [$80], a
    rst $38
    ret nz

    ret nz

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
    ld e, [hl]
    ld a, a
    add b
    add b
    ld b, b
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

    ccf
    ccf
    add b
    add b
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
    ld bc, $f801
    rst $38
    rlca
    rlca
    ld a, a
    rst $38
    rrca
    rrca
    ld [hl], b
    rst $38
    rra
    rra
    nop
    rst $38
    rla
    rra
    inc bc
    rst $38
    rra
    rra
    add c
    rst $38
    rra
    rra
    add c
    rst $38
    rra
    rra
    pop bc
    rst $38
    ld d, $19
    ret nz

    rst $38
    ld [$7f0f], sp
    rst $38
    rlca
    rlca
    ret nz

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
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
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
    sub b
    rst $38
    nop
    nop
    adc a
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
    cp $fe
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
    ld e, $fe
    nop
    nop
    db $fd
    rst $38
    add b
    add b
    dec c
    rst $38
    ret nz

    ret nz

    ld bc, $e0ff
    ldh [$c1], a
    rst $38
    or b
    ret nc

    inc bc
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    rlca
    cp $40
    ret nz

    db $fc
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    db $fc
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
    ld [bc], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [c], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b

jr_0e4_42bc:
    add b
    rst $38
    add b
    add b

jr_0e4_42c0:
    pop bc
    rst $38
    add b
    add b

jr_0e4_42c4:
    ld a, a
    ld a, a
    add b
    add b
    ld a, [hl]
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

    jr nz, jr_0e4_4319

    jr nz, jr_0e4_42bc

    jr nz, jr_0e4_431d

    jr nz, jr_0e4_42c0

    jr nz, jr_0e4_4321

    jr nz, jr_0e4_42c4

    rra
    rra
    ret nz

    ret nz

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
    ldh [$e0], a
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
    inc bc
    inc bc
    nop

jr_0e4_4319:
    nop
    inc bc
    inc bc
    nop

jr_0e4_431d:
    nop
    inc bc
    inc bc
    nop

jr_0e4_4321:
    nop
    ld a, $3f
    ld bc, $df01
    rst $38
    rlca
    rlca
    call c, $0fff
    rrca
    ret nz

    rst $38
    add hl, bc
    rrca
    pop bc
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ldh [rIE], a
    rrca
    dec bc
    ldh [rIE], a
    inc c
    dec bc
    jr nc, @+$01

    ld [$3f0f], sp
    rst $38
    ld a, [bc]
    dec c
    jr nc, @+$01

    ld b, $05
    jr nc, @+$01

    inc b
    rlca
    jr c, @+$01

    inc bc
    inc bc
    rst $18
    rst $38
    inc bc
    inc bc
    ld hl, sp-$21
    inc bc
    inc bc
    ldh a, [rIE]
    ld bc, $e001
    rst $38
    nop
    nop
    db $e4
    rst $38
    nop
    nop
    inc hl
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
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld sp, $003f
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
    ld l, $3f
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1e
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
    rra
    rra
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    ld a, $3e
    nop
    nop
    inc h
    inc a
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld [hl], b
    ldh a, [rTAC]
    rst $38
    ld a, b
    ld hl, sp+$00
    rst $38
    ld a, h
    db $fc
    ldh a, [rIE]
    ld [hl], h
    db $fc
    ld b, b
    rst $38
    ld a, h
    db $fc
    ld b, b
    rst $38
    db $fc
    db $fc
    ld b, b
    rst $38
    cp h
    call nz, $ff01
    cp h
    call nz, $ffff
    add h
    db $fc
    ld bc, $84ff
    db $fc
    ld bc, $88ff
    ld hl, sp+$03
    rst $38
    ld hl, sp-$78
    rst $38
    rst $38
    ld hl, sp-$78
    inc bc
    rst $38
    adc b
    ld hl, sp+$01
    rst $38
    ld a, b
    ld hl, sp+$01
    rst $38
    ld hl, sp+$78
    dec b
    rst $38
    ld hl, sp+$78
    ld sp, hl
    rst $38
    ret nc

    or b
    ld b, b
    rst $38
    ldh [$e0], a
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
    ld b, b
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
    ld e, [hl]
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
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    sbc [hl]
    sbc [hl]
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
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
    ld [$600f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    ld [hl], b
    rst $38
    ld [$7f0f], sp
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    ret nz

    cp a
    inc bc
    inc bc
    ret z

    rst $38
    ld bc, $c701
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
    cp [hl]
    rst $38
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
    sbc l
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
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08

jr_0e4_4574:
    add b
    rst $38
    ld hl, sp-$08

jr_0e4_4578:
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    adc b
    ld hl, sp+$03
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    jr jr_0e4_4574

    inc bc
    rst $38
    jr jr_0e4_4578

    rlca
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld [hl], b
    sub b
    rlca
    rst $38
    ld [hl], b
    sub b
    inc bc
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ldh a, [$f0]
    dec bc
    cp $f0
    ldh a, [$f3]
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
    inc a
    inc a
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
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
    ld [$600f], sp
    rst $38
    ld c, $09
    ld a, a
    rst $38
    ld c, $09
    ld h, b
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    rrca
    ld [$ff70], sp
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    ret z

    cp a
    rlca
    rlca
    rst $00
    cp a
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
    ld b, c
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e4_46d0:
    ldh a, [$f0]
    nop
    nop

jr_0e4_46d4:
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08

jr_0e4_46f8:
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [$fff8], sp
    rst $38
    jr c, jr_0e4_46d0

    inc bc
    rst $38
    jr c, jr_0e4_46d4

    inc bc
    rst $38
    jr jr_0e4_46f8

    rlca
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld l, b
    sbc b
    rlca
    rst $38
    ld l, b
    sbc b
    inc bc
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    dec bc
    cp $f0
    ldh a, [$f3]
    cp $f0
    ldh a, [$81]
    rst $38
    ldh [$e0], a
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
    jp Jump_000_00ff


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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
    rrca
    add b
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
    ld h, b
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    inc b
    ld [hl], b
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    ret z

    cp a
    rlca
    rlca
    rst $00
    cp a
    ld [bc], a
    inc bc
    ret nz

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
    ld h, e
    ld a, a
    nop
    nop
    cp a
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

jr_0e4_4858:
    ldh a, [$f0]
    nop
    nop

jr_0e4_485c:
    ldh a, [$f0]
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08

jr_0e4_4874:
    add b
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    jr jr_0e4_4874

    inc bc
    rst $38
    jr c, jr_0e4_4858

    rlca
    rst $38
    jr c, jr_0e4_485c

    rst $38
    rst $38
    ld [$07f8], sp
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    inc bc
    cp $f0
    ldh a, [$0b]
    rst $38
    ldh [$e0], a
    pop af
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
    rst $38
    rst $38
    nop
    nop
    jp Jump_000_00ff


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
    ld e, a
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
    daa
    ccf
    add b
    add b
    add hl, de
    rra
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    ld [$ff40], sp
    rrca
    ld [$ff60], sp
    ld [$7f0f], sp
    rst $38
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    inc b
    ldh a, [$7f]
    rlca
    inc b
    rst $38
    ld a, a
    inc b
    rlca
    ld [hl], b
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    ldh [$bf], a
    rlca
    rlca
    add sp, -$41
    ld [bc], a
    inc bc
    rst $20
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
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08

jr_0e4_49f4:
    add b
    rst $38
    ld hl, sp-$08

jr_0e4_49f8:
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    jr jr_0e4_49f4

    inc bc
    rst $38
    jr jr_0e4_49f8

    rlca
    rst $38
    ld [$fef8], sp
    rst $38
    ldh a, [$f0]
    rlca
    cp $f0
    ldh a, [$03]
    rst $38
    ldh a, [$f0]
    ld bc, $e0ff
    ldh [$09], a
    rst $38
    ret nz

    ret nz

    pop af
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
    db $dd
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
    ld c, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    daa
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    add hl, bc
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
    rrca
    add b
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
    ld h, b
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    inc b
    ld [hl], b
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    add sp, -$41
    rlca
    rlca
    rst $20
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

jr_0e4_4b58:
    ldh a, [$f0]
    nop
    nop

jr_0e4_4b5c:
    ldh a, [$f0]
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08

jr_0e4_4b74:
    add b
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [$fff8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    jr jr_0e4_4b74

    inc bc
    rst $38
    jr c, jr_0e4_4b58

    rlca
    rst $38
    jr c, jr_0e4_4b5c

    rst $38
    rst $38
    ld [$07f8], sp
    rst $38
    ldh a, [$f0]
    ld [bc], a
    rst $38
    ldh a, [$f0]
    ld bc, $f0fe
    ldh a, [$09]
    rst $38
    ldh [$e0], a
    pop af
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
    cp [hl]
    rst $38
    add b
    add b
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
    call c, $80ff
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
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
    ld [$600f], sp
    rst $38
    ld c, $09
    ld a, a
    rst $38
    ld c, $09
    ld h, b
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    rrca
    ld [$ff70], sp
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    add sp, -$41
    rlca
    rlca
    rst $20
    cp a
    inc bc
    inc bc
    ret nz

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
    ld a, a
    ld a, a
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
    ldh a, [$f0]
    nop
    nop

jr_0e4_4cd0:
    ldh a, [$f0]
    nop
    nop

jr_0e4_4cd4:
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08

jr_0e4_4cf8:
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld [$fff8], sp
    rst $38
    jr c, jr_0e4_4cd0

    inc bc
    rst $38
    jr c, jr_0e4_4cd4

    inc bc
    rst $38
    jr jr_0e4_4cf8

    rlca
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld l, b
    sbc b
    rlca
    rst $38
    ld l, b
    sbc b
    inc bc
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    add hl, bc
    cp $f0
    ldh a, [$f1]
    cp $f0
    ldh a, [$80]
    rst $38
    ldh [$e0], a
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
    pop bc
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
    ld a, h
    ld a, a
    inc bc
    inc bc
    cp a
    rst $38
    rlca
    rlca
    cp b
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
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
    ld [$600f], sp
    rst $38
    ld [$7f0f], sp
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    ld [hl], b
    rst $38
    ld [$7f0f], sp
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    rlca
    rlca
    and b
    rst $38
    rlca
    rlca
    ldh [$bf], a
    inc bc
    inc bc
    add sp, -$01
    ld bc, $c701
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
    ld a, a
    ld a, a
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
    ld a, l
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
    ld a, [c]
    cp $00
    nop
    call z, Call_000_00fc
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    nop
    rst $38
    ld hl, sp-$08
    ldh [rIE], a
    add sp, -$08

jr_0e4_4e74:
    add b
    rst $38
    ld hl, sp-$08

jr_0e4_4e78:
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    adc b
    ld hl, sp+$03
    rst $38
    ld a, b
    adc b
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    jr jr_0e4_4e74

    inc bc
    rst $38
    jr jr_0e4_4e78

    rlca
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld [hl], b
    sub b
    rlca
    rst $38
    ld [hl], b
    sub b
    inc bc
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh a, [$f0]
    add hl, bc
    cp $f0
    ldh a, [$f1]
    cp $f0
    ldh a, [$81]
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
    db $e3
    rst $38
    nop
    nop
    cp $ff
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
    ld a, h
    ld a, a
    ld bc, $bf01
    rst $38
    inc bc
    inc bc
    cp b
    rst $38
    rlca
    rlca
    add e
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    add a
    rst $38
    rrca
    rrca
    ret c

    rst $38
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ldh [$3f], a
    dec b
    ld b, $17
    rst $38
    ld [bc], a
    inc bc
    jr @+$01

    ld bc, $1001
    rst $38
    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    add e
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e4_4fe3

    nop
    nop
    jr nz, jr_0e4_4fe7

    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e4_4fe3:
    nop
    nop
    nop
    nop

jr_0e4_4fe7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rst $38
    nop
    nop
    cp $ff
    ldh [$e0], a
    ld c, $ff
    ldh a, [$f0]
    ldh [rIE], a
    ld hl, sp-$08
    add b
    rst $38
    add sp, -$08
    nop
    rst $38
    ld hl, sp-$08
    ldh a, [rIE]
    ld hl, sp-$08
    dec c
    rst $38
    cp b
    ret z

    inc bc
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld a, b
    adc b
    ei
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    ld [$03f8], sp
    rst $38
    adc b
    ld a, b
    inc bc
    rst $38
    adc b
    ld a, b
    add hl, bc
    rst $38
    adc b
    ld a, b
    pop af
    rst $38
    add sp, -$08
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh a, [$f0]
    pop bc
    rst $38
    ldh a, [$f0]
    ld b, c
    rst $38
    ld d, b
    ldh a, [rSTAT]
    rst $38
    ldh [$e0], a
    rst $18
    rst $38
    db $10
    ldh a, [$a1]
    cp a
    db $10
    ldh a, [rNR42]
    ccf
    ldh a, [$f0]
    ld hl, $883f
    ld hl, sp+$20
    ccf
    ld hl, sp-$08
    jr nc, @+$41

    ld b, h
    db $fc
    rra
    rra
    ld hl, sp-$08
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
    rrca
    rrca
    nop
    nop
    ld a, a
    ld a, a
    rlca
    rlca
    and a
    rst $18
    add hl, bc
    ld c, $db
    scf
    rla
    rra
    ld [hl], b
    rst $38
    cpl
    ccf
    ld a, a
    rst $38
    scf
    ccf
    ld h, b
    rst $38
    ld a, $3f
    nop
    rst $38
    ld a, $3f
    rra
    rst $38
    ld e, $1f
    inc b
    rst $38
    ld c, $0f
    inc b
    rst $38
    rlca
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    inc bc
    inc bc
    rlca
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ei
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0501
    db $fd
    nop
    nop
    ld hl, sp-$08
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
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    inc b
    add b
    add b
    rst $00
    call nz, $8080
    rst $30
    db $f4
    ld b, b
    ret nz

    db $fc
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld b, b
    ret nz

    rst $18
    db $fc
    and b
    ld h, b
    ld a, e
    db $fc
    ldh [rNR41], a
    db $e3
    rst $38
    ld h, b
    and b
    ld h, e
    rst $38
    and b
    ldh [$03], a
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    ld bc, $c0ff
    ret nz

    ld bc, $c0ff
    ret nz

    ld bc, $80ff
    add b
    inc bc
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
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
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [bc], a
    cp $00
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
    rla
    rra
    nop
    nop
    ld a, e
    ld [hl], a
    rlca
    rlca
    ldh a, [rIE]
    ld c, $0f
    ccf
    rst $38
    ld e, $1f
    jr nc, @+$01

    ld e, $1f
    nop
    rst $38
    inc e
    rra
    rlca
    rst $38
    inc e
    rra
    ld bc, $1cff
    rra
    ld bc, $0cff
    rrca
    ld bc, $06ff
    rlca
    nop
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    inc bc
    inc bc
    rlca
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ei
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0501
    db $fd
    nop
    nop
    ld hl, sp-$08
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
    ld hl, sp-$08
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
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], a
    rst $38
    add b
    add b
    rst $30
    rst $38
    ret nz

    ret nz

    scf
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    jp $e0ff


    ldh [$03], a
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    ld a, [hl-]
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld [bc], a
    cp $00
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
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [bc], a
    cp $00
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
    dec bc
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp-$01
    ld bc, $f701
    rst $38
    inc bc
    inc bc
    jr nc, @+$01

    ld b, $07
    scf
    rst $38
    inc c
    rrca
    ld bc, $0cff
    rrca
    ld bc, $0cff
    rrca
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    ld b, $07
    rlca
    rst $38
    ld b, $07
    jr c, @+$01

    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    add a
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    inc bc
    inc bc
    rlca
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ei
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0501
    db $fd
    nop
    nop
    ld hl, sp-$08
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
    ld hl, sp-$08
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    dec de
    rst $38
    ret nz

    ret nz

    db $fd
    rst $38
    ldh [$e0], a
    dec c
    rst $38
    ldh a, [$f0]
    pop bc
    rst $38
    ret nc

    ldh a, [rSB]
    rst $38
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [rSB]
    rst $38
    sub b
    ldh a, [rSB]
    cp $d0
    jr nc, @+$01

    db $fc
    ldh [rNR41], a
    inc bc
    db $fc
    ldh [rNR41], a
    inc bc
    db $fc
    and b
    ld h, b
    nop
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    add b
    add b
    inc e
    db $fc
    nop
    nop
    db $e4
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
    ld [bc], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    add [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [bc], a
    cp $00
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
    ccf
    ccf
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $dc01
    rst $38
    ld bc, $8801
    rst $38
    ld bc, $8801
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $af01
    rst $38
    nop
    nop
    ldh a, [rIE]
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
    ld [hl], b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e4_559f

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e4_55a7

    nop
    nop
    ld sp, $003f
    nop
    ld e, $1f
    nop
    nop
    ld de, $001f
    nop
    ld de, $001f
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
    db $10

jr_0e4_559f:
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rlca

jr_0e4_55a7:
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    db $fd
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
    cp $86
    nop
    nop
    ld a, [$0086]
    nop
    ld a, d
    add [hl]
    nop
    nop
    ld c, $f2
    nop
    nop
    ld a, $c2
    nop
    nop
    rra
    rst $20
    nop
    nop
    rst $08
    or $80
    add b
    ccf
    rst $38
    add b
    add b
    rlca
    cp $80
    add b
    rlca
    ld sp, hl
    nop
    nop
    ld b, $fe
    nop
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

jr_0e4_5638:
    add d
    cp $00
    nop

jr_0e4_563c:
    add c
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b

jr_0e4_5648:
    pop hl
    rst $38
    add b
    add b
    jr nz, @+$01

    ld b, b
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    db $10
    rst $38
    jr nz, jr_0e4_5638

    db $10
    rst $38
    jr nz, jr_0e4_563c

    db $10
    rst $38
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    jr nz, jr_0e4_5648

    add e
    add e
    ret nz

    ret nz

    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    add e
    add e
    ldh [$e0], a
    db $e3
    db $e3
    ldh a, [$f0]
    di
    di
    ld hl, sp-$08
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
    ccf
    ccf
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $dc01
    rst $38
    ld bc, $8801
    rst $38
    ld bc, $8801
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $af01
    rst $38
    nop
    nop
    ldh a, [rIE]
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
    ld [hl], b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e4_5717

    nop
    nop
    jr nc, jr_0e4_571b

    nop
    nop
    jr nc, jr_0e4_571f

    nop
    nop
    jr nc, jr_0e4_5723

    nop
    nop
    cpl
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
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
    rlca
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10

jr_0e4_5717:
    rra
    nop
    nop
    db $10

jr_0e4_571b:
    rra
    nop
    nop
    db $10

jr_0e4_571f:
    rra
    nop
    nop
    db $10

jr_0e4_5723:
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    db $fd
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
    cp $86
    nop
    nop
    ld a, [$0086]
    nop
    ld a, d
    add [hl]
    nop
    nop
    ld c, $f2
    nop
    nop
    ld a, $c2
    nop
    nop
    rra
    rst $20
    nop
    nop
    rst $38
    or $80
    add b
    rrca
    rst $38
    add b
    add b
    rlca
    cp $80
    add b
    rlca
    ld sp, hl
    nop
    nop
    add [hl]
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
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
    ld b, b
    rst $38
    add b
    add b
    ld h, c
    rst $38
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
    ld e, $1e
    nop
    nop
    sbc [hl]
    sbc [hl]
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
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp-$01
    ld bc, $7f01
    rst $38
    inc bc
    inc bc
    jr @+$01

    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add c
    rst $38
    rlca
    rlca
    add c
    rst $38
    rlca
    rlca
    pop bc
    rst $38
    dec b
    ld b, $c0
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add e
    rst $38
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
    jr c, jr_0e4_58e8

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
    nop
    nop
    nop
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
    rst $20
    rst $20
    nop
    nop

jr_0e4_58e8:
    rst $38
    db $fd
    add b
    add b
    ccf
    db $fd
    add b
    add b
    ld sp, hl
    rst $38
    add b
    add b
    inc sp
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ldh [$e0], a
    jp $e0ff


    ldh [rTAC], a
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    dec b
    rst $38
    ldh [rNR41], a
    dec b
    rst $38
    ldh [rNR41], a
    rst $38
    rst $38
    ldh [rNR41], a
    dec b
    rst $38
    ldh [rNR41], a
    dec c
    rst $38
    ldh [rNR41], a
    rrca
    rst $38
    jr nz, @-$1e

    rst $38
    rst $38
    ret nz

    ret nz

    inc c
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, $00ff
    nop
    pop bc
    rst $38
    nop
    nop
    nop
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
    ld h, c
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp-$01
    ld bc, $7f01
    rst $38
    inc bc
    inc bc
    jr @+$01

    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    add c
    rst $38
    rlca
    rlca
    add c
    rst $38
    rlca
    rlca
    pop bc
    rst $38
    dec b
    ld b, $c0
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add e
    rst $38
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
    jr c, jr_0e4_5a68

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
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop

jr_0e4_5a68:
    ldh a, [$f0]
    nop
    nop
    ld a, $fe
    nop
    nop
    ld sp, hl
    rst $38
    add b
    add b
    inc sp
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ldh [$e0], a

jr_0e4_5a7c:
    jp $d0ff


    ldh a, [rTAC]
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh a, [$f0]
    dec b
    rst $38
    db $10
    ldh a, [rTIMA]
    rst $38
    ld d, b
    or b
    db $fd
    rst $38
    ld d, b
    or b
    dec b
    rst $38
    ld d, b
    or b
    rrca
    rst $38
    jr nz, jr_0e4_5a7c

    rrca
    rst $38
    ret nz

    ret nz

    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, $00ff
    nop
    pop bc
    rst $38
    nop
    nop
    nop
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
    ld h, c
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    rrca
    nop
    nop
    ld a, b
    ld a, a
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    ld [hl], b
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc c
    rrca
    rlca
    rst $38
    inc e
    rra
    ld bc, $3cff
    ccf
    ld bc, $2eff
    ccf
    ld bc, $3eff
    ccf
    nop
    rst $38
    dec a
    ccf
    rra
    rst $38
    ld a, [hl-]
    dec a
    ldh [rIE], a
    ld e, $19
    ld b, b
    rst $38
    ld c, $09
    ld b, b
    rst $38
    inc b
    rlca
    jr nz, @+$01

    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    add e
    rst $38
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
    jr c, jr_0e4_5be8

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
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop

jr_0e4_5be8:
    ld a, e
    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    ret nz

    ret nz

jr_0e4_5bf0:
    add hl, de
    rst $38
    ret nz

    ret nz

    ld bc, $e0ff
    ldh [$c1], a
    rst $38
    ldh [$e0], a
    ld bc, $a0ff
    ldh [rSB], a
    rst $38
    ld d, b
    or b
    inc bc
    rst $38
    ld d, b
    or b
    ld a, l
    rst $38
    ld d, b
    or b
    add l
    rst $38
    jr nz, jr_0e4_5bf0

    dec b
    rst $38
    ld b, b
    ret nz

    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, $00ff
    nop
    pop bc
    rst $38
    nop
    nop
    nop
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
    ld h, c
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
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
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld hl, sp-$01
    rlca
    rlca
    ld a, a
    rst $38
    rrca
    rrca
    ld [hl], b
    rst $38
    rra
    rra
    nop
    rst $38
    rla
    rra
    rlca
    rst $38
    rra
    rra
    ld bc, $1fff
    rra
    add c
    rst $38
    rra
    rra
    add c
    rst $38
    db $10
    rra
    ret nz

    rst $38
    inc e
    inc de
    rst $38
    rst $38
    inc e
    inc de
    ret nz

    rst $38
    jr jr_0e4_5d1d

    ret nz

    rst $38
    ld e, $11
    ldh [rIE], a
    ld d, $19
    rst $38
    rst $38
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    add b
    ld a, a
    rrca

jr_0e4_5d1d:
    rrca
    sub b
    ld a, a
    ld a, [bc]
    dec c
    rrca
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    ld bc, $3a01
    cp $01
    ld bc, $fe26
    inc bc
    inc bc
    ld [c], a
    cp $02
    inc bc
    ld h, $fe
    inc bc
    inc bc
    and $fe
    ld [bc], a
    inc bc
    ld l, $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e4_5d98:
    ld a, $fe
    nop
    nop
    db $fd
    rst $38
    ret nz

    ret nz

    dec e
    rst $38
    ldh [$e0], a
    ld bc, $f0ff
    ldh a, [$c1]
    rst $38
    ret nc

    ldh a, [rSB]
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh a, [$f0]
    ld b, $ff
    db $10
    ldh a, [$fe]
    rst $38
    ld [hl], b
    sub b
    ld b, $ff
    ld [hl], b
    sub b
    ld b, $ff
    jr nc, jr_0e4_5d98

    ld c, $ff
    ldh a, [rNR10]
    cp $ff
    ret nc

    jr nc, jr_0e4_5de0

    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    inc de
    db $fd
    ldh [$e0], a

jr_0e4_5de0:
    ldh [rIE], a
    and b
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    cp c
    rst $38
    nop
    nop
    ret


    rst $38
    nop
    nop
    adc a
    rst $38
    add b
    add b
    ret z

    rst $38
    add b
    add b
    rst $08
    rst $38
    add b
    add b
    add sp, -$01
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc a
    ccf
    nop
    nop
    rst $38
    rst $38
    ld bc, $3801
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld b, $07
    inc bc
    rst $38
    ld b, $07
    nop
    rst $38
    ld b, $07
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    rlca
    rlca
    adc a
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ldh [$3f], a
    ld bc, $6001
    cp a
    nop
    nop
    or b
    rst $18
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add h
    rst $38
    nop
    nop
    add e
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
    ld h, c
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
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
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
    rst $38
    rst $38
    ret nz

    ret nz

    dec a
    rst $38
    ldh [$e0], a
    db $fd
    rst $38
    ldh a, [$f0]
    dec c
    rst $38
    add sp, -$08
    ld bc, $fcff
    db $fc
    pop hl
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    call nc, $81ec
    rst $38
    ld a, h
    add h
    add c
    rst $38
    ld a, h
    add h
    ccf
    rst $38
    jp nz, $c3be

    rst $38
    jp nz, $03be

    rst $38
    ld b, c
    ld a, a
    inc bc
    rst $38
    inc hl
    ccf
    inc bc
    rst $38
    ccf
    ccf
    inc bc
    rst $38
    ld a, $3f
    cp $fe
    rra
    rra
    ld b, $fe
    ld e, $1f
    inc bc
    rst $38
    add hl, bc
    rrca
    ld bc, $06ff
    ld b, $10
    rst $38
    add b
    add b
    ldh [rIE], a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    or b
    cp a
    ret nz

    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add c
    rst $38
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
    inc a
    inc a
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
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    inc sp
    nop
    nop
    ld a, h
    ld a, a
    ld bc, $bf01
    rst $38
    inc bc
    inc bc
    adc h
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    dec c
    rrca
    jp $0fff


    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    rrca
    ldh [rIE], a
    dec bc
    inc c
    ldh [$7f], a
    inc b
    rlca
    ccf
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld [hl], b
    ld a, a
    add b
    add b
    ld [hl], b
    ld a, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    jr nc, @+$41

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add h
    rst $38
    nop
    nop
    add e
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
    ld h, c
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
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rra
    rst $38
    nop
    nop
    db $fc
    rst $38
    ret nz

    ret nz

    add hl, de
    rst $38
    ldh [$e0], a

jr_0e4_6078:
    ld bc, $d0ff
    ldh a, [$e1]
    rst $38
    xor b
    ret c

    add e
    rst $38
    ret c

    ld hl, sp-$7d
    rst $38
    ld hl, sp-$08
    add d
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    cp $ff
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    ld b, $ff
    add sp, $18
    ld b, $ff
    jr z, jr_0e4_6078

    rst $38
    rst $38
    db $10
    ldh a, [rTMA]
    cp $e0
    ldh [$03], a
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    db $10
    rst $38
    add b
    add b
    ldh [rIE], a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    or b
    cp a
    ret nz

    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add c
    rst $38
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
    inc a
    inc a
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
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ldh [$e0], a
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
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    inc sp
    nop
    nop
    ld a, h
    ld a, a
    ld bc, $bf01
    rst $38
    inc bc
    inc bc
    adc h
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rrca
    rrca
    jp $0fff


    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    rrca
    ldh [rIE], a
    dec bc
    inc c
    ldh [$7f], a
    inc b
    rlca
    ccf
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld [hl], b
    ld a, a
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
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
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
    ld b, e
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
    ld bc, $8301
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7d01
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rra
    rst $38
    nop
    nop
    db $fc
    rst $38
    ret nz

    ret nz

    add hl, de
    rst $38
    ldh [$e0], a

jr_0e4_61ec:
    ld bc, $d0ff
    ldh a, [$e1]
    rst $38
    xor b
    ret c

    add e
    rst $38
    ret c

    ld hl, sp-$7d
    rst $38
    ld hl, sp-$08
    add d
    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    cp $ff
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    ld b, $ff
    add sp, $18
    ld b, $ff
    jr z, jr_0e4_61ec

    rst $38
    rst $38
    db $10
    ldh a, [rTMA]
    cp $e0
    ldh [rSC], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld de, $00ff
    nop
    pop hl
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
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ccf
    ccf
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    dec b
    rlca
    db $e3
    rst $38
    ld b, $05
    ldh a, [rIE]
    dec b
    rlca
    ldh a, [rIE]
    rlca
    rlca
    ldh a, [rIE]
    ld b, $07
    ldh [$1f], a
    inc bc
    ld [bc], a
    ldh a, [rIF]
    ld [bc], a
    inc bc
    rst $38
    rrca
    ld bc, $9001
    ld l, a
    ld bc, $b001
    ld c, a
    ld bc, $b001
    ld c, a
    ld bc, $3f01
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    db $fc
    ei
    nop
    nop
    db $fd
    ei
    nop
    nop
    ld e, b
    ld h, a
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    ld b, b
    ret nz

    nop
    nop
    and b
    ld h, b
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
    cp $fe
    nop
    nop
    push af
    ei
    nop
    nop
    cp $fd
    add b
    add b
    xor $ff
    ret nz

    ret nz

    ld e, $ff
    ld h, b
    ldh [$e0], a
    rst $38
    ld h, b
    ldh [$0c], a
    rst $38
    ld h, b
    ldh [$38], a
    rst $38
    ld h, b
    ldh [$08], a
    rst $38
    ld h, b
    ldh [$08], a
    rst $38
    ld b, b
    ret nz

    ld [$c0ff], sp
    ret nz

    inc bc
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    ld [$80ff], sp
    add b
    ldh a, [rIE]
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
    ld b, b
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
    sbc $ff
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
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

    ccf
    ccf
    add b
    add b
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    or e
    ld a, a
    ld a, a
    ld a, a
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fd
    add e
    db $fc
    rst $38
    xor b
    rst $30
    db $fc
    rst $38
    ld h, b
    ld a, a
    ld hl, sp-$01
    ld sp, $e03f
    rst $38
    ld c, $0e
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e4_649b

    nop
    nop
    jr nz, jr_0e4_649f

    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0e4_648b

    nop
    nop
    jr jr_0e4_648f

    nop
    nop
    jr nc, @+$41

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
    jr nc, jr_0e4_64c7

    nop
    nop
    ccf

jr_0e4_648b:
    ccf
    nop
    nop
    ld b, b

jr_0e4_648f:
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

jr_0e4_649b:
    ld a, a
    nop
    nop
    ld b, b

jr_0e4_649f:
    ld a, a
    nop
    nop
    jr nz, jr_0e4_64e3

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
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e4_64c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e4_64e3:
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    rst $00
    rst $38
    add b
    add b
    rst $38

jr_0e4_6501:
    rst $38
    ret nz

    ret nz

    ret nz

    rst $38
    ldh [$e0], a

jr_0e4_6508:
    nop
    rst $38
    ret nc

    ldh a, [rNR32]
    rst $38
    jr jr_0e4_6508

jr_0e4_6510:
    rlca
    rst $38
    jr @-$06

jr_0e4_6514:
    inc b
    rst $38
    jr jr_0e4_6510

jr_0e4_6518:
    ldh a, [rIE]
    jr jr_0e4_6514

    inc c
    rst $38
    jr c, jr_0e4_6518

    inc bc
    rst $38
    ld a, b
    ld hl, sp-$80
    rst $38
    add sp, -$08
    ld [hl], c
    rst $38
    adc b
    ld hl, sp+$0f
    rst $38
    sub b
    ld [hl], b

jr_0e4_6530:
    ld bc, $d0ff
    jr nc, jr_0e4_6535

jr_0e4_6535:
    rst $38
    ret nc

    jr nc, jr_0e4_6501

    rst $38
    ld [hl], b
    ldh a, [rSVBK]
    rst $38
    ld [hl], b
    ldh a, [rSVBK]
    rst $38
    ld [hl], b
    ldh a, [$f8]
    rst $38
    ld h, b
    and b
    rst $18
    rst $18
    ldh [$e0], a
    ld h, b
    rst $38
    jr nz, jr_0e4_6530

    ld b, b
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    jr nz, @-$1e

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    add b
    add b
    ccf
    ccf
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
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    ldh [$e0], a
    ccf
    ccf
    ldh a, [$f0]
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
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, b
    ld a, a
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    adc a

jr_0e4_65ab:
    rst $38
    dec bc
    rrca
    add $ff
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    dec c
    ld c, $c0
    ccf
    rlca
    inc b
    ldh [$1f], a
    dec b
    ld b, $ff
    rra
    inc bc
    ld [bc], a
    jr nz, jr_0e4_65ab

    inc bc
    ld [bc], a
    ld h, b
    sbc a
    inc bc
    ld [bc], a
    ld h, b
    sbc a
    ld [bc], a
    inc bc
    ld a, a
    sbc a
    ld bc, $6001
    sbc a
    ld bc, $e001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f801
    rst $30
    ld bc, $fb01
    rst $30
    nop
    nop
    or b
    rst $08
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
    ld bc, $8301
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $7d01
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ccf
    rst $38
    nop
    nop
    inc a
    rst $38
    add b
    add b
    ret nz

    rst $38
    ret nz

    ret nz

    jr @+$01

    ret nz

    ret nz

    ld [hl], b
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    ret nz

    ret nz

    ld de, $80ff
    add b
    rlca
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld bc, $00ff
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
    ld b, $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld de, $00ff
    nop
    pop hl
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

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    nop
    nop
    ldh a, [rIE]
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    ldh [rIE], a
    ld [$e00f], sp
    rst $38
    jr @+$21

    rrca
    rst $38
    jr jr_0e4_68dd

    ld [bc], a
    rst $38
    jr jr_0e4_68e1

    ld [bc], a
    rst $38
    inc c
    rrca
    ld [bc], a
    rst $38
    inc c
    rrca
    nop
    rst $38
    ld b, $07
    ccf
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop

jr_0e4_68dd:
    nop
    ret nz

    rst $38
    nop

jr_0e4_68e1:
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    ld bc, $8001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    rrca
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
    inc bc
    rst $38
    ld bc, $8601
    cp $01
    ld bc, $fefe
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
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
    ld bc, $0601
    rst $38
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    ld bc, $f901
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $30
    rst $38
    add b
    add b
    rst $30
    rst $38
    ret nz

    ret nz

    scf
    rst $38
    and b
    ldh [rTAC], a
    rst $38
    ldh a, [$f0]
    add a
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ld d, b
    or b
    dec b
    cp $f0
    db $10
    dec b
    cp $e8
    jr @-$01

    cp $e8
    jr jr_0e4_699b

    rst $38
    call nz, $0d3c
    db $fd
    inc b
    db $fc
    dec c
    db $fd
    adc h
    db $fc
    dec c
    db $fd
    db $fc

jr_0e4_699b:
    db $fc
    inc c
    db $fc

jr_0e4_699e:
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    jr jr_0e4_699e

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
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld bc, $6001
    and b
    inc bc
    inc bc
    pop af
    pop de
    ld [bc], a
    inc bc
    di
    db $d3
    ld [bc], a
    inc bc
    db $d3
    di
    inc bc
    inc bc
    db $e3
    db $e3
    inc b
    rlca
    inc hl
    db $e3
    dec b
    ld b, $e3
    inc hl
    dec bc
    inc c
    rla
    rst $30
    dec bc
    inc c
    sbc $3f
    ld [$ff0f], sp
    rst $38
    dec bc
    rrca
    call c, $09ff
    rrca
    ret nz

    rst $38
    rlca
    rlca
    pop bc
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e4_6a93

    nop
    nop
    jr nc, jr_0e4_6a97

    nop
    nop
    jr c, jr_0e4_6a9b

    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0e4_6a83

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
    ld b, b

jr_0e4_6a83:
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

jr_0e4_6a93:
    ld a, a
    nop
    nop
    ld b, b

jr_0e4_6a97:
    ld a, a
    nop
    nop
    ld b, b

jr_0e4_6a9b:
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
    ld h, d
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
    ld h, b
    ld h, b
    nop
    nop
    ret nc

    or b
    pop af
    pop af
    ld hl, sp+$78
    ld sp, hl
    ld sp, hl
    add sp, $78
    ld sp, hl
    ld sp, hl
    ld l, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$7c
    db $fc
    ld hl, sp-$08
    db $f4
    adc h
    db $fd
    db $fd
    ld a, [de]
    and $0f
    rst $38
    ld a, d
    add [hl]
    rst $38
    rst $38
    ld a, [$07e6]
    rst $38
    ld a, d
    cp $00
    rst $38
    ld [hl], d
    cp $f0
    rst $38
    ld a, h
    db $fc
    ld b, b
    rst $38
    ld a, b
    ld hl, sp+$40
    rst $38
    ldh a, [$f0]
    ld bc, $60ff
    ldh [rIE], a
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    inc bc
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [$80ff], sp
    add b
    ldh a, [rIE]
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

    ld b, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ld e, a
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
    ld b, b
    ret nz

    db $10
    rra
    add b
    add b
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
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    ld [$c00f], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $bf01
    rst $38
    inc bc
    inc bc
    cp b
    rst $38
    dec b
    rlca
    add b
    rst $38
    rlca
    dec b
    add c
    rst $38
    dec b
    rlca
    add b
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    dec b
    ld b, $c0
    ld a, a
    dec b
    ld b, $ff
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    inc b
    rlca
    db $10
    rst $38
    ld [bc], a
    inc bc
    ccf
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld b, a
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
    rst $38
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    and d
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    ld c, d
    ld a, [hl]
    nop
    nop
    ld c, h
    ld a, h
    nop
    nop
    jr nc, jr_0e4_6dd0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0e4_6dd0:
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
    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ldh a, [$f0]
    ld c, $ff
    add sp, -$08
    ld b, b
    rst $38
    ld hl, sp-$18
    add b
    rst $38
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld [$81f8], sp
    rst $38
    ld a, b
    adc b
    ld a, a
    rst $38
    ld a, b
    adc b
    add e
    rst $38
    ld [$03f8], sp
    rst $38
    ld [$07f8], sp
    rst $38
    db $10
    ldh a, [rTAC]
    rst $38
    ldh a, [rNR10]
    rst $38
    rst $38
    db $10
    ldh a, [rTMA]
    rst $38
    ldh a, [$f0]
    inc bc
    cp $f0
    ldh a, [rSB]
    cp $f0
    ldh a, [rSB]
    rst $38
    and b
    ld h, b
    adc c
    rst $38
    ret nz

    ret nz

    pop af
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
    rlca
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
    ld a, a
    ld a, a
    nop
    nop
    cp b
    rst $38
    ld bc, $b001
    rst $38
    ld [bc], a
    inc bc
    add e
    rst $38
    inc bc
    ld [bc], a
    add b
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    cp a
    ld a, a
    ld [bc], a
    inc bc
    and b
    ld a, a
    ld [bc], a
    inc bc
    and b
    ld a, a
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $3001
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr z, @+$41

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
    ld a, a
    ld a, a
    nop
    nop
    cp a
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
    ld h, c
    ld a, a
    nop
    nop
    add d
    cp $00
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
    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ldh [$e0], a
    nop
    rst $38
    ldh a, [$f0]
    ld h, b
    rst $38
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$18
    add b
    rst $38
    add sp, -$08
    add c
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    ld hl, sp+$08
    ld a, a
    rst $38
    ld a, b
    adc b
    add c
    rst $38
    ld [$03f8], sp
    rst $38
    db $10
    ldh a, [$03]
    rst $38
    ldh a, [rNR10]
    rlca
    rst $38
    ldh a, [rNR10]
    rst $38
    rst $38
    db $10
    ldh a, [rTMA]
    rst $38
    ld [hl], b
    ldh a, [rTAC]
    cp $f0
    ldh a, [rSB]
    cp $f0
    ldh a, [rSB]
    rst $38
    and b
    ld h, b
    adc c
    rst $38
    ret nz

    ret nz

    pop af
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
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    cp b
    rst $38
    rlca
    rlca
    cp e
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    add b
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
    ret nz

    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    dec bc
    inc c
    and b
    ld a, a
    ld [$600f], sp
    rst $38
    ld [$600f], sp
    rst $38
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ccf
    rst $38
    inc b
    rlca
    ldh a, [$bf]
    rlca
    rlca
    ldh [$bf], a
    ld [bc], a
    inc bc
    ldh [$7f], a
    ld bc, $c401
    rst $38
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
    cp a
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
    ld b, e
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
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    ld c, $ff
    ldh [$e0], a
    xor $ff
    ldh a, [$f0]
    add b
    rst $38
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08
    add b
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    add sp, $18
    ld bc, $e8ff

jr_0e4_70f7:
    jr jr_0e4_70f7

    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    inc bc
    rst $38
    ld [$03f8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    ld [$fef8], sp
    rst $38
    db $10
    ldh a, [rTAC]
    cp $90
    ldh a, [$03]
    cp $f0
    ldh a, [$03]
    rst $38
    and b
    ld h, b
    ld de, $c0ff
    ret nz

    pop hl
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
    jp nz, $80ff

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
    cp h
    rst $38
    add b
    add b
    cp h
    rst $38
    add b
    add b
    ld a, l
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    adc [hl]
    cp $00
    nop
    ld b, a
    ld a, a
    nop
    nop
    inc hl
    ccf
    add b
    add b
    ld de, $801f
    add b
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
    rlca
    rlca
    nop
    nop
    rra
    rra
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    and b
    rst $38
    rrca
    rrca
    add e
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$5f0f], sp
    rst $38
    rrca
    ld [$ff60], sp
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    inc b
    ldh [$7f], a
    inc b
    rlca
    ld a, a
    rst $38
    inc b
    rlca
    jr nc, @+$01

    rlca
    rlca
    ldh a, [$bf]
    rlca
    rlca
    ldh [$bf], a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld bc, $a801
    cp a
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
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop

jr_0e4_7260:
    cp $ff
    add b
    add b
    ld c, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ldh [rIE], a
    and b
    ldh [$80], a
    rst $38
    ldh [$e0], a

jr_0e4_7274:
    add c
    rst $38
    ldh [$e0], a
    ld bc, $20ff
    ldh [$e1], a
    rst $38
    jr nz, jr_0e4_7260

    ld e, $ff
    and b
    ld h, b
    ld [bc], a
    rst $38
    and b
    ld h, b
    ld [bc], a
    rst $38
    and b
    ld h, b
    ld [bc], a
    rst $38
    jr nz, @-$1e

    db $fc
    rst $38
    jr nz, jr_0e4_7274

    ld b, $ff
    ld b, b
    ret nz

    rlca
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [c]
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
    jp Jump_000_00ff


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
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    db $dd
    rst $38
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    cp h
    cp h
    nop
    nop
    add $fe
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld de, $001f
    nop
    ld de, $001f
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
    rlca
    rlca
    ld bc, $ff01
    rst $38
    rlca
    rlca
    cp a
    rst $38
    dec bc
    rrca
    cp b
    rst $38
    rrca
    dec bc
    add c
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca
    rrca
    add b
    rst $38
    ld [$400f], sp
    rst $38
    rrca
    ld [$ff40], sp
    rrca
    ld [$ff7f], sp
    ld [$600f], sp
    rst $38
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    rlca
    inc b
    ldh a, [$7f]
    inc b
    rlca
    ld a, a
    rst $38
    rlca
    rlca
    or b
    rst $38
    rlca
    rlca
    ldh [$bf], a
    rlca
    rlca
    ret nz

    cp a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld bc, $c801
    rst $38
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
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    ret nz

    ret nz

    ld c, $ff
    ldh [$e0], a
    nop
    rst $38
    ret nc

    ldh a, [$c0]
    rst $38
    ldh a, [$d0]
    add b
    rst $38
    ret nc

    ldh a, [$81]
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    ret nc

    jr nc, @+$01

    rst $38
    ret nc

    jr nc, jr_0e4_740b

    rst $38
    ret nc

jr_0e4_740b:
    jr nc, jr_0e4_740f

    rst $38
    ret nc

jr_0e4_740f:
    jr nc, jr_0e4_7415

    rst $38
    db $10
    ldh a, [$fe]

jr_0e4_7415:
    rst $38
    jr nz, @-$1e

    rlca
    rst $38
    ret nz

    ret nz

    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add hl, bc
    rst $38
    nop
    nop
    pop af
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
    rst $20
    rst $38
    nop
    nop
    and e
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    pop de
    rst $38
    nop
    nop
    pop de
    rst $38
    nop
    nop
    xor c
    cp a
    nop
    nop
    sbc c
    sbc a
    nop
    nop
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec bc
    rrca
    add e
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    ld [$400f], sp
    rst $38
    rrca
    ld [$ff7f], sp
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ld h, b
    rst $38
    rlca
    inc b
    ldh [$7f], a
    inc b
    rlca
    ld h, b
    rst $38
    inc b
    rlca
    ccf
    rst $38
    rlca
    rlca
    ldh a, [$bf]
    rlca
    rlca
    ldh a, [$bf]
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld bc, $c001
    rst $38
    nop
    nop
    ld c, b
    ld a, a
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
    ld a, [hl]
    ld a, [hl]
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
    rst $38
    rst $38
    nop
    nop

jr_0e4_7560:
    cp $ff
    add b
    add b
    ld c, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ldh [rIE], a
    and b
    ldh [$80], a
    rst $38
    ldh [$e0], a

jr_0e4_7574:
    add c
    rst $38
    ldh [$e0], a
    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0e4_7560

    cp $ff
    and b
    ld h, b
    ld [bc], a
    rst $38
    and b
    ld h, b
    ld [bc], a
    rst $38
    and b
    ld h, b
    ld [bc], a
    rst $38
    jr nz, @-$1e

    db $fc
    rst $38
    jr nz, jr_0e4_7574

    ld b, $ff
    ld b, b
    ret nz

    rlca
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    pop af
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
    cp $ff
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
    sbc [hl]
    sbc [hl]
    nop
    nop
    sbc [hl]
    sbc [hl]
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    jr nz, jr_0e4_7629

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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    cp b
    rst $38
    rlca
    rlca
    cp e
    rst $38
    dec bc
    rrca
    add b
    rst $38
    rrca

jr_0e4_7629:
    rrca
    add b
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
    ret nz

    ld a, a
    dec bc
    inc c
    cp a
    ld a, a
    dec bc
    inc c
    and b
    ld a, a
    ld [$600f], sp
    rst $38
    ld [$600f], sp
    rst $38
    ld [$600f], sp
    rst $38
    inc b
    rlca
    ccf
    rst $38
    inc b
    rlca
    ldh a, [$bf]
    rlca
    rlca
    ldh [$bf], a
    ld [bc], a
    inc bc
    ldh [$7f], a
    ld bc, $c401
    rst $38
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
    ld sp, $003f
    nop
    ld h, d
    ld a, [hl]
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
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    ld c, $ff
    ldh [$e0], a
    xor $ff
    ldh a, [$f0]
    add b
    rst $38
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08
    add b
    rst $38
    ld hl, sp-$08
    add c
    rst $38
    add sp, $18
    ld bc, $e8ff

jr_0e4_76f7:
    jr jr_0e4_76f7

    rst $38
    add sp, $18
    ld [bc], a
    rst $38
    add sp, $18
    inc bc
    rst $38
    ld [$03f8], sp
    rst $38
    ld [$03f8], sp
    rst $38
    ld [$fef8], sp
    rst $38
    db $10
    ldh a, [rTAC]
    cp $90
    ldh a, [$03]
    cp $f0
    ldh a, [$03]
    rst $38
    and b
    ld h, b
    ld de, $c0ff
    ret nz

    pop hl
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
    pop hl
    rst $38
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
    rra
    rra
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
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
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $b801
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld [bc], a
    inc bc
    add e
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld b, e
    rst $38
    ld [bc], a
    inc bc
    cp h
    ld a, a
    ld [bc], a
    inc bc
    and b
    ld a, a
    ld [bc], a
    inc bc
    and b
    ld a, a
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $3001
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr z, jr_0e4_7823

    nop
    nop
    daa
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
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    ld e, l
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld sp, $003f
    nop
    ld hl, $003f
    nop
    ld h, d

jr_0e4_7823:
    ld a, [hl]
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr c, jr_0e4_7868

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    ldh [$e0], a
    ld [bc], a
    rst $38
    ldh a, [$f0]

jr_0e4_7868:
    ld h, b
    rst $38
    ld hl, sp-$08
    add b
    rst $38
    add sp, -$08
    add b
    rst $38
    ld hl, sp-$08
    add b
    rst $38
    ld hl, sp-$08
    ld bc, $f8ff
    ld hl, sp-$03
    rst $38
    ld [$03f8], sp
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld [$03f8], sp
    rst $38
    db $10
    ldh a, [$03]
    rst $38
    ldh a, [rNR10]
    rst $38
    rst $38
    db $10
    ldh a, [rTMA]
    rst $38
    db $10
    ldh a, [rTAC]
    cp $f0
    ldh a, [$03]
    cp $f0
    ldh a, [rSB]
    rst $38
    and b
    ld h, b
    adc d
    cp $c0
    ret nz

    pop af
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
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
