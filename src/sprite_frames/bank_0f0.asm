SECTION "ROM Bank $0f0", ROMX[$4000], BANK[$f0]

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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4019

jr_0f0_4019:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4021

jr_0f0_4021:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld b, $05
    ld b, c
    rst $38
    rlca
    inc b
    ld [c], a
    ld a, a
    dec bc
    inc c
    db $fc
    ld a, a
    ld c, $09
    ld h, b
    rst $38
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bcbf], sp
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bfa0], sp
    rrca
    rrca
    and h
    cp a
    dec bc
    rrca
    ld [c], a
    rst $38
    dec bc
    rrca
    pop bc
    rst $38
    rrca
    rrca
    pop bc
    ld a, a
    dec bc
    inc c
    ld b, c
    rst $38
    rlca
    rlca
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add $fe
    nop
    nop
    cp $fe
    ld bc, $3a01
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0401
    db $fc
    nop
    nop

jr_0f0_40a6:
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_40a6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_40dc:
    ld hl, sp+$38
    nop
    nop

jr_0f0_40e0:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_40dc

    inc b
    rst $38
    jr nz, jr_0f0_40e0

    inc b
    rst $38
    ret nz

    ld b, b
    adc a
    db $fc
    ret nz

    ld b, b
    ld a, a
    db $fc
    and b
    ld h, b
    inc c
    rst $38
    ldh [rNR41], a
    dec bc
    ld a, [$20e0]
    ei
    ld a, d
    ldh [rNR41], a
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    ld c, e
    ei
    ldh [$e0], a
    adc a
    rst $38
    and b
    ldh [rTAC], a
    rst $38
    and b
    ldh [rTAC], a
    db $fd
    ldh [$e0], a
    dec b
    cp $a0
    ld h, b
    add e
    rst $38
    ret nz

    ret nz

    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp c
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
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc l
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, [hl]
    ld [hl], c
    nop
    nop
    ld a, d
    ld a, l
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    dec a
    ld [hl-], a
    nop
    nop
    ld [hl], a
    ld a, b
    rlca
    rlca
    add sp, -$09
    rrca
    rrca
    rst $28
    ldh a, [$1f]
    rra
    rst $20
    ld hl, sp+$1f
    rra
    xor $ff
    rla
    rra
    ret nz

    rst $38
    ld de, $821f
    rst $38
    db $10
    rra
    add c
    rst $38
    inc c
    dec bc
    ld b, h
    rst $38
    rrca
    ld [$fff8], sp
    rrca
    ld [$ffc0], sp
    rrca
    ld [$bfa0], sp
    dec bc
    inc c
    cp a
    cp h
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    jp nz, $077f

    inc b
    pop bc
    ld a, a
    rlca
    rlca
    pop bc
    rst $38
    rlca
    inc b
    ret nz

    rst $38
    inc b
    rlca
    ret nz

    rst $38
    rlca
    rlca
    pop bc
    cp a
    inc bc
    ld [bc], a
    add c
    ld a, a
    ld bc, $c101
    rst $38
    ld bc, $6201
    cp $01
    ld bc, $fe7e
    ld bc, $3a01
    cp $02
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    inc b
    rlca
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [rSC]
    inc bc
    db $10
    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ret nz

    ret nz

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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    rst $28
    ld l, a
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    cp a
    ld a, a
    ret nz

    ret nz

    ccf
    rst $38
    ld b, b
    ret nz

    inc e
    rst $38
    ld b, b

jr_0f0_4277:
    ret nz

    ld [$40ff], sp
    ret nz

    dec bc
    db $fc
    and b
    ld h, b
    dec e
    cp $e0
    jr nz, jr_0f0_4277

    di
    ldh a, [rNR10]
    ld de, $70f1
    sub b
    ld de, $d0f1
    jr nc, jr_0f0_42a0

    cp $a0
    ld h, b
    rst $38
    ld a, h
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    rlca
    cp $80
    add b

jr_0f0_42a0:
    ld c, $f7
    add b
    add b
    daa
    ei
    add b
    add b
    ld b, [hl]
    ld sp, hl
    add b
    add b
    add a
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp c
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
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4319

jr_0f0_4319:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4321

jr_0f0_4321:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld [$410f], sp
    rst $38
    ld [$620f], sp
    rst $38
    rrca
    ld [$ff7c], sp
    rrca
    ld [$ff60], sp
    ld [$600f], sp
    rst $38
    rlca
    rlca
    cp a
    db $fc
    rlca
    rlca
    ldh [$bf], a
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

jr_0f0_43a6:
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_43a6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_43dc:
    ld hl, sp+$38
    nop
    nop
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_43dc

    dec b
    cp $e0
    jr nz, jr_0f0_4408

    db $fc
    ldh [rNR41], a
    adc a
    db $fc
    ldh [rNR41], a

jr_0f0_4408:
    ld a, l
    cp $a0
    ld h, b
    rrca
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    rst $38
    ld a, h
    ret nz

    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    ld b, a
    ei
    ret nz

    ret nz

    add l
    ei
    ret nz

    ret nz

    ld b, $fd
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    adc h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add h
    db $fc
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4499

jr_0f0_4499:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_44a1

jr_0f0_44a1:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld [$410f], sp
    rst $38
    rrca
    ld [$ff62], sp
    rrca
    ld [$ff7c], sp
    rrca
    ld [$ff60], sp
    rrca
    ld [$ff60], sp
    ld [$7f0f], sp
    db $fc
    rlca
    rlca
    ldh [rIE], a
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
    ld b, c
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

jr_0f0_4512:
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

jr_0f0_4526:
    ld hl, $003f
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_4526

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_455c:
    ld hl, sp+$38
    nop
    nop

jr_0f0_4560:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_455c

    inc b
    rst $38
    jr nz, jr_0f0_4560

    dec b
    cp $e0
    jr nz, jr_0f0_4512

    cp $e0
    jr nz, jr_0f0_4606

    cp $e0
    jr nz, jr_0f0_4599

    rst $38
    ldh [rNR41], a
    rrca
    db $fc
    and b
    ld h, b
    rst $38
    ld a, h
    ret nz

    ld b, b
    rrca

jr_0f0_4599:
    db $fc
    ret nz

    ld b, b
    rrca
    db $fc
    ret nz

    ld b, b
    ld c, e
    rst $38
    ret nz

    ret nz

    adc a
    ei
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    ld [bc], a
    db $fd
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
    ld a, [$00fe]
    nop
    db $fc
    db $fc
    nop
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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    rlca
    rlca
    nop
    nop

jr_0f0_4606:
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4619

jr_0f0_4619:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4621

jr_0f0_4621:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld c, $09
    ld b, c
    rst $38
    ld c, $09
    ld h, d
    rst $38
    inc c
    dec bc
    ld a, h
    rst $38
    rrca
    ld [$ff60], sp
    dec bc
    inc c
    ld h, b
    rst $38
    dec bc
    inc c
    ld a, a
    db $fc
    rlca
    rlca
    ldh [rIE], a
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
    ld bc, $c101
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
    ld h, c
    ld a, a
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
    ld b, b
    ld a, a
    nop
    nop

jr_0f0_46a6:
    ld hl, $003f
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
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, h
    ld a, h
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_46a6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_46dc:
    ld hl, sp+$38
    nop
    nop

jr_0f0_46e0:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_46dc

    inc b
    rst $38
    jr nz, jr_0f0_46e0

    inc b
    rst $38
    ldh [rNR41], a
    adc h
    rst $38
    ldh [rNR41], a
    ld a, h
    rst $38
    ld h, b
    and b
    dec c
    cp $e0
    jr nz, jr_0f0_471e

    cp $a0
    ld h, b
    db $fd
    ld a, [hl]
    and b
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    dec bc
    rst $38

jr_0f0_471e:
    ret nz

    ret nz

    ld c, a
    ei
    ret nz

    ret nz

    add e
    rst $38
    ret nz

    ret nz

    rlca
    db $fc
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
    adc h
    db $fc
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
    call nz, Call_000_00fc
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4799

jr_0f0_4799:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_47a1

