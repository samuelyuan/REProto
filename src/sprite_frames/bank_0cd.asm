SECTION "ROM Bank $0cd", ROMX[$4000], BANK[$cd]

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
    rlca
    rrca
    nop
    nop
    rlca
    ld [$0000], sp
    ld bc, $0006
    nop
    jr @+$21

    nop
    nop
    sbc h
    rst $38
    nop
    rlca
    sbc e
    rst $38
    nop
    rrca
    db $fc
    sbc a
    ld [$ff07], sp
    rst $38
    nop
    rra
    ld a, a
    rst $38
    nop
    rra
    ld a, a
    rst $38
    jr jr_0cd_4045

    ld a, a
    rst $38
    ld e, $21
    ld a, $ff
    scf

jr_0cd_4045:
    ld [$ff40], sp
    jr c, @+$09

    ld a, a
    ld a, a
    inc a
    ld [bc], a
    ld a, a
    ld a, a
    ld e, $20
    ld a, a
    ld a, a
    rrca
    rla
    ld d, a
    ld a, h
    rrca
    rrca
    cp $d5
    ld c, $0d
    rst $38
    db $fc
    rrca
    ld [$9fe8], sp
    dec bc
    dec c
    db $e4
    sbc a
    rlca
    rlca
    jp Jump_000_003f


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
    nop
    db $fc
    nop
    nop
    add h
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
    ld a, b
    db $fc
    nop
    ld bc, $fc00
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

jr_0cd_40b4:
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08

jr_0cd_40c0:
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

jr_0cd_40cc:
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a

jr_0cd_40d2:
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ret nz

    jr nz, jr_0cd_40db

jr_0cd_40db:
    nop
    nop
    ret nz

    nop
    nop
    jr nc, jr_0cd_40d2

    nop
    nop
    ld [hl], d
    cp $00
    nop
    or d
    rst $38
    nop
    ret nz

    ld a, [hl]
    di
    nop
    ldh [$fe], a
    rst $38
    jr nz, jr_0cd_40b4

    db $fc
    rst $38
    nop
    ldh a, [$fc]
    rst $38
    nop
    ldh a, [$fc]
    rst $38
    jr nc, jr_0cd_40c0

    ld hl, sp-$01
    ldh a, [$08]
    dec b

jr_0cd_4105:
    cp $d8
    jr nz, jr_0cd_4105

    db $fd
    jr c, jr_0cd_40cc

    db $fc
    db $fc
    ld a, b
    add b
    db $fc
    db $fc
    ldh a, [$08]
    push de
    ld a, l
    ldh [$d0], a
    rst $38
    ld d, a
    ldh [$e0], a
    cp $7f
    ldh [$60], a
    cpl
    ld a, [c]
    ldh [rNR41], a
    ld c, a
    di
    and b
    ld h, b
    add a
    ld sp, hl
    ret nz

    ret nz

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
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
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
    nop
    ld a, $00
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
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
    ld e, $3f
    nop
    nop
    dec c
    rst $38
    nop
    ld bc, $ff0e
    ld [bc], a
    ld bc, $ff0f
    nop
    inc bc
    rrca
    rst $38
    nop
    inc bc
    rrca
    rst $38
    nop
    ld bc, $44bb
    nop
    ld bc, $7887
    nop
    nop
    ld a, a
    add b
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
    dec d
    rra
    nop
    nop
    rra
    dec d
    nop
    nop
    rra
    rra
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld bc, $001f
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
    nop
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
    ld a, [hl]
    nop
    nop
    inc a
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ccf
    rst $18
    nop
    ldh [$df], a
    rst $28
    nop
    ld hl, sp+$2e
    rst $38
    ld h, b
    sbc h
    ei
    db $fc
    inc h
    ret c

    ei
    db $fc
    ret nz

    inc a
    db $fd
    or $e0
    inc e
    cp [hl]
    ld a, e
    ldh [rNR23], a
    db $fd
    dec hl
    nop
    ldh a, [$bf]
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
    nop
    nop
    push af
    rra
    nop
    nop
    cp a
    ld d, l
    nop
    nop
    rst $38
    rra
    nop
    nop
    ld [$00ff], sp
    nop
    db $10
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    cp a
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
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $3f
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
    ccf
    nop
    add b
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

jr_0cd_4307:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    ccf
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    jr nz, jr_0cd_4307

    rlca
    nop
    ccf
    cp a
    rlca
    nop
    ccf
    cp a
    nop
    rlca
    ccf
    cp a
    inc bc
    inc bc
    xor e
    cp $03
    inc bc
    rst $38
    xor d
    inc bc
    inc bc
    cp a
    cp $01
    nop
    add h
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
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ld e, $3f
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_43da:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_43da

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    ld [hl], b
    add b
    ld a, h
    rst $38
    ldh a, [rP1]
    ld [bc], a
    cp $f0
    nop
    cp $fe
    ld h, b
    sub b
    cp $fe
    ldh [rP1], a
    cp $fe
    ldh [rP1], a
    ld [$e03e], a
    nop
    ld a, [hl]
    xor d
    nop
    ldh [$fe], a
    ccf
    ldh [$e0], a
    ld de, $e0fe
    ldh [rNR42], a
    cp $60
    ldh [$c0], a
    rst $38
    add b
    ld b, b
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    ld a, $3e
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, $00
    nop
    ld e, $1e
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

jr_0cd_4487:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    ccf
    rst $38
    nop
    rlca
    rra
    rst $38
    rlca
    nop
    jr nz, jr_0cd_4487

    rlca
    nop
    ccf
    cp a
    rlca
    nop
    ccf
    cp a
    rlca
    nop
    ccf
    cp a
    nop
    rlca
    dec hl
    cp [hl]
    inc bc
    inc bc
    cp a
    xor d
    inc bc
    inc bc
    cp a
    cp $03
    inc bc
    call nz, $01bf
    ld bc, $bf82
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
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ld e, $3f
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
    ld e, $00
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

jr_0cd_4550:
    ldh a, [rNR10]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_455a:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_455a

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    add b
    ldh a, [$7c]
    rst $38
    ld [hl], b
    add b
    ld [bc], a
    cp $70
    add b
    cp $fe
    ld [hl], b
    add b
    cp $fe
    jr nc, jr_0cd_4550

    cp $fe
    ldh [rNR10], a
    ld [$e03e], a
    nop
    ld a, [hl]
    xor d
    ldh [rP1], a
    cp $3e
    ldh [rP1], a
    db $10
    rst $38
    ldh [$e0], a
    ld hl, $e0fe
    ldh [$c1], a
    cp $e0
    ldh [rP1], a
    ld a, a
    add b
    ld b, b
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
    ld a, $7f
    nop
    nop
    ld a, $3e
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

jr_0cd_4607:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    ccf
    rst $38
    ld b, $01
    rra
    rst $38
    ld b, $01
    jr nz, jr_0cd_4607

    inc b
    inc bc
    ccf
    cp a
    rlca
    nop
    ccf
    cp a
    inc bc
    inc b
    ccf
    cp a
    inc bc
    inc b
    dec hl
    cp [hl]
    inc bc
    inc bc
    cp a
    xor d
    inc bc
    inc bc
    cp a
    cp $03
    inc bc
    call nz, Call_000_03bf
    inc bc
    add d
    rst $38
    ld bc, $8100
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
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    ld hl, $003f
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
    ld e, $00
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

jr_0cd_46c4:
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_46da:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_46da

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    nop
    ldh a, [$7c]
    rst $38
    jr nc, jr_0cd_46c4

    ld [bc], a
    cp $30
    ret nz

    cp $fe
    db $10
    ldh [$fe], a
    cp $70
    add b
    cp $fe
    ld h, b
    sub b
    ld [$603e], a
    sub b
    ld a, [hl]
    xor d
    ldh [$e0], a
    cp $3f
    ldh [$e0], a
    ld de, $e0fe
    ldh [rNR41], a
    rst $38
    ldh [$e0], a
    ret nz

    cp $c0
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld [hl+], a
    ld a, $00
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

