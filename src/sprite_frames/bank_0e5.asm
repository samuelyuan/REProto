SECTION "ROM Bank $0e5", ROMX[$4000], BANK[$e5]

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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
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
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    rlca
    rlca
    db $fc
    rst $38
    ld b, $07
    call c, Call_000_033f
    ld [bc], a
    db $ec
    rra
    ld [bc], a
    inc bc
    rst $28
    rra
    ld [bc], a
    inc bc
    ld l, b
    sbc a
    ld [bc], a
    inc bc
    add sp, $1f
    ld [bc], a
    inc bc
    ret z

    ccf
    ld [bc], a
    inc bc
    sbc a
    ld a, a
    inc bc
    inc bc
    ret nc

    rst $38
    inc bc
    ld [bc], a
    ldh a, [rIE]
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    ld [bc], a
    ret nz

    ld a, a
    ld bc, $c101
    ccf
    nop
    nop
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
    nop
    nop
    cp $ff
    ret nz

    ret nz

    ld b, $ff
    ldh [$e0], a
    nop
    rst $38
    ldh a, [$f0]
    ld a, b
    rst $38
    ld hl, sp-$08
    db $10
    rst $38
    ld hl, sp-$08
    db $10
    rst $38
    db $fc
    db $fc
    ld de, $d4ff

Call_0e5_40ff:
    db $ec
    ld bc, $bcff
    call nz, $ffff
    inc a
    call nz, $ff01
    ld [hl], h
    adc h
    ld bc, $74ff
    adc h
    inc bc
    rst $38
    ld l, b
    sbc b
    cp $ff
    ld [$03f8], sp
    rst $38
    sub b
    ldh a, [$03]
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ret nz

    ret nz

    pop hl
    cp $80
    add b
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
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    jp Jump_000_00ff


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
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    cp $fe
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
    cp $fe
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    ccf
    ccf
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
    inc bc
    ld [bc], a
    ld [hl], b
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    ld hl, sp-$01
    inc b
    rlca
    ld hl, sp-$01
    dec b
    ld b, $f8
    rra
    ld [bc], a
    inc bc
    rst $18
    ccf
    ld bc, $f001
    rst $38
    nop
    nop
    jr @+$21

    nop
    nop
    jr jr_0e5_41f3

    nop
    nop
    rra
    rra
    nop
    nop
    jr nz, jr_0e5_421b

    nop
    nop
    jr nz, jr_0e5_421f

    nop
    nop
    jr nz, jr_0e5_4223

    nop
    nop
    jr nz, jr_0e5_4227

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e5_422f

    nop
    nop
    ld b, b

jr_0e5_41f3:
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
    ldh [rIE], a
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

jr_0e5_421b:
    rst $38
    nop
    nop
    add b

jr_0e5_421f:
    rst $38
    nop
    nop
    add b

jr_0e5_4223:
    rst $38
    nop
    nop
    ld a, a

jr_0e5_4227:
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a

jr_0e5_422f:
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    db $fd
    db $fd
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
    db $fd
    rst $38
    ret nz

    ret nz

    dec b
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $e0ff
    ldh [rNR11], a
    rst $38
    ldh [$e0], a
    ld bc, $c0ff
    ret nz

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
    inc bc
    rst $38
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
    pop af
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
    add e
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    jp Jump_000_00ff


    nop
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    pop bc
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    rst $08
    ccf
    inc bc
    ld [bc], a
    jr @+$01

    inc bc
    ld [bc], a
    sbc b
    ld a, a
    inc bc
    ld [bc], a
    cp b
    ld a, a
    inc bc
    ld [bc], a
    ccf
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [$df]
    inc bc
    ld [bc], a
    pop de
    ccf
    ld bc, $f001
    rst $38
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
    rrca
    rrca
    nop
    nop
    inc c
    rrca
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
    nop
    nop

jr_0e5_43e4:
    cp $ff
    add b
    add b

jr_0e5_43e8:
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a

jr_0e5_43f0:
    ld a, b
    rst $38
    ldh [$e0], a

jr_0e5_43f4:
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $a0ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0e5_43e4

    rst $38
    rst $38
    jr nz, jr_0e5_43e8

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0e5_43f0

    inc bc
    rst $38
    jr nz, jr_0e5_43f4

    rst $38
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$a0], a
    inc bc
    cp $c0
    ld b, b
    rst $20
    rst $38
    add b
    add b
    ld b, d
    cp $00
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
    inc h
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add b
    ldh a, [rP1]
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $0c01
    rst $38
    ld bc, $cc01
    ccf
    ld bc, $cf01
    ccf
    ld bc, $8801
    ld a, a
    ld bc, $c801
    ccf
    ld bc, $c801
    ccf
    ld bc, $cf01
    ccf
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $28
    ld bc, $e101
    rra
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    jr nz, jr_0e5_4533

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld hl, $003f
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, c
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
    ld hl, $003f
    nop
    jr nz, jr_0e5_4553

    nop
    nop
    jr nz, jr_0e5_4557

    nop
    nop
    jr nz, jr_0e5_455b

    nop
    nop
    db $10
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca

jr_0e5_4533:
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    jr jr_0e5_455b

    nop
    nop
    inc bc
    inc bc
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

jr_0e5_4553:
    nop
    ld hl, sp-$08
    nop

jr_0e5_4557:
    nop
    ld hl, sp-$08
    nop

jr_0e5_455b:
    nop
    ld hl, sp-$08
    nop
    nop
    rrca
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $c0ff
    ret nz

    ld bc, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $40ff
    ret nz

    ld bc, $40ff
    ret nz

    inc bc
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ld b, b
    inc bc
    cp $40
    ret nz

    rst $20
    rst $38
    add b
    add b
    add d
    cp $00
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
    ld [bc], a
    cp $00
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
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
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [$f0]

jr_0e5_45ee:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, jr_0e5_45ee

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
    ld b, $05
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec c
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    cp h
    rst $38
    ld bc, $5c01
    cp a
    ld bc, $be01
    rst $38
    ld bc, $fe01
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld a, [c]
    adc a
    nop
    nop
    di
    adc a
    nop
    nop
    and d
    rst $18
    nop
    nop
    ld [hl], d
    ld c, a
    nop
    nop
    ld [hl], d
    ld c, a
    nop
    nop
    ld [hl], e
    ld c, a
    nop
    nop
    ld a, h
    ld e, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, e
    nop
    nop
    ld e, b
    ld h, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e5_46b7

    nop
    nop
    jr nz, jr_0e5_46bb

    nop
    nop
    jr nz, jr_0e5_46bf

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
    jr c, jr_0e5_46e4

    nop
    nop
    jr c, jr_0e5_46e8

    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f801

jr_0e5_46b7:
    ld hl, sp+$00
    nop
    ld a, b

jr_0e5_46bb:
    ld a, b
    nop
    nop
    nop

jr_0e5_46bf:
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
    db $fc
    ld a, h
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add a
    rst $38
    add b
    add b

jr_0e5_46e4:
    rst $38
    rst $38
    ld b, b
    ret nz

jr_0e5_46e8:
    add e
    rst $38
    ld h, b
    ldh [rP1], a
    rst $38
    ld [hl], b
    ldh a, [$3c]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ldh [$e0], a
    nop
    rst $38
    and b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld bc, $c0ff
    ret nz

    ld bc, $c0ff
    ret nz

    ld bc, $c0ff
    ld b, b
    ld bc, $40ff
    ret nz

    ld a, [c]
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
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld h, b
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

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e5_47a5

    add b
    add b
    rra
    rra
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
    ld b, $05
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec c
    rrca
    nop

jr_0e5_47a5:
    nop
    ccf
    ccf
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    cp h
    rst $38
    ld bc, $5c01
    cp a
    ld bc, $be01
    rst $38
    ld bc, $c201
    rst $38
    nop
    nop
    ld sp, hl
    rst $00
    nop
    nop
    ld e, c
    ld h, a
    nop
    nop
    add hl, sp
    daa
    nop
    nop
    dec l
    inc sp
    nop
    nop
    dec e
    inc de
    nop
    nop
    dec e
    inc de
    nop
    nop
    dec e
    inc de
    nop
    nop
    inc de
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
    dec c
    ld c, $00
    nop
    ld c, $09
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
    jr nz, jr_0e5_483f

    nop
    nop
    jr nc, jr_0e5_4843

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_484b

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
    cp $00
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    inc bc
    inc bc
    cp b
    cp b
    inc bc
    inc bc
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b

jr_0e5_483f:
    ld a, b
    nop
    nop
    nop

jr_0e5_4843:
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop

jr_0e5_484b:
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
    ld a, h
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    add e
    rst $38
    ld h, b
    ldh [rP1], a
    rst $38
    ld [hl], b
    ldh a, [$3c]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    add c
    ld a, a
    add b
    add b
    add c
    ld a, a
    add b
    add b
    ld a, [c]
    rst $38
    add b
    add b

jr_0e5_48ac:
    jr nz, @+$01

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
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    sbc a
    sbc a
    ldh [$e0], a
    sbc b
    sbc a
    jr nz, jr_0e5_48ac

    adc b
    adc a
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [$08]
    rrca
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    ld bc, $c001
    ret nz

    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    ld bc, $f001
    ldh a, [$03]
    inc bc
    sub b
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $e401
    rra
    ld bc, $e701
    rra
    ld bc, $4401
    cp a
    nop
    nop
    db $e4
    sbc a
    nop
    nop
    db $e4
    sbc a
    nop
    nop
    rst $20
    sbc a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    cp b
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    or c
    rst $08
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e5_49b7

    nop
    nop
    jr nz, jr_0e5_49bb

    nop
    nop
    jr nz, jr_0e5_49bf

    nop
    nop
    jr nc, jr_0e5_49c3

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_49cb

    nop
    nop
    jr nz, jr_0e5_49cf

    nop
    nop
    jr nz, jr_0e5_49d3

    nop
    nop
    jr nz, jr_0e5_49d7

    nop
    nop
    jr nz, jr_0e5_49db

    nop
    nop
    jr nz, jr_0e5_49df

    nop
    nop
    jr nz, jr_0e5_49e3

    nop
    nop
    db $10
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
    ld c, $0e
    nop
    nop
    rra