jr_0f0_47a1:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    rrca
    ld [$ff41], sp
    rrca
    ld [$ff62], sp
    inc c
    dec bc
    ld a, h
    rst $38
    inc c
    dec bc
    ld h, b
    rst $38
    dec bc
    inc c
    ld h, b
    rst $38
    rlca
    inc b
    ld a, a
    db $fc
    rlca
    inc b
    ld h, b
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
    pop bc
    ld a, a
    ld bc, $c101
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
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, c
    ld a, a
    nop
    nop

jr_0f0_4826:
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
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_4826

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_485c:
    ld hl, sp+$38
    nop
    nop

jr_0f0_4860:
    ldh a, [$30]
    nop
    nop

jr_0f0_4864:
    cp a
    ld a, a
    add b
    add b

jr_0f0_4868:
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_485c

    inc b
    rst $38
    jr nz, jr_0f0_4860

    inc b
    rst $38
    jr nz, jr_0f0_4864

    adc h
    rst $38
    jr nz, jr_0f0_4868

    ld a, h
    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ldh [rNR41], a
    inc c
    rst $38
    and b
    ld h, b
    db $fc
    ld a, a
    ld b, b
    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    dec bc
    rst $38
    ret nz

    ret nz

    ld c, a
    ei
    ret nz

    ret nz

    add a
    rst $38
    add b
    add b
    rlca
    ld sp, hl
    nop
    nop
    ld b, $fe
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
    db $fc
    db $fc
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
    add h
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    ld h, d
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4919

jr_0f0_4919:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4921

jr_0f0_4921:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    rrca
    ld [$ff40], sp
    rrca
    ld [$7fc1], sp
    rrca
    ld [$7fe2], sp
    dec bc
    inc c
    ld a, h
    rst $38
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    rst $38
    ld a, h
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
    call nz, $07bf
    rlca
    ld b, d
    cp a
    ld [bc], a
    inc bc
    pop bc
    ld a, a
    ld bc, $8101
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
    ld h, e
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    add d
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
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop

jr_0f0_49a6:
    ld a, a
    ld a, a
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_49a6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_49dc:
    ld hl, sp+$38
    nop
    nop

jr_0f0_49e0:
    ldh a, [$30]
    nop
    nop

jr_0f0_49e4:
    cp a
    ld a, a
    add b
    add b

jr_0f0_49e8:
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a

jr_0f0_49f4:
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_49dc

    inc b
    rst $38
    jr nz, jr_0f0_49e0

    inc b
    rst $38
    jr nz, jr_0f0_49e4

    adc h
    rst $38
    jr nz, jr_0f0_49e8

    ld a, l
    cp $e0
    jr nz, jr_0f0_4a1a

    cp $e0
    jr nz, jr_0f0_4a1d

    rst $38
    jr nz, jr_0f0_49f4

    ei
    ld a, a
    ret nz

    ret nz

    rrca
    ei

jr_0f0_4a1a:
    ret nz

    ret nz

    dec bc

jr_0f0_4a1d:
    rst $38
    ret nz

    ret nz

    ld b, a
    db $fc
    add b
    add b
    add a
    rst $38
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
    inc c
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $f4
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
    ld hl, sp-$08
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
    ld a, b
    ld a, b
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4a99

jr_0f0_4a99:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4aa1

jr_0f0_4aa1:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    rrca
    ld [$ff41], sp
    rrca
    ld [$ff62], sp
    rrca
    ld [$ff7c], sp
    ld c, $09
    ld h, b
    rst $38
    dec bc
    inc c
    ldh [$7f], a
    rlca
    inc b
    rst $38
    ld a, h
    rlca
    inc b
    ldh [$7f], a
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
    add c
    ld a, a
    ld bc, $8101
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
    cp a
    rst $38
    nop
    nop
    ld a, a
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
    add d
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop

jr_0f0_4b26:
    dec e
    dec e
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_4b26

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_4b5c:
    ld hl, sp+$38
    nop
    nop

jr_0f0_4b60:
    ldh a, [$30]
    nop
    nop

jr_0f0_4b64:
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_4b5c

    inc b
    rst $38
    jr nz, jr_0f0_4b60

    inc b
    rst $38
    jr nz, jr_0f0_4b64

    adc l
    cp $e0
    jr nz, jr_0f0_4c06

    cp $e0
    jr nz, jr_0f0_4b9a

    cp $e0
    jr nz, jr_0f0_4b9e

jr_0f0_4b91:
    cp $e0
    jr nz, jr_0f0_4b91

    ld a, a
    jr nz, @-$1e

    rrca
    rst $38

jr_0f0_4b9a:
    ret nz

    ret nz

    dec bc
    rst $38

jr_0f0_4b9e:
    ret nz

    ret nz

    ld b, a
    ei
    ret nz

    ret nz

    add a
    rst $38
    add b
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
    inc c
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $f4
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
    ldh a, [$f0]
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
    ld a, b
    ld a, b
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
    rlca
    rlca
    nop
    nop

jr_0f0_4c06:
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4c19

jr_0f0_4c19:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4c21

jr_0f0_4c21:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld c, $09
    ld b, c
    rst $38
    ld c, $09
    ld h, d
    rst $38
    inc c
    dec bc
    ld a, h
    rst $38
    rrca
    ld [$ff60], sp
    dec bc
    inc c
    ld h, b
    rst $38
    dec bc
    inc c
    ld a, a
    db $fc
    rlca
    rlca
    ldh [rIE], a
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
    ld bc, $8101
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
    ld a, a
    ld a, a
    nop
    nop
    ld h, e
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
    ld a, a
    nop
    nop

jr_0f0_4ca6:
    dec a
    dec a
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_4ca6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_4cdc:
    ld hl, sp+$38
    nop
    nop

jr_0f0_4ce0:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_4cdc

    inc b
    rst $38
    jr nz, jr_0f0_4ce0

    inc b
    rst $38
    ldh [rNR41], a
    adc h
    rst $38
    ldh [rNR41], a
    ld a, h
    rst $38
    ld h, b
    and b
    dec c
    cp $e0
    jr nz, jr_0f0_4d1e

    cp $a0
    ld h, b
    db $fd
    ld a, [hl]
    and b
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    dec bc
    rst $38

jr_0f0_4d1e:
    ret nz

    ret nz

    ld c, a
    ei
    ret nz

    ret nz

    add e
    rst $38
    ret nz

    ret nz

    rlca
    db $fc
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
    inc c
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
    ld [$00f8], sp
    nop
    ldh a, [$f0]
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
    db $fc
    db $fc
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_4d99

jr_0f0_4d99:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_4da1

jr_0f0_4da1:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld [$410f], sp
    rst $38
    ld [$620f], sp
    rst $38
    inc c
    dec bc
    ld a, h
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld a, [bc]
    dec c
    ld h, b
    rst $38
    inc b
    rlca
    ld a, a
    db $fc
    rlca
    rlca
    ldh [rIE], a
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

jr_0f0_4e12:
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
    ld b, e
    ld a, a
    nop
    nop

jr_0f0_4e26:
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
    adc h
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    inc a
    inc a
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_4e26

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_4e5c:
    ld hl, sp+$38
    nop
    nop

jr_0f0_4e60:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_4e5c

    inc b
    rst $38
    jr nz, jr_0f0_4e60

    dec b
    cp $e0
    jr nz, jr_0f0_4e12

    cp $e0
    jr nz, jr_0f0_4f05

    rst $38
    ld h, b
    and b
    inc c
    rst $38
    ld h, b
    and b
    dec c
    cp $a0
    ld h, b
    db $fd
    ld a, [hl]
    ret nz

    ld b, b
    dec c
    cp $c0
    ld b, b
    inc c
    rst $38
    ld b, b
    ret nz

    ld b, e
    rst $38
    ret nz

    ret nz

    add a
    ei
    ret nz

    ret nz

    rlca
    ei
    ret nz

    ret nz

    ld b, $fd
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
    inc c
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
    add h
    db $fc
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_4f05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    dec bc
    dec c
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    cp $ff
    rlca
    rlca
    rst $38
    db $fc
    rlca
    rlca
    db $fd
    cp $02
    inc bc
    cp $fd
    inc b
    rlca
    ld a, c
    cp $04
    rlca
    ld de, $04ff
    rlca
    db $10
    rst $38
    inc b
    rlca
    db $10
    rst $38
    inc b
    rlca
    jr @+$01

    inc bc
    ld [bc], a
    rst $28
    ccf
    inc bc
    ld [bc], a
    ldh a, [$3f]
    ld [bc], a
    inc bc
    cp a
    ld a, [hl]
    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    ld [bc], a
    call $033e
    ld [bc], a
    jp $023e


    inc bc
    ld bc, $03ff
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    pop hl
    rst $18
    inc bc
    inc bc
    pop af
    rst $08
    inc bc
    inc bc
    pop bc
    ccf
    ld bc, $c101
    ccf
    nop
    nop
    db $e3
    cp a
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
    ld e, l
    ld a, a
    nop
    nop
    nop
    nop