jr_0cd_4787:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    cp a
    rst $38
    rlca
    nop
    rra
    rst $38
    rlca
    nop
    jr nz, jr_0cd_4787

    inc b
    inc bc
    ccf
    cp a
    inc b
    inc bc
    ccf
    cp a
    inc bc
    inc b
    ccf
    cp a
    inc bc
    nop
    dec hl
    cp [hl]
    inc bc
    nop
    ccf
    xor d
    nop
    inc bc
    ccf
    cp [hl]
    inc bc
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    jp nz, Jump_000_03bf

    inc bc
    pop bc
    cp a
    nop
    ld bc, $3f80
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
    ld hl, $003f
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, $00
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_485a:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_485a

    nop
    nop

jr_0cd_4864:
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    ld a, h
    rst $38
    nop
    ldh a, [rSC]
    cp $00
    ldh a, [$fe]
    cp $10
    ldh [$fe], a
    cp $30
    ret nz

    cp $fe
    jr nz, jr_0cd_4864

    ld [$003e], a
    ldh [$7e], a
    xor d
    ldh [$e0], a
    cp $3f
    ldh [$e0], a
    ld de, $e0fe
    ldh [rNR41], a
    cp $c0
    ret nz

    ret nz

    cp $00
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
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, $3e
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
    ccf
    nop
    nop
    nop
    ld e, $00
    nop
    inc e
    inc e
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
    jr jr_0cd_4911

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

jr_0cd_4911:
    nop
    rlca
    inc b
    nop
    nop
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    nop
    ccf
    rst $38
    rlca
    nop
    sbc a
    ld a, a
    rlca
    nop
    and b
    ccf
    inc bc
    inc b
    ccf
    cp a
    inc bc
    nop
    cp a
    ccf
    inc bc
    nop
    cp a
    ccf
    inc bc
    nop
    xor e
    ld a, $00
    inc bc
    ccf
    xor d
    inc bc
    inc bc
    cp a
    cp $03
    inc bc
    call nz, Call_000_03bf
    inc bc
    ld b, d
    cp a
    nop
    ld bc, $3f81
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    ld a, $3e
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, $00
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_49da:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_49da

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    nop
    ldh a, [$7c]
    rst $38
    nop
    ldh a, [rSC]
    cp $00
    ldh a, [$fe]
    cp $70
    add b
    cp $fe
    ld [hl], b
    add b
    cp $fe
    nop
    ldh a, [$ea]
    ccf
    ldh [$e0], a
    ld a, a
    xor d
    ldh [$e0], a
    cp $3f
    ldh [$e0], a
    db $10
    cp $c0
    nop

jr_0cd_4a24:
    jr nz, jr_0cd_4a24

    nop
    nop
    ret nz

    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
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

jr_0cd_4a87:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    cp a
    rst $38
    rlca
    nop
    rra
    rst $38
    rlca
    nop
    jr nz, jr_0cd_4a87

    rlca
    nop
    ccf
    cp a
    ld b, $01
    ccf
    cp a
    inc bc
    inc b
    cp a
    ccf
    inc bc
    nop
    xor e
    ld a, $03
    nop
    cp a
    ld a, [hl+]
    inc bc
    nop
    cp a
    ld a, $03
    inc bc
    add h
    rst $38
    inc bc
    inc bc
    jp nz, Jump_000_03bf

    inc bc
    pop bc
    cp a
    nop
    ld bc, $7f80
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
    ld a, $7f
    nop
    nop
    ld a, $3e
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_4b5a:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_4b5a

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    nop
    ldh a, [$7c]
    rst $38
    nop
    ldh a, [rSC]
    cp $70
    add b
    cp $fe
    ld [hl], b
    add b
    cp $fe
    ld [hl], b
    add b
    cp $fe
    ld [hl], b
    add b
    ld [$003e], a
    ldh a, [$7e]
    xor d
    ldh [$e0], a
    cp $3f
    ldh [$e0], a
    ld de, $e0fe
    ldh [rNR41], a
    cp $c0
    ret nz

    ret nz

    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
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

jr_0cd_4c07:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    ccf
    rst $38
    ld b, $01
    rra
    rst $38
    ld b, $01
    jr nz, jr_0cd_4c07

    inc b
    inc bc
    ccf
    cp a
    rlca
    nop
    ccf
    cp a
    inc bc
    inc b
    ccf
    cp a
    inc bc
    inc b
    dec hl
    cp [hl]
    inc bc
    inc bc
    cp a
    xor d
    inc bc
    inc bc
    cp a
    cp $03
    inc bc
    call nz, Call_000_03bf
    inc bc
    add d
    rst $38
    ld bc, $8100
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
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

jr_0cd_4cc4:
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_4cda:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_4cda

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    nop
    ldh a, [$7c]
    rst $38
    jr nc, jr_0cd_4cc4

    ld [bc], a
    cp $30
    ret nz

    cp $fe
    db $10
    ldh [$fe], a
    cp $70
    add b
    cp $fe
    ld h, b
    sub b
    ld [$603e], a
    sub b
    ld a, [hl]
    xor d
    ldh [$e0], a
    cp $3f
    ldh [$e0], a
    ld de, $e0fe
    ldh [rNR41], a
    rst $38
    ldh [$e0], a
    ret nz

    cp $c0
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
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

jr_0cd_4d87:
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, [hl]
    ld a, a
    ld bc, $cd01
    rst $38
    inc bc
    inc bc
    cp $cf
    inc bc
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    rlca
    rlca
    cp a
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    jr nz, jr_0cd_4d87

    inc b
    inc bc
    ccf
    cp a
    ld b, $01
    ccf
    cp a
    ld [bc], a
    dec b
    ccf
    cp a
    nop
    inc bc
    dec hl
    cp [hl]
    inc bc
    inc bc
    cp a
    xor d
    inc bc
    inc bc
    cp a
    cp $03
    inc bc
    call nz, $01bf
    ld bc, $bf82
    nop
    nop
    ld bc, $003f
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
    nop
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_4e5a:
    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    jr jr_0cd_4e5a

    nop
    nop
    add hl, sp
    rst $38
    nop
    nop
    reti


    rst $38
    ret nz

    ret nz

    ccf
    ld sp, hl
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$f0], a
    cp $ff
    ldh a, [$f0]
    cp $ff
    ldh a, [$f0]
    cp $ff
    add b
    ldh a, [$7c]
    rst $38
    ld [hl], b
    add b
    ld [bc], a
    cp $70
    add b
    cp $fe
    db $10
    ldh [$fe], a
    cp $10
    ldh [$fe], a
    cp $60
    sub b
    ld [$603e], a
    add b
    ld a, [hl]
    xor d
    ld h, b
    add b
    cp $3e
    nop
    ldh [rNR10], a
    rst $38
    ldh [$e0], a
    ld hl, $e0fe
    ldh [$c1], a
    cp $e0
    ldh [rP1], a
    ld a, [hl]
    add b
    ld b, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, $00
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
    ld a, [de]
    nop
    nop
    ld hl, sp-$01
    nop
    inc bc
    db $f4
    sbc a
    nop
    rlca
    ei
    sbc a
    nop
    rlca
    sbc h
    rst $38
    inc b
    inc bc
    rst $18
    xor a
    nop
    rlca
    rst $18
    cp h
    nop
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $ff7f
    nop
    nop
    ld a, $7f
    nop
    nop
    nop
    ld a, a
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
    dec hl
    ld a, $00
    nop
    ccf
    ld a, [hl+]
    nop
    nop
    ccf
    ld a, $00
    nop
    inc b
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
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    ld bc, $003f
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, $3f
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

jr_0cd_4fb0:
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

jr_0cd_4fbe:
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
    ret nz

    add b
    nop
    nop
    ret nz

    jr nz, jr_0cd_4fd7