jr_0e5_49b7:
    rra
    nop
    nop
    ccf

jr_0e5_49bb:
    ccf
    nop
    nop
    ld a, a

jr_0e5_49bf:
    ld a, a
    nop
    nop
    nop

jr_0e5_49c3:
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop

jr_0e5_49cb:
    nop
    ld hl, sp-$08
    nop

jr_0e5_49cf:
    nop
    ld hl, sp-$08
    nop

jr_0e5_49d3:
    nop
    ld hl, sp-$08
    nop

jr_0e5_49d7:
    nop
    ld hl, sp-$08
    nop

jr_0e5_49db:
    nop
    ld hl, sp-$08
    nop

jr_0e5_49df:
    nop
    rrca
    rst $38
    nop

jr_0e5_49e3:
    nop
    cp $ff
    add b
    add b
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $c0ff
    ret nz

    ld bc, $40ff
    ret nz

    rst $38
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
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    inc bc
    cp $80
    add b
    ld [bc], a
    rst $38
    add b
    add b
    rst $20
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
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
    ld b, b
    rst $38
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

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, e
    rst $38
    nop
    nop
    sbc a
    sbc a
    nop
    nop
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    nop
    ret nz

    rlca
    rlca
    ret nz

    ret nz

    ld c, $0f
    nop
    add b
    rra
    rra
    add b
    add b
    jr jr_0e5_4a9d

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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop

jr_0e5_4a9d:
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $0c01
    rst $38
    ld bc, $cc01
    ccf
    ld bc, $cf01
    ccf
    ld bc, $8801
    ld a, a
    ld bc, $c801
    ccf
    ld bc, $c801
    ccf
    ld bc, $cf01
    ccf
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $f001
    rst $28
    ld bc, $e101
    rra
    nop
    nop
    ldh a, [rIE]
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
    db $10
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
    nop
    nop
    cp $ff
    add b
    add b
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $c0ff
    ret nz

    ld bc, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $40ff
    ret nz

    ld bc, $40ff
    ret nz

    inc bc
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ld b, b
    inc bc
    cp $40
    ret nz

    rst $20
    rst $38
    add b
    add b
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
    ld c, b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    jr z, @-$06

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
    inc h
    db $fc

jr_0e5_4bda:
    nop
    nop
    inc h
    db $fc
    nop
    nop
    jr c, jr_0e5_4bda

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
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
    ldh [$fc], a
    nop
    nop
    add b
    ldh a, [rP1]
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    rst $08
    ccf
    inc bc
    ld [bc], a
    jr @+$01

    inc bc
    ld [bc], a
    sbc b
    ld a, a
    inc bc
    ld [bc], a
    cp b
    ld a, a
    inc bc
    ld [bc], a
    ccf
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [$df]
    inc bc
    ld [bc], a
    pop de
    ccf
    ld bc, $e801
    rst $28
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
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
    inc c
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
    nop
    nop

jr_0e5_4ce4:
    cp $ff
    add b
    add b

jr_0e5_4ce8:
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a

jr_0e5_4cf0:
    ld a, b
    rst $38
    ldh [$e0], a

jr_0e5_4cf4:
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $a0ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0e5_4ce4

    rst $38
    rst $38
    jr nz, jr_0e5_4ce8

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0e5_4cf0

    inc bc
    rst $38
    jr nz, jr_0e5_4cf4

    rst $38
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$a0], a
    inc bc
    cp $a0
    ld h, b
    rst $20
    rst $38
    ret nz

    ret nz

    inc h
    db $fc
    nop
    nop
    inc h
    db $fc

jr_0e5_4d32:
    nop
    nop
    inc h
    db $fc

jr_0e5_4d36:
    nop
    nop
    jr z, jr_0e5_4d32

jr_0e5_4d3a:
    nop
    nop
    jr z, jr_0e5_4d36

jr_0e5_4d3e:
    nop
    nop
    jr z, jr_0e5_4d3a

    nop
    nop
    jr z, jr_0e5_4d3e

jr_0e5_4d46:
    nop
    nop
    ld hl, sp-$08

jr_0e5_4d4a:
    nop
    nop
    jr jr_0e5_4d46

jr_0e5_4d4e:
    nop
    nop
    jr jr_0e5_4d4a

jr_0e5_4d52:
    nop
    nop
    jr jr_0e5_4d4e

jr_0e5_4d56:
    nop
    nop
    jr jr_0e5_4d52

    nop
    nop
    jr jr_0e5_4d56

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e5_4d46

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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    call z, Call_000_033f
    ld [bc], a
    sbc a
    ld a, a
    inc bc
    ld [bc], a
    sbc b
    ld a, a
    ld b, $05
    jr c, @+$01

    rlca
    inc b
    jr c, @+$01

    rlca
    inc b
    ld e, a
    rst $18
    ld b, $07
    ld d, b
    rst $18
    rlca
    rlca
    ret nc

    rst $18
    dec b
    rlca
    ret nc

    rst $18
    rlca
    rlca
    ret nc

    rst $18
    dec b
    ld b, $51
    rst $18
    inc bc
    inc bc
    adc b
    adc a
    nop
    nop
    ld [$000f], sp
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
    ld b, $07
    nop
    nop
    dec b
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
    rlca
    rlca
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
    nop
    nop
    cp $ff
    add b
    add b
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $90ff
    ldh a, [rSB]
    rst $38
    sub b
    ld [hl], b
    rst $38
    rst $38
    ret nc

    jr nc, jr_0e5_4e8a

    rst $38

jr_0e5_4e8a:
    ret nc

    jr nc, jr_0e5_4e8e

    rst $38

jr_0e5_4e8e:
    ret nc

    jr nc, @+$05

    rst $38
    ret nc

    jr nc, @+$01

    rst $38
    jr c, @-$06

    inc bc
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    db $fc
    db $f4
    inc bc
    rst $38
    call c, $03e4
    rst $38
    ld hl, sp-$68
    and $fe
    ld h, b
    ld h, b
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc

jr_0e5_4eb2:
    nop
    nop
    inc d
    db $fc
    nop
    nop
    jr jr_0e5_4eb2

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $fc
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
    ld b, d
    cp $00
    nop
    ld a, h
    db $fc
    nop
    nop
    cp b
    cp b
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
    ld [hl], d
    ld a, [hl]
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
    rra
    rra
    db $fc
    db $fc
    rra
    rla
    rst $38
    rst $38
    ccf
    ccf
    rlca
    rst $38
    ld h, e
    ld a, a
    add c
    rst $38
    ld a, b
    ld a, a
    ld a, $ff
    cp h
    rst $38
    inc c
    rst $38
    call c, Call_000_00bf
    rst $38
    cp h
    rst $38
    rrca
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    db $f4
    adc a
    add b
    rst $38
    rst $30
    adc a
    nop
    rst $38
    rst $30
    adc a
    add a
    rst $38
    add e
    rst $38
    ld hl, sp-$01
    ld b, e
    ld a, a
    add b
    rst $38
    ld a, $3f
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    inc e
    rra
    ld bc, $1eff
    rra
    ld c, $ff
    rrca
    rrca
    rst $38
    rst $38
    ld [$070f], sp
    rst $38
    inc b
    rlca
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
    ld bc, $0401
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
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    ret nc

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
    db $e4
    db $fc
    nop
    nop
    inc e
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
    db $f4
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    rlca
    rst $38
    inc e
    inc e
    jr @+$01

    ld a, [$a0fe]
    rst $38
    ld a, [$40fe]
    ld a, a
    cp $fe
    ld b, b
    ld a, a
    ld a, l
    rst $38
    ld b, b
    ld a, a
    sbc [hl]
    sbc [hl]
    ld h, c
    ld a, a
    dec e
    rra
    ld a, $3e
    ld c, $0e
    nop
    nop
    inc [hl]
    inc l
    nop
    nop
    ld e, e
    ld h, a
    nop
    nop
    cpl
    ld sp, $0000
    rla
    jr jr_0e5_5091

jr_0e5_5091:
    nop
    ld e, $1d
    nop
    nop
    rra
    ld e, $00
    nop
    ld l, a
    ld a, [hl]
    ld bc, $b701
    rst $08
    ld [bc], a
    inc bc
    ld hl, sp+$7f
    dec b
    ld b, $bc
    rst $38
    rlca
    inc b
    ld e, h
    cp a
    dec b
    ld b, $bc
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld bc, $f801
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
    ld h, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e5_510b

    nop
    nop
    jr nc, jr_0e5_510f

    nop
    nop
    jr nc, jr_0e5_5113

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_511b

    nop
    nop
    jr nz, jr_0e5_511f

    nop
    nop
    jr nz, jr_0e5_5123

    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e5_512b

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
    ld hl, sp-$01
    nop
    nop
    rst $38

jr_0e5_510b:
    rst $38
    nop
    nop
    add b

jr_0e5_510f:
    rst $38
    nop
    nop
    add b

jr_0e5_5113:
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b

jr_0e5_511b:
    rst $38
    nop
    nop
    add b

jr_0e5_511f:
    rst $38
    nop
    nop
    ld b, b

jr_0e5_5123:
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra

jr_0e5_512b:
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
    ld hl, sp-$08
    nop
    nop
    ld e, [hl]
    cp [hl]
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    ccf
    nop
    nop
    rst $38
    ccf
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    pop hl
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    ld h, c
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ld [hl], b
    ldh a, [$1f]
    rst $38
    ld [hl], b
    ldh a, [rDIV]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld h, b
    ldh [$08], a
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
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
    dec b
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    ld b, b
    rst $38
    add b
    add b

jr_0e5_51b0:
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
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    jp $c0ff


    ret nz

jr_0e5_51c4:
    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ld b, b
    ret nz

    and b
    cp a
    jr nz, jr_0e5_51b0

    ld d, b
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$88]
    adc a
    jr nz, jr_0e5_51c4

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

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
    rlca
    rlca
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rst $38
    cp $03
    ld [bc], a
    rla
    rst $28
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld bc, $bb01
    ld a, a
    inc bc
    inc bc
    ld a, b
    rst $38
    rlca
    dec b
    ld hl, sp-$01
    rlca
    dec b
    ld hl, sp-$01
    rlca
    inc b
    ld hl, sp-$01
    inc bc
    ld [bc], a
    ldh a, [$7f]
    ld bc, $c001
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_528b

    nop
    nop
    jr nc, jr_0e5_528f

    nop
    nop
    jr nc, jr_0e5_5293

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_529b

    nop
    nop
    jr nz, jr_0e5_529f

    nop
    nop
    jr nz, jr_0e5_52a3

    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e5_52ab

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
    ld hl, sp-$01
    nop
    nop
    rst $38

jr_0e5_528b:
    rst $38
    nop
    nop
    add b

jr_0e5_528f:
    rst $38
    nop
    nop
    add b

jr_0e5_5293:
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b

jr_0e5_529b:
    rst $38
    nop
    nop
    add b

jr_0e5_529f:
    rst $38
    nop
    nop
    ld b, b

jr_0e5_52a3:
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra

jr_0e5_52ab:
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
    ld hl, sp-$08
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    cp [hl]
    cp $00
    nop
    xor [hl]
    ld e, [hl]
    nop
    nop
    adc $3e
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    add a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld [hl], b
    ldh a, [$3c]
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ldh a, [$f0]
    ld [$e0ff], sp
    ldh [$08], a
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    dec b
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    ld b, b
    rst $38
    add b
    add b

jr_0e5_5330:
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
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    jp $c0ff


    ret nz

jr_0e5_5344:
    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ld b, b
    ret nz

    and b
    cp a
    jr nz, jr_0e5_5330

    ld d, b
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$88]
    adc a
    jr nz, jr_0e5_5344

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

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
    rlca
    rlca
    ldh [$e0], a
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
    cpl
    ccf
    nop
    nop
    ld d, a
    ld l, a
    nop
    nop
    add hl, sp
    scf
    nop
    nop
    ld a, [hl-]
    daa
    nop
    nop
    cpl
    ccf
    nop
    nop
    rst $30
    rst $38
    ld bc, $0301
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    dec sp
    ccf
    ldh [rIE], a
    scf
    ccf
    db $e3
    rst $38
    rra
    rla
    db $ec
    rst $38
    rla
    inc e
    db $10
    rst $38
    rrca
    inc c
    ret nz

    ccf
    dec b
    ld b, $a0
    ld a, a
    inc bc
    inc bc
    ldh a, [rIE]
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e5_541b

    nop
    nop
    jr nz, jr_0e5_541f

    nop
    nop
    jr nz, jr_0e5_5423

    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e5_542b

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
    ld hl, sp-$01
    nop
    nop
    rst $38
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

jr_0e5_541b:
    rst $38
    nop
    nop
    add b

jr_0e5_541f:
    rst $38
    nop
    nop
    ld b, b

jr_0e5_5423:
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra

jr_0e5_542b:
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

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    ld a, e
    rst $38
    add b
    add b
    ld de, $80ff
    add b
    ld de, $80ff
    add b
    ld bc, $80ff
    add b
    ccf
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
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
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    dec b
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    ld b, b
    rst $38
    add b
    add b

jr_0e5_54b0:
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
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    jp $c0ff


    ret nz

jr_0e5_54c4:
    rst $38
    rst $38
    ret nz

    ret nz

    cp $ff
    ld b, b
    ret nz

    and b
    cp a
    jr nz, jr_0e5_54b0

    ld d, b
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$50]
    rst $18
    db $10
    ldh a, [$88]
    adc a
    jr nz, jr_0e5_54c4

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

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
    rlca
    rlca
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
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    cp $fe
    inc bc
    ld [bc], a
    ld a, [hl]
    cp $03
    inc bc
    cp $3e
    inc bc
    ld [bc], a
    cp a
    ld a, a
    rlca
    ld b, $c1
    rst $38
    dec de
    rra
    ccf
    rst $38
    dec sp
    ccf
    pop bc
    rst $38
    ld a, c
    ld a, a
    add b
    rst $38
    ld a, b
    ld a, a
    inc e
    rst $38
    cp h
    rst $38
    ld [$fcff], sp
    rst $38
    ld [$fcff], sp
    rst $38
    nop
    rst $38
    cp h
    rst $38
    rrca
    rst $38
    ei
    add a
    ldh a, [rIE]
    ld [hl], a
    ld c, a
    nop
    rst $38
    dec sp
    dec sp
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $2001
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $0c01
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    cp $00
    nop
    ccf
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    cpl
    pop af
    nop
    nop
    rst $28
    pop af
    nop
    nop
    ld [hl], e
    db $fc
    add b
    add b
    ld [hl], a
    ld hl, sp-$80
    add b
    ld l, a
    add sp, -$80
    add b
    ld l, e
    db $ec
    ret nz

    ret nz

    rst $20
    push hl
    ldh [$e0], a
    dec h
    rst $20
    ldh [$e0], a
    dec h
    rst $20
    ldh [$a0], a
    inc de
    ld a, [c]
    and b
    ld h, b
    sub c
    pop af
    ret nz

    ret nz

    ld [$00f8], sp
    nop

jr_0e5_5630:
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
    sbc a
    rst $38
    add b
    add b
    cp a
    rst $38
    add b
    add b
    ld [hl], b
    ld a, a
    ld b, b
    ret nz

    jr nc, jr_0e5_568d

    jr nz, jr_0e5_5630

    db $10
    rra
    db $10
    ldh a, [$08]
    rrca
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    ld a, h
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
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    cp $fe
    inc bc

jr_0e5_568d:
    inc bc
    cp $fe
    inc bc
    ld [bc], a
    ld a, [hl]
    cp $03
    inc bc
    cp $3e
    inc bc
    ld [bc], a
    cp a
    ld a, a
    rlca
    ld b, $c1
    rst $38
    dec de
    rra
    ccf
    rst $38
    dec sp
    ccf
    pop bc
    rst $38
    ld a, c
    ld a, a
    add b
    rst $38
    ld a, b
    ld a, a
    inc e
    rst $38
    cp h
    rst $38
    ld [$fcff], sp
    rst $38
    ld [$fcff], sp
    rst $38
    nop
    rst $38
    cp h
    rst $38
    rrca
    rst $38
    ei
    add a
    ldh a, [rIE]
    ld [hl], a
    ld c, a
    nop
    rst $38
    dec sp
    dec sp
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    ld bc, $f001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $2001
    rst $38
    ld bc, $1f01
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0501
    db $fd
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $0c01
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp-$7d
    add e
    ld hl, sp-$08
    add e
    add e
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
    ret nz

    ret nz

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
    ld a, [hl]
    cp $00
    nop
    ccf
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    dec a
    rst $38
    nop
    nop
    cpl
    pop af
    nop
    nop
    rst $28
    pop af
    nop
    nop
    ld [hl], e
    db $fc
    add b
    add b
    ld [hl], a
    ld hl, sp-$80
    add b
    ld l, a
    add sp, -$80
    add b
    ld l, e
    db $ec
    ret nz

    ret nz

    rst $20
    push hl
    ldh [$e0], a
    dec d
    rst $30
    ldh [$e0], a
    dec d
    rst $30
    ldh [$a0], a
    inc de
    ld a, [c]
    and b
    ld h, b
    sub c
    pop af
    ret nz

    ret nz

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
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld h, c
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

    jr nz, jr_0e5_5811

    ld b, b
    ret nz

    jr nz, jr_0e5_5815

    ld b, b
    ret nz

    jr nz, jr_0e5_5819

    ld b, b
    ret nz

    jr nz, jr_0e5_581d

    ld b, b
    ret nz

    jr nz, jr_0e5_5821

    ld b, b
    ret nz

    ld de, $801f
    add b
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
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5811:
    nop
    nop
    nop
    nop

jr_0e5_5815:
    nop
    nop
    nop
    nop

jr_0e5_5819:
    nop
    nop
    nop
    nop

jr_0e5_581d:
    nop
    ld bc, $0001

jr_0e5_5821:
    nop
    ld bc, $0001
    nop
    ld bc, $1c01
    inc e
    inc bc
    inc bc
    rra
    inc de
    rrca
    rrca
    dec bc
    inc c
    ldh a, [rIE]
    ld b, $07
    db $fc
    ccf
    ld bc, $de01
    rst $38
    nop
    nop
    xor [hl]
    rst $18
    inc bc
    inc bc
    sbc $ff
    dec b
    ld b, $fe
    ld a, a
    dec b
    ld b, $7c
    cp a
    dec b
    ld b, $e0
    rra
    dec b
    ld b, $df
    ccf
    ld [bc], a
    inc bc
    jr c, @+$01

    ld bc, $d801
    rst $18
    nop
    nop
    jr jr_0e5_587f

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
    jr nz, jr_0e5_58ab

    nop
    nop
    ld b, b
    ld a, a
    ld bc, $8101
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    inc bc

