SECTION "ROM Bank $0ef", ROMX[$4000], BANK[$ef]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $f001
    ret nz

    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    inc bc
    ld hl, sp-$02
    rlca
    inc bc
    pop af
    rst $38
    inc bc
    ld bc, $ffe3
    inc bc
    ld bc, $ffc7
    ld bc, $8e01
    rst $38
    nop
    nop
    rra
    db $fd
    nop
    nop
    cp a
    ei
    ld bc, $8701
    rst $38
    ld bc, $8f01
    rst $38
    ld bc, $cf01
    rst $38
    nop
    nop
    rst $20
    rst $38
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
    ld [bc], a
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

Call_0ef_40ff:
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    ldh [rP1], a
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$00
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ei
    rst $38
    add b
    add b
    rst $30
    rst $38
    nop
    add b
    cp $ef
    nop
    add b
    call c, Call_0ef_40ff
    ret nz

    jr c, @+$01

    ldh [$c0], a
    ld sp, $f0ff
    ldh [$03], a
    rst $38
    ldh a, [$e0]
    add a
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    rlca
    inc bc
    ldh [$e0], a
    inc bc
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
    ld [hl], b
    ld [hl], b
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    db $fc
    cp $1b
    rra
    ld hl, sp-$01
    inc sp
    ccf
    pop af
    rst $38
    inc sp
    ccf
    db $e3
    rst $38
    inc sp
    ccf
    rst $00
    rst $38
    jr c, jr_0ef_420d

    ld c, $ff
    ccf
    ld a, $cd
    ld a, $1f
    ld e, $c9
    ccf
    nop
    nop
    db $e3
    rra
    nop
    nop
    ld h, e
    sbc a
    nop
    nop
    ld a, e
    rra
    nop
    nop
    dec l
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
    rrca
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_420d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh [$f8], a

jr_0ef_4286:
    nop
    nop
    jr nc, jr_0ef_4286

    nop
    nop

jr_0ef_428c:
    ld a, b
    cp $00
    nop
    db $fc
    rst $38
    nop
    nop
    cp $ff
    nop
    add b
    cp $ff
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ret nz

    rst $38
    ei
    nop
    ret nz

    cp $f7
    jr nz, jr_0ef_428c

    db $fc
    ld a, a
    ld [hl], b
    ldh a, [$f8]
    ccf
    ldh a, [$f0]
    pop af
    ld a, a
    ld hl, sp-$08
    di
    rst $38
    ld hl, sp-$08
    scf
    ld a, a
    ld hl, sp-$08
    scf
    dec bc
    ldh a, [$f0]
    ld e, $01
    ldh [$e0], a
    ld b, $09
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
    inc c
    nop
    nop
    rst $28
    di
    ld bc, $ff01
    ld sp, hl
    inc bc
    inc bc
    rst $38
    db $fd
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    pop af
    rst $38
    ld bc, $e301
    rst $38
    ld bc, $c701
    rst $38
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    inc e
    rst $38
    nop
    nop
    rra
    ei
    nop
    nop
    rrca
    rst $30
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
    rlca
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
    ld bc, $0000
    nop
    inc bc
    ld bc, $0000
    ld bc, $0003
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
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    add b
    ldh a, [$60]
    ld h, b
    ldh [$f9], a
    ldh a, [$f0]
    jr nc, @+$01

    ldh a, [$f0]
    jr @+$01

    ld h, b
    ldh [$cc], a
    rst $38
    nop
    ldh [$e6], a
    rst $38
    nop
    ret nz

    di
    rst $38
    ret nz

    ret nz

    di
    rst $38
    add b
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    cp $ef
    nop
    ret nz

    db $fc
    rst $18
    ld h, b
    ldh [$38], a
    rst $38
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [rNR22]
    ccf
    ldh a, [$f0]
    adc a
    rst $38
    ldh a, [$f0]
    rst $30
    adc a
    ldh a, [$f0]
    cp e
    rst $00
    ldh [$e0], a
    ld h, b
    cp h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $f801
    cp $03
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    pop af
    rst $38
    ld bc, $e301
    rst $38
    ld bc, $c701
    rst $38
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    inc e
    ld a, a
    nop
    nop
    rra
    ld a, e
    nop
    nop
    rrca
    ld [hl], a
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
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh [rP1], a
    nop
    add b
    ldh a, [$c0]
    ret nz

    pop hl
    ld sp, hl
    ldh [$e0], a
    jr nc, @+$01

    ldh [$e0], a
    jr @+$01

    ld b, b
    ret nz

    call z, Call_000_00ff
    ret nz

    and $ff
    ret nz

    ret nz

    di
    rst $38
    ret nz

    ret nz

    di
    rst $38
    add b
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    cp $ef
    nop
    ret nz

    db $fc
    rst $18
    ld h, b
    ldh [$38], a
    rst $38
    ldh a, [$f0]
    ld de, $f0ff
    ldh a, [$03]
    rst $38
    ldh a, [$f0]
    rlca
    ld a, a
    ldh a, [$f0]
    rlca
    rrca
    ldh a, [$f0]
    inc bc
    rlca
    ldh [$e0], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    rrca
    rrca
    pop hl
    rst $28
    rra
    rra
    db $e3
    rst $38
    rra
    rra
    rst $00
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rla
    cpl
    sbc h
    rst $38
    dec de
    daa
    jr c, @+$01

    ld a, c
    ld h, a
    ccf
    rst $30
    jr z, jr_0ef_46b6

    rra
    rst $28
    ld e, h
    ld a, h
    rra
    ld a, a
    inc a
    jr c, jr_0ef_468a

    ccf
    ld [$1f10], sp
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
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop

jr_0ef_468a:
    dec bc
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_46b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    adc [hl]
    cp $00
    nop
    call nz, Call_000_00fc
    nop
    jr nz, @-$06

    nop
    nop

jr_0ef_4710:
    ret nc

    ldh a, [rP1]
    nop
    ld l, b
    ld hl, sp+$00
    nop
    inc [hl]
    db $fc
    jr nc, jr_0ef_474c

    sbc d
    cp $e8
    ld hl, sp-$33
    rst $38
    ret nz

    ld hl, sp-$19
    rst $38
    ld [hl], b
    ret z

    rst $20
    rst $38
    jr c, jr_0ef_4710

    xor $ff
    ld a, b
    db $f4
    db $fc
    rst $18
    ld a, b
    db $fc
    ld hl, sp-$41
    ld hl, sp-$04
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld h, e
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ret nz

    ret nz

    nop
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop

jr_0ef_474c:
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
    rlca
    rlca
    add b
    add c
    rrca
    rrca
    pop hl
    rst $28
    rra
    rra
    db $e3
    rst $38
    rra
    rra
    rst $00
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rla
    cpl
    sbc h
    rst $38
    dec de
    daa
    jr c, @+$01

    dec e
    inc hl
    ccf
    rst $30
    jr c, jr_0ef_4816

    rra
    rst $28
    ld e, b
    ld a, b
    rra
    ld a, a
    inc l
    ld e, h
    rra
    ccf
    ld e, h
    ld a, h
    rra
    rra
    inc a
    jr c, jr_0ef_4802

    rrca
    ld [$0710], sp
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

jr_0ef_4802:
    nop
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop

jr_0ef_4816:
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
    inc bc
    inc bc
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    ccf
    ld a, a
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    add b
    cp $00
    nop
    add b
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$0c
    inc e
    jr nc, @-$02

    ld e, $3e
    sbc b
    cp $11
    ccf
    call $0eff
    ld de, $ffe7
    sbc [hl]
    and c
    rst $20
    rst $38
    ld l, [hl]
    pop af
    xor $ff
    db $76
    ld hl, sp-$04
    rst $18
    ld a, b
    cp $f8
    cp a
    ld hl, sp-$04
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld h, e
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ret nz

    ret nz

    nop
    ldh a, [rP1]
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    rst $00
    rst $38
    rlca
    rlca
    adc a
    rst $38
    inc bc
    rrca
    sbc h
    rst $38
    dec b
    dec bc
    jr c, @+$01

    ld b, $09
    cp a
    rst $30
    ld e, $19
    ccf
    rst $28
    ld a, [bc]
    dec d
    rra
    ld a, a
    rla
    rra
    rra
    ld a, a
    rrca
    ld c, $1f
    ccf
    ld [bc], a
    inc b
    rra
    rra
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
    jr @+$1a

    nop
    nop
    inc a
    ld a, h

jr_0ef_49f6:
    nop
    nop
    inc a
    db $fc
    nop
    nop
    jr jr_0ef_49f6

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    ldh a, [rP1]
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$00
    nop
    jr nc, @-$02

    nop
    nop
    sbc b
    cp $00
    nop
    set 7, a
    nop
    nop
    rst $08
    rst $38
    ret nz

    ret nz

    adc $ff
    ldh [$e0], a
    call c, $e0ff
    jr nz, @-$06

    cp a
    ldh [$90], a
    pop af
    ld a, a
    ldh [$d0], a
    ld h, e
    rst $38
    ret nz

    ldh [rTAC], a
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rrca
    rst $28
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rrca
    rst $00
    rst $38
    rlca
    rrca
    adc a
    rst $38
    inc bc
    rlca
    inc e
    rst $38
    nop
    inc bc
    jr c, @+$01

    nop
    ld bc, $f77f
    nop
    ld bc, $ef3f
    nop
    ld bc, $ff1f
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
    rra
    ld a, a
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
    nop
    rlca
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    nop
    nop
    cp h
    db $fc
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    add b
    ldh a, [rP1]
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$00
    nop
    jr nc, @-$02

    nop
    nop
    sbc b
    cp $00
    nop
    set 7, a
    nop
    nop
    rst $08
    rst $38
    nop
    add b
    adc $ff
    nop
    add b
    call c, Call_000_00ff
    ret nz

    ld hl, sp-$41
    add b
    ret nz

    pop af
    ld a, a
    ret nz

    ldh [$63], a
    rst $38
    ret nz

    ldh [rTAC], a
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
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
    ld a, h
    ld [hl], e
    nop
    nop
    cp $f9
    nop
    nop
    cp $fd
    ld bc, $fb01
    rst $38
    ld bc, $e101
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $1f01
    rst $38
    nop
    ld bc, $ff39
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    inc bc
    cp $ef
    inc b
    rlca
    rst $38
    rst $18
    inc c
    rrca
    ccf
    rst $38
    inc d
    rra
    ccf
    rst $38
    ld d, $1f
    ccf
    rst $38
    dec de
    rra
    ccf
    ccf
    ld c, $0e
    rra
    rra
    nop
    nop
    rrca
    ld c, $00
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    nop
    nop
    rrca
    ld b, $00
    nop
    ld b, $0f
    nop
    nop
    dec b
    ld b, $00
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld bc, $0001
    nop
    add e
    add e
    add b
    add b
    ld b, a
    rst $00
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    pop de
    rst $38
    ret nz

    ret nz

    ld l, b
    rst $38
    add b
    add b
    inc [hl]
    rst $38
    add b
    add b
    sub [hl]
    rst $38
    nop
    add b
    sbc [hl]
    rst $38
    nop
    nop
    sbc h
    cp $00
    nop
    cp b
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ccf
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
    ccf
    rst $38
    nop
    nop
    sbc $3e
    nop
    nop
    db $ec
    inc e
    nop
    nop
    add b
    ldh a, [rP1]
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
    rlca
    nop
    nop
    rrca
    stop
    nop
    rrca
    jr nc, jr_0ef_4dad

jr_0ef_4dad:
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    ld a, [$00fd]
    nop
    db $fc
    cp $01
    ld bc, $fcfc
    ld bc, $e201
    cp $01
    ld bc, $ffc7
    ld bc, $8e01
    rst $38
    ld bc, $1f01
    rst $38
    nop
    ld bc, $ff39
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    rlca
    cp $ef
    ld [$ff0f], sp
    rst $18
    jr jr_0ef_4dfd

    ccf
    rst $38
    jr z, jr_0ef_4e21

    ccf
    rst $38
    inc l
    ccf
    ccf
    rst $38
    ld [hl], $3f
    ccf
    ccf
    inc e
    inc e
    rra
    rra
    nop
    nop
    rrca
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop

jr_0ef_4dfd:
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
    inc e
    dec c
    nop
    nop
    ccf
    ld e, $00
    nop
    dec de
    ccf
    nop
    nop
    dec d
    dec de
    nop
    nop
    ld a, [bc]
    ld c, $00
    nop
    nop
    nop
    nop

jr_0ef_4e21:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
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
    ld bc, $f883
    ld hl, sp+$00
    rst $00
    ldh a, [$f0]
    add b
    rst $28
    ld [hl], b
    ldh a, [$c0]
    rst $38
    ld h, b
    ldh [$60], a
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    nop
    ret nz

    sub [hl]
    rst $38
    nop
    add b
    sbc [hl]
    rst $38
    nop
    nop
    sbc h
    cp $00
    nop
    cp b
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ccf
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
    cp a
    ld a, a
    nop
    nop
    sbc $3e
    nop
    nop
    db $ec
    inc e
    nop
    nop
    nop
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
    rrca
    rrca
    add b
    add c
    rra
    rra
    ret nz

    jp $3f3f


    ret z

    rst $38
    ccf
    ld a, a
    add a
    rst $38
    rra
    ld a, a
    add hl, de
    rst $38
    ld a, $5f
    jr c, @+$01

    inc l
    ld e, a
    ld [hl], b
    rst $38
    jr c, jr_0ef_4fb5

    db $fc
    rst $38
    ld sp, $c24f
    rst $38
    ld [hl], e
    ld e, e
    cp c
    rst $20
    ld a, e
    ld a, e
    db $fc
    ld a, e
    ld [hl], c
    or b
    cp $fd
    ld c, c
    cp c
    rst $38
    cp $49
    ld bc, $feff
    ld bc, $fe01
    rst $38
    ld bc, $fd01
    rst $38
    nop
    nop
    rst $38
    ei
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    jr nz, jr_0ef_4fd7

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
    jr c, jr_0ef_4fe3

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