jr_0cd_4fd7:
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0cd_4fbe

    nop
    nop
    ld d, b
    db $fc
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld a, $ff
    nop
    ret nz

    cp $01
    jr nz, jr_0cd_4fb0

    db $fd
    ld [bc], a
    nop
    ldh [$fd], a
    ld [bc], a
    nop
    ldh [$f9], a
    ld b, $00
    ldh [$fe], a
    pop hl
    nop
    ret nz

    cp $ff
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
    ld [$003e], a
    nop
    ld a, [hl]
    xor d
    nop
    nop
    cp $3e
    nop
    nop
    ld b, b
    cp $00
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
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
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
    cp $00
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
    nop
    ld a, $00
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
    inc bc
    rlca
    nop
    nop
    inc bc
    inc b
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc c
    rrca
    nop
    ld bc, $ff66
    nop
    inc bc
    ld h, l
    rst $38
    nop
    rlca
    ld a, [hl]
    rst $20
    inc b
    inc bc
    ld a, a
    rst $38
    nop
    rlca
    rst $38
    rst $38
    inc b
    inc bc
    rst $18
    cp a
    ld b, $01
    cp a
    rst $18
    ld bc, $9e03
    ld a, a
    inc bc
    dec b
    xor a
    db $76
    inc bc
    dec b
    cp [hl]
    ld a, a
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec hl
    ld a, $00
    nop
    ccf
    ld a, [hl+]
    nop
    nop
    ccf
    ld a, $00
    nop
    inc b
    ccf
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld bc, $007f
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld hl, sp-$02
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

jr_0cd_5150:
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
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a

jr_0cd_5166:
    nop
    nop
    add b
    ld h, b
    nop
    nop
    jr jr_0cd_5166

    nop
    nop
    inc sp
    rst $38
    nop
    nop
    db $d3
    rst $38
    nop
    ret nz

    ld a, $f3
    nop
    ldh [$fc], a
    rst $38
    jr nz, jr_0cd_5150

    ei
    db $fc
    nop
    ldh a, [rIE]
    ld hl, sp+$00
    ldh a, [$f7]
    add sp, $40
    and b
    ld hl, sp+$07
    add b
    ld b, b
    rst $38
    nop
    nop
    add b
    ld hl, sp+$06
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [$003e], a
    nop
    ld a, [hl]
    xor d
    nop
    nop
    cp $3e
    nop
    nop
    ld b, b
    cp $00
    nop
    add b
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
    inc a
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38
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
    ld a, a
    nop
    nop
    nop
    ld a, a
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
    ld a, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    dec a
    ld a, [hl]
    inc bc
    inc bc
    cp a
    ei
    rlca
    rlca
    cp a
    db $fc
    inc bc
    rlca
    or l
    cp $07
    rlca
    or [hl]
    rst $38
    rlca
    rlca
    add e
    rst $38
    ld b, $01
    add b
    rst $38
    rlca
    nop
    nop
    rst $38
    rlca
    nop
    ld b, b
    rst $38
    ld [bc], a
    dec b
    ccf
    ccf
    rlca
    nop
    nop
    cp a
    rlca
    nop
    and c
    ccf
    rlca
    nop
    sbc a
    ld a, $07
    nop
    rlca
    cp d
    inc bc
    rlca
    add a
    cp e
    rlca
    rlca
    adc h
    cp a
    ld [bc], a
    inc bc
    jp $03ff


    ld [bc], a
    and c
    rst $18
    inc bc
    inc bc
    ret nz

    cp $01
    ld bc, $fe40
    nop
    nop
    ret nz

    ld a, [hl]
    ld bc, $c001
    cp $03
    inc bc
    ret nz

    cp $03
    inc bc
    ret nz

    cp $07
    rlca
    ret nz

    cp $07
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
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    sbc $3f
    nop
    nop
    cp $ef
    ret nz

    ret nz

    rst $38
    rra
    ldh [$e0], a
    rst $10
    cp a
    ldh [$f0], a
    scf
    rst $38
    ret nc

    ldh [$e1], a
    rst $38
    ldh [$f0], a
    ld bc, $f0ff
    ldh a, [rSB]
    cp $e0
    nop
    add c
    cp $e0
    nop
    db $f4
    ei
    ld b, b
    and b
    ccf
    ldh [$c0], a
    nop
    rst $38
    ldh [rP1], a
    add b
    ld a, h
    ld a, [c]
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    call nz, Call_000_00fc
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
    jr c, @+$3a

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
    dec e
    ld e, $00
    nop
    dec e
    rla
    nop
    nop
    add hl, de
    ld d, $00
    nop
    ld [$000f], sp
    nop
    inc a
    ccf
    ld bc, $8f01
    rst $38
    nop
    rlca
    call nz, Call_000_00ff
    rrca
    ld a, [hl]
    rst $20
    inc b
    dec de
    ccf
    rst $38
    nop
    rra
    ccf
    rst $38
    nop
    rra
    ccf
    rst $38
    ld c, $11
    ccf
    rst $38
    rra
    nop
    rra
    rst $38
    ld e, $01
    ldh [rIE], a
    jr jr_0cd_53d1

    rst $38
    rst $38
    ld e, $01
    rst $38
    rst $38
    rrca

jr_0cd_53d1:
    db $10
    ld a, a
    rst $38
    rlca
    ld [$7f95], sp
    inc bc
    dec b
    rst $38
    push af
    ld bc, $df01
    ccf
    ld bc, $bc01
    rlc b
    nop
    db $fd
    ei
    nop
    nop
    ld a, b
    add a
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
    ld a, a
    nop
    nop
    nop
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
    ccf
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
    ld bc, $007f
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

jr_0cd_543d:
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
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ld b, b
    and b
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    db $fc
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld e, $f9
    nop
    add b
    cp $ff
    nop
    ret nz

    cp $ff
    nop
    ret nz

    cp $ff
    nop
    ldh [$fe], a
    rst $38
    ret nz

    jr nz, jr_0cd_543d

    rst $38
    ldh [rP1], a
    ld bc, $20ff
    ret nz

    cp $ff
    ld h, b
    add b
    cp $ff
    ret nz

    jr nz, @+$01

    cp $c0
    nop
    push af
    ld e, $80
    ld b, b
    cp a
    ld d, l
    ret nz

    ret nz

    rst $38
    ld a, [de]
    ld b, b
    ret nz

    ld b, $fb
    ret nz

    ld b, b
    rla
    ei
    add b
    add b
    db $e3
    db $fc
    nop
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    add b
    cp $00
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
    add b
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
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld hl, $00df
    nop
    nop
    rst $38
    nop
    nop
    ld bc, $00fe
    nop
    add e
    db $fc
    nop
    nop
    ld c, [hl]
    ld [hl], c
    nop
    nop
    dec sp
    inc a
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
    ld a, [hl+]
    ccf
    nop
    nop
    ccf
    ld a, [hl+]
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0cd_55a3

    nop
    nop
    jr nz, jr_0cd_55a7

    nop
    nop
    db $10
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
    rrca
    ccf
    nop
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $00ff
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

jr_0cd_55a3:
    ld a, a
    nop
    nop
    ld a, l

jr_0cd_55a7:
    ld a, l
    nop
    nop

jr_0cd_55aa:
    ld a, c
    ld a, c
    nop
    nop

jr_0cd_55ae:
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f901
    ld sp, hl
    ld bc, $fd01
    db $fd
    ld bc, $ff01
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_55ae

    nop
    nop
    jr c, jr_0cd_55aa

    nop
    nop
    inc e
    rst $28
    nop
    add b
    ld c, a
    rst $38
    nop
    ret nz

    sbc [hl]
    rst $38
    nop
    ldh [$fd], a
    cp $00
    ldh [$fb], a
    db $fc

jr_0cd_55f6:
    ret nz

    jr nz, jr_0cd_55f6

    ld a, [hl]
    ldh [rP1], a
    cp a
    ld c, a
    ret nz

    jr nz, jr_0cd_5678

    adc a
    nop
    ret nz

    xor $1e
    nop
    nop
    cp $fe
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
    ld hl, sp-$74
    nop
    nop
    call c, Call_000_00a8
    nop
    db $fc
    adc h
    nop
    nop
    sub b
    ld hl, sp+$00
    nop
    ld d, b
    ld hl, sp+$00
    nop
    ld h, b
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
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