jr_0e5_587f:
    rst $38
    ld b, $07
    rlca
    rst $38
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    ld a, [c]
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $02
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $01ff
    ld bc, $fe02
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h

jr_0e5_58ab:
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
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
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
    ld a, h
    ld a, h
    nop
    nop
    cp [hl]
    cp $00
    nop
    rst $18
    cp a
    nop
    nop
    ld e, a
    rst $38
    nop
    nop
    rst $10
    cpl
    nop
    nop
    rst $20
    rra
    nop
    nop
    cp a
    ld a, a
    ret nz

    ret nz

    jp $f0ff


    ldh a, [$7f]
    rst $38
    ld hl, sp-$08
    jr nc, @+$01

    db $fc
    db $fc
    nop
    rst $38
    inc a
    db $fc
    rrca
    rst $38
    cp [hl]
    cp $02
    rst $38
    ld a, $fe
    inc b
    rst $38
    ld a, $fe
    inc b
    rst $38
    ld a, d
    cp $00
    rst $38
    or d
    xor $ff
    rst $38
    jp c, Jump_000_00f6

    rst $38
    jp c, Jump_000_00f6

    rst $38
    jp nc, Jump_000_00fe

    rst $38
    db $fc
    db $fc

jr_0e5_5920:
    rst $38
    rst $38
    ldh a, [$f0]

jr_0e5_5924:
    nop
    rst $38
    ret nz

    ret nz

jr_0e5_5928:
    nop
    rst $38
    ret nz

    ret nz

jr_0e5_592c:
    nop
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    db $fc
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0e5_5920

    ld b, b
    ld a, a
    jr nz, jr_0e5_5924

    ld h, b
    ld a, a
    jr nz, jr_0e5_5928

    ld a, h
    ld a, a
    jr nz, jr_0e5_592c

    ld a, a
    ld a, a
    ldh a, [$f0]
    jr nz, jr_0e5_5991

    ld [$20f8], sp
    ccf
    inc b
    db $fc
    db $10
    rra
    ld [bc], a
    cp $08
    rrca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    jr @-$06

    ld bc, $f801
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5991:
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
    jr c, jr_0e5_59f3

    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    cp $ff
    nop
    nop
    cp [hl]
    rst $38
    inc bc
    inc bc
    sbc $bf
    rlca
    rlca
    ld a, $ff
    rlca
    inc b
    ld a, [hl]
    rst $38
    inc b
    rlca
    ld a, h
    add e
    inc bc
    inc bc
    cp l
    jp RST_00


    ld b, b
    ld a, a
    nop
    nop
    jr c, @+$41

    nop
    nop
    jr jr_0e5_59ff

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
    jr nz, jr_0e5_5a2b

    nop
    nop
    ld b, b
    ld a, a
    ld bc, $8101

jr_0e5_59f3:
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    inc bc

jr_0e5_59ff:
    rst $38
    ld b, $07
    rlca
    rst $38
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    ld a, [c]
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $02
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $01ff
    ld bc, $fe02
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h

jr_0e5_5a2b:
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
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
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
    cp a
    ld a, a
    nop
    nop
    rst $38
    sbc a
    nop
    nop
    rst $18
    ccf
    nop
    nop
    rst $38
    ld a, a
    ret nz

    ret nz

    jp $f0ff


    ldh a, [$7f]
    rst $38
    ld hl, sp-$08
    jr nc, @+$01

    db $fc
    db $fc
    nop
    rst $38
    inc a
    db $fc
    rrca
    rst $38
    cp [hl]
    cp $02
    rst $38
    ld a, $fe
    inc b
    rst $38
    ld a, $fe
    inc b
    rst $38
    ld a, d
    cp $00
    rst $38
    or d
    xor $ff
    rst $38
    jp c, Jump_000_00f6

    rst $38
    jp c, Jump_000_00f6

    rst $38
    jp nc, Jump_000_00fe

    rst $38
    db $fc
    db $fc

jr_0e5_5aa0:
    rst $38
    rst $38
    ldh a, [$f0]

jr_0e5_5aa4:
    nop
    rst $38
    ret nz

    ret nz

jr_0e5_5aa8:
    nop
    rst $38
    ret nz

    ret nz

jr_0e5_5aac:
    nop
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    db $fc
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0e5_5aa0

    ld b, b
    ld a, a
    jr nz, jr_0e5_5aa4

    ld h, b
    ld a, a
    jr nz, jr_0e5_5aa8

    ld a, h
    ld a, a
    jr nz, jr_0e5_5aac

    ld a, a
    ld a, a
    ldh a, [$f0]
    jr nz, jr_0e5_5b11

    ld [$20f8], sp
    ccf
    inc b
    db $fc
    db $10
    rra
    ld [bc], a
    cp $08
    rrca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    jr @-$06

    ld bc, $f801
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc

jr_0e5_5af7:
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5b11:
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld l, a
    ld e, a
    nop
    nop
    ld a, e
    ld c, a
    nop
    nop
    scf
    dec sp
    nop
    nop
    dec sp
    daa
    nop
    nop
    scf
    cpl
    nop
    nop
    inc l
    ccf
    nop
    nop
    ld a, c
    ld a, a
    inc bc
    inc bc
    sbc [hl]
    rst $38
    rlca
    rlca
    add [hl]
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec de
    rra
    ldh [rIE], a
    dec d
    dec de
    ldh [rIE], a
    dec de
    rra
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rla
    rra
    rst $38
    rst $38
    rla
    jr jr_0e5_5af7

    ld a, a
    dec bc
    inc c
    ldh [$3f], a
    ld b, $07
    db $10
    rst $38
    ld bc, $1f01
    rst $38
    inc bc
    inc bc
    ret nz

    ccf
    ld c, $0d
    ret nz

    rst $38
    dec de
    rla
    add b
    rst $38
    rra
    rra
    ld [bc], a
    rst $38
    inc c
    rrca
    ld bc, $08ff
    rrca
    ld bc, $08ff
    rrca
    rlca
    rst $38
    inc c
    rrca
    ld c, $fe
    rrca
    rrca
    ld hl, sp-$08
    rrca
    rrca
    db $e4
    db $fc
    ld [$040f], sp
    db $fc
    ld [$040f], sp
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    ld bc, $f801
    ld hl, sp+$00
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
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    rlca
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
    ret nz

    ret nz

    ld e, $ff
    ldh [$e0], a
    and $ff
    ldh a, [$f0]
    nop
    rst $38
    ld a, b
    ld hl, sp+$00
    rst $38
    ld a, h
    db $fc
    inc a
    rst $38
    ld a, h
    db $fc
    ld [$72ff], sp
    cp $08
    rst $38
    ld [hl], l
    ei
    ld [$55ff], sp
    ei
    nop
    rst $38
    ld d, l
    ei
    rrca
    rst $38
    sub d
    cp $f0
    rst $38
    cp h
    db $fc
    nop
    rst $38
    ldh a, [$f0]
    ld bc, $c0ff
    ret nz

    ld bc, $80ff
    add b
    rst $38
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    nop
    rst $38
    add b
    add b
    inc b
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$20f8], sp
    ccf
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$04
    rlca
    jr nc, @-$0e

    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld c, $09
    nop
    nop
    rrca
    dec bc
    nop
    nop
    dec de
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    di
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $e401
    rra
    ld bc, $e701
    rra
    ld bc, $4401
    cp a
    nop
    nop
    db $e4
    sbc a
    nop
    nop
    db $e4
    sbc a
    nop
    nop
    rst $20
    sbc a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    cp b
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    or c
    rst $08
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr z, jr_0e5_5d73

    nop
    nop
    jr c, jr_0e5_5d77

    nop
    nop
    jr c, jr_0e5_5d7b

    nop
    nop
    jr jr_0e5_5d5f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5d5f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5d73:
    nop
    nop
    nop
    nop

jr_0e5_5d77:
    nop
    nop
    nop
    nop

jr_0e5_5d7b:
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
    nop
    nop
    cp $ff
    add b
    add b
    ld b, $ff
    ret nz

    ret nz

    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    ldh [$e0], a
    ld de, $c0ff
    ret nz

    ld bc, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $40ff
    ret nz

    ld bc, $40ff
    ret nz

    inc bc
    cp $40
    ret nz

    rst $38
    cp $40
    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ld b, b
    push hl
    cp $80
    add b
    sbc h
    rst $38
    ldh [$e0], a
    di
    rst $38
    sub b
    ldh a, [$31]
    rst $38
    sub b
    ldh a, [$3d]
    rst $38
    ldh a, [$f0]
    add hl, sp
    rst $38
    ret z

    ld hl, sp+$3f
    rst $38
    ldh a, [$f0]
    jr @+$01

    ret z

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
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ef01
    ccf
    nop
    nop
    rst $18
    rst $28
    nop
    nop
    rst $28
    sbc a
    nop
    nop
    call c, Call_000_00bf
    nop
    or e
    rst $38
    ld bc, $e401
    rst $38
    ld [bc], a
    inc bc
    ld a, b
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    ldh a, [rIE]
    ld [bc], a
    inc bc
    ld hl, sp-$01
    inc bc
    ld [bc], a
    ld a, b
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    rst $38
    rst $38
    inc bc
    ld [bc], a
    ld a, b
    rst $38
    rlca
    inc b
    adc b
    ld a, a
    rlca
    inc b
    adc b
    ld a, a
    rlca
    inc b
    sbc a
    ld a, a
    inc bc
    ld [bc], a
    jr nz, @+$01

    ld bc, $c001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    db $10
    rra
    rlca
    rst $38
    jr nz, jr_0e5_5eb9

    ld b, $ff
    jr nz, jr_0e5_5ebd

    inc e
    rst $38
    jr nc, jr_0e5_5ec1

    ld a, [hl-]
    ei
    ccf
    ccf
    db $e3
    db $e3
    ccf
    ccf
    sub e
    di
    jr nz, jr_0e5_5ecd

    inc de
    di
    jr nz, jr_0e5_5ed1

    ld de, $10f1
    rra
    add hl, bc
    ld sp, hl
    db $10
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh a, [$f0]
    rrca