jr_0ef_4fb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_4fd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_4fe3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ccf
    ld a, a
    nop
    nop
    inc c
    db $fc
    nop
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
    nop
    ldh a, [rP1]
    nop
    add b
    ldh [rP1], a
    nop
    ret nz

    ldh [rP1], a
    nop
    ld h, b
    ldh a, [rP1]
    nop
    jr nc, @-$06

jr_0ef_5026:
    nop
    nop
    jr jr_0ef_5026

    nop
    nop
    inc c
    cp $00
    nop
    add h
    cp $00
    nop
    ld d, h
    db $fc
    nop
    nop
    ld a, d
    cp $00
    nop
    ld [hl], b
    cp $00
    nop
    ld [c], a
    cp $00
    nop
    rst $00
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rra
    rst $38
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
    ld a, a
    rst $38
    nop
    nop
    ld a, $fe
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $ff
    nop
    ld bc, $fffe
    ld bc, $f802
    rst $38
    inc bc
    inc b
    ldh a, [rIE]
    inc bc
    inc c
    ld h, b
    rst $38
    add hl, de
    ld b, $81
    ld a, a
    inc [hl]
    dec bc
    rlca
    rst $38
    ld [hl], $1f
    adc a
    rst $38
    ld a, $3f
    rst $08
    rst $38
    inc a
    ccf
    ld c, a
    rst $38
    ld [hl-], a
    dec a
    ld c, e
    rst $18
    inc h
    dec sp
    add a
    sbc e
    add hl, sp
    scf
    ld b, $8b
    dec sp
    ld a, $03
    adc h
    dec e
    rra
    pop bc
    add $0f
    rrca
    ldh [$e7], a
    inc bc
    inc bc
    call nz, $01f7
    ld bc, $ebd2
    nop
    nop
    ld a, [$00c7]
    nop
    dec a
    ld b, e
    nop
    nop
    ld e, $21
    nop
    nop
    ld c, $11
    nop
    nop
    ld h, [hl]
    ld a, c
    nop
    nop
    pop hl
    cp $00
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ef_515c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_515c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    inc a
    cp $00
    nop
    ld hl, sp+$3f
    nop
    nop
    rst $30
    rrca
    nop
    nop
    rst $28
    rra
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rst $38
    ld a, a
    add b
    add b
    rst $38
    ld a, a
    nop
    nop
    ld a, [hl]
    cp $00
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
    ld a, $3e
    nop
    nop
    ld a, a

jr_0ef_5237:
    ld a, a
    nop
    ld bc, $fffe
    inc bc
    inc b
    cp $ff
    rlca
    ld [$fff8], sp
    rlca
    jr jr_0ef_5237

    rst $38
    add hl, sp
    ld b, $e0
    ld a, a
    inc a
    inc bc
    ld bc, $7cff
    ld [bc], a
    rlca
    ld a, a
    ld a, h
    nop
    rrca
    ld a, a
    inc h
    ld e, b
    rrca
    ccf
    ld a, h
    ld a, h
    rrca
    ccf
    or $fa
    rlca
    rra
    ldh [$fe], a
    rlca
    rra
    jp c, $07e7

    dec bc
    or [hl]
    call $0d02
    ld l, d
    sbc l
    ld bc, $db86
    cp a
    ret nz

    rst $00
    ld h, a
    ld h, a
    and h
    rst $00
    inc bc
    inc bc
    ld h, d
    add a
    ld bc, $7201
    adc a
    nop
    nop
    ld sp, hl
    add a
    nop
    nop
    ld a, l
    inc bc
    nop
    nop
    dec a
    inc bc
    nop
    nop
    jr c, jr_0ef_52db

    nop
    nop
    rst $18
    ldh [rP1], a
    nop
    rst $28
    ldh a, [rP1]
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0ef_52dc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_52db:
    nop

jr_0ef_52dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $f4
    cp $00
    nop
    ld hl, sp-$09
    nop
    nop
    rst $28
    rst $30
    nop
    nop
    ld a, a
    adc a
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
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

jr_0ef_5350:
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
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

jr_0ef_53ab:
    nop
    nop
    nop
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
    cp $ff
    nop
    ld bc, $fffe
    inc bc
    inc b
    ld hl, sp-$01
    rlca
    ld [$fff0], sp
    rlca
    jr jr_0ef_53ab

    ld a, a
    rla
    jr z, jr_0ef_5350

    ld a, a
    ld a, e
    inc b
    rlca
    rst $38
    ld a, b
    add [hl]
    rrca
    ld a, a
    ld a, b
    add h
    rrca
    ccf
    ld hl, sp-$40
    rrca
    ccf
    ldh [$f0], a
    rlca
    rra
    ldh a, [$f0]
    rlca
    rra
    ret c

    add sp, $07
    dec bc
    add b
    ld hl, sp+$02
    dec c
    ld c, b
    cp h
    ld bc, $9806
    ld [hl], b

jr_0ef_53f6:
    nop
    rlca
    jr z, jr_0ef_53f6

    inc b
    rlca
    ld a, [hl]
    cp $02
    rrca
    sbc a
    sbc [hl]
    ld [bc], a
    cp a
    rrca
    ld c, $c1
    ccf
    dec b
    ld b, $f1
    rrca
    nop
    ld bc, $03fd
    nop
    nop
    ld a, [hl]
    add c
    nop
    nop
    rst $28
    ldh a, [rP1]
    nop
    ei
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ef_545c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_545c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $f4
    cp $00
    nop
    ld hl, sp-$09
    nop
    nop
    rst $28
    rst $30
    nop
    nop
    ld a, a
    adc a
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
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
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
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
    ld bc, $6001
    ld h, b
    ld bc, $f001
    ldh a, [rIF]
    rrca
    nop
    ld hl, sp+$1e
    rra
    inc e
    db $fc
    rra
    rra
    rra
    rst $38
    scf
    ccf
    ccf
    rst $38
    ld [hl], $3f
    ld a, [hl]
    rst $38
    ld a, $3f
    cp $ff
    nop
    ld bc, $fffc
    nop
    ld bc, $7ff9
    nop
    ld bc, $3ff1
    nop
    ld bc, $3fc7
    ld bc, $e001
    ccf
    nop
    nop
    ldh [rIE], a
    ld bc, $f001
    rst $38
    nop
    nop
    ldh [$e7], a
    nop
    nop
    ldh a, [rNR44]
    nop
    nop
    ld b, b
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
    add b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$fc]
    nop
    nop
    add sp, -$02
    nop
    nop
    add h
    cp $00
    nop
    nop
    cp $00
    nop
    ld a, $ff
    nop
    add b
    ld h, a
    rst $38
    nop
    ret nz

    rst $28
    db $db
    nop
    ret nz

    rst $38
    cp l
    ret nz

    ret nz

    cp $ff
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