jr_0cd_5678:
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    ld c, a
    rst $38
    rlca
    nop
    ld [hl], b
    rst $38
    ld b, $01
    ld a, a
    rst $38
    rlca
    nop
    rst $38
    ld a, a
    rlca
    nop
    cp a
    ccf
    rlca
    nop
    ld a, [hl+]
    cp a
    rlca
    rlca
    cp a
    xor d
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    add b
    rst $18
    inc bc
    rlca
    ret nz

    sbc a
    ld bc, $8002
    ld e, a
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
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rlca
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

jr_0cd_572e:
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_572e

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ld b, b
    sbc $ff
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    ret nz

    jr nz, @+$01

    rst $38
    ret nz

    jr nz, @+$01

    rst $38
    ldh [rP1], a
    ld a, [$e08f]
    ld h, b
    sbc $aa
    ldh a, [$f0]
    cp $8e
    ld hl, sp-$10
    nop
    cp $f8
    ldh a, [$88]
    cp $70
    nop
    ld [hl], b
    cp $00
    nop

jr_0cd_57ac:
    jr nz, jr_0cd_57ac

    nop
    nop

jr_0cd_57b0:
    jr nz, jr_0cd_57b0

    nop
    nop

jr_0cd_57b4:
    jr nz, jr_0cd_57b4

    nop
    nop

jr_0cd_57b8:
    jr nz, jr_0cd_57b8

    nop
    nop

jr_0cd_57bc:
    jr nz, jr_0cd_57bc

    nop
    nop

jr_0cd_57c0:
    jr nz, jr_0cd_57c0

    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc

jr_0cd_57ca:
    nop
    nop
    jr nz, jr_0cd_57ca

jr_0cd_57ce:
    nop
    nop
    jr nz, jr_0cd_57ca

    nop
    nop
    jr nz, jr_0cd_57ce

    nop
    nop
    jr nz, jr_0cd_57ca

    nop
    nop
    jr nz, jr_0cd_57ce

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
    ldh a, [$f0]
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    ld c, a
    rst $38
    inc bc
    inc b
    ld [hl], b
    rst $38
    inc bc
    inc b
    ld a, a
    rst $38
    inc bc
    inc b
    cp a
    ld a, a
    ld bc, $bf02
    ld a, a
    ld bc, $ea02
    ccf
    inc bc
    inc bc
    rst $38
    ld [$0303], a
    rst $38
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $f001
    rst $28
    nop
    nop
    ldh [$1f], a
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
    jr nz, jr_0cd_58c7

    nop
    nop
    ccf
    ld a, a
    nop
    nop
    rrca
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
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop

jr_0cd_58ae:
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
    ccf
    ccf
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop

jr_0cd_58c7:
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_58ae

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b
    ld b, b
    rst $38
    rst $38
    add b
    ld b, b

jr_0cd_5910:
    rst $38
    cp $c0
    jr nz, jr_0cd_5910

    adc a
    ldh [$e0], a
    rst $18
    xor e
    ldh [$e0], a
    rst $38
    adc a
    ldh [$e0], a
    ld bc, $f0ff
    ldh [$88], a
    cp $e0
    nop
    ld [hl], b
    cp $00
    nop

jr_0cd_592c:
    jr nz, jr_0cd_592c

    nop
    nop

jr_0cd_5930:
    jr nz, jr_0cd_5930

    nop
    nop
    jr nz, @+$01

    nop
    nop
    jr nz, @+$01

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
    ld h, b
    rst $38
    nop
    nop
    ret nz

    cp $00
    nop
    ret nz

    cp $00
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    ld hl, sp+$00
    nop
    ld h, b
    ldh [rP1], a
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    adc a
    ld a, a
    inc bc
    inc b
    ldh a, [$3f]
    ld bc, $ff02
    ccf
    ld bc, $df02
    ccf
    nop
    ld bc, $3fdf
    nop
    ld bc, $1fea
    nop
    ld bc, $6aff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld [hl], b
    rrca
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
    ccf
    nop
    nop
    jr nz, jr_0cd_5a47

    nop
    nop
    jr nc, jr_0cd_5a8b

    nop
    nop
    rra
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
    nop
    ld a, $00
    nop
    jr c, jr_0cd_5a64

    nop
    nop

jr_0cd_5a2e:
    jr c, jr_0cd_5a68

    nop
    nop
    jr c, jr_0cd_5a6c

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
    ldh a, [$f0]
    nop

jr_0cd_5a47:
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_5a2e

    nop
    nop
    ld [$00f8], sp
    nop

jr_0cd_5a64:
    adc b
    cp $00
    nop

jr_0cd_5a68:
    ld a, h
    rst $38
    add b
    add b

jr_0cd_5a6c:
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    nop

jr_0cd_5a85:
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b

jr_0cd_5a8b:
    nop
    rst $38
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    add b
    ei
    adc a
    add b
    add b
    rst $18
    xor e
    add b
    add b
    rst $38
    adc a
    add b
    ret nz

    ld bc, $c0ff
    add b
    adc c
    cp $80
    ld b, b
    ld [hl], b
    cp $00
    nop

jr_0cd_5aac:
    jr nz, jr_0cd_5aac

    nop
    nop

jr_0cd_5ab0:
    jr nz, jr_0cd_5ab0

    nop
    nop

jr_0cd_5ab4:
    jr nz, jr_0cd_5ab4

    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ccf
    cp a
    nop
    nop
    jr nz, jr_0cd_5a85

    nop
    nop
    nop
    cp a
    nop
    nop
    add b
    cp a
    nop
    add b
    nop
    cp a
    nop
    add b
    nop
    sbc a
    nop
    add b
    nop
    rra
    nop
    add b
    nop
    rra
    nop
    add b
    nop
    rra
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
    ldh a, [$f0]
    ld c, $0f
    nop
    ldh [rIF], a
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    ld bc, $cf02
    ccf
    ld bc, $d002
    ccf
    ld bc, $ff00
    rra
    nop
    ld bc, $1fef
    nop
    nop
    rst $38
    rrca
    nop
    nop
    ld a, d
    adc a
    nop
    nop
    cpl
    ld e, d
    nop
    nop
    ccf
    dec sp
    nop
    nop
    inc a
    dec sp
    nop
    nop
    inc a
    dec sp
    nop
    nop
    jr jr_0cd_5b73

    nop
    nop
    nop
    rra
    nop
    nop
    nop

jr_0cd_5b73:
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
    ccf
    nop
    nop
    jr nz, jr_0cd_5bc3

    nop
    nop
    jr nc, jr_0cd_5c07

    nop
    nop
    rra
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    nop

jr_0cd_5bc3:
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, @-$2e

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
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
    nop
    add b
    rst $38
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    nop
    rst $38
    nop

jr_0cd_5c07:
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
    ld a, [$008e]
    nop
    sbc $aa
    nop
    nop
    cp $8f
    nop
    nop
    ld bc, $00fe
    nop
    adc b
    cp $00
    nop
    ld [hl], b
    cp $00
    nop

jr_0cd_5c2c:
    jr nz, jr_0cd_5c2c

    nop
    nop

jr_0cd_5c30:
    jr nz, jr_0cd_5c30

    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    nop
    cp a
    nop
    nop
    rrca
    ccf
    add b
    add b
    rra
    rra
    add b
    add b
    db $10
    rra
    nop
    add b
    nop
    rra
    nop
    ret nz

    nop
    rrca
    nop
    ret nz

    nop
    rrca
    nop
    ret nz

    nop
    rrca
    nop
    ldh [rP1], a
    rrca
    nop
    ldh [rP1], a
    rlca
    nop
    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ret nz

    ld hl, sp+$03
    inc bc
    ldh a, [$f0]
    ld [bc], a
    inc bc
    nop
    ret nz

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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    adc a
    ld a, a
    inc bc
    inc b
    ldh a, [$3f]
    ld bc, $ff02
    ccf
    ld bc, $df02
    ccf
    nop
    ld bc, $3fdf
    nop
    ld bc, $1fea
    nop
    ld bc, $6aff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld hl, sp-$09
    nop
    nop
    ld [hl], b
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
    db $10
    ccf
    nop
    nop
    rra
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
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
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop

jr_0cd_5d2e:
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
    ld a, h
    ld a, h
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_5d2e

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b
    nop
    rst $38
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    add b
    ei
    adc a
    add b
    add b
    rst $18
    xor e
    add b
    add b
    rst $38
    adc a
    add b
    ret nz

    ld bc, $c0ff
    add b
    adc c
    cp $80
    ld b, b
    ld [hl], b
    cp $00
    nop

jr_0cd_5dac:
    jr nz, jr_0cd_5dac

    nop
    nop
    jr nz, @+$01

    nop
    nop
    jr nz, @+$01

    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld h, b
    rst $38
    nop
    nop
    cp a
    cp a
    nop
    nop
    rrca
    cp a
    nop
    add b
    nop
    cp a
    nop
    add b
    nop
    ccf
    nop
    add b
    nop
    ccf
    nop
    add b
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
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ldh a, [$f0]
    rra
    rra
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    ld c, a
    rst $38
    inc bc
    inc b
    ld [hl], b
    rst $38
    inc bc
    inc b
    ld a, a
    rst $38
    inc bc
    inc b
    cp a
    ld a, a
    ld bc, $bf02
    ld a, a
    ld bc, $ea02
    ccf
    inc bc
    inc bc
    rst $38
    ld [$0303], a
    rst $38
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $f001
    rst $28
    nop
    nop
    ldh [$1f], a
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
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $000f
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop

jr_0cd_5eae:
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_5eae

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    add b
    sbc $ff
    nop
    add b
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    add b
    ld b, b
    rst $38
    rst $38
    add b
    ld b, b

jr_0cd_5f10:
    rst $38
    rst $38
    ret nz

    jr nz, jr_0cd_5f10

    adc a
    ldh [$e0], a
    rst $18
    xor e
    ldh [$e0], a
    rst $38
    adc a
    ldh [$e0], a
    ld bc, $f0ff
    ldh [$88], a
    cp $e0
    nop
    ld [hl], b
    cp $00
    nop

jr_0cd_5f2c:
    jr nz, jr_0cd_5f2c

    nop
    nop

jr_0cd_5f30:
    jr nz, jr_0cd_5f30

    nop
    nop
    db $10
    cp $00
    nop
    db $10
    cp $00
    nop
    ldh a, [$fe]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ld e, $fe
    nop
    nop
    ld a, $fe
    nop
    nop

jr_0cd_5f4c:
    jr nz, jr_0cd_5f4c

    nop
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    add b
    cp $00
    nop
    nop
    cp $00
    nop
    ld [bc], a
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop
    cp $fe
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    inc bc
    inc b
    ld c, a
    rst $38
    rlca
    nop
    ld [hl], b
    rst $38
    ld b, $01
    ld a, a
    rst $38
    rlca
    nop
    rst $38
    ld a, a
    rlca
    nop
    cp a
    ccf
    rlca
    nop
    ld a, [hl+]
    cp a
    rlca
    rlca
    cp a
    xor d
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    add b
    rst $18
    inc bc
    rlca
    ret nz

    sbc a
    ld bc, $8002
    ld e, a
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
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0007
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

jr_0cd_602e:
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_602e

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    ld b, b
    sbc $ff
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    ret nz

    jr nz, @+$01

    rst $38
    ret nz

    jr nz, @+$01

    rst $38
    ldh [rP1], a
    ld a, [$e08f]
    ld h, b
    sbc $aa
    ldh a, [$f0]
    cp $8e
    ld hl, sp-$10
    nop
    cp $f8
    ldh a, [$88]
    cp $70
    nop
    ld [hl], b
    cp $00
    nop

jr_0cd_60ac:
    jr nz, jr_0cd_60ac

    nop
    nop

jr_0cd_60b0:
    jr nz, jr_0cd_60b0

jr_0cd_60b2:
    nop
    nop
    jr nz, jr_0cd_60b2

    nop
    nop
    db $10
    db $fc
    nop
    nop
    db $10
    db $fc
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    db $10
    ld hl, sp+$00
    nop
    db $10
    ld hl, sp+$00
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
    nop
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
    cp $fe
    nop
    nop
    ldh [$fc], a
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
    ld c, $0f
    nop
    nop
    ld c, $0b
    nop
    nop
    inc c
    dec bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    rst $00
    rst $38
    nop
    inc bc
    ld h, d
    rst $38
    nop
    rlca
    ccf
    di
    ld [bc], a
    dec b
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    rra
    rst $38
    nop
    rlca
    ld e, a
    rst $38
    nop
    rrca
    ld c, a
    rst $38
    nop
    rrca
    ld [hl], b
    rst $38
    nop
    rra
    ld a, a
    ld a, a
    ld b, $19
    ld a, a
    ld a, a
    ld b, $18
    ccf
    ccf
    ld b, $18
    ld a, [hl+]
    ccf
    ld e, $18
    ccf
    ld a, [hl+]
    ld e, $1e
    ccf
    ccf
    ld e, $1f
    nop
    rra
    rrca
    ld e, $00
    rra
    ld b, $08
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    rlca
    rrca
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    ld bc, $001f
    nop
    ld bc, $001f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    nop
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop

jr_0cd_61ad:
    nop

jr_0cd_61ae:
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_0cd_61ae

    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    cp $00
    nop
    ld a, h
    rst $38
    add b
    add b
    rrca
    db $fc
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    nop
    sbc $ff
    ret nz

    jr nz, jr_0cd_6205

jr_0cd_6205:
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    ldh [rNR10], a
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld [hl], b
    add b
    ld a, [$208e]
    ld d, b
    sbc $aa
    inc a

jr_0cd_621b:
    jr c, jr_0cd_621b

    adc [hl]
    inc a
    jr c, jr_0cd_6221

jr_0cd_6221:
    cp $3c
    jr c, jr_0cd_61ad

    cp $38
    jr nz, jr_0cd_6299

    db $fc

jr_0cd_622a:
    nop
    nop
    jr nz, jr_0cd_622a

    nop
    nop
    jr nz, jr_0cd_622a

    nop
    nop
    db $10
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    add b
    db $fc
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld b, b
    ld a, b
    nop
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
    ld c, $0e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    ld l, l
    ld [hl], e
    nop
    nop
    ld h, a
    ld a, h
    nop

jr_0cd_6299:
    nop
    ld l, l
    ld [hl], d
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    inc bc
    add hl, sp
    rst $38
    nop
    rlca
    rst $38
    rra
    ld bc, $9f0e
    ld h, c
    add hl, bc
    ld b, $ff
    rlca
    ld bc, $ff0e
    inc bc
    nop
    rrca
    ld a, a
    sbc a
    nop
    rlca
    rra
    rst $38
    nop
    ld bc, $ff1e
    ld bc, $e001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $5701
    db $fc
    ld bc, $fe01
    ld d, l
    ld bc, $ff01
    db $fc
    nop
    ld bc, $ff04
    nop
    ld bc, $ff03
    nop
    ld bc, $ff02
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $f900
    nop
    inc bc
    ld bc, $03f9
    inc bc
    ld bc, $03f9
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f1]
    nop
    inc bc
    ldh a, [$f1]
    nop
    rlca
    nop
    pop af
    nop
    rlca
    nop
    pop af
    nop
    rlca
    nop
    pop af
    nop
    rlca
    nop
    pop af
    nop
    inc bc
    nop
    ldh [$03], a
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
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
    ldh [$e0], a
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    adc e
    ld [hl], l
    nop
    nop
    ei
    dec b
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld e, e
    db $fc
    nop
    add b
    push af
    sbc $80
    nop
    db $fd
    cp $80
    nop
    rst $38
    db $fc
    nop
    add b
    ld hl, sp-$01