jr_0e5_5eb9:
    rrca
    ldh a, [$f0]
    rra

jr_0e5_5ebd:
    rra
    ldh a, [$f0]
    nop

jr_0e5_5ec1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_5ecd:
    nop
    nop
    nop
    nop

jr_0e5_5ed1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, e
    rst $38
    nop
    nop
    sbc e
    rst $38
    add b
    add b
    ld bc, $c0ff
    ret nz

    ld bc, $e0ff
    ldh [$f1], a
    rst $38
    ldh [$e0], a
    ld hl, $90ff
    ldh a, [rNR42]
    rst $38
    ld c, b
    cp b
    ld hl, $c8ff
    jr c, jr_0e5_5f0a

    rst $38

jr_0e5_5f0a:
    inc b
    db $fc
    ccf
    rst $38
    call nz, $c3bc
    rst $38
    db $e4
    sbc h
    inc bc
    rst $38
    and h
    call c, $fe06
    ld h, h
    ld e, h
    ld b, $fe
    db $fc
    db $fc
    rst $38
    rst $38
    call c, $073c
    rst $38
    cp h
    ld a, h
    ld b, $fe
    db $ec
    sbc h
    ld [bc], a
    cp $78
    ld a, b
    ld [de], a
    cp $00
    nop
    ld [c], a
    cp $00
    nop

jr_0e5_5f38:
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop

jr_0e5_5f44:
    ld bc, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0e5_5f38

    add b
    rst $38
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0e5_5f44

    db $10
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld a, $39
    nop
    nop
    ld [hl], a
    ld l, e
    nop
    nop
    rst $38
    or a
    ld bc, $bf01
    ld a, a
    inc bc
    inc bc
    and $ff
    inc b
    rlca
    ldh a, [rIE]
    ld b, $07
    ldh a, [rIE]
    dec bc
    rrca
    ldh a, [rIE]
    rrca
    add hl, bc
    ldh a, [rIE]
    inc c
    dec bc
    ldh [rIE], a
    ld [$000f], sp
    rst $38
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
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
    ld a, a
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc c
    rrca
    ld [$10ff], sp
    rra
    rlca
    rst $38
    jr nz, jr_0e5_6039

    ld b, $ff
    jr nz, jr_0e5_603d

    inc e
    rst $38
    jr nc, jr_0e5_6041

    ld a, [hl-]
    ei
    ccf
    ccf
    db $e3
    db $e3
    ccf
    ccf
    sub e
    di
    jr nz, jr_0e5_604d

    inc de
    di
    jr nz, @+$41

    ld de, $10f1
    rra
    add hl, bc
    ld sp, hl
    db $10
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh a, [$f0]
    rrca

jr_0e5_6039:
    rrca
    ldh a, [$f0]
    rra

jr_0e5_603d:
    rra
    ldh a, [$f0]
    nop

jr_0e5_6041:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_604d:
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
    nop
    nop
    cp $ff
    ret nz

    ret nz

    ld b, $ff
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh a, [$f0]
    ld de, $f0ff
    ldh a, [rNR11]
    rst $38
    ldh a, [$f0]
    ld de, $b0ff
    ret nc

    inc bc
    rst $38
    ld [hl], b
    sub b
    rst $38
    rst $38
    ld d, b
    or b
    ld bc, $e0ff
    jr nz, jr_0e5_609a

    rst $38

jr_0e5_609a:
    and b
    ld h, b
    inc bc
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld b, $fe
    nop
    nop
    ld b, $fe
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

jr_0e5_60b8:
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop

jr_0e5_60c4:
    ld bc, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0e5_60b8

    add b
    rst $38
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0e5_60c4

    db $10
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
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
    dec c
    dec bc
    nop
    nop
    rrca
    inc c
    nop
    nop
    ld a, $39
    nop
    nop
    ld [hl], a
    ld l, e
    nop
    nop
    rst $38
    or a
    ld bc, $bf01
    ld a, a
    inc bc
    inc bc
    and $ff
    inc b
    rlca
    ldh a, [rIE]
    ld b, $07
    ldh a, [rIE]
    dec bc
    rrca
    ldh a, [rIE]
    rrca
    add hl, bc
    ldh a, [rIE]
    inc c
    dec bc
    ldh [rIE], a
    ld [$000f], sp
    rst $38
    inc b
    rlca
    ld a, a
    rst $38
    inc bc
    inc bc
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
    ld bc, $f101
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
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
    nop
    nop
    cp $ff
    ret nz

    ret nz

    ld b, $ff
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld a, b
    rst $38
    ldh a, [$f0]
    ld de, $f0ff
    ldh a, [rNR11]
    rst $38
    ldh a, [$f0]
    ld de, $b0ff
    ret nc

    inc bc
    rst $38
    ld [hl], b
    sub b
    rst $38
    rst $38
    ld d, b
    or b
    ld bc, $e0ff
    jr nz, jr_0e5_620e

    rst $38

jr_0e5_620e:
    and b
    ld h, b
    inc bc
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
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

jr_0e5_6234:
    add c
    rst $38
    nop
    nop

jr_0e5_6238:
    add b
    rst $38
    add b
    add b

jr_0e5_623c:
    add b
    rst $38
    add b
    add b

jr_0e5_6240:
    add a
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    and b
    cp a
    jr nz, jr_0e5_6234

    and b
    cp a
    jr nz, jr_0e5_6238

    and b
    cp a
    jr nz, jr_0e5_623c

    and b
    cp a
    jr nz, jr_0e5_6240

    db $10
    rra
    ld b, b
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
    add b
    add b
    rrca
    rrca
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

    rrca
    rrca
    ret nz

    ret nz

    inc [hl]
    inc l
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    dec e
    inc de
    nop
    nop
    ld d, $19
    add b
    add b
    dec bc
    inc c
    ld [hl], b
    ldh a, [rTAC]
    ld b, $fe
    ld a, [hl]
    inc bc
    ld [bc], a
    ld e, c
    rst $38
    inc bc
    ld [bc], a
    sbc $b9
    ld [bc], a
    inc bc
    rst $30
    ld hl, sp+$01
    ld bc, $f9fe
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    rlca
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0e5_633f

    nop
    nop
    jr nz, jr_0e5_6343

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
    jr nz, jr_0e5_634f

    nop
    nop
    jr nz, jr_0e5_6353

    nop
    nop
    jr nz, jr_0e5_6357

    nop
    nop
    jr nz, jr_0e5_635b

    nop
    nop
    jr nz, jr_0e5_635f

    nop
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38

jr_0e5_633f:
    rst $38
    nop
    nop
    nop

jr_0e5_6343:
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, a
    ld a, a
    nop

jr_0e5_634f:
    nop
    ld a, a
    ld a, a
    add b

jr_0e5_6353:
    add b
    cp a
    rst $38
    add b

jr_0e5_6357:
    add b
    rst $18
    cp a
    add b

jr_0e5_635b:
    add b
    ld a, a
    cp a
    nop

jr_0e5_635f:
    nop
    sbc a
    ld a, a
    nop
    nop
    ld a, l
    rst $38
    ret nz

    ret nz

    rst $20
    rst $38
    ld b, b
    ret nz

    ld [hl], d
    rst $38
    ld b, b
    ret nz

    cp b
    ld a, a
    ret nz

    ret nz

    ld a, h
    rst $38
    ld b, b
    ret nz

    call nz, Call_0e5_40ff
    ret nz

    ld h, d
    sbc a
    ld b, b
    ret nz

jr_0e5_6380:
    or d
    rst $08
    ld b, b
    ret nz

jr_0e5_6384:
    db $d3
    rst $28
    ret nz

    ret nz

    ld [hl-], a
    rst $28
    ld b, b
    ret nz

jr_0e5_638c:
    ld [de], a
    rst $28
    ld b, b
    ret nz

jr_0e5_6390:
    ld [de], a
    rst $28
    ld b, b
    ret nz

    di

jr_0e5_6395:
    rst $28
    ret nz

    ret nz

    db $10
    rst $28
    ld b, b
    ret nz

    ld e, $ff
    jr nz, jr_0e5_6380

    ld a, [de]
    rst $30
    jr nz, jr_0e5_6384

    ld a, [hl-]
    rst $10
    and b
    ldh [$3f], a
    rst $18
    jr nz, jr_0e5_638c

    jr jr_0e5_6395

    jr nz, jr_0e5_6390

    db $10
    rst $38
    db $10
    ldh a, [rNR10]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    ld [$18f8], sp
    rst $38
    ld [$28f8], sp
    rst $28
    ld a, b
    ld hl, sp+$2f
    rst $28
    ld hl, sp-$08
    rst $28
    rst $28
    ret z

    ld hl, sp+$24
    rst $20
    inc b
    db $fc
    ld [de], a
    di
    ld [bc], a
    cp $12
    di
    ld [bc], a
    cp $12
    di
    ld [bc], a
    cp $12
    di
    ld [bc], a
    cp $21
    pop hl
    inc b
    db $fc
    ret nz

    ret nz

    ld hl, sp-$08
    ret nz

    ret nz

    ld a, b
    ld a, b
    add b
    add b
    ld a, b
    ld a, b
    add b
    add b
    ld a, b
    ld a, b
    ret nz

    ret nz

    db $fc
    db $fc
    pop bc
    pop bc
    db $fc
    db $fc
    pop bc
    pop bc
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
    ld l, a
    ld a, a
    ld c, $0e
    ld e, a
    ld l, a
    rra
    dec e
    ld [hl], e
    ld l, a
    ld a, $3f
    jp hl


    rst $10
    scf
    ccf
    pop af
    rrca
    ccf
    inc a
    ld bc, $1fff
    inc e
    inc bc
    rst $38
    ld c, $0f
    ld e, $ff
    ld bc, $f101
    rst $38
    nop
    nop
    ld e, $1f
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
    jr nc, jr_0e5_64ab

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    inc bc
    rst $38
    ld b, $07
    rlca
    rst $38
    rrca
    dec bc
    db $fc
    db $fc
    rra
    inc de
    ld a, [c]
    cp $38
    daa
    ld [bc], a
    cp $6c
    ld e, a
    ld [bc], a
    cp $32
    inc sp
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $01ff
    ld bc, $fe02
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h