jr_0f0_4fc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f0_500c:
    inc bc
    rst $38
    add b
    add b
    add a
    ld a, a
    ret nz

    ret nz

    cp a
    ld a, a
    ldh [$e0], a
    rst $38
    rra
    ldh a, [$f0]
    ld e, a
    cp a
    ldh a, [$f0]
    ccf
    rst $38
    sub b
    ldh a, [$df]
    ccf
    db $10
    ldh a, [$c4]
    rst $38
    jr nz, jr_0f0_500c

    add l
    cp $e0
    jr nz, @+$07

    cp $e0
    jr nz, jr_0f0_4fc4

    cp $e0
    jr nz, jr_0f0_50b7

    rst $38
    ld h, b
    and b
    dec bc
    db $fc
    ldh [rNR41], a
    rst $30
    ld a, b
    and b
    ld h, b
    ld e, e
    cp h
    ld b, b
    ret nz

    rst $18
    cp a
    add b
    add b
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $3e
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld b, h
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

    ld bc, $e301
    db $e3
    ld bc, $e401
    rst $20
    ld bc, $eb01
    dec l
    ld bc, $eb01
    cpl
    ld bc, $3f01
    call c, Call_000_0101
    cp [hl]
    ld e, a
    ld bc, $ff01
    inc a
    ld bc, $ff01
    db $fc
    ld bc, $fd01
    cp $01
    ld bc, $3cff
    ld bc, $3f01
    db $fc
    inc bc
    inc bc
    pop bc

jr_0f0_50b7:
    ld a, $03
    inc bc
    jr @+$01

    ld [bc], a
    inc bc
    rla
    rst $38
    ld [bc], a
    inc bc
    ld [hl+], a
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld h, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    jr nz, jr_0f0_5117

    nop
    nop
    jr nz, jr_0f0_511b

    nop
    nop
    ccf
    add hl, sp
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
    add l
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    ld a, [bc]
    ei
    ld b, $07
    dec de
    ei
    rlca
    rlca
    di
    di
    add hl, bc
    rrca
    ld [c], a

jr_0f0_5117:
    db $e3
    ld [$220f], sp

jr_0f0_511b:
    db $e3
    db $10
    rra
    ld [hl+], a
    db $e3
    db $10
    rra
    ld hl, $10e1
    rra
    ld b, c
    pop bc
    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
    add b
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
    ldh [$e0], a
    nop
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
    add d
    ld a, [hl]
    nop
    nop
    and h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    ret c

    jr c, jr_0f0_516b

jr_0f0_516b:
    nop
    ccf
    rst $18
    nop
    nop
    db $db
    daa
    add b
    add b
    jp c, $c027

    ret nz

    ld h, d
    rst $38
    ld h, b
    ldh [$7e], a
    rst $38
    ld b, b
    ret nz

    jr c, @+$01

    ld b, b
    ret nz

    ld de, $80ff
    add b
    ld [de], a
    cp $00
    nop
    inc [hl]
    db $fc
    nop
    nop
    add sp, -$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr @-$06

    nop
    nop
    ld hl, sp-$08
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f0_522a

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
    nop
    nop
    nop
    nop
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    nop
    nop

jr_0f0_522a:
    ccf
    inc a
    nop
    nop
    db $fd
    adc $01
    ld bc, $cffc
    inc bc
    inc bc
    rst $38
    rst $08
    ld [bc], a
    inc bc
    adc $7f
    ld [bc], a
    inc bc
    cp $4f
    ld [bc], a
    inc bc
    cp $5f
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ld b, d
    rst $38
    ld bc, $e201
    rst $38
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    jr nz, jr_0f0_5297

    nop
    nop
    jr nz, jr_0f0_529b

    nop
    nop
    ccf
    add hl, sp
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
    add l
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    ld a, [bc]
    ei
    ld b, $07
    dec de
    ei
    rlca
    rlca
    di
    di
    add hl, bc
    rrca
    ld [c], a

jr_0f0_5297:
    db $e3
    ld [$220f], sp

jr_0f0_529b:
    db $e3
    db $10
    rra
    ld [hl+], a
    db $e3
    db $10
    rra
    ld hl, $10e1
    rra
    ld b, c
    pop bc
    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
    add b
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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, b
    sbc b
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld [hl], c
    adc a
    ret nz

    ret nz

    ld sp, hl
    rlca
    ld b, b
    ret nz

    pop af
    rrca
    ld b, b
    ret nz

    ld a, $ff
    ld b, b
    ret nz

    db $10
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld [hl], $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr @-$06

    nop
    nop
    ld hl, sp-$08
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f0_53aa

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
    nop
    nop
    nop
    nop
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    nop
    nop

jr_0f0_53aa:
    rrca
    inc c
    nop
    nop
    db $fd
    cp $01
    ld bc, $fffc
    inc bc
    inc bc
    ei
    db $fc
    inc bc
    inc bc
    ei
    db $fc
    ld [bc], a
    inc bc
    rla
    rst $38
    ld [bc], a
    inc bc
    ld [c], a
    rra
    ld [bc], a
    inc bc
    or b
    ld c, a
    ld [bc], a
    inc bc
    or d
    ld c, a
    ld bc, $b201
    ld c, a
    ld bc, $4f01
    ei
    ld bc, $ff01
    adc $01
    ld bc, $ceff
    nop
    nop
    rst $38
    ld sp, hl
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
    add l
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    ld a, [bc]
    ei
    ld b, $07
    dec de
    ei
    rlca
    rlca
    di
    di
    add hl, bc
    rrca
    ld [c], a
    db $e3
    ld [$220f], sp
    db $e3
    db $10
    rra
    ld [hl+], a
    db $e3
    db $10
    rra
    ld hl, $10e1
    rra
    ld b, c
    pop bc
    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
    add b
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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop

jr_0f0_5460:
    cp h
    ld a, h
    nop
    nop

jr_0f0_5464:
    db $fc
    inc e
    nop
    nop
    ld a, b
    sbc b
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    ld a, a
    ret nz

    ret nz

    ld a, h
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f0_5460

    dec sp
    db $fc
    jr nz, jr_0f0_5464

    rla
    ld hl, sp+$20
    ldh [rNR34], a
    pop hl
    ret nz

    ret nz

    dec e
    db $e3
    nop
    nop
    ld [$0016], a
    nop
    db $f4
    inc c
    nop
    nop
    ret z

    jr c, jr_0f0_549b

jr_0f0_549b:
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr @-$06

    nop
    nop
    ld hl, sp-$08
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f0_552a

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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop

jr_0f0_552a:
    rra
    inc e
    nop
    nop
    ccf
    inc a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    ld a, a
    ld a, d
    nop
    nop
    ld a, e
    ld a, [hl]
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, h
    ld a, a
    nop
    nop
    ld h, h
    ld a, a
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    ld [hl], c
    ld c, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $ff01
    ld sp, hl
    ld bc, $f001
    rst $18
    ld bc, $b001
    ld e, a
    ld bc, $8101
    ld a, a
    nop
    nop
    ld [$00ff], a
    nop
    inc h
    ccf
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    adc b
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $0801
    rst $38
    ld [bc], a
    inc bc
    ld [$04ff], sp
    rlca
    inc b
    rst $38
    inc b
    rlca
    ld b, $ff
    inc b
    rlca
    ld a, [bc]
    ei
    ld [bc], a
    inc bc
    ld de, $01f1
    ld bc, $e0e0
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, [hl]
    sbc [hl]
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld a, c
    rst $38
    add b
    add b
    ret nc

    cp a
    add b
    add b
    ldh [$1f], a
    add b
    add b
    ld [hl], b
    adc a
    add b
    add b
    ld a, c
    add a
    nop
    nop
    dec a
    jp RST_00


    ld a, [hl-]
    and $00
    nop
    db $fc
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
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
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
    ld [$00f8], sp
    nop
    inc e
    db $fc
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
    dec b
    ld b, $00
    nop
    rlca
    rlca
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    rrca
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
    ccf
    dec a
    nop
    nop
    dec a
    ccf
    nop
    nop
    jr c, jr_0f0_56f7

    nop
    nop
    jr c, jr_0f0_56fb

    nop
    nop
    jr nc, jr_0f0_56ff

    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    dec e
    rra
    nop
    nop
    jr c, jr_0f0_56f7

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    rst $38
    db $fc
    nop
    nop
    db $fc
    rst $28
    nop
    nop
    ret c

    xor a
    nop
    nop
    ret z

    cp a
    nop
    nop
    ld a, c
    ld a, a
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
    ld hl, $003f
    nop
    ld [hl+], a