jr_0cd_637e:
    nop
    nop
    jr c, jr_0cd_637e

    nop
    nop
    ret nz

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
    ret nc

    ld a, b
    nop
    nop
    ld hl, sp+$50
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    add b
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
    nop
    ld hl, sp+$00
    nop
    add b
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
    ld a, h
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
    dec sp
    inc a
    nop
    nop
    dec sp
    cpl
    nop
    nop
    inc sp
    inc l
    nop
    nop
    db $10
    rra
    nop
    nop
    ld a, b
    ld a, a
    nop
    rlca
    ld e, $ff
    nop
    rrca
    add hl, bc
    rst $38
    nop
    rra
    ld a, h
    rst $08
    inc b
    dec de
    ld a, a
    rst $38
    nop
    rra
    ld a, a
    rst $38
    nop
    rra
    rst $38
    rst $38
    rla
    ld [$fc87], sp
    db $10
    rrca
    add h
    rst $38
    dec bc
    inc d
    cp $f9
    rlca
    ld [$dabd], sp
    nop
    rlca
    ld hl, sp-$01
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld d, a
    db $fc
    nop
    nop
    cp $55
    nop
    nop
    rst $38
    db $fc
    nop
    ld bc, $ff08
    nop
    ld bc, $ff04
    nop
    ld bc, $ff03
    nop
    ld bc, $ff03
    nop
    inc bc
    ld [bc], a
    cp $00
    inc bc
    nop
    db $fc
    nop
    inc bc
    ld a, h
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    rrca
    nop
    ld hl, sp+$00
    rra
    nop
    ld hl, sp+$00
    ccf
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh [rP1], a
    rra
    nop
    ret nz

    jr jr_0cd_64c5

    nop
    add b
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop

jr_0cd_64c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0cd_64ce:
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
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    add b
    ld b, b

jr_0cd_64ea:
    nop
    nop
    jr nz, jr_0cd_64ce

    nop
    nop
    jr nz, jr_0cd_64ea

    nop
    nop
    ldh a, [rIE]
    nop
    nop
    inc a
    di
    nop
    add b
    db $fc
    rst $38
    nop
    ret nz

    ld sp, hl
    cp $80
    ld b, b
    rst $38
    rst $38
    ld hl, sp-$08

jr_0cd_6508:
    rst $38
    nop
    ld hl, sp+$18
    nop
    rst $38
    jr jr_0cd_6508

    rst $30
    ld a, b
    nop
    add b
    ld [$005d], a
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ret nc

    ld [hl], b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld b, b
    db $fc
    nop
    nop
    add b
    cp $00
    nop
    nop
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    ret nz

    add a
    rst $38
    ret nz

    ret nz

    rra
    ccf
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    ccf
    ret nz

    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ccf
    nop
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld [bc], a
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
    ld b, $0f
    nop
    nop
    inc bc
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
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    db $10
    ld a, a
    ld c, $0e
    db $10
    rst $38
    rra
    rra
    jr nc, @+$01

    rra
    rra
    jr nc, @+$01

    ccf
    ccf
    jr nc, @+$01

    ld a, $3e
    jr c, jr_0cd_66b3

    ld a, h
    ld a, h
    ccf
    ccf
    ld a, b
    ld a, b
    rra
    rra
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $39
    ccf
    ld a, a
    cp a
    ld e, $ff
    ld e, $fe
    xor $ff
    ld a, $e2
    or [hl]
    rst $38
    dec sp
    rst $08
    ld e, [hl]
    cp a
    ld h, a
    cp a
    cp a
    rst $38
    rra
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld [$07ff], sp
    rst $38
    or b
    ld c, a
    ld b, $f9
    or b
    ld c, a
    add [hl]

jr_0cd_66b3:
    ld sp, hl
    rst $08
    ccf
    jp hl


    or $70
    adc a
    ld e, $e1
    ld sp, hl
    add a
    db $ec
    ld a, [c]
    ld a, a
    add [hl]
    ld [hl], b
    ldh a, [$3b]
    add $f0
    ldh a, [$bb]
    db $dd
    ld hl, sp-$08
    ld a, a
    rst $38
    ld hl, sp-$08
    ld h, [hl]
    db $fd
    ld [$3cf8], sp
    rst $20
    nop
    ldh a, [$3e]
    db $fd
    nop
    ldh a, [$0a]
    push de
    nop
    ldh [rP1], a
    rst $18
    nop
    ret nz

    nop
    adc a
    nop
    add b
    rrca
    adc a
    nop
    nop
    ld e, $9e
    nop
    nop
    ld e, $9e
    nop
    nop
    cp a
    cp a
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
    ld e, $1f
    nop
    nop
    ld e, $1b
    nop
    nop
    jr @+$21

    nop
    nop
    ld [$000f], sp
    nop
    inc e
    rra
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    inc b
    rst $38
    nop
    ld bc, $ff03
    nop
    ld bc, $df21
    nop
    ld bc, $ff01
    nop
    ld bc, $ff01
    nop
    nop
    ld a, c
    add a
    nop
    nop
    db $fd
    inc bc
    nop
    nop
    call c, Call_000_0023
    nop
    rst $20
    rra
    nop
    nop
    ld a, e
    add a
    nop
    nop
    ld a, l
    inc bc
    nop
    nop
    ccf
    ld b, c
    nop
    nop
    ccf
    inc hl
    nop
    nop
    dec sp
    ld [hl], $00
    nop
    inc bc
    ld a, $00
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
    ld de, $001f
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
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
    ldh [rP1], a
    nop
    ret nz

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
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08

jr_0cd_680e:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld e, b
    ldh a, [rP1]
    nop
    ld hl, sp-$10
    nop
    nop
    jr c, jr_0cd_680e

    nop
    nop
    cp b
    ld h, b
    nop
    nop
    ldh a, [$e8]
    nop
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
    nop
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
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
    dec c
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, d
    ld a, l
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
    ld a, h
    ld a, a
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
    dec d
    rra
    nop
    nop
    rra
    dec d
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
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
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
    nop
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
    ld [hl], b
    add b
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    add b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    inc e
    db $e4
    nop
    nop
    adc [hl]
    ld a, [c]
    nop
    nop
    di
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ccf
    db $fc
    nop
    add b
    rra
    db $fc
    add b
    ld b, b
    scf
    rst $08
    add b
    ld b, b
    ld a, e
    add a
    add b
    ret nz

    push hl
    db $db
    add b
    add b
    dec e
    db $e3
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
    ld d, [hl]
    db $fc
    nop
    nop
    cp $54
    nop
    nop
    cp $fc
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
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    jr nc, @-$0e

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
    nop
    ldh [rP1], a
    nop
    nop
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
    add b
    add b
    nop
    nop
    add b
    add b
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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, jr_0cd_6a6b

    nop
    nop
    jr nc, jr_0cd_6a6f

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld h, b
    ld a, a
    nop
    nop
    cpl
    jr nc, jr_0cd_6a45

jr_0cd_6a45:
    nop
    ld c, $31
    nop
    nop
    rrca
    stop
    nop
    rrca
    stop
    nop
    rla
    jr jr_0cd_6a55

jr_0cd_6a55:
    nop
    db $10
    rra
    nop
    nop
    rra
    rla
    nop
    nop
    rra
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

jr_0cd_6a6b:
    inc c
    nop
    nop
    nop

jr_0cd_6a6f:
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
    rlca
    rlca
    nop
    nop
    inc bc
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

jr_0cd_6a9a:
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
    ccf
    ccf
    nop
    nop
    rlca
    rlca
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_6a9a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, h
    cp $00
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
    ld d, [hl]
    db $fc
    nop
    nop
    cp $54
    nop
    nop
    cp $fc
    nop
    nop
    ret nz

    cp [hl]
    nop
    nop
    ret nz

    cp [hl]
    nop
    nop
    add h
    ld a, h
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00fc], sp
    nop
    ld [$00fc], sp
    nop
    ld [$00fc], sp
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0cd_6b42:
    nop
    nop
    ld [$00fc], sp
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$08
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
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0cd_6b42

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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, jr_0cd_6beb

    nop
    nop
    jr nc, jr_0cd_6bef

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld h, b
    ld a, a
    nop
    nop
    cpl
    jr nc, jr_0cd_6bc5