jr_0e5_64ab:
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
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
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
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    db $ec
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    sbc d
    cp $00
    nop
    add l
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

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

    add c
    rst $38
    ld b, b
    ret nz

    ld a, [hl]
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld h, b
    ld a, a
    ld b, b
    ret nz

    ld a, h
    ld a, a
    ld b, b
    ret nz

    ld a, a
    ld a, a
    ldh a, [$f0]
    jr nz, jr_0e5_6591

    ld [$20f8], sp
    ccf
    inc b
    db $fc
    db $10
    rra
    ld [bc], a
    cp $08
    rrca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    jr @-$06

    ld bc, $f801
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    nop
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

jr_0e5_6591:
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
    inc b
    rlca
    inc bc
    inc bc
    ld sp, hl
    rst $38
    rlca
    inc b
    ld a, [c]
    ccf
    inc bc
    inc bc
    push de
    ld l, [hl]
    nop
    nop
    sub $ef
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e5_662f

    nop
    nop
    jr nz, jr_0e5_6633

    nop
    nop
    jr nz, jr_0e5_6637

    nop
    nop
    jr nz, jr_0e5_663b

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
    ld a, [hl]
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
    jr nz, jr_0e5_6663

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

jr_0e5_662f:
    rra
    nop
    nop
    rra

jr_0e5_6633:
    rra
    nop
    nop
    ccf

jr_0e5_6637:
    ccf
    nop
    nop
    rst $38

jr_0e5_663b:
    rst $38
    ld bc, $ff01
    rst $38
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
    cp a
    ld a, a
    nop
    nop
    rst $38
    sbc a
    nop
    nop
    rst $18
    ccf
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    ld h, c
    rst $38
    add b

jr_0e5_6663:
    add b
    ei
    rst $38
    ld b, b
    ret nz

    adc $ff
    ld b, b
    ret nz

    db $e4
    rst $38
    ld b, b
    ret nz

    ld [hl], c
    rst $38
    ld b, b
    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    adc b

jr_0e5_6679:
    rst $38
    ld b, b
    ret nz

    call nz, $803f
    add b
    ld h, h
    sbc a
    add b
    add b
    and a
    rst $18
    add b
    add b
    ld h, h
    rst $18
    add b
    add b
    inc h
    rst $18
    add b
    add b
    inc h
    rst $18
    add b
    add b

jr_0e5_6694:
    rst $20
    rst $18
    add b
    add b

jr_0e5_6698:
    jr nz, jr_0e5_6679

    add b
    add b
    inc a
    rst $38
    ld b, b
    ret nz

    inc [hl]
    rst $28
    ld b, b
    ret nz

    ld [hl], l
    xor a
    ld b, b
    ret nz

    ld a, [hl]
    cp a
    ld b, b
    ret nz

    jr nc, @-$2f

    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0e5_6694

    jr nz, @+$01

    jr nz, jr_0e5_6698

    jr nc, @+$01

    db $10
    ldh a, [$30]
    rst $38
    db $10
    ldh a, [$50]
    rst $18
    ldh a, [$f0]
    ld e, a
    rst $18
    ldh a, [$f0]
    rst $18
    rst $18
    sub b
    ldh a, [rOBP0]
    rst $08
    ld [$24f8], sp
    rst $20
    inc b
    db $fc
    inc h
    rst $20
    inc b
    db $fc
    inc h
    rst $20
    inc b
    db $fc
    inc h
    rst $20
    inc b
    db $fc
    ld b, d
    jp $f808


    add c
    add c
    ldh a, [$f0]
    add b
    add b
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    add c
    add c
    ld hl, sp-$08
    add e
    add e
    ld hl, sp-$08
    add e
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ef01
    ccf
    nop
    nop
    rst $18
    rst $28
    nop
    nop
    rst $28
    sbc a
    nop
    nop
    call c, $06bf
    ld b, $b3
    rst $38
    rrca
    add hl, bc
    db $e4
    rst $38
    rra
    rra
    ld a, b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rla
    rra
    add b
    rst $38
    dec de
    rla
    add b
    rst $38
    rla
    rra
    add b
    rst $38
    rra
    rra
    add b
    rst $38
    rla
    rra
    add b
    rst $38
    dec de
    rla
    rst $38
    rst $38
    ld e, $11
    ld b, b
    rst $38
    ld d, $19
    ld b, b
    rst $38
    ld [$c00f], sp
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc c
    rrca
    ld [$10ff], sp
    rra
    rlca
    rst $38
    jr nz, jr_0e5_6939

    ld b, $ff
    jr nz, jr_0e5_693d

    inc e
    rst $38
    jr nc, jr_0e5_6941

    ld a, [hl-]
    ei
    ccf
    ccf
    db $e3
    db $e3
    ccf
    ccf
    sub e
    di
    jr nz, jr_0e5_694d

    inc de
    di
    jr nz, jr_0e5_6951

    ld de, $10f1
    rra
    add hl, bc
    ld sp, hl
    db $10
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    inc bc
    inc bc
    ldh a, [$f0]
    rrca

jr_0e5_6939:
    rrca
    ldh a, [$f0]
    rra

jr_0e5_693d:
    rra
    ldh a, [$f0]
    nop

jr_0e5_6941:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_694d:
    nop
    nop
    nop
    nop

jr_0e5_6951:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, e
    rst $38
    nop
    nop
    sbc e
    rst $38
    add b
    add b
    ld bc, $c0ff
    ret nz

    ld bc, $e0ff
    ldh [$f1], a
    rst $38
    ldh [$e0], a
    ld hl, $90ff
    ldh a, [rNR42]
    rst $38
    ld c, b
    cp b
    ld hl, $c8ff
    jr c, jr_0e5_698a

    rst $38

jr_0e5_698a:
    ld [$3ff8], sp
    rst $38
    ld [$c3f8], sp
    rst $38
    sub b
    ldh a, [$03]
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    cp $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
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

jr_0e5_69b8:
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop

jr_0e5_69c4:
    ld bc, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0e5_69b8

    add b
    rst $38
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, jr_0e5_69c4

    db $10
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ret c

    xor b
    ld bc, $f001
    ldh a, [$03]
    inc bc
    pop de
    pop af
    inc bc
    inc bc
    pop de
    ld [hl], c
    inc bc
    inc bc
    ld [hl], d
    di
    inc bc
    inc bc
    db $e3
    ld [c], a
    ld [bc], a
    inc bc
    db $d3
    ld [hl-], a
    ld [bc], a
    inc bc
    jp nc, $0533

    ld b, $ef
    rra
    dec b
    ld b, $fe
    rra
    inc b
    rlca
    rst $28
    ccf
    ld [bc], a
    inc bc
    ld d, a
    xor a
    ld bc, $2f01
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, $3f
    nop
    nop
    jr jr_0e5_6a6b

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
    ld [$000f], sp
    nop
    db $10

jr_0e5_6a6b:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e5_6ab3

    nop
    nop
    jr nz, jr_0e5_6ab7

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
    ld b, c
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, c
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
    jr nz, jr_0e5_6adf

    nop
    nop
    jr nz, jr_0e5_6ae3

    nop
    nop
    jr nz, jr_0e5_6ae7

    nop
    nop
    rla
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca

jr_0e5_6ab3:
    rlca
    nop
    nop
    rrca

jr_0e5_6ab7:
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
    ret c

    xor b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    cp [hl]
    cp $00

jr_0e5_6adf:
    nop
    xor [hl]
    ld e, [hl]
    nop

jr_0e5_6ae3:
    nop
    rst $08
    ccf
    nop

jr_0e5_6ae7:
    nop
    cp l
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    ldh [$e0], a
    ld b, c
    rst $38
    ldh a, [$f0]

jr_0e5_6af4:
    ld a, a
    rst $38
    ld hl, sp-$08

jr_0e5_6af8:
    nop
    rst $38
    ld hl, sp-$08
    rra
    rst $38
    cp b
    ld hl, sp+$02
    rst $38
    jr nc, jr_0e5_6af4

    ld [bc], a
    rst $38
    jr nc, jr_0e5_6af8

    inc b
    rst $38
    ld h, b
    ldh [rIE], a
    rst $38
    ret nz

    ret nz

    ld [$c0ff], sp
    ret nz

    add hl, bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    inc b
    rst $38
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    add c
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
    ld [c], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
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
    cp l
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp h
    cp h
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $e4
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
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ff01
    sbc a
    ld bc, $df01
    ccf
    ld bc, $ff01
    ld a, a
    rlca
    rlca
    ldh [rIE], a
    inc c
    rrca
    jp nz, Jump_000_16ff

    rra
    inc c
    rst $38
    ld a, [de]
    rla
    inc b
    rst $38
    rla
    rra
    inc b
    rst $38
    rra
    rra
    inc b
    rst $38
    ld d, $19
    add e
    rst $38
    ld d, $19
    db $fc
    rst $38
    ld [hl], $39
    add b
    rst $38
    ld l, d
    ld [hl], l
    add b
    rst $38
    xor $d1
    ret nz

    rst $38
    rst $08
    pop af
    ld h, e
    ld a, a
    ld h, c
    ld a, a
    ld a, h
    ld a, a
    ld a, $3e
    jr nc, jr_0e5_6d9f

    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nz, jr_0e5_6da7

    nop
    nop
    jr nz, jr_0e5_6dab

    nop
    nop
    jr nz, jr_0e5_6daf

    nop
    nop
    jr nz, jr_0e5_6db3

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e5_6dbb

    nop
    nop
    daa
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
    jr c, jr_0e5_6dcb

    nop
    nop
    inc e
    rra
    nop
    nop
    rrca
    rrca
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
    ld [bc], a