jr_0ef_562f:
    ldh [rIE], a
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    sbc b
    ld hl, sp+$7f
    rst $38
    cp b
    ld hl, sp-$01
    cp a
    ld hl, sp-$08
    rst $38
    rst $18
    ld hl, sp-$08
    ld [c], a
    rst $38
    ld [hl], b
    ldh a, [rPCM34]
    ld a, h
    add b
    ld h, b
    ccf
    jr c, jr_0ef_562f

    nop
    rrca
    inc c
    ld b, b
    add b
    ld e, $1f
    nop
    add b
    ld e, $0e
    nop
    nop
    ld a, $06
    nop
    nop
    jr @+$06

    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e801
    cp $03
    inc bc
    ret nz

    rst $38
    rlca
    rlca
    rst $08
    rst $38
    ld b, $07
    rst $18
    rst $38
    rrca
    rrca
    rra
    ld a, a
    ld b, $06
    ccf
    ld a, a
    nop
    nop
    ld a, [hl]
    cp a
    nop
    nop
    db $fc
    rra
    ld bc, $e801
    rra
    inc bc
    inc bc
    db $e3
    rst $38
    ld bc, $e001
    rst $28
    inc bc
    nop
    ldh [$e7], a
    ld bc, $6000
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
    ld bc, $0001
    nop
    nop
    nop
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
    ld b, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    ld a, b
    cp $00
    nop
    db $f4
    cp $00
    nop
    jp nz, Jump_000_00ff

    nop
    add b
    rst $38
    nop
    nop
    ld a, $ff
    nop
    add b
    ld h, e
    rst $38
    nop
    ret nz

    rst $30
    reti


    add b
    ret nz

    rst $38
    cp l
    ret nz

    ret nz

    cp $ff
    ldh [$e0], a

jr_0ef_57b4:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ldh [rIE], a
    rst $38
    db $10
    ldh a, [$7f]
    rst $38
    jr nc, jr_0ef_57b4

    rst $38
    cp a
    ldh a, [$f0]
    rst $18
    rst $38
    ldh a, [$f0]
    and $fd
    ldh [$e0], a
    ld l, [hl]
    ld a, c
    add b
    ld b, b
    ld a, a
    ld [hl], b
    add b
    nop
    db $fc
    ld a, d
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    sbc b
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
    ld a, $3e
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ld e, [hl]
    cp a
    nop
    ld bc, $3fde
    nop
    ld bc, $3fd8
    inc bc
    inc bc
    or b
    ld a, a
    rlca
    rlca
    ldh [rIE], a
    rrca
    rrca
    pop bc
    rst $38
    rra
    rra
    ld b, a
    cp $06
    dec de
    xor a
    ld a, h
    dec c
    ld b, $4d
    rst $18
    ld a, [bc]
    dec c
    add d
    cp l
    dec d
    dec de
    inc bc
    rra
    dec hl
    scf
    inc bc
    dec e
    ld d, [hl]
    ld l, a
    inc bc
    adc h
    db $ed
    cp $81
    ld c, $f6
    rst $30
    ld b, b
    rst $00
    ld h, a
    ld h, a
    ldh [$e7], a
    inc bc
    inc bc
    ret nz

    rst $30
    ld bc, $f001
    rst $08
    nop
    nop
    ld hl, sp-$39
    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, $21
    nop
    nop
    rrca
    jr nc, jr_0ef_5891

jr_0ef_5891:
    nop
    rlca
    jr c, jr_0ef_5895

jr_0ef_5895:
    nop
    jp Jump_000_00fc


    nop
    ldh [rIE], a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ef_58dc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_58dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f8]
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
    cp $7e
    nop
    nop
    db $fc
    cp [hl]
    nop
    nop
    call c, Call_000_00fb
    nop
    rst $38
    ld d, a
    nop
    nop
    rst $28
    rra
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rst $18
    ccf
    add b
    add b
    cp a
    ld a, a
    nop
    nop
    ld a, $fe
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $ff
    nop
    ld bc, $fffe
    ld bc, $f802
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    inc bc
    inc b
    ld h, b
    rst $38
    dec bc
    inc c
    add c
    ld a, a
    inc e
    rra
    add a
    rst $38
    rra
    rra
    ld c, $ff
    ld a, $3f
    adc a
    ld a, l
    ld l, l
    ld a, [hl]
    ld b, e
    rst $38
    ld e, d
    ld l, l
    add a
    sbc a
    dec [hl]
    ld e, e
    rlca
    rra
    ld a, [hl+]
    ld [hl], $07
    rrca
    ld d, h
    ld l, h
    inc bc
    rrca
    xor b
    sbc $01
    rlca
    ld d, h
    ld a, [hl-]
    nop
    rlca
    ccf
    ccf
    inc b
    rrca
    rra
    rra
    jp nz, Jump_000_0fcf

    rrca
    ld [bc], a
    rst $38
    ld bc, $6101
    sbc a
    nop
    nop
    ld a, c
    add a
    nop
    nop
    dec a
    ld b, e
    nop
    nop
    jr c, jr_0ef_5a1b

    nop
    nop
    rst $18
    ldh [rP1], a
    nop
    rst $28

jr_0ef_5a1b:
    ldh a, [rP1]
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0ef_5a5c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_5a5c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $fc
    cp $00
    nop
    ld hl, sp-$01
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
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
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
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
    ld a, $3e
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    cp [hl]
    ld a, a
    nop
    nop
    db $fc
    ccf
    ld bc, $f801
    rra
    inc bc
    inc bc
    ret nc

    cp a
    rlca
    rlca
    ret nz

    rst $38
    rrca
    rrca
    add c
    rst $38
    rla
    rra
    rlca
    rst $38
    ld b, $1b
    ld c, $ff
    dec c
    ld b, $6f
    db $fd
    ld a, [bc]
    dec c
    add a
    cp e
    dec d
    dec de
    rlca
    rra
    ld a, [hl+]
    ld [hl], $07
    rra
    ld d, [hl]
    ld l, a
    rlca
    adc a
    dec l
    ld e, [hl]
    inc bc
    adc a
    dec d
    scf
    pop bc
    rst $00
    inc bc
    inc bc
    ldh [$e7], a
    ld bc, $d401
    rst $20
    nop
    nop
    ld a, [$00c3]
    nop
    ld a, d
    ld b, e
    nop
    nop
    ccf
    ld bc, $0000
    rra
    nop
    nop
    nop
    rlca
    jr c, jr_0ef_5b91