jr_0f0_56f7:
    ccf
    nop
    nop
    ld b, d

jr_0f0_56fb:
    ld a, a
    nop
    nop
    ld b, d

jr_0f0_56ff:
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
    add h
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
    inc hl
    ccf
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
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    jp nz, Jump_000_003e

    nop
    ld e, [hl]
    cp [hl]
    nop
    nop
    cp $0e
    nop
    nop
    cp a
    ld c, a
    nop
    nop
    rst $28
    rst $38
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    cp h
    ld a, a
    ret nz

    ret nz

    add sp, -$21
    ld b, b
    ret nz

    ldh a, [$8f]
    ld b, b
    ret nz

    jr c, @-$37

    ld b, b
    ret nz

    inc a
    jp $8080


    ld e, $e1
    add b
    add b
    dec e
    di
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
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
    ld hl, $00ff
    nop
    ld b, c
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc e
    db $fc
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_5821

jr_0f0_5821:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_5829

jr_0f0_5829:
    nop
    ld e, $19
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    cp b
    ld a, a
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    ld b, $07
    xor [hl]
    ld a, a
    inc b
    rlca
    add l
    ld a, [hl]
    inc b
    rlca
    cp e
    ld a, h
    inc b
    rlca
    cp a
    ld a, h
    inc b
    rlca
    cp h
    ld a, a
    inc bc
    ld [bc], a
    cp e
    ld a, a
    inc bc
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    rst $38
    di
    ld bc, $c001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    sub c
    rst $38
    ld bc, $0a01
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$140f], sp
    rst $30
    inc c
    rrca
    ld [hl], $f7
    rrca
    rrca
    rst $20
    rst $20
    inc de
    rra
    push bc
    rst $00
    db $10
    rra
    ld b, h
    rst $00
    jr nz, @+$41

    ld b, h
    rst $00
    jr nz, jr_0f0_58e1

    ld b, d
    jp Jump_000_3f20


    add d
    add e
    jr nz, @+$41

    add c
    add c
    ld hl, $003f
    nop
    ld e, $1e
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
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, @-$1e

    nop
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
    ld [$00f8], sp
    nop
    ld a, b

jr_0f0_58e1:
    ld hl, sp+$00
    nop
    ld hl, sp+$38
    nop
    nop
    ldh a, [$30]
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
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    and b
    rst $18
    ret nz

    ret nz

    pop hl
    rra
    add b
    add b
    db $e3
    rra
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ret nc

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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

    ld hl, sp+$00
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
    ld [$00f8], sp
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_59a1

jr_0f0_59a1:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_59a9

jr_0f0_59a9:
    nop
    ld e, $19
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    ld [bc], a
    ld [hl], h
    rst $08
    inc bc
    ld [bc], a
    cp e
    ld c, [hl]
    ld [bc], a
    inc bc
    or a
    ld c, h
    ld bc, $cf01
    ld a, [hl]
    ld bc, $6f01
    rst $18
    nop
    nop
    db $fc
    rst $18
    nop
    nop
    add b
    rst $38
    nop
    nop
    sub c
    rst $38
    ld bc, $0a01
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$140f], sp
    rst $30
    inc c
    rrca
    ld [hl], $f7
    rrca
    rrca
    rst $20
    rst $20
    inc de
    rra
    push bc
    rst $00
    db $10
    rra
    ld b, h
    rst $00
    jr nz, @+$41

    ld b, h
    rst $00
    jr nz, jr_0f0_5a61

    ld b, d
    jp Jump_000_3f20


    add d
    add e
    jr nz, @+$41

    add c
    add c
    inc hl
    ccf

jr_0f0_5a2e:
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_5a2e

    nop
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
    ld [$00f8], sp
    nop
    ld a, b

jr_0f0_5a61:
    ld hl, sp+$00
    nop
    ld hl, sp+$38
    nop
    nop
    ldh a, [$30]
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
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    dec a
    jp $8080


    ld a, [$0006]
    nop
    db $ec
    inc e
    nop
    nop
    ret nc

    jr nc, jr_0f0_5a97

jr_0f0_5a97:
    nop
    sub b
    ld [hl], b
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
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

    ld hl, sp+$00
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
    ld [$00f8], sp
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f0_5b57

    nop
    nop
    jr nz, jr_0f0_5b5b

    nop
    nop
    ld l, h
    ld [hl], a
    nop
    nop
    ld a, h
    ld a, a
    ld bc, $fe01
    pop af
    inc bc
    inc bc
    ld a, [$07fd]
    rlca
    rst $38
    ldh a, [rTAC]
    rlca
    push af
    ld a, [$0705]
    ld hl, sp-$09
    inc b
    rlca
    rst $28
    ld sp, hl
    inc b
    rlca
    add a
    rst $38
    ld b, $05
    add b
    rst $38
    ld b, $05
    sub b
    rst $38
    ld b, $05
    pop de
    rst $38
    inc b
    rlca
    pop af
    rst $38
    ld b, $05
    rst $08
    ccf
    ld b, $05
    pop bc

jr_0f0_5b57:
    ld a, $06
    dec b
    rst $00

jr_0f0_5b5b:
    jr c, @+$08

    dec b
    rst $38
    jr c, jr_0f0_5b68

    rlca
    cp $39
    rlca
    rlca
    ret nz

    ccf

jr_0f0_5b68:
    rlca
    rlca
    pop af
    rst $38
    inc bc
    inc bc
    jp z, $01ff

    ld bc, $ff04
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$140f], sp
    rst $30
    inc c
    rrca
    ld [hl], $f7
    rrca
    rrca
    rst $20
    rst $20
    inc de
    rra
    push bc
    rst $00
    db $10
    rra
    ld b, h
    rst $00
    jr nz, @+$41

    ld b, h
    rst $00
    jr nz, @+$41

    ld b, d
    jp Jump_000_3f20


    add d
    add e
    jr nz, @+$41

    add c
    add c
    inc hl
    ccf
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a

jr_0f0_5bb6:
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f0_5bb6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    ld a, h
    nop
    nop
    ld a, [hl]
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
    ld [c], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld h, h
    sbc h
    nop
    nop
    add sp, $18
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ret nc

    jr nc, jr_0f0_5c1b

jr_0f0_5c1b:
    nop
    ldh a, [rSVBK]
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

    ld hl, sp+$00
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
    ld [$00f8], sp
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_5ccd

jr_0f0_5ccd:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_5cd5

jr_0f0_5cd5:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    db $f4
    ei
    rrca
    rrca
    rst $30
    ld hl, sp+$0f
    rrca
    di
    db $fc
    dec bc
    rrca
    rst $20
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$400f], sp
    rst $38
    ld b, $05
    ld b, c
    rst $38
    rlca
    inc b
    ld [c], a
    ld a, a
    dec bc
    inc c
    db $fc
    ld a, a
    ld c, $09
    ld h, b
    rst $38
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bcbf], sp
    rrca
    ld [$bfa0], sp
    rrca
    ld [$bfa0], sp
    rrca
    rrca
    xor b
    cp a
    dec bc
    rrca
    db $e4
    rst $38
    dec bc
    rrca
    jp $0fff


    rrca
    pop bc
    ld a, a
    dec bc
    inc c
    ld b, c
    rst $38
    rlca
    rlca
    add d
    cp $01
    ld bc, $fe82
    inc bc
    inc bc
    add d
    cp $03
    inc bc
    add $fe
    rlca
    rlca
    cp $fe
    rlca
    rlca
    cp d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_5d5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f0_5d5a

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0f0_5d90:
    ld hl, sp+$38
    nop
    nop