jr_0e5_6d9f:
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_0e5_6da7:
    nop
    nop
    nop
    nop

jr_0e5_6dab:
    nop
    nop
    nop
    nop

jr_0e5_6daf:
    nop
    nop
    nop
    nop

jr_0e5_6db3:
    nop
    nop
    nop
    ld bc, $0001
    nop
    rlca

jr_0e5_6dbb:
    rlca
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

jr_0e5_6dcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc $fe
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld c, $f9
    add b
    add b
    ld c, $f9
    add b
    add b
    rst $38
    ld hl, sp+$40
    ret nz

    rrca
    ld hl, sp+$40
    ret nz

    dec bc
    db $fc
    ld b, b
    ret nz

    dec bc
    db $fc
    and b
    ld h, b
    dec c
    cp $a0
    ld h, b
    rst $38
    rst $38
    ldh [$e0], a
    ld c, $ff
    ld [hl], b
    or b
    rlca
    rst $38
    ldh a, [$50]
    rlca
    rst $38
    ldh a, [$d0]
    ld b, $ff
    ldh [rNR41], a
    rlca
    rst $38
    ret nz

    ret nz

    inc a
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
    add h
    db $fc
    nop
    nop
    ei
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    sub b
    ldh a, [rTIMA]
    db $fd
    adc b
    ld hl, sp-$05
    rst $38
    adc b
    ld hl, sp+$02
    cp $88
    ld hl, sp+$02
    cp $88
    ld hl, sp+$02
    cp $70
    ld [hl], b
    inc c
    db $fc
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
    rst $18
    cp a
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    rst $28
    sbc a
    ld bc, $ff01
    cp a
    ld [bc], a
    inc bc
    ldh a, [rIE]
    inc b
    rlca
    ld h, b
    rst $38
    rrca
    rrca
    rrca
    rst $38
    dec bc
    rrca
    add d
    rst $38
    dec c
    dec bc
    add c
    rst $38
    dec bc
    rrca
    pop bc
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    inc c
    cp a
    ld a, a
    dec bc
    inc c
    and b
    ld a, a
    inc sp
    inc a
    and b
    ld a, a
    ld [hl], a
    ld a, b
    ld h, b
    rst $38
    or $d9
    ld [hl], b
    rst $38
    ret nc

    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    jr jr_0e5_6efb

    jr c, jr_0e5_6f16

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
    jr nz, jr_0e5_6f2b

    nop
    nop
    jr nz, jr_0e5_6f2f

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
    rst $38

jr_0e5_6efb:
    rst $38
    nop
    nop
    rst $38
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
    jr nz, jr_0e5_6f4b

    nop
    nop
    ld hl, $003f
    nop
    inc de
    rra
    nop
    nop

jr_0e5_6f16:
    add hl, bc
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
    ld c, $0f
    nop
    nop
    jr jr_0e5_6f47

    nop
    nop
    rra

jr_0e5_6f2b:
    rra
    nop
    nop
    nop

jr_0e5_6f2f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_6f47:
    nop
    nop
    nop
    nop

jr_0e5_6f4b:
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
    ld hl, sp-$08
    nop
    nop
    call c, Call_000_00fc
    nop
    ld l, [hl]
    cp $00
    nop
    rrca
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld c, $f9
    add b
    add b
    rst $38
    ld hl, sp+$40
    ret nz

    dec bc
    db $fc
    ld b, b
    ret nz

    dec bc
    db $fc
    ld b, b
    ret nz

    add hl, bc
    cp $40
    ret nz

    dec c
    cp $40
    ret nz

    rst $38
    db $fc
    ld b, b
    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ld b, b
    ret nz

    inc bc
    cp $80
    add b
    inc bc
    rst $38
    nop
    nop
    dec e
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld b, c
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
    ret nz

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
    ld b, b
    rst $38
    ld b, b
    ret nz

    and b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    adc b
    rst $38
    ld b, b
    ret nz

    ccf
    rst $38
    add b
    add b
    rst $00
    rst $00
    add b
    add b
    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    ret nz

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
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ff01
    sbc a
    ld bc, $df01
    ccf
    rlca
    rlca
    rst $38
    ld a, a
    rrca
    rrca
    ld h, c
    rst $38
    rra
    rra
    jr nc, @+$01

    dec de
    rra
    adc [hl]
    rst $38
    dec d
    dec de
    add h
    rst $38
    dec de
    rra
    add d

jr_0e5_702f:
    rst $38
    rra
    rra
    jp nz, Jump_000_17ff

    jr @-$3e

    ld a, a
    rla
    jr jr_0e5_708a

    rst $38
    rla
    jr jr_0e5_702f

    ld a, a
    dec bc
    inc c
    ld b, b
    rst $38
    rla
    jr @+$62

    rst $38
    rra
    jr @+$62

    rst $38
    inc a
    ccf
    or e
    cp a
    ld l, a
    ld a, a
    inc a
    ccf
    db $76
    ld e, [hl]
    db $10
    rra
    inc a
    inc l
    jr nc, jr_0e5_709b

    jr @+$1a

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
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $f101
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc

jr_0e5_708a:
    ld [bc], a
    cp $01
    ld bc, $fe02
    ld bc, $0401
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld a, b

jr_0e5_709b:
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    rra
    rra
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    dec c
    ei
    nop
    nop
    dec c
    ei
    nop
    nop
    db $fd
    ei
    nop
    nop
    ld c, $f9
    add b
    add b
    ld b, $fd
    add b
    add b
    dec b
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
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
    nop
    nop
    inc bc
    rst $38
    nop
    nop

jr_0e5_7120:
    ld a, [hl]
    cp $00
    nop
    ld b, d
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
    rlca
    rst $38
    add b
    add b
    db $fc
    rst $38
    ret nz

    ret nz

    ldh a, [rIE]
    jr nz, jr_0e5_7120

    ld h, b
    ld a, a
    db $10
    ldh a, [$60]
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    ld [$10f8], sp
    rra
    inc b
    db $fc
    ld [$320f], sp
    cp $04
    rlca
    ld a, h
    db $fc
    ld [bc], a
    inc bc
    ld a, [hl]
    cp $01
    ld bc, $ff7f
    nop
    nop
    cp h
    cp a
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    jr nc, jr_0e5_71a8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    cp $fe
    inc bc
    ld [bc], a
    ld a, [hl]
    cp $03
    inc bc
    cp $3e
    inc bc
    ld [bc], a
    cp [hl]
    ld a, [hl]
    inc bc
    ld [bc], a
    rst $38
    rst $38
    rlca
    rlca
    nop
    rst $38

jr_0e5_71a8:
    rrca
    rrca
    adc [hl]
    rst $38
    dec bc
    rrca
    add h
    rst $38
    dec c
    dec bc
    jp nz, Jump_000_0bff

    rrca
    jp nz, $0fff

    ld c, $80
    ld a, a
    dec bc
    inc c
    add c
    ld a, a
    dec bc
    inc c
    sbc $3f
    dec bc
    inc c
    ret nz

    ccf
    ld a, [bc]
    dec c
    ret nz

    ccf
    rrca
    ld [$7fb0], sp
    rra
    ld e, $70
    rst $38
    inc de
    rra
    ld e, a
    rst $18
    inc sp
    cpl
    sbc b
    sbc a
    rra
    rra
    jr jr_0e5_71ff

    ld e, $12
    db $10
    rra
    inc c
    inc c
    jr nz, jr_0e5_7227

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
    ld a, h
    ld a, a
    nop
    nop
    ld a, a

jr_0e5_71ff:
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
    add b
    add b
    ld a, $3e
    nop
    nop
    inc a

jr_0e5_7227:
    inc a
    inc bc
    inc bc
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
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
    ldh [$e0], a

jr_0e5_7262:
    nop
    nop
    ldh a, [$f0]

jr_0e5_7266:
    nop
    nop
    jr c, jr_0e5_7262

    nop
    nop
    jr jr_0e5_7266

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
    inc c
    db $fc
    nop
    nop
    ld a, [$00fe]
    nop
    ld c, $fa
    nop
    nop
    ld c, $fa
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    cp $fe
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
    ld c, $fe
    nop
    nop

jr_0e5_72a8:
    ld [hl], d
    cp $00
    nop
    ld b, d
    cp $00
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
    sbc a
    rst $38
    nop
    nop
    ldh [rIE], a
    ret nz

    ret nz

    ret nz

    rst $38
    jr nz, jr_0e5_72a8

    ret nz

    rst $38
    db $10
    ldh a, [$c1]
    rst $38
    ret nc

    ldh a, [$a1]
    cp a
    ldh [$e0], a
    sub c
    sbc a
    cp $fe
    adc h
    adc a
    or $fe
    inc bc
    inc bc
    ld h, c
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    add $fe
    nop
    nop
    adc b
    ld hl, sp+$00
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    ld b, $05
    db $fc
    db $fc
    rlca
    ld b, $fc
    ld a, h
    rrca
    inc c
    ld a, a
    rst $38
    dec de
    rra
    cp $ff
    dec l
    ccf
    add b
    rst $38
    ld [hl], $2f
    db $10
    rst $38
    cpl
    ccf
    inc c
    rst $38
    ccf
    ccf
    ld [$3eff], sp
    add hl, sp
    ld [$2fff], sp
    jr nc, jr_0e5_7347

    rst $38
    scf
    jr z, @+$09

    rst $38
    inc e
    inc de
    ld a, b