jr_0ef_5b91:
    nop
    ld b, c
    ld a, [hl]
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ef_5bdc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_5bdc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ld hl, sp+$00
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    ret nz

    ld hl, sp+$00
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    ld a, a
    add b
    add b
    rst $38
    ccf
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    ld a, $fe
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
    inc bc
    jr jr_0ef_5cce

jr_0ef_5cce:
    nop
    rlca
    ccf
    add hl, sp
    nop
    rrca
    ld a, a
    ld a, a
    add b
    sbc a
    rst $38
    ld a, a
    db $10
    rst $38
    cp $7f
    jr c, @+$01

    ld a, h
    ccf
    ld [hl], b
    rst $38
    ld a, b
    ccf
    ld hl, sp-$01
    ld sp, $cc3f
    rst $38
    inc bc
    rra
    cp $bf
    rlca
    rrca
    rst $38
    ld a, a
    nop
    rrca
    rst $38
    rst $38
    ld bc, $ff0f
    rst $38
    ld bc, $ff07
    rst $38
    nop
    inc bc
    cp $ff
    nop
    ld bc, $fd7f
    nop
    nop
    dec sp
    rst $38
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    ld b, $3f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_5d6e:
    nop
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
    ld a, h
    db $fc
    nop
    nop
    jr nz, jr_0ef_5d6e

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rSVBK], a
    ld [hl], b
    nop
    ldh [$f8], a
    ld hl, sp+$00
    ret nz

    ld hl, sp-$08
    nop
    add b
    ld hl, sp-$08
    ld bc, $f80f
    ld hl, sp+$00
    rra
    ld hl, sp-$08
    nop
    cp a
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld h, b
    ldh [$80], a
    rst $38
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ld [hl], b
    db $fc
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    inc e
    ld hl, sp+$00
    nop
    ld a, $fc
    nop
    nop
    ld a, [hl]
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    ld a, h
    nop
    nop
    ld a, b
    jr jr_0ef_5de7

jr_0ef_5de7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $1e
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
    ld a, a
    ccf
    inc bc
    inc bc
    ccf
    rst $38
    ld b, $07
    inc a
    rst $38
    inc c
    rrca
    jr nz, @+$01

    inc c
    rrca
    inc bc
    rst $38
    inc c
    rrca
    rrca
    rst $38
    inc c
    rrca
    rrca
    db $fc
    ld b, $07
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
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
    rrca
    rrca
    nop
    nop
    inc bc
    inc c
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
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
    ld [$0001], sp
    nop
    rra
    ld c, $00
    nop
    rra
    ld c, $00
    nop
    rra
    ld c, $00
    nop
    rra
    ld c, $00
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
    add b
    add b

jr_0ef_5efa:
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
    nop
    ldh [rP1], a
    nop
    jr nc, jr_0ef_5efa

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$f8], a
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ret nz

    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [rIE], a
    ld [hl], b
    ld [hl], b

jr_0ef_5f28:
    ldh [rIE], a
    ld a, b
    ld hl, sp-$20
    rst $38
    jr c, jr_0ef_5f28

jr_0ef_5f30:
    add $ff
    jr c, @-$06

    ld e, $ff
    jr c, jr_0ef_5f30

    ld hl, sp-$01
    jr nc, @-$0e

    ldh [rIE], a
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $7e
    nop
    nop
    db $fc
    inc a
    nop
    nop
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $ff
    nop
    ld bc, $fffe
    ld bc, $f802
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec b
    ld b, $60
    rst $38
    ld c, $0f
    add c
    ld a, a
    rra
    rra
    rlca
    ld a, a
    ccf
    ccf
    ld c, $7f
    ld a, a
    ld a, a
    rrca
    dec a
    adc [hl]
    cp $03
    ccf
    ld [hl], $4e
    rlca
    rra
    ld l, $36
    rlca
    rra
    inc [hl]
    inc l
    rlca
    rrca
    jr jr_0ef_5ff2

    inc bc
    rrca
    ld de, $0102
    add a
    inc bc
    nop

jr_0ef_5ff2:
    add b
    ld b, a
    rlca
    inc b
    call nz, $060f
    rlca
    ld h, d
    rst $28
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld bc, $f901
    rst $30
    nop
    nop
    db $fd
    db $e3
    nop
    nop
    ld a, l
    ld b, e
    nop
    nop
    jr c, jr_0ef_6057

    nop
    nop
    rst $18
    ldh [rP1], a
    nop
    rst $28
    ldh a, [rP1]
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0ef_6058

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_6057:
    nop

jr_0ef_6058:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $fc
    cp $00
    nop
    ld hl, sp-$01
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
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
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $ff
    nop
    ld bc, $fffe
    ld bc, $f802
    rst $38
    inc bc
    nop
    ldh a, [rIE]
    dec b
    ld b, $60
    rst $38
    ld c, $0f
    add c
    ld a, a
    rra
    rra
    rlca
    ld a, a
    ccf
    ccf
    ld c, $7f
    ld a, a
    ld a, a
    rrca
    dec a
    adc [hl]
    cp $03
    ccf
    ld [hl], $4e
    rlca
    rra
    ld l, $36
    rlca
    rra
    inc [hl]
    inc l
    rlca
    rrca
    jr jr_0ef_6172

    inc bc
    rrca
    ld de, $0102
    add a
    inc bc
    nop

jr_0ef_6172:
    add b
    ld b, a
    rlca
    inc b
    call nz, $060f
    rlca
    ld h, d
    rst $28
    inc bc
    inc bc
    ld a, [c]
    rst $38
    ld bc, $f901
    rst $30
    nop
    nop
    db $fd
    db $e3
    nop
    nop
    ld a, l
    ld b, e
    nop
    nop
    jr c, jr_0ef_61d7

    nop
    nop
    rst $18
    ldh [rP1], a
    nop
    rst $28
    ldh a, [rP1]
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr c, jr_0ef_61d8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_61d7:
    nop

jr_0ef_61d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
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
    ld h, b
    ldh a, [rP1]
    nop
    ldh [$f8], a
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $fc
    cp $00
    nop
    ld hl, sp-$01
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    inc e
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh [rIE], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rra
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
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
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
    rra
    rra
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fffe
    nop
    ld bc, $7ffc
    ld bc, $f902
    ld a, a
    ld bc, $f302
    ccf
    ld bc, $a702
    ld a, a
    ld bc, $8e02
    ld c, a
    inc bc
    inc b
    rrca
    adc [hl]
    inc bc
    inc b
    rlca
    add l
    ld [bc], a
    dec b
    inc bc
    rlca
    ld c, $0b
    ld b, $01
    rrca
    rrca
    rlca
    inc bc
    ld e, $2e
    rlca
    ld bc, $2e12
    inc bc
    nop
    ld [de], a
    inc c
    ld bc, $0000
    jr jr_0ef_6303