jr_0f0_5d94:
    ldh a, [$30]
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld e, a
    cp a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    sbc a
    ld a, a
    ldh [$e0], a
    rst $08
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f0_5d90

    inc b
    rst $38
    jr nz, jr_0f0_5d94

    inc b
    rst $38
    ret nz

    ld b, b
    adc a
    db $fc
    ret nz

    ld b, b
    ld a, a
    db $fc
    and b
    ld h, b
    inc c
    rst $38
    ldh [rNR41], a
    dec bc
    ld a, [$20e0]
    ei
    ld a, d
    ldh [rNR41], a
    dec bc
    ld a, [$20e0]
    dec bc
    ld a, [$20e0]
    dec hl
    ei
    ldh [$e0], a
    ld c, a
    rst $38
    and b
    ldh [$87], a
    rst $38
    and b
    ldh [rTAC], a
    db $fd
    ldh [$e0], a
    dec b
    cp $a0
    ld h, b
    add e
    rst $38
    ret nz

    ret nz

    add e
    rst $38
    nop
    nop
    add e
    rst $38
    add b
    add b
    rst $00
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp e
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    rst $38
    db $fc
    ld bc, $fd01
    cp $01
    ld bc, $fdfe
    ld bc, $fb01
    rst $38
    ld bc, $7101
    rst $38
    ld bc, $2001
    rst $38
    ld bc, $f101
    rst $38
    ld bc, $d101
    xor a
    ld bc, $d601
    xor e
    ld bc, $cf01
    or a
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    rra
    dec e
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc h
    ccf
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
    add c
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38

jr_0f0_5e88:
    ld [bc], a
    inc bc
    dec b
    db $fd
    inc bc
    inc bc
    dec c
    db $fd
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    inc b
    rlca
    pop af
    pop af
    inc b
    rlca
    ld de, $08f1
    rrca
    ld de, $08f1
    rrca
    db $10
    ldh a, [$08]
    rrca
    jr nz, jr_0f0_5e88

    ld [$200f], sp
    ldh [$08], a
    rrca
    ld b, b
    ret nz

    rlca
    rlca
    add b
    add b
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
    ldh [$e0], a
    nop
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add h
    ld a, h
    nop
    nop

jr_0f0_5eec:
    cp a
    ld a, a
    add b
    add b
    rst $38
    rra
    ret nz

    ret nz

    ld e, a
    cp a
    ldh [$e0], a
    ld a, $df
    jr nc, jr_0f0_5eec

    cp [hl]
    rst $38
    db $10
    ldh a, [rNR32]
    rst $38
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [$09]
    cp $e0
    jr nz, jr_0f0_5f28

    db $fc
    ldh [rNR41], a
    rst $30
    ld hl, sp-$40
    ld b, b
    rst $08
    or b
    add b
    add b
    rst $38
    add c
    nop
    nop
    ld a, [$0086]
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop

jr_0f0_5f28:
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
    db $fc
    db $fc
    nop
    nop
    ld [hl], d
    cp $00
    nop
    ld [bc], a
    cp $00
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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_5fa1

jr_0f0_5fa1:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_5fa9

jr_0f0_5fa9:
    nop
    ld e, $19
    inc bc
    inc bc
    ei
    db $fc
    rlca
    rlca
    call nc, $0ffb
    rrca
    rst $30
    ret c

    ld [$f30f], sp
    sbc h
    ld [$670f], sp
    sbc a
    ld [$610f], sp
    sbc a
    ld [$600f], sp
    sbc a
    rrca
    ld [$9fe1], sp
    rrca
    ld [$9fe2], sp
    rrca
    add hl, bc
    db $fc
    rst $38
    dec b
    ld b, $b0
    rst $18
    dec b
    ld b, $b0
    rst $18
    inc bc
    inc bc
    rst $38
    db $fc
    ld bc, $e001
    rst $38
    nop
    nop
    jr nz, jr_0f0_6027

    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    add l
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    inc bc
    inc bc
    db $fd
    db $fd
    inc bc
    inc bc
    db $fd
    db $fd
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
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

jr_0f0_6027:
    ld a, a
    nop
    nop
    inc a
    inc a
    nop
    nop

jr_0f0_602e:
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
    cp $fe
    ld bc, $fe01
    cp $00
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
    jr nz, jr_0f0_602e

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ret c

    cp b
    nop
    nop
    call c, Call_000_00bc
    nop
    rst $18
    cp a
    nop
    nop
    ld [hl], a
    rst $28
    add b
    add b
    db $db
    daa
    ret nz

    ret nz

    sbc h
    ld h, e
    ret nz

    ret nz

    adc $f1
    ld b, b
    ret nz

    rrca
    ldh a, [rLCDC]
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    inc bc
    db $fc
    and b
    ld h, b
    adc h
    rst $38
    ld b, b
    ret nz

    ld a, e
    ei
    add b
    add b
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp+$78
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr c, jr_0f0_6122

    nop
    nop
    jr c, jr_0f0_6126

    nop
    nop
    jr c, jr_0f0_612a

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
    ld d, $1b
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    jr c, jr_0f0_6119

jr_0f0_6119:
    nop
    dec a
    ld a, $00
    nop
    ccf
    jr c, jr_0f0_6121

jr_0f0_6121:
    nop

jr_0f0_6122:
    ld e, $19
    inc bc
    inc bc

jr_0f0_6126:
    ei
    db $fc
    rlca
    rlca

jr_0f0_612a:
    call nc, $0ffb
    rrca
    rst $30
    ret c

    ld [$f30f], sp
    sbc h
    ld [$670f], sp
    sbc a
    ld [$610f], sp
    sbc a
    ld [$600f], sp
    sbc a
    rrca
    ld [$9fe1], sp
    rrca
    ld [$9fe2], sp
    rrca
    add hl, bc
    db $fc
    rst $38
    dec b
    ld b, $b0
    rst $18
    dec b
    ld b, $b0
    rst $18
    inc bc
    inc bc
    rst $38
    db $fc
    ld bc, $e001
    rst $38
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
    add e
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
    db $fd
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
    ld b, c
    ld a, a
    nop
    nop

jr_0f0_61a6:
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
    inc e
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f0_61a6

    nop
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
    ld [$00f8], sp
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ret c

    cp b
    nop
    nop
    call c, Call_000_00bc
    nop
    rst $18
    cp a
    nop
    nop
    ld [hl], a
    rst $28
    add b
    add b
    db $db
    daa
    ret nz

    ret nz

    sbc h
    ld h, e
    ret nz

    ret nz

    adc $f1
    ld b, b
    ret nz

    rrca
    ldh a, [rLCDC]
    ret nz

    rlca
    ld hl, sp-$60
    ld h, b
    inc bc
    db $fc
    and b
    ld h, b
    adc h
    rst $38
    ld b, b
    ret nz

    ld a, e
    ei
    add b
    add b
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp+$78
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
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
    cp $fe
    nop
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
    jr c, @+$3a

    nop
    nop
    jr c, jr_0f0_62aa

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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec c
    ld c, $00
    nop
    ld [de], a
    dec e
    nop
    nop
    inc h
    dec sp
    nop
    nop
    inc l
    scf
    nop
    nop
    inc a
    dec sp
    nop
    nop
    cp $e9
    ld bc, $6901
    cp [hl]
    ld [bc], a
    inc bc
    db $dd

jr_0f0_62a3:
    ld [hl-], a
    dec b
    ld b, $97
    ld a, b
    dec bc
    inc c

jr_0f0_62aa:
    jr c, jr_0f0_62a3

    ld a, [bc]
    dec c
    ld [hl], a
    ld hl, sp+$04
    rlca
    ld b, e
    rst $38
    inc bc
    inc bc
    add d
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    and $ff
    nop
    nop
    ld e, d
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, jr_0f0_630b

    nop
    nop
    jr nz, jr_0f0_630f

    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    jr nz, jr_0f0_6317

    nop
    nop
    jr nz, jr_0f0_631b

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
    add e
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
    db $fd