jr_0e5_7347:
    rst $38
    rrca
    ld [$ff00], sp
    rrca
    ld [$ff00], sp
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    dec b
    jp Jump_000_07ff


    rlca
    db $fc
    rst $38
    dec b
    rlca
    add b
    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    ld b, $80
    ld a, a
    inc bc
    inc bc
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
    add c
    rst $38
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
    ld a, l
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
    ld b, b
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    rra
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

jr_0e5_73ce:
    nop
    nop
    nop
    nop

jr_0e5_73d2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0e5_73ce

    nop
    nop
    jr nz, jr_0e5_73d2

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
    ld hl, sp-$08
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    cp $fe
    nop
    nop
    pop hl
    rst $38
    jr c, jr_0e5_7478

    inc bc
    rst $38
    db $e4
    db $fc
    inc bc
    rst $38
    db $e4
    db $fc
    inc bc
    rst $38
    add sp, -$08
    add c
    rst $38
    db $e4
    db $fc
    cp [hl]
    cp $e4
    db $fc
    ret nz

    ret nz

    ld h, h
    ld a, h
    add b
    add b
    ld h, h
    ld a, h
    add b
    add b
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_7478:
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
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    cp $fe
    inc bc
    ld [bc], a
    ld a, [hl]
    cp $03
    inc bc
    cp $3e
    inc bc
    ld [bc], a
    cp a
    ld a, a
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    add b
    rst $38
    rra
    rra
    adc $ff
    rla
    rra
    call nz, Call_000_1bff
    rla
    jp nz, Jump_000_17ff

    rra
    jp nz, $0eff

    rrca
    nop
    rst $38
    add hl, bc
    ld c, $81
    ld a, a
    dec bc
    inc c
    sbc $3f
    dec bc
    inc c
    ret nz

    ccf
    ld a, [bc]
    dec c
    ret nz

    ccf
    rrca
    ld [$7fb0], sp
    rra
    db $10
    ld [hl], b
    rst $38
    rra
    rla
    ld e, a
    rst $18
    rra
    rra
    sbc b
    sbc a
    scf
    cpl
    sbc b
    sbc a
    rra
    rra
    db $10
    rra
    ld e, $12
    db $10
    rra
    inc c
    inc c
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
    ld bc, $0001
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_7556:
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

jr_0e5_7562:
    nop
    nop
    jr nc, jr_0e5_7556

    nop
    nop
    jr jr_0e5_7562

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [$00fe]
    nop
    ld c, $fa
    nop
    nop
    ld c, $fa
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    cp $fe
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
    ld b, $fe

jr_0e5_75a6:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr jr_0e5_75a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr @-$06

    nop
    nop
    inc d
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    pop af
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    db $10
    ldh a, [$0c]
    rst $38
    ld h, b
    ldh [$71], a
    rst $38
    add b
    add b
    or $fe
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop

jr_0e5_75f7:
    nop
    ld hl, sp-$08
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ff01
    sbc a
    ld bc, $df01
    ccf
    rlca
    rlca
    rst $38
    ld a, a
    rrca
    rrca
    ld h, c
    rst $38
    rra
    rra
    jr nc, @+$01

    dec de
    rra
    adc [hl]
    rst $38
    dec d
    dec de
    add h
    rst $38
    dec de
    rra
    add d

jr_0e5_762f:
    rst $38
    rra
    rra
    jp nz, Jump_000_17ff

    jr jr_0e5_75f7

    ld a, a
    rla
    jr jr_0e5_768a

    rst $38
    rla
    jr jr_0e5_762f

    ld a, a
    dec bc
    inc c
    ld b, b
    rst $38
    rla
    jr jr_0e5_76a7

    rst $38
    rra
    jr jr_0e5_76ab

    rst $38
    inc a
    ccf
    or e
    cp a
    ld l, a
    ld a, a
    inc a
    ccf
    db $76
    ld e, [hl]
    jr nz, jr_0e5_7697

    inc a
    inc l
    db $10
    rra
    jr jr_0e5_7676

    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr z, jr_0e5_76a7

    nop
    nop
    jr z, jr_0e5_76ab

    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop

jr_0e5_7676:
    inc a
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    ld b, e
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

jr_0e5_768a:
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e5_76cf

    nop
    nop
    jr nz, jr_0e5_76d3

    nop
    nop
    db $10

jr_0e5_7697:
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0e
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38

jr_0e5_76a7:
    rst $38
    nop
    nop
    ld a, a

jr_0e5_76ab:
    ld a, a
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

jr_0e5_76cf:
    nop
    nop
    nop
    nop

jr_0e5_76d3:
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
    ret c

    ld hl, sp+$00
    nop
    inc e
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    dec c
    ei
    nop
    nop
    dec c
    ei
    nop
    nop
    db $fd
    ei
    nop
    nop
    ld c, $f9
    add b
    add b
    ld b, $fd
    add b
    add b
    dec b
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
    inc bc
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    inc d
    db $fc
    nop
    nop
    jr @-$06

    nop
    nop

jr_0e5_7730:
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld a, $fe
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    ldh a, [rIE]
    add b
    add b
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    jr nz, jr_0e5_7730

jr_0e5_7750:
    ld b, c
    rst $38
    and b
    ldh [$a3], a
    cp a
    ret nz

    ret nz

    inc de
    rra
    ldh a, [$f0]
    dec c
    dec c
    ld hl, sp-$08
    ld bc, $c401
    db $fc
    inc bc
    inc bc
    adc b
    ld hl, sp+$03
    inc bc
    db $10
    ldh a, [rTMA]
    rlca
    jr nz, jr_0e5_7750

    inc b
    rlca
    ld b, b
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
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    ld a, a
    ld bc, $ff01
    sbc a
    ld bc, $df01
    ccf
    inc bc
    inc bc
    rst $38
    ld a, a
    dec b
    rlca
    ldh [rIE], a
    ld [$c00f], sp
    rst $38
    ld e, $1f
    rra
    rst $38
    rla
    rra
    inc b
    rst $38
    dec de
    rla
    ld [bc], a
    rst $38
    rla
    rra
    add d
    rst $38
    rra
    rra
    add c
    rst $38
    rla
    jr jr_0e5_7841

    rst $38
    rla
    jr jr_0e5_7807

    rst $38
    ld h, a
    ld a, b
    ld b, b
    rst $38
    xor $f1
    ret nz

    rst $38
    db $ec
    or e
    pop hl
    rst $38
    and c
    rst $38
    ld a, [hl]
    ld a, a
    cp $fe
    jr nc, @+$41

    ld [hl], b
    ld [hl], b
    jr nz, jr_0e5_781f

    nop
    nop
    jr nz, jr_0e5_7823

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
    jr nc, jr_0e5_782f

    nop
    nop
    jr nc, jr_0e5_7833

    nop
    nop
    jr nc, jr_0e5_7837

    nop
    nop
    jr z, jr_0e5_783b

    nop
    nop
    jr z, jr_0e5_783f

    nop
    nop
    jr z, jr_0e5_7843

    nop
    nop
    cpl

jr_0e5_7807:
    ccf
    nop
    nop
    ld h, $3f
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0e5_7853

    nop
    nop
    jr nz, jr_0e5_7857

    nop
    nop
    jr nz, jr_0e5_785b

    nop
    nop
    db $10

jr_0e5_781f:
    rra
    nop
    nop
    rrca

jr_0e5_7823:
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a

jr_0e5_782f:
    ld a, a
    nop
    nop
    ccf

jr_0e5_7833:
    ccf
    nop
    nop
    rra

jr_0e5_7837:
    rra
    nop
    nop
    rlca

jr_0e5_783b:
    rlca
    nop
    nop
    nop

jr_0e5_783f:
    nop
    nop

jr_0e5_7841:
    nop
    nop

jr_0e5_7843:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e5_7853:
    nop
    nop
    nop
    nop

jr_0e5_7857:
    nop
    nop
    nop
    nop

jr_0e5_785b:
    nop
    ldh a, [$f0]
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    call c, Call_000_00fc
    nop
    ld e, $fe
    nop
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
    dec e
    di
    nop
    nop
    cp $f1
    add b
    add b
    ld d, $f9
    add b
    add b
    ld d, $f9
    add b
    add b
    ld [de], a
    db $fd
    add b
    add b
    ld a, [de]
    db $fd
    add b
    add b
    cp $f9
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    ld b, $ff
    add b
    add b
    rlca
    db $fd
    nop
    nop
    ld b, $fe
    nop
    nop
    ld a, [hl-]
    cp $00
    nop
    inc h
    db $fc

jr_0e5_78ae:
    nop
    nop
    jr z, @-$06

jr_0e5_78b2:
    nop
    nop
    jr jr_0e5_78ae

    nop
    nop
    jr jr_0e5_78b2

    nop
    nop
    inc a
    db $fc
    nop
    nop
    jp Jump_000_00ff


    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    ld bc, $c0ff
    ret nz

    add e
    rst $38
    ld hl, sp-$08
    ld b, c
    rst $38
    db $fc
    db $fc
    ld [hl], d
    cp $e2
    cp $8c
    adc h
    db $e4
    db $fc
    nop
    nop
    call nz, $01fc
    ld bc, $f8c8
    ld bc, $9001
    ldh a, [rP1]
    nop
    ld h, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