jr_0ef_6303:
    nop
    jr nc, jr_0ef_6306

jr_0ef_6306:
    nop
    nop
    ld h, b
    nop
    ld bc, $4001
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
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    rrca
    ldh [$e0], a
    jr nz, @+$01

    ret nz

    ret nz

    inc e
    rst $38
    nop
    ret nz

    ld h, [hl]
    rst $38
    nop
    add b
    db $e3
    rst $38
    nop
    add b
    pop bc
    rst $38
    add b
    ret nz

    ldh a, [rIE]
    ret nz

    ldh [$08], a
    rst $38
    ld h, b
    ldh a, [$64]
    rst $38
    jr nc, @-$06

    ld a, [c]
    rst $38
    db $10
    ld hl, sp-$07
    rst $38
    ld d, b
    ldh a, [$fd]
    rst $38
    add sp, -$08
    db $fd
    rst $38
    ret nz

    ld hl, sp-$01
    ld a, a
    adc b
    ld hl, sp-$01
    cp a
    inc e
    db $fc
    sbc $f7
    inc a
    db $fc
    db $ec
    ld e, a
    ld a, h
    db $fc
    ld [$fc7f], sp
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    ret nz

    rst $38
    ld hl, sp-$08
    ldh [$fe], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fffe
    nop
    ld bc, $7ffc
    ld bc, $f902
    ld a, a
    ld bc, $f302
    ccf
    ld bc, $a702
    ld a, a
    ld bc, $8e02
    ld c, a
    inc bc
    inc b
    rrca
    adc l
    inc bc
    inc b
    rlca
    add e
    ld [bc], a
    dec b
    rlca
    rlca
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    ld e, $2e
    rlca
    rlca
    ld [de], a
    ld l, $03
    inc bc
    ld [de], a
    inc c
    ld bc, $0001
    jr jr_0ef_6483

jr_0ef_6483:
    nop
    jr nc, jr_0ef_6486

jr_0ef_6486:
    nop
    nop
    ld h, b
    nop
    ld bc, $4001
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
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    rrca
    ldh [$e0], a
    jr nz, @+$01

    ret nz

    ret nz

    inc e
    rst $38
    nop
    ret nz

    ld h, [hl]
    rst $38
    nop
    add b
    db $e3
    rst $38
    nop
    add b
    pop bc
    rst $38
    add b
    ret nz

    ldh a, [rIE]
    ret nz

    ldh [$08], a
    rst $38
    ld h, b
    ldh a, [$e4]
    sbc a
    jr nc, @-$06

    ld a, [c]
    rst $28
    db $10
    ld hl, sp-$07
    rst $30
    ld d, b
    ldh a, [$fd]
    ei
    add sp, -$08
    db $fd
    ei
    ret nz

    ld hl, sp-$05
    rst $38
    adc b
    ld hl, sp-$09
    rst $38
    inc e
    db $fc
    cp $ef
    inc a
    db $fc
    call c, Call_0ef_7cff
    db $fc
    ld [$fc7f], sp
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    ret nz

    rst $38
    ld hl, sp-$08
    ldh [$fe], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fffe
    nop
    ld bc, $7ffc
    ld bc, $f902
    ld a, a
    ld bc, $f302
    ccf
    ld bc, $a702
    ld a, a
    ld bc, $8f02
    ld c, [hl]
    inc bc
    inc b
    rrca
    adc l
    inc bc
    inc b
    inc bc
    add a
    ld [bc], a
    dec b
    rlca
    rlca
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    ld e, $2e
    inc bc
    inc bc
    ld [de], a
    ld l, $01
    ld bc, $0c12
    nop
    nop
    nop
    jr jr_0ef_6603

jr_0ef_6603:
    nop
    jr nc, jr_0ef_6606

jr_0ef_6606:
    nop
    nop
    ld h, b
    nop
    ld bc, $4001
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
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    rrca
    ldh [$e0], a
    jr nz, @+$01

    ret nz

    ret nz

    inc e
    rst $38
    nop
    ret nz

    ld h, [hl]
    rst $38
    nop
    add b
    db $e3
    rst $38
    nop
    add b
    pop bc
    rst $38
    add b
    ret nz

    ldh a, [rIE]
    ret nz

    ldh [$08], a
    rst $38
    ld h, b
    ldh a, [$e4]
    rst $38
    jr nc, @-$06

    ld a, [c]
    rst $38
    db $10
    ld hl, sp-$07
    rst $38
    ld d, b
    ldh a, [$f9]
    rst $38
    add sp, -$08
    ld sp, hl
    rst $38
    ret nz

    ld hl, sp-$05
    rst $38
    adc b
    ld hl, sp-$01
    rst $30
    inc e
    db $fc
    cp $ef
    inc a
    db $fc
    call c, Call_0ef_7cff
    db $fc
    ld [$fc7f], sp
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    add c
    rst $38
    db $fc
    db $fc
    ret nz

    rst $38
    ld hl, sp-$08
    ldh [$fe], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    ld bc, $ff00
    ld a, a
    inc bc
    ld [bc], a
    rst $38
    ld a, a
    rlca
    inc b
    cp $7f
    rrca
    ld c, $fc
    ld a, a
    rrca
    rrca
    ldh [$3f], a
    ld de, $801f
    rst $38
    ld b, $09
    add e
    rst $38
    dec b
    ld b, $8f
    cp a
    ld b, $05
    adc h
    cp a
    inc bc
    ld bc, $3d03
    ld [bc], a
    nop
    rlca
    dec de
    nop
    nop
    rlca
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
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
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
    nop
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr jr_0ef_6933

    nop
    nop
    inc e
    rra
    nop
    nop
    ld e, $1f
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

jr_0ef_6933:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    ld [hl], c
    rst $38
    add b
    add b
    ldh a, [$fe]
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ldh [$fe], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    rst $30
    rst $28
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    db $fc
    rst $38
    nop
    add b
    ld a, c
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    ld e, $ee
    nop
    nop
    call z, Call_000_00c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0ef_6a74

    nop
    nop
    cp h
    ld a, h
    ld bc, $fe07
    rst $38
    rlca
    add hl, bc
    db $fc
    rst $38
    ld c, $11
    ld hl, sp-$01
    ld d, $0f
    pop af
    rra
    dec e
    ld c, $c3
    ccf
    rrca
    inc e
    rst $30
    rrca
    rrca
    inc c
    add $3f
    ld b, $07
    ldh [$9f], a
    nop
    ld bc, $ffe1
    inc b
    rlca
    ld d, c
    rst $38
    inc b
    rlca
    ld l, c
    rst $38
    inc c
    rrca
    inc [hl]
    rst $38
    ld c, $0f
    ld e, $ff