jr_0f0_630b:
    rst $38
    nop
    nop
    add c

jr_0f0_630f:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0f0_6317:
    rst $38
    nop
    nop
    add c

jr_0f0_631b:
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
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop

jr_0f0_632e:
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
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    and b
    ld h, b
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
    jr nz, jr_0f0_632e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld e, $ff
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld sp, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    ld de, $00ff
    nop
    rla
    ld sp, hl
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rra
    pop af
    nop
    nop
    ld bc, $00ff
    nop
    rrca
    rst $38
    nop
    nop
    ld c, [hl]
    rst $38
    add b
    add b
    adc a
    db $fc
    add b
    add b
    ld c, $ff
    add b
    add b
    inc bc
    db $fd
    nop
    nop
    ld b, $fe
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
    cp $fe
    nop
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
    jr c, jr_0f0_6426

    nop
    nop
    jr c, jr_0f0_642a

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_6426:
    rlca
    rlca
    nop
    nop

jr_0f0_642a:
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
    ld d, $1b
    nop
    nop
    ld a, [hl]
    ld a, a
    ld bc, $ff01
    ld hl, sp+$03
    inc bc
    db $fd
    cp $06
    rlca
    ld a, a
    ld hl, sp+$04
    rlca
    ld a, [hl-]
    db $fd
    inc b
    rlca
    inc a
    ei
    inc b
    rlca
    dec sp
    db $fc
    inc b
    rlca
    dec sp
    rst $38
    rlca
    inc b
    sub c
    ld a, a
    dec b
    ld b, $e1
    ld a, a
    rlca
    inc b
    ld h, b
    rst $38
    rlca
    inc b
    ld [hl], c
    rst $38
    rlca
    inc b
    ld a, [hl]
    rst $38
    ld b, $05
    ld h, a
    rst $38
    ld b, $05
    ld b, b
    rst $38
    rlca
    rlca
    ret z

    rst $38
    rlca
    rlca
    add l
    ld a, a
    inc b
    rlca
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    add d
    ld a, a
    ld [bc], a
    inc bc
    push bc
    dec a
    ld bc, $7d01
    sbc l
    nop
    nop
    cp l
    call RST_00
    sub e
    rst $28
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
    inc e
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_64ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f0_64ca

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    rrca
    rst $38
    inc e
    inc e
    ld [$feff], sp
    cp $0c
    rst $38
    ld l, $f6
    ld a, h
    rst $38
    ld l, [hl]
    or [hl]
    db $fc
    ccf
    jp c, $bc3e

    ld a, a
    jp nz, Jump_0f0_6f3e

    cp a
    inc b
    db $fc
    add $7e
    ld hl, sp-$08
    adc d
    cp $00
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    adc h
    db $fc
    nop
    nop
    ld [hl], h
    db $fc
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
    add h
    db $fc
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
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
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
    add d
    cp $00
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr c, jr_0f0_65a2

    nop
    nop
    jr c, @+$3a

    nop
    nop
    jr c, jr_0f0_65aa

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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc l
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, [hl]
    ld [hl], c
    nop
    nop
    ld a, d
    ld a, l
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop

jr_0f0_65a2:
    dec a
    ld [hl-], a
    ld bc, $f701
    ld hl, sp+$03
    inc bc

jr_0f0_65aa:
    add sp, $77
    rlca
    rlca
    rst $28
    ld [hl], b
    dec bc
    dec c
    scf
    rst $38
    dec bc
    dec c
    ld [c], a
    ccf
    dec bc
    dec c
    ldh [$7f], a
    rrca
    rrca
    ld b, [hl]
    rst $38
    add hl, bc
    rrca
    ld a, [hl-]
    rst $38
    rlca
    rlca
    pop bc
    rst $38
    nop
    nop
    jr nz, jr_0f0_660b

    nop
    nop
    jr nz, jr_0f0_660f

    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    jr nz, jr_0f0_6617

    nop
    nop
    jr nz, jr_0f0_661b

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
    add e
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
    db $fd

jr_0f0_660b:
    rst $38
    nop
    nop
    add c

jr_0f0_660f:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0f0_6617:
    rst $38
    nop
    nop
    add c

jr_0f0_661b:
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
    ld a, $3e
    nop
    nop

jr_0f0_662a:
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
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f0_662a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh [$60], a
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp a
    ld a, a
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ld e, $ff
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld sp, $00ff
    nop
    pop hl
    rst $38
    nop
    nop
    ld de, $00ff
    nop
    rla
    ld sp, hl
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rra
    pop af
    nop
    nop
    ld bc, $00ff
    nop
    rrca
    rst $38
    nop
    nop
    ld c, [hl]
    rst $38
    add b
    add b
    adc a
    db $fc
    add b
    add b
    ld c, $ff
    add b
    add b
    inc bc
    db $fd
    nop
    nop
    ld b, $fe
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
    cp $fe
    nop
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
    jr c, jr_0f0_6726

    nop
    nop
    jr c, jr_0f0_672a

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
    ld a, [hl]
    ld a, [hl]
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

jr_0f0_6726:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f0_672a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0f0_68db

    nop
    nop
    jr nz, jr_0f0_68df

    nop
    nop
    inc l
    scf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, [hl]
    ld [hl], c
    ld bc, $fa01
    db $fd
    inc bc
    inc bc
    rst $38
    ldh a, [rTAC]
    rlca
    push af
    ld a, d
    rlca
    rlca
    ld hl, sp+$77
    rlca
    rlca
    xor $7f
    dec b
    rlca
    call nz, $047f
    rlca
    add b
    ld a, a
    rlca
    rlca
    call nz, $077f
    ld b, $44
    cp a
    rlca
    ld b, $5b
    xor a
    rlca
    ld b, $3f
    sbc $03
    inc bc
    rst $18

jr_0f0_68db:
    cp $00
    nop
    ld a, a

jr_0f0_68df:
    halt
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    sub c
    rst $38
    ld bc, $0a01
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$140f], sp
    rst $30
    inc c
    rrca
    ld [hl], $f7
    rrca
    rrca
    rst $20
    rst $20
    inc de
    rra
    push bc
    rst $00
    db $10
    rra
    ld b, h
    rst $00
    jr nz, jr_0f0_695d

    ld b, h
    rst $00
    jr nz, jr_0f0_6961

    ld b, d
    jp Jump_000_3f20


    add d
    add e
    jr nz, jr_0f0_6969

    add c
    add c
    inc de
    rra
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

jr_0f0_693a:
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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f0_693a

    nop
    nop
    db $10

jr_0f0_695d:
    ldh a, [rP1]
    nop
    db $10

jr_0f0_6961:
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10

jr_0f0_6969:
    ldh a, [rP1]
    nop
    cp $fe
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld hl, sp+$7f
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp-$80
    add b
    ld l, a
    ldh a, [$80]
    add b
    rst $18
    pop hl
    nop
    nop
    ld a, $c2
    nop
    nop
    db $fc
    inc b
    nop
    nop
    ld hl, sp+$18
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
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
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

    ld hl, sp+$00
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
    ld [$00f8], sp
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
    ld bc, $8001
    add b
    inc bc
    ld [bc], a
    ld b, e
    jp $0607


    db $e4
    daa
    ld b, $07
    xor e
    ld l, l
    rlca
    rlca
    set 1, a
    rlca
    rlca
    rst $08
    call z, Call_000_0707
    adc [hl]
    adc a
    dec bc
    inc c
    ld c, a
    call z, $0c0b
    ld c, a
    call z, $0c0b
    ld a, l
    cp $0b
    inc c
    ld a, [hl]
    db $fd
    dec bc
    inc c
    ld a, a
    db $fc
    ld [$710f], sp
    cp $08
    rrca
    inc sp
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
    ld [hl], c
    ld a, a
    nop
    nop
    ld e, $1f
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
    ld e, $00
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
    ld b, c
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, h
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
    ld [hl+], a
    ld a, $00
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
    ret nz

    ret nz

    pop hl
    pop hl
    ld h, b
    and b
    inc de
    ld a, [c]
    ldh a, [$30]
    ld a, [bc]
    ei
    or b
    ld [hl], b
    dec b
    db $fd
    ldh a, [$f0]
    add e
    ld a, a
    ldh a, [$f0]
    and h
    ld a, h
    ldh a, [$f0]
    db $fd
    dec e
    ld l, b
    sbc b