jr_0cd_6bc5:
    nop
    ld c, $31
    nop
    nop
    rla
    jr c, jr_0cd_6bcd

jr_0cd_6bcd:
    nop
    rla
    jr c, jr_0cd_6bd1

jr_0cd_6bd1:
    nop
    rra
    jr c, jr_0cd_6bd5

jr_0cd_6bd5:
    nop
    scf
    jr c, jr_0cd_6bd9

jr_0cd_6bd9:
    nop
    ccf
    inc [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    add hl, de
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop

jr_0cd_6beb:
    rlca
    nop
    nop
    nop

jr_0cd_6bef:
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rra
    nop
    nop
    rlca
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

jr_0cd_6c1a:
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_6c1a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, h
    cp $00
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
    cp $7e
    nop
    nop
    sub $7c
    nop
    nop
    ld a, [hl]
    call nc, RST_00
    cp $fc
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ld h, h
    sbc h
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00fc], sp
    nop
    ld [$00fc], sp
    nop
    ld [$00fc], sp
    nop
    db $10
    cp $00
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    jr nz, @+$01

    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, @+$01

    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    sbc $00
    nop
    sbc [hl]
    sbc [hl]
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
    ld hl, sp-$08
    ccf
    ccf
    ldh a, [$f0]
    rst $38
    rst $38
    ret nz

    ret nz

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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, jr_0cd_6d6b

    nop
    nop
    jr nc, jr_0cd_6d6f

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld [hl], a
    ld a, b
    nop
    nop
    scf
    ld a, b
    nop
    nop
    dec de
    db $fc
    nop
    nop
    ld a, e
    sbc h
    nop
    nop
    ld a, l
    sbc [hl]
    nop
    nop
    ld a, [hl]
    sbc a
    nop
    nop
    or $ff
    nop
    nop
    rst $38
    push af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [$1f], a
    nop
    nop
    nop
    rrca
    nop
    nop
    nop

jr_0cd_6d6b:
    rrca
    nop
    nop
    nop

jr_0cd_6d6f:
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
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0cd_6da7

    nop
    nop
    rrca
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

jr_0cd_6d9a:
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    nop
    ld h, b
    ld a, [hl]
    nop
    nop
    ld a, h

jr_0cd_6da7:
    ld a, h
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ccf
    ccf
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_6d9a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, h
    cp $00
    nop
    add b
    ld a, [hl]
    nop
    nop
    cp $7e
    nop
    nop

jr_0cd_6e0c:
    cp $3e
    nop
    nop
    cp $3e
    nop
    nop
    sub $3c
    nop
    nop
    ld a, [hl]
    sub h
    nop
    nop
    cp $f8
    nop
    nop
    ld a, h
    ld a, [$0000]
    jr c, jr_0cd_6e0c

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
    ld [$00fc], sp
    nop
    ld [$00fc], sp
    nop
    db $10
    cp $00
    nop
    db $10
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
    ret nz

    rst $38
    nop
    add b
    ld b, b
    rst $38
    nop
    add b
    nop
    sbc a
    nop
    add b
    nop
    sbc a
    nop
    ret nz

    nop
    rra
    nop
    ret nz

    nop
    rra
    nop
    ret nz

    nop
    rrca
    nop
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    rst $00
    rst $00
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    ld hl, sp-$08
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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld h, b
    ld a, a
    nop
    nop
    cpl
    ld sp, $0000
    ld c, $31
    nop
    nop
    rla
    jr c, jr_0cd_6ecd

jr_0cd_6ecd:
    nop
    rla
    jr c, jr_0cd_6ed1

jr_0cd_6ed1:
    nop
    rra
    jr c, jr_0cd_6ed5

jr_0cd_6ed5:
    nop
    scf
    jr c, jr_0cd_6ed9

jr_0cd_6ed9:
    nop
    ccf
    inc [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld de, $000f
    nop
    nop
    rrca
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
    inc c
    rrca
    nop
    nop
    rrca
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop

jr_0cd_6f1a:
    ld bc, $007f
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, h
    ld bc, $f801
    ld hl, sp+$07
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rP1]
    nop
    ld hl, sp-$08
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_6f1a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
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
    cp $7e
    nop
    nop
    sub $7c
    nop
    nop
    ld a, [hl]
    call nc, RST_00
    cp $fc
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ld h, b
    sbc h
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ld hl, sp+$00
    nop
    db $10
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    db $fc
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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, jr_0cd_706b

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld h, b
    ld a, a
    nop
    nop
    cpl
    ld sp, $0000
    ld c, $31
    nop
    nop
    rrca
    stop
    nop
    rrca
    stop
    nop
    rla
    jr jr_0cd_7055

jr_0cd_7055:
    nop
    db $10
    rra
    nop
    nop
    rra
    rla
    nop
    nop
    rra
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

jr_0cd_706b:
    inc c
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
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    rlca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    inc b
    rrca
    nop
    nop
    ld [$000f], sp
    nop

jr_0cd_709a:
    ld [$000f], sp
    nop
    nop
    rrca
    nop
    nop
    ld b, $07
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
    rlca
    rlca
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_709a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
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
    ld d, [hl]
    db $fc
    nop
    nop
    cp $54
    nop
    nop
    cp $fc
    nop
    nop
    ret nz

    cp [hl]
    nop
    nop
    ret nz

    cp [hl]
    nop
    nop
    add b
    ld a, h
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
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$0e

    nop
    nop
    ld b, b
    ldh [rP1], a
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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, jr_0cd_71eb

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld b, b
    ld a, a
    nop
    nop
    rra
    ld hl, $0000
    ld c, $31
    nop
    nop
    add hl, de
    daa
    nop
    nop
    dec de
    daa
    nop
    nop
    inc bc
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    ccf
    dec sp
    nop
    nop
    jr jr_0cd_71eb

    nop
    nop
    nop
    rrca
    nop
    nop
    nop

jr_0cd_71eb:
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld bc, $0007
    nop
    nop
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rra
    nop
    nop
    rlca
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

jr_0cd_721a:
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_721a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
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
    ld d, [hl]
    db $fc
    nop
    nop
    cp $54
    nop
    nop
    cp $fc
    nop
    nop
    ld bc, $00fe
    nop
    ld bc, $00fe
    nop
    ld [bc], a
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
    add b
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld b, b
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop

jr_0cd_72dc:
    jr nz, jr_0cd_72dc

    nop
    nop
    ld e, $9e
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
    ld hl, sp-$08
    ccf
    ccf
    ldh a, [$f0]
    rst $38
    rst $38
    ret nz

    ret nz

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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, @+$41

    nop
    nop
    jr nc, jr_0cd_736f

    nop
    nop
    ld h, c
    ld a, [hl]
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
    inc bc
    ld a, a
    nop
    nop
    ccf
    ld b, e
    nop
    nop
    jr @-$17

    nop
    nop
    ld a, a
    adc a
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    ld a, a
    sbc a
    nop
    nop
    push hl
    rst $38
    nop
    nop
    rst $38
    push hl
    nop
    nop
    rst $38
    rst $28
    nop
    nop
    ldh [$1f], a
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b

jr_0cd_736f:
    rrca
    nop
    nop
    inc b
    rrca
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    ld bc, $000f
    nop
    nop
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0cd_73a7

    nop
    nop
    rrca
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

jr_0cd_739a:
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    nop
    ld h, b
    ld a, [hl]
    nop
    nop
    ld a, h