jr_0ef_6a74:
    rrca
    rrca
    rrca
    di
    rlca
    rlca
    call nz, Call_000_00c3
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    ld c, $0f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $ec
    db $ec
    nop
    nop
    sbc $fe
    nop
    nop
    cp a
    rst $28
    nop
    nop
    ld a, a
    or a
    add b
    add b
    rst $18
    cp e
    add b
    add b
    rst $18
    dec l
    add b
    add b
    and a
    ld a, l
    nop
    add b

jr_0ef_6b24:
    ld e, h
    and e
    ret nz

    ret nz

    cp l
    rst $08
    ret nz

    ldh [$eb], a
    rst $38
    add b
    ldh [rTAC], a
    rst $38
    jr nc, jr_0ef_6b24

    ld b, $ff
    ld a, b
    ld hl, sp-$80
    rst $38
    ld a, b
    ld hl, sp+$44
    ei
    ld hl, sp-$08
    or l
    ld [$f8f8], a
    rst $38
    ldh [rBCPS], a
    ld hl, sp+$1f
    ldh a, [rSVBK]
    ldh [rIF], a
    ldh a, [rSVBK]
    ldh a, [$1f]
    ld sp, hl
    ld h, b
    add b
    rst $18
    rst $18
    ret nz

    and b
    adc a
    adc a
    add b
    ld b, b
    inc bc
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    stop
    nop
    rrca
    stop
    nop
    rst $30
    ld hl, sp+$01
    ld bc, $fdfa
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    inc bc
    inc bc
    pop af
    rst $38
    ld bc, $e301
    rst $38
    ld bc, $c701
    rst $38
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    inc e
    ld a, a
    nop
    nop
    rra
    ld a, e
    nop
    nop
    rrca
    ld [hl], a
    nop
    nop
    rrca
    ccf
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
    rlca
    rrca
    nop
    nop
    inc bc
    rlca
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
    inc bc
    ld bc, $0000
    rlca
    inc bc
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ldh [rP1], a
    nop
    nop
    ret nz

    inc e
    inc e
    ret nz

    ret nz

    ld a, $3e
    ret nz

    ldh [$3e], a
    ld a, $80
    ldh a, [$7e]
    cp $e0
    ld sp, hl
    inc a
    db $fc

jr_0ef_6e10:
    jr nc, @+$01

    inc e
    db $fc
    jr @+$01

    jr jr_0ef_6e10

    call z, Call_000_10ff
    ldh a, [$e6]
    rst $38
    nop
    ldh a, [$f1]
    rst $38
    add b
    ldh [$f3], a
    rst $38
    add b
    ret nz

    rst $30
    rst $38
    nop
    ret nz

    cp $ef
    nop
    ret nz

    db $fc
    rst $18
    ld h, b
    ldh [$38], a
    rst $38
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [$1f]
    rra
    ldh a, [$f0]
    rrca
    rra
    ldh a, [$f0]
    sub a
    xor a
    ldh a, [$f0]
    ei
    rst $00
    ldh [$e0], a
    ld a, l
    db $e3
    nop
    nop
    and b
    ld a, [hl]
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
    inc a
    nop
    nop
    ld a, h
    ld [hl], e
    nop
    nop
    cp $f9
    ld bc, $fe01
    db $fd
    inc bc
    inc bc
    ei
    rst $38
    inc bc
    inc bc
    pop hl
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $1f01
    rst $38
    nop
    ld bc, $ff39
    nop
    ld bc, $ff70
    nop
    ld bc, $effe
    nop
    ld bc, $dfff
    nop
    ld bc, $ff3f
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ccf
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
    ld e, $00
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
    ld b, $03
    nop
    nop
    rrca
    ld b, $00
    nop
    ld b, $0f
    nop
    nop
    dec b
    ld b, $00
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld bc, $0001
    nop
    add e
    add e
    add b
    add b
    ld b, a
    rst $00
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    pop de
    rst $38
    ret nz

    ret nz

    ld l, b
    rst $38
    add b
    add b
    inc [hl]
    rst $38
    add b
    add b
    sub [hl]
    rst $38
    nop
    add b
    sbc [hl]
    rst $38
    nop
    nop
    sbc h
    cp $00
    nop
    cp b
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ccf
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
    ccf
    rst $38
    nop
    nop
    sbc $3e
    nop
    nop
    db $ec
    inc e
    nop
    nop
    add b
    ldh a, [rP1]
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
    ld bc, $c001
    ret nz

    rlca
    rlca
    ldh [$e1], a
    rrca
    rrca
    pop af
    rst $38
    rrca
    rrca
    db $e3
    rst $38
    rrca
    rrca
    rst $00
    rst $38
    rlca
    rlca
    adc a
    rst $38
    rlca
    rlca
    sbc h
    rst $38
    inc bc
    inc bc
    jr c, @+$01

    ld bc, $3f01
    rst $30
    nop
    nop
    rra
    rst $28
    nop
    nop
    rra
    ld a, a
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
    rrca
    rrca
    nop
    nop
    rlca
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
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    dec bc
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    adc [hl]
    cp $00
    nop
    call nz, Call_000_00fc
    nop

jr_0ef_710c:
    jr nz, @-$06

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld l, b
    ld hl, sp+$00
    nop
    inc [hl]
    db $fc
    nop
    nop
    sbc d
    cp $00
    nop
    call $80ff
    add b
    rst $20
    rst $38
    ld b, b
    ret nz

    rst $20
    rst $38
    jr nz, jr_0ef_710c

    xor $ff
    ld [hl], b
    ldh a, [$fc]
    rst $18
    ld [hl], b
    ldh a, [$f8]
    cp a
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ldh a, [$f0]
    ld h, e
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ret nz

    ret nz

    inc bc
    di
    add b
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    rrca
    rrca
    pop hl
    rst $28
    rra
    rra
    db $e3
    rst $38
    rra
    rra
    rst $00
    rst $38
    rrca
    rrca
    adc a
    rst $38
    rlca
    rra
    sbc h
    rst $38
    dec bc
    rla
    jr c, @+$01

    dec c
    inc de
    ccf
    rst $30
    inc a
    inc sp
    rra
    rst $28
    inc d
    ld a, [hl+]
    rra
    ld a, a
    ld l, $3e
    rra
    ccf
    ld e, $1c
    rra
    rra
    inc b
    ld [$0f0f], sp
    nop
    nop
    rlca
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
    inc b
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    dec bc
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    rra
    rra
    ret nz

    ret nz

    ccf
    ld a, a
    ret nz

    ret nz

    rlca
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    add b
    cp $00
    nop
    add b
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop

jr_0ef_7290:
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$00
    nop
    jr nc, @-$02

    jr nc, jr_0ef_72cc

    sbc b
    cp $e8
    ld hl, sp-$33
    rst $38
    ret nz

    ld hl, sp-$19
    rst $38
    ld [hl], b
    ret z

    rst $20
    rst $38
    jr c, jr_0ef_7290

    xor $ff
    ld a, b
    db $f4
    db $fc
    rst $18
    ld a, b
    db $fc
    ld hl, sp-$41
    ld hl, sp-$04
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld h, e
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ret nz

    ret nz

    nop
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop

jr_0ef_72cc:
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
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f1]
    rlca
    rlca
    ldh a, [rIE]
    rlca
    rlca
    db $e3
    rst $38
    rrca
    rrca
    rst $00
    rst $38
    rlca
    rra
    adc [hl]
    rst $38
    dec bc
    rla
    sbc h
    rst $38
    dec c
    inc de
    cp b
    rst $38
    ld c, $11
    cp a
    rst $30
    inc e
    ld a, [de]
    ccf
    ld l, a
    inc l
    inc a
    rra
    ld a, a
    ld d, $2e
    rra
    ld a, a
    ld l, $3e
    rra
    ccf
    ld e, $1c
    rra
    rra
    inc b
    ld [$1f0f], sp
    nop
    nop
    rlca
    rrca
    nop
    nop
    nop
    rlca
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
    rlca
    rlca
    nop
    nop

jr_0ef_73e8:
    rra
    rra
    add b
    add b
    ccf
    ccf
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    inc b
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
    add b
    ldh a, [rP1]
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld h, b
    ld hl, sp+$00
    nop
    jr nc, @-$02

    nop
    nop
    sbc b
    cp $30
    ld [hl], b
    set 7, a
    ld a, b
    ld hl, sp-$31
    rst $38
    ld b, h
    db $fc
    adc $ff
    jr c, jr_0ef_73e8

    call c, Call_0ef_78ff
    add h
    ld hl, sp-$41
    cp b
    call nz, Call_0ef_7ff1
    ret c

    ldh [$63], a
    rst $38
    ldh [$f8], a
    rlca
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    rrca
    rrca
    pop hl
    rst $28
    rra
    rra
    db $e3
    rst $38
    rra
    rra
    rst $00
    rst $38
    rrca
    ccf
    adc a
    rst $38
    rla
    cpl
    sbc h
    rst $38
    dec de
    daa
    jr c, @+$01

    ld a, c
    ld h, a
    ccf
    rst $30
    jr z, jr_0ef_7536

    rra
    rst $28
    ld e, h
    ld a, h
    rra
    rst $38
    inc a
    jr c, jr_0ef_750a

    rst $38
    ld [$1f10], sp
    ld a, a
    nop
    nop
    rrca
    ccf
    nop
    nop
    rlca
    rlca
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

jr_0ef_750a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ef_7536:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    cp $00
    nop
    rra
    rst $38
    nop
    nop
    adc [hl]
    cp $00
    nop
    call nz, Call_000_00fc
    nop
    jr nz, @-$06

    nop
    nop

jr_0ef_7590:
    ret nc

    ldh a, [rP1]
    nop
    ld l, b
    ld hl, sp+$00
    nop
    inc [hl]
    db $fc
    jr nc, jr_0ef_75cc

    sbc d
    cp $e8
    ld hl, sp-$33
    rst $38
    ret nz

    ld hl, sp-$19
    rst $38
    ld [hl], b
    ret z

    rst $20
    rst $38
    jr c, jr_0ef_7590

    xor $ff
    ld a, b
    db $f4
    db $fc
    rst $18
    ld a, b
    db $fc
    ld hl, sp-$41
    ld hl, sp-$04
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld h, e
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    ldh [$e0], a
    ld bc, $c001
    ret nz

    nop
    nop
    nop
    nop

jr_0ef_75cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $fa01
    cp $03
    inc bc
    pop hl
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    inc bc
    inc bc
    adc [hl]
    rst $38
    ld bc, $1f01
    rst $38
    nop
    ld bc, $ff39
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    rlca
    cp $ef
    ld [$ff0f], sp
    rst $18
    jr jr_0ef_767d

    ccf
    rst $38
    jr z, jr_0ef_76a1

    ccf
    rst $38
    inc l
    ccf
    ccf
    rst $38
    ld [hl], $3f
    ccf
    ccf
    inc e
    inc e
    rra
    rra
    nop
    nop
    rrca
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop

jr_0ef_767d:
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

jr_0ef_76a1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add e
    add e
    add b
    add b
    ld b, a
    rst $00
    ret nz

    ret nz

    and e
    rst $28
    ret nz

    ret nz

    pop de
    rst $38
    ret nz

    ret nz

    ld l, b
    rst $38
    add b
    add b
    inc [hl]
    rst $38
    add b
    add b
    sub [hl]
    rst $38
    nop
    add b
    sbc [hl]
    rst $38
    nop
    nop
    sbc h
    cp $00
    nop
    cp b
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    ld [c], a
    cp $00
    nop
    rst $00
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    ld [hl], e
    nop
    nop
    cp $f9
    nop
    nop
    cp $fd
    ld bc, $fb01
    rst $38
    ld bc, $e101
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $8e01
    rst $38
    ld bc, $1f01
    rst $38
    nop
    ld bc, $ff39
    nop
    inc bc
    ld [hl], b
    rst $38
    nop
    inc bc
    cp $ef
    inc b
    rlca
    rst $38
    rst $18
    inc c
    rrca
    ccf
    rst $38
    inc d
    rra
    ccf
    rst $38
    ld d, $1f
    ccf
    rst $38
    dec de
    rra
    ccf
    ccf
    ld c, $0e
    rra
    rra
    nop
    nop
    rrca
    ld c, $00
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
    ld bc, $0000
    nop
    ld bc, $0000
    inc c
    rlca
    nop
    nop
    rra
    inc c
    nop
    nop
    dec c
    ld e, $00
    nop
    dec bc
    dec c
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
    add b
    add b
    ld [hl], b
    ld [hl], b
    add b
    add b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    ld bc, $f883
    ld hl, sp+$00
    rst $00
    ldh a, [$f0]
    add b
    rst $28
    ld [hl], b
    ldh a, [$c0]
    rst $38
    ld h, b
    ldh [$60], a
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    nop
    ret nz

    sub [hl]
    rst $38
    nop
    add b
    sbc [hl]
    rst $38
    nop
    nop
    sbc h
    cp $00
    nop
    cp b
    cp $00
    nop
    ldh a, [$7e]
    nop
    nop
    ldh [$fc], a
    nop
    nop
    add $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ccf
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
    cp a
    ld a, a
    nop
    nop
    sbc $3e
    nop
    nop
    inc c
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0ef_78ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0ef_7cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0ef_7ff1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