jr_0f0_6ae8:
    ld a, l
    sbc l
    ld l, b
    sbc b
    rst $18
    ccf
    ld l, b
    sbc b
    ccf
    rst $18
    ld l, b
    sbc b
    rst $38
    rra
    ld l, b
    sbc b
    rst $00
    ccf
    ld [$e6f8], sp
    rst $38
    ld [$86f8], sp
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    jr nz, jr_0f0_6ae8

    add d
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    nop
    nop
    inc a
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
    inc a
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
    ld [hl+], a
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
    ld h, c
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    sbc a
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
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    rst $38
    db $fc
    rlca
    rlca
    db $fd
    cp $07
    rlca
    ld a, [$05fd]
    rlca
    ei
    db $fc
    inc b
    rlca
    ld a, c
    cp $04
    rlca
    db $10
    rst $38
    rlca
    inc b
    and b
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $b1
    ld a, a
    dec b
    ld b, $be
    ld a, a
    dec b
    ld b, $70
    cp a
    dec b
    ld b, $30
    rst $38
    ld [bc], a
    inc bc
    ccf
    cp $03
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    ldh [$df], a
    inc bc
    inc bc
    ld [c], a
    rst $18
    ld bc, $6101
    cp a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0f0_6daf

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
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e

jr_0f0_6daf:
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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, [hl]
    sbc [hl]
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    cpl
    rst $18
    ldh [$e0], a
    rst $28
    rra
    ldh a, [$f0]
    rst $08
    ccf
    sub b
    ldh a, [$ef]
    rst $38
    db $10
    ldh a, [rTMA]
    rst $38
    db $10
    ldh a, [$83]
    cp $d0
    jr nc, @+$05

    cp $d0
    jr nc, jr_0f0_6e50

    rst $38
    ret nc

    or b
    ld a, $fd
    ret nc

    ld [hl], b
    inc b
    rst $38
    ret nc

    ld [hl], b
    db $fc
    ccf
    ld d, b
    ldh a, [rTMA]
    rst $38
    jr nz, @-$1e

    inc bc
    rst $38
    ret nz

    ret nz

    ld [hl+], a
    cp $00
    nop
    ld b, d
    cp $00
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
    cp a
    add b
    add b

jr_0f0_6e50:
    and c
    cp a
    nop
    nop
    sbc [hl]
    sbc [hl]
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    rst $38
    db $fc
    rlca
    rlca
    db $fd
    cp $07
    rlca
    ld a, [$05fd]
    rlca
    ei
    db $fc
    inc b
    rlca
    ld a, c
    cp $04
    rlca
    inc sp
    rst $38
    rlca
    inc b
    ld d, b
    rst $38
    rlca
    inc b
    ld h, b
    rst $38
    ld [$600f], sp
    rst $38
    dec bc
    inc c
    ld [hl], c
    rst $38
    dec bc
    inc c
    sbc $5f
    rlca
    inc b
    ret nc

    ld e, a
    inc b
    rlca
    ld e, a
    sbc $03
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $18
    ld bc, $e101
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0f0_6f2b

    nop
    nop
    jr nz, jr_0f0_6f2f

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
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    inc e

jr_0f0_6f2b:
    inc e
    nop
    nop
    inc e

jr_0f0_6f2f:
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

Jump_0f0_6f3e:
    inc a
    inc a
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    cpl
    rst $18
    ldh [$e0], a
    rst $28
    rra
    ldh a, [$f0]
    rst $08
    ccf
    sub b
    ldh a, [$e7]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ldh a, [rNR10]
    add d
    rst $38
    ld [hl], b
    sub b
    ld b, a
    rst $38
    ld d, b
    or b
    ccf
    cp $d0
    jr nc, @+$09

    rst $38
    sub b
    ldh a, [$fd]
    ld a, [hl-]
    and b
    ldh [rSB], a
    cp $a0
    ldh [rTAC], a
    rst $38
    ret nz

    ret nz

    inc hl
    rst $38
    nop
    nop
    ld b, d
    cp $00
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
    add c
    rst $38
    nop
    nop
    cp a
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
    add c
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
    jp nz, Jump_000_00fe

    nop
    inc a
    inc a
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    ld a, [$07fd]
    rlca
    ei
    db $fc
    dec b
    rlca
    ld sp, hl
    cp $04
    rlca
    ld [hl], e
    rst $38
    inc b
    rlca
    db $10
    rst $38
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $b1
    ld a, a
    dec bc
    inc c
    cp [hl]
    ld a, a
    dec bc
    inc c
    ret nc

    ld e, a
    dec bc
    dec c
    rst $38
    cp $0b
    ld c, $70
    cp a
    rlca
    ld b, $30
    rst $38
    ld b, $07
    ld [hl], d
    rst $38
    inc bc
    inc bc
    pop de
    rst $18
    ld bc, $a001
    cp a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f0_70ab

    nop
    nop
    jr nz, jr_0f0_70af

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
    ld e, [hl]

jr_0f0_707f:
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
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
    inc e
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

jr_0f0_70ab:
    ld a, h
    nop
    nop
    ld a, h

jr_0f0_70af:
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, a
    sbc a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    cpl
    rst $18
    ldh a, [$f0]
    rst $28
    rra
    ldh a, [$f0]
    rst $08
    ccf
    ret nc

    ldh a, [$e7]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ret nc

    jr nc, jr_0f0_707f

    rst $38
    ret nc

    jr nc, jr_0f0_7147

    rst $38
    ret nc

    jr nc, jr_0f0_7143

    rst $38
    add sp, $18
    dec b
    db $fd
    add sp, $18

jr_0f0_710c:
    rst $38
    ccf
    add sp, -$28
    rlca
    cp $68
    cp b
    ld b, $ff
    ld [hl], b
    or b
    inc hl
    rst $38
    jr nc, jr_0f0_710c

    ld b, e
    rst $38
    ldh [$e0], a
    add d
    cp $c0
    ret nz

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
    jp Jump_000_00ff


    nop
    ret nz

    rst $38
    add b

jr_0f0_7143:
    add b
    ld b, b
    ld a, a
    add b

jr_0f0_7147:
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
    rra
    rra
    add b
    add b
    jr c, jr_0f0_71a9

    ld b, b
    ret nz

    jr nc, jr_0f0_71ad

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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    nop
    nop
    ld a, a
    ld a, h
    ld bc, $fd01
    cp $03

jr_0f0_71a9:
    inc bc
    ld a, [$07fd]

jr_0f0_71ad:
    rlca
    ei
    db $fc
    inc b
    rlca
    ld sp, hl
    cp $04
    rlca
    ld [hl], e
    rst $38
    inc b
    rlca
    db $10
    rst $38
    rlca
    inc b
    and b
    ld a, a
    rlca
    inc b
    jr nz, @+$01

    dec b
    ld b, $71
    rst $38
    dec b
    ld b, $fe
    ccf
    inc b
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    rst $18
    xor [hl]
    ld [bc], a
    inc bc
    ret nz

    cp a
    ld bc, $f001
    rst $38
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f0_722b

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
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld h, d
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
    jr jr_0f0_7240

    nop
    nop
    nop

jr_0f0_722b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_7240:
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    rst $38
    rra
    ret nz

    ret nz

    ld a, a
    sbc a
    ldh [$e0], a
    rst $18
    ccf
    ldh a, [$f0]
    cpl
    rst $18
    ldh a, [$f0]
    rst $28
    rra
    ret nc

    ldh a, [$cf]
    ccf
    db $10
    ldh a, [$e6]
    rst $38
    db $10
    ldh a, [$85]
    rst $38
    ld [hl], b
    sub b
    inc bc
    rst $38
    ld [hl], b
    sub b
    add e
    rst $38
    ld [$47f8], sp
    rst $38
    ld l, b
    sbc b
    dec a
    db $fd
    add sp, $18
    dec b
    db $fd
    ldh a, [rNR10]
    db $fd
    dec a
    db $10
    ldh a, [rTAC]
    rst $38
    ldh [$e0], a
    dec b
    rst $38
    ldh [$e0], a
    daa
    db $fd
    ldh [$e0], a
    ld b, e
    rst $38
    ret nz

    ret nz

    add e
    rst $38
    add b
    add b
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
    ld b, c
    ld a, a
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
    ccf
    ccf
    ret nz

    ret nz

    jr c, jr_0f0_7331

    ld b, b
    ret nz

    jr nc, jr_0f0_7335

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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    nop
    nop
    ccf
    inc a
    ld bc, $fd01
    cp $03
    inc bc
    ld a, [$07fd]