jr_0cd_73a7:
    ld a, h
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ccf
    ccf
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_739a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
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
    ld d, [hl]
    db $fc
    nop
    nop
    rst $38
    ld d, l
    add b
    nop
    rst $38
    db $fd
    ret nz

    add b
    ld bc, $c0ff
    add b
    ld bc, $80fe
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
    cp $00
    nop
    add b
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    add b
    jr nz, @+$01

    nop
    add b
    nop
    sbc a
    nop
    add b
    nop
    sbc a
    nop
    ret nz

    nop
    rra
    nop
    ret nz

    nop
    rra
    nop
    ret nz

    nop
    rrca
    nop
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    rst $00
    rst $00
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    ld hl, sp-$08
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
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
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
    jr c, @+$41

    nop
    nop
    jr nc, @+$41

    nop
    nop
    ld h, c
    ld a, [hl]
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
    ld b, b
    ld a, a
    nop
    nop
    rra
    ld hl, $0000
    ld c, $31
    nop
    nop
    add hl, de
    daa
    nop
    nop
    dec de
    daa
    nop
    nop
    inc bc
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    ccf
    dec sp
    nop
    nop
    jr @+$09

    nop
    nop
    nop
    rrca
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
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld bc, $001f
    nop
    ld bc, $003f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop

jr_0cd_751a:
    ld bc, $007f
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, h
    ld bc, $f801
    ld hl, sp+$07
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rP1]
    nop
    ld hl, sp-$08
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
    cp b
    ret nz

    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    jr c, jr_0cd_751a

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$dc]
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
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
    ld d, [hl]
    db $fc
    nop
    nop
    cp $54
    nop
    nop
    cp $fc
    nop
    nop
    ld bc, $00fe
    nop
    ld bc, $00fe
    nop
    ld [bc], a
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
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
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
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$04
    inc bc
    inc bc
    db $e4
    db $fc
    inc bc
    inc bc
    sbc h
    ld [$0101], a
    sbc d
    db $e4
    inc bc
    inc bc
    ret nz

    cp $07
    rlca
    ldh [$fe], a
    inc c
    rrca
    ld a, a
    rst $38
    jr jr_0cd_7649

    rra
    and $11
    ld e, $39
    add $10
    rra
    inc hl
    call c, Call_000_1f10
    ccf
    ret nz

    jr jr_0cd_7659

    rrca
    ldh a, [$1f]
    rra
    db $fd
    rst $38
    nop
    rrca
    ld bc, $07ff
    rlca
    db $fc
    rst $38
    rlca

jr_0cd_7649:
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    ld d, l
    rst $38
    rlca

jr_0cd_7659:
    dec b
    rst $38
    ld d, l
    rlca
    rlca
    rst $38
    rst $38
    nop
    rlca
    ld [$00ff], sp
    inc bc
    inc c
    rst $38
    nop
    inc bc
    ld [$00ff], sp
    rlca
    ld [$00ff], sp
    rlca
    ld [$00ff], sp
    rlca
    db $10
    rst $38
    nop
    rrca
    db $10
    rst $38
    nop
    rrca
    jr nz, @+$01

    ld c, $0f
    ccf
    rst $38
    rrca
    rrca
    cp a
    rst $38
    rlca
    rrca
    jp $01df


    rra
    add b
    cp a
    nop
    rra
    nop
    cp a
    nop
    rra
    nop
    cp a
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    ld e, $1e
    rra
    rra
    ld e, $1e
    rra
    rra
    inc a
    inc a
    rra
    rra
    inc a
    inc a
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    ld a, a
    ld a, a
    rra
    rra
    ld a, a
    ld a, a
    sbc a
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    inc c
    dec bc
    ld a, [de]
    and $cf
    ret z

    ld a, [$df06]
    ccf
    ret nz

    nop
    rst $28
    rra
    add b
    nop
    rst $28
    rra
    nop
    add b
    rst $18
    ccf
    nop
    nop
    nop
    cp $00
    nop
    ret nz

    db $fc
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    call c, Call_000_03e0
    inc bc
    call c, Call_000_037c
    inc bc
    inc e
    ldh [rSB], a
    ld bc, $fc00

jr_0cd_77ac:
    inc bc
    inc bc
    add b
    db $fc
    ld c, $0f
    jr nz, jr_0cd_77ac

    nop
    rra
    add b
    db $fc
    nop
    ccf
    ld a, b
    xor $08
    scf
    ld a, a
    rst $38
    nop
    ccf
    ld a, a
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ld c, $31
    add a
    db $fc
    ld e, $21
    add h
    rst $38
    ld de, $fe2e
    ld sp, hl
    rrca
    db $10
    cp l
    db $db
    rlca
    ld [$fff9], sp
    rrca
    rrca
    rst $38
    rst $38
    dec b
    rrca
    ld e, a
    pop af
    rrca
    dec b
    ei
    ld d, l
    rrca
    rrca
    rst $38
    pop af
    ld [$140f], sp
    rst $38
    inc b
    rlca
    jr @+$01

    inc b
    rlca
    ld [$00ff], sp
    rlca
    ld [$00ff], sp
    rlca
    nop
    di
    nop
    rlca
    ld bc, $07f1
    rlca
    pop af
    pop af
    rlca
    rlca
    ldh a, [$f0]
    nop
    rrca
    ldh a, [$f0]
    nop
    rra
    nop
    pop hl
    nop
    rra
    nop
    pop bc
    nop
    ccf
    nop
    jp Jump_0cd_7f00


    nop
    add e
    nop
    ld a, a
    nop
    add c
    nop
    ccf
    nop
    nop
    ld [hl], b
    ld a, [hl]
    ld bc, $7801
    ld a, b
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    cp $fe
    inc bc
    inc bc
    rst $38
    rst $38
    add e
    add e
    rst $38
    rst $38
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    nop

jr_0cd_788a:
    ld hl, sp+$08
    nop
    rst $38
    ld [$f8f8], sp
    jr c, jr_0cd_7893

jr_0cd_7893:
    nop
    ld a, b
    cp b
    nop
    nop
    jr nc, jr_0cd_788a

    nop
    nop
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    add b
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
    nop
    ldh a, [rP1]
    nop
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    ld e, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld e, $fe
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld bc, $0007
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
    nop
    rra
    ld a, b
    ld a, c
    db $10
    rst $38
    ld a, h
    ld a, a
    jr nc, @+$01

    db $fc
    rst $38
    jr nc, @+$01

    db $fc
    rst $38
    jr nc, @+$01

    ldh a, [$f3]
    jr c, @+$01

    ldh [$e1], a
    ccf
    rst $38
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

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
    jr jr_0cd_7a1c

    nop
    nop
    inc a
    inc a
    nop
    nop
    cp $fe
    nop
    inc bc
    rst $38
    rst $38
    rlca
    rrca
    ld a, e
    rst $28
    inc e
    rra
    xor l
    di
    inc bc
    ld a, a
    adc $f2

jr_0cd_7a1c:
    rlca
    rst $38
    ld h, h
    db $fc
    ld b, $ff
    and b
    ld [hl], b
    add a
    rst $38
    ld h, b
    ldh [rBGP], a
    rst $38
    ldh [$e0], a
    ld [hl+], a
    rst $38
    ldh [rP1], a
    ld a, [de]
    rst $38
    ldh [rP1], a
    ld b, $ff
    ldh [rP1], a
    ld [bc], a
    rst $38
    ldh [rP1], a
    ld [c], a
    rst $38
    ld b, b
    and b
    inc e
    rst $38
    ldh [rP1], a
    ld [bc], a
    rst $38
    ldh [rP1], a
    ld [bc], a
    rst $38
    ldh a, [rNR10]
    dec h
    rst $38
    ld hl, sp-$08
    jr c, @+$01

    ld l, b
    ldh a, [rIF]
    rst $28
    add sp, -$10
    inc bc
    jp $f8f8


    nop
    rst $08
    ld l, b
    ret nz

    nop
    adc a
    nop
    ldh [$08], a
    adc a
    nop
    ret nz

    ld e, $9e
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0cd_7aaa

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

jr_0cd_7aaa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0cd_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