jr_0f0_7331:
    rlca
    ei
    db $fc
    inc b

jr_0f0_7335:
    rlca
    ld sp, hl
    cp $04
    rlca
    ld a, e
    rst $38
    inc b
    rlca
    jr nc, @+$01

    dec b
    ld b, $e0
    ccf
    dec b
    ld b, $e0
    ccf
    dec b
    ld b, $f1
    rst $38
    dec b
    rlca
    cp [hl]
    ld e, a
    dec b
    rlca
    sub b
    ld a, a
    dec b
    rlca
    rra
    cp $02
    inc bc
    jr nc, @+$01

    ld bc, $e001
    rst $38
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f0_73ab

    nop
    nop
    jr nz, jr_0f0_73af

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
    nop
    nop
    cp [hl]
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f0_73ab:
    nop
    nop
    nop
    nop

jr_0f0_73af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    rst $38
    rra
    ret nz

    ret nz

    ld a, a
    sbc a
    ldh [$e0], a
    rst $18
    ccf
    ldh a, [$f0]
    cpl
    rst $18
    ldh a, [$f0]
    rst $28
    rra
    ret nc

    ldh a, [$cf]
    ccf
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ldh a, [rNR10]
    add d
    rst $38
    ret nc

    jr nc, jr_0f0_744b

    rst $38
    ret nc

    jr nc, jr_0f0_7447

    rst $38
    ret nc

    jr nc, jr_0f0_7414

    cp $50
    or b
    ld b, $ff
    ld d, b
    or b

jr_0f0_7414:
    cp $3f
    jr nz, @-$1e

    dec b
    rst $38
    ldh [$e0], a
    inc bc
    db $fd
    ldh [$e0], a
    inc hl
    db $fd
    ldh [$e0], a
    ld b, e
    cp $40
    ret nz

    add e
    rst $38
    add b
    add b
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

jr_0f0_7447:
    nop
    cp l
    rst $38
    nop

jr_0f0_744b:
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
    ld b, c
    ld a, a
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    nop
    nop
    ld a, a
    ld a, h
    ld bc, $fd01
    cp $03
    inc bc
    ld a, [$07fd]
    rlca
    ei
    db $fc
    inc b
    rlca
    ld sp, hl
    cp $04
    rlca
    ld [hl], e
    rst $38
    inc b
    rlca
    db $10
    rst $38
    rlca
    inc b
    and b
    ld a, a
    rlca
    inc b
    jr nz, @+$01

    dec b
    ld b, $71
    rst $38
    dec b
    ld b, $fe
    ccf
    inc b
    rlca
    ldh a, [rIE]
    ld [bc], a
    inc bc
    rst $18
    xor [hl]
    ld [bc], a
    inc bc
    ret nz

    cp a
    ld bc, $f001
    rst $38
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f0_7527

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
    ld a, [hl]
    ld a, a
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
    ld b, c
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

jr_0f0_7527:
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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    rst $38
    rra
    ret nz

    ret nz

    ld a, a
    sbc a
    ldh [$e0], a
    rst $18
    ccf
    ldh a, [$f0]
    cpl
    rst $18
    ldh a, [$f0]
    rst $28
    rra
    ret nc

    ldh a, [$cf]
    ccf
    db $10
    ldh a, [$e6]
    rst $38
    db $10
    ldh a, [$85]
    rst $38
    ld [hl], b
    sub b
    inc bc
    rst $38
    ld [hl], b
    sub b
    add e
    rst $38
    ld [$47f8], sp
    rst $38
    ld l, b
    sbc b
    dec a
    db $fd
    add sp, $18
    dec b
    db $fd
    ldh a, [rNR10]
    db $fd
    dec a
    db $10
    ldh a, [rTAC]
    rst $38
    ldh [$e0], a
    dec b
    rst $38
    ldh [$e0], a
    daa
    db $fd
    ldh [$e0], a
    ld b, e
    rst $38
    ret nz

    ret nz

    add e
    rst $38
    add b
    add b
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
    add c
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    inc e
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    ld a, [$07fd]
    rlca
    ei
    db $fc
    dec b
    rlca
    ld sp, hl
    cp $04
    rlca
    ld [hl], e
    rst $38
    inc b
    rlca
    db $10
    rst $38
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $b1
    ld a, a
    dec bc
    inc c
    cp [hl]
    ld a, a
    dec bc
    inc c
    ret nc

    ld e, a
    dec bc
    dec c
    rst $38
    cp $0b
    ld c, $70
    cp a
    rlca
    ld b, $30
    rst $38
    ld b, $07
    ld h, d
    rst $38
    inc bc
    inc bc
    pop hl
    rst $38
    ld bc, $a001
    cp a
    nop
    nop
    jr nz, jr_0f0_76a7

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

jr_0f0_767f:
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
    db $fc

jr_0f0_76a7:
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, a
    sbc a
    ret nz

    ret nz

    rst $18
    ccf
    ldh [$e0], a
    cpl
    rst $18
    ldh a, [$f0]
    rst $28
    rra
    ldh a, [$f0]
    rst $08
    ccf
    ret nc

    ldh a, [$e7]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ret nc

    jr nc, jr_0f0_767f

    rst $38
    ret nc

    jr nc, jr_0f0_7747

    rst $38
    ret nc

    jr nc, jr_0f0_7743

    rst $38
    add sp, $18
    dec b
    db $fd
    add sp, $18

jr_0f0_770c:
    rst $38
    ccf
    add sp, -$28
    rlca
    cp $68
    cp b
    ld b, $ff
    ld [hl], b
    or b
    daa
    rst $38
    jr nc, jr_0f0_770c

    ld b, l
    db $fd
    ldh [$e0], a
    add d
    cp $c0
    ret nz

    add d
    cp $00
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

jr_0f0_7743:
    nop
    ld b, c
    ld a, a
    nop

jr_0f0_7747:
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
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
    dec bc
    dec c
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    inc e
    nop
    nop
    ld e, $1f
    ld bc, $ff01
    db $fc
    inc bc
    inc bc
    rst $38
    db $fc
    rlca
    rlca
    db $fd
    cp $07
    rlca
    ld a, [$05fd]
    rlca
    ei
    db $fc
    inc b
    rlca
    ld a, c
    cp $04
    rlca
    inc sp
    rst $38
    rlca
    inc b
    ld d, b
    rst $38
    rlca
    inc b
    ld h, b
    rst $38
    ld [$600f], sp
    rst $38
    dec bc
    inc c
    ld [hl], c
    rst $38
    dec bc
    inc c
    sbc $5f
    rlca
    inc b
    ret nc

    ld e, a
    inc b
    rlca
    ld e, a
    sbc $03
    inc bc
    ldh a, [rIE]
    inc bc
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    ld a, [c]
    rst $18
    ld bc, $e101
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f0_782f

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
    ld e, $1e
    ld bc, $fe01

jr_0f0_782f:
    cp $01
    ld bc, $fe0e
    nop
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
    ldh [$e0], a
    nop
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
    add h
    ld a, h
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    rst $18
    ccf
    ret nz

    ret nz

    cpl
    rst $18
    ldh [$e0], a
    rst $28
    rra
    ldh a, [$f0]
    rst $08
    ccf
    sub b
    ldh a, [$e7]
    rst $38
    db $10
    ldh a, [$84]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    ldh a, [rNR10]
    add d
    rst $38
    ld [hl], b
    sub b
    ld b, a
    rst $38
    ld d, b
    or b
    ccf
    cp $d0
    jr nc, @+$09

    rst $38
    sub b
    ldh a, [$fd]
    ld a, [hl-]
    and b
    ldh [rSB], a
    cp $a0
    ldh [rTAC], a
    rst $38
    ret nz

    ret nz

    inc hl
    rst $38
    nop
    nop
    ld b, d
    cp $00
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
    cp $ff
    add b
    add b
    cp h
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    and e
    cp a
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
