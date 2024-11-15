SECTION "ROM Bank $0ec", ROMX[$4000], BANK[$ec]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    ld bc, $8001
    rst $38
    ld a, $0f
    rlca
    rst $38
    ld a, [hl]
    ccf
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ccf
    ld l, a
    rst $38
    ld a, $0f
    ld [hl], a
    rst $38
    nop
    nop
    ld l, a
    rst $38
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $3e
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ret nz

    rst $38
    ld hl, sp-$20
    db $ec
    rst $38
    db $fc
    ld hl, sp-$14
    rst $38
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    ld hl, sp-$24
    rst $38
    ld hl, sp-$20
    db $ec
    cp $00
    nop
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$77b7], sp
    ld c, $11
    rst $38
    rst $20
    dec e
    inc hl
    cp $c1
    ld c, $7f
    ld a, a
    rst $38
    ld a, $7f
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $18
    ld a, [hl]
    ld a, a
    ld a, a
    rst $18
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, $3f
    ld a, a
    rst $38
    ld c, $0f
    ld a, a
    rst $38
    nop
    nop
    ld l, a
    rst $38
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0ec_42b8

    nop
    nop
    ld a, h
    ld a, h
    cp b
    call nz, $fefe
    cp a
    ret nz

    ld b, [hl]
    cp $ef
    ldh a, [$a2]
    ld a, [hl]
    inc bc
    db $fc
    ld [hl], b
    db $fc
    add b
    rst $38
    ld hl, sp-$04
    call z, $fcff
    db $fc
    call z, $fcff
    db $fc
    db $ec
    rst $18
    db $fc
    db $fc
    db $ec
    rst $18
    ld hl, sp-$08
    call z, $f8ff
    ld hl, sp-$34
    rst $38
    ldh a, [$f0]
    sbc h
    rst $38
    ret nz

    ret nz

    db $ec
    cp $00
    nop

jr_0ec_42b8:
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    dec b
    rlca
    and b
    ret nz

    ld b, $0d
    ldh [$c0], a
    rrca
    stop
    add b
    nop
    rra
    nop
    ld a, a
    ld c, $3f
    dec b
    ld a, [$3f3e]
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    nop
    ld bc, $ff6f
    nop
    nop
    ld h, b
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    nop
    ld a, [hl]
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
    jr c, jr_0ec_43c4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_43c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld b, b
    cp a
    ldh [$e0], a
    db $ec
    rst $18
    ld hl, sp-$08
    xor h
    ld a, a
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$08
    call c, $f0ff
    add sp, -$14
    rst $38
    ld [hl], b
    adc b
    inc c
    rst $38
    ldh [$d0], a
    ld bc, $f001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rrca
    nop
    rst $38
    ld c, $3f
    dec b
    ld a, [$3f3e]
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    nop
    nop
    ld l, a
    rst $38
    nop
    nop
    ld h, b
    rst $38
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_453c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_453c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    cp a
    ldh [$e0], a
    db $ec
    rst $18
    ld hl, sp-$08
    xor h
    ld a, a
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$04
    call c, $e0ff
    ld hl, sp-$14
    rst $38
    nop
    ldh [$0c], a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    cp h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    ld bc, $fd1a
    nop
    ld bc, $fb67
    ld bc, $8501
    cp $02
    inc bc
    rrca
    rst $30
    ld c, $0f
    ccf
    rst $30
    ld e, $1f
    scf
    rst $38
    ld a, $3f
    scf
    rst $38
    ccf
    ccf
    dec sp
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    adc a
    rst $38
    rra
    ccf
    ldh a, [$f0]
    ld e, $01
    ret nz

    ret nz

    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rSC], a
    ld bc, $f0d0
    inc bc
    ld bc, $d8b0
    nop
    nop
    ld a, b
    add h
    rra
    rra
    nop
    db $fc
    and b
    ld e, a
    db $fc
    cp $fc
    rst $28
    db $fc
    cp $d4
    ccf
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, h
    db $fc
    or $ff
    jr c, @-$06

    or $ff
    jr nc, @-$0e

    rst $28
    rst $38
    ret nz

    ret nz

    di
    rst $38
    nop
    add b
    rrca
    rst $38
    add b
    add b
    ldh a, [rIE]
    nop
    add b
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
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret z

    ld hl, sp+$00
    nop
    cp h
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
    add h
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    ld bc, $ff00
    nop
    ld bc, $fdfa
    ld bc, $e701
    ei
    ld bc, $8501
    cp $02
    inc bc
    rrca
    rst $30
    nop
    inc bc
    ccf
    rst $30
    ld c, $0f
    scf
    rst $38
    ld e, $1f
    scf
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    inc c
    rst $38
    rra
    ccf
    adc h
    rst $38
    jr nz, jr_0ec_4819

    nop
    nop
    ld a, $01
    add b
    add b
    ld a, $01
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    inc bc
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

jr_0ec_4819:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8007
    add b
    dec bc
    rlca
    ld b, b
    ret nz

    ld c, $07
    ret nz

    ld b, b
    rlca
    rrca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    ld bc, $7001
    adc b
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    ld hl, sp+$04
    ld bc, $f8ff
    db $fc
    and b
    ld e, a
    db $fc
    cp $fc
    rst $28
    db $fc
    cp $d4
    ccf
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

    rst $28
    rst $38
    ret nz

    ret nz

    di
    rst $38
    nop
    add b
    inc bc
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    ld a, a
    nop
    add b
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $ff00
    rlca
    rlca
    ld [bc], a
    db $fd
    rra
    rra
    scf
    ei
    ccf
    ccf
    dec [hl]
    cp $3f
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    rra
    rra
    scf
    rst $38
    rrca
    rla
    dec sp
    rst $38
    ld c, $11
    scf
    rst $38
    rlca
    dec bc
    jr nc, @+$01

    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c0c0
    dec b
    inc bc
    and b
    ldh [rTAC], a
    inc bc
    ld h, b
    or b
    nop
    ld bc, $08f0
    nop
    cp $00
    ld hl, sp-$60
    ld e, a
    ld [hl], b
    db $fc
    or $ef
    ld a, h
    db $fc
    sub $3f
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, h
    db $fc
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    nop
    add b
    ld b, $ff
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
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rlca
    rlca
    ld [bc], a
    db $fd
    rra
    rra
    scf
    ei
    ccf
    ccf
    dec [hl]
    cp $3f
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    rra
    ccf
    scf
    rst $38
    rlca
    rra
    dec sp
    rst $38
    nop
    rlca
    scf
    rst $38
    nop
    nop
    jr nc, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    nop
    nop
    rst $38
    nop
    ldh a, [$a0]
    ld e, a
    ld [hl], b
    db $fc
    or $ef
    ld a, h
    db $fc
    sub $3f
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, h
    db $fc
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    nop
    nop
    ld b, $ff
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    nop
    dec bc
    rrca
    ld b, b
    add b
    dec c
    dec de
    ret nz

    add b
    ld e, $21
    nop
    nop
    nop
    ccf
    ld hl, sp-$08
    ccf
    ld a, a
    dec b
    ld a, [$7f3f]
    ccf
    rst $30
    ld a, [hl]
    ld a, a
    dec hl
    db $fc
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    inc e
    rra
    ld l, a
    rst $38
    inc c
    rrca
    ld l, a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    ld bc, $ffcf
    ld bc, $f001
    rst $38
    nop
    ld bc, $ff0f
    nop
    nop
    nop
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    rra
    nop
    nop
    dec a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld e, b
    cp a
    nop
    add b
    and $df
    nop
    add b
    and c
    ld a, a
    add b
    add b
    ldh a, [$ef]
    ld b, b
    ret nz

    db $fc
    rst $28
    ld [hl], b
    ldh a, [$ec]
    rst $38
    ld a, b
    ld hl, sp-$14
    rst $38
    ld a, h
    db $fc
    call c, $fcff
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    pop af
    rst $38
    db $fc
    db $fc
    rrca
    rrca
    ld hl, sp-$04
    inc bc
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ret nz

    ldh a, [rSB]
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
    ld bc, $8001
    ldh [rSC], a
    inc bc
    ret nc

    ldh [$03], a
    ld [bc], a
    ld [hl], b
    ldh [rTAC], a
    rlca
    ldh [$f0], a
    rlca
    rlca
    ldh [$e0], a
    ld c, $11
    add b
    add b
    rra
    jr nz, jr_0ec_4dbf

jr_0ec_4dbf:
    nop
    rra
    jr nz, jr_0ec_4dc3

jr_0ec_4dc3:
    nop
    rra
    ccf
    add b
    rst $38
    ccf
    ld a, a
    dec b
    ld a, [$7f3f]
    ccf
    rst $30
    ccf
    ccf
    dec hl
    db $fc
    ld a, $3f
    ld a, a
    rst $28
    ld e, $1f
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    ld bc, $ffcf
    nop
    ld bc, $ffc0
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    nop
    add d
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
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    rra
    nop
    nop
    dec a
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
    ld hl, $003f
    nop
    nop
    ccf
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld e, a
    cp a
    nop
    add b
    rst $20
    rst $18
    add b
    add b
    and c
    ld a, a
    add b
    add b
    ldh a, [$ef]
    ld b, b
    ret nz

    db $fc
    rst $28
    nop
    ret nz

    db $ec
    rst $38
    ld [hl], b
    ldh a, [$ec]
    rst $38
    ld a, b
    ld hl, sp-$24
    rst $38
    ld a, h
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    jr nc, @+$01

    db $fc
    db $fc
    ld sp, $f8ff
    db $fc
    nop
    nop
    inc b
    ld hl, sp+$01
    ld bc, $807c
    inc bc
    inc bc
    ld a, h
    add b
    inc bc
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ret nz

    ldh a, [rSB]
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
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    ld b, $07
    db $10
    ldh a, [rDIV]
    rlca
    rlca
    rst $30
    nop
    rlca
    rrca
    rst $38
    nop
    rlca
    rrca
    rst $38
    nop
    rlca
    ld a, a
    rst $28
    ld c, $0f
    ld a, a
    rst $28
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld h, a
    ld hl, sp+$7e
    ld a, a
    ld [hl], b
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld c, $0f
    ld h, b
    rst $38
    nop
    ld bc, $ff00
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ccf
    ld a, a
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
    nop
    nop
    nop
    nop
    nop

jr_0ec_4fe1:
    nop
    nop
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
    ld bc, $0000
    ld bc, $0002
    add b
    dec bc
    rlca
    add b
    add b
    rst $00
    rst $00
    ret nz

    ret nz

    db $e3
    db $e3
    ret nz

    jr nz, jr_0ec_4fe1

    pop hl
    ldh [rNR10], a
    db $fc
    db $ed
    ld [hl], b
    adc b
    db $fc
    rst $28
    add sp, -$0c
    db $ec
    rst $38
    db $fc
    ld hl, sp-$14
    rst $38
    db $fc
    db $fc
    db $ec
    rst $18
    db $fc
    db $fc
    call z, $fc3f
    db $fc
    inc e
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$08
    inc c
    rst $38
    ldh [$e0], a
    nop
    rst $38
    nop
    nop
    ld b, $fe
    nop
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
    ld b, $7e
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
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_509a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_509a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

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
    rrca
    ld [hl], b
    nop
    nop
    ld a, a
    add b
    nop
    ld bc, $00ff
    rlca
    rlca
    di
    db $fc
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc e
    db $fc
    rra
    rra
    ld [hl], $f9
    rrca
    rrca
    dec [hl]
    ld a, [$0707]
    ccf
    di
    nop
    ld bc, $f33d
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    ld a, d
    rst $38
    or b
    ld [hl], b
    cp [hl]
    ld a, e
    cp b
    ld a, h
    or $3b
    cp h
    ld a, d
    ld [bc], a
    rlca
    cp [hl]
    ld a, b
    ld [bc], a
    inc bc
    ld [hl], $f8
    ld [bc], a
    jp Jump_0ec_70ae


    ld bc, $c0f9
    cp $50
    xor a
    inc b
    ld a, [hl-]
    ret c

    cp a
    ld a, [hl-]
    call nz, Call_0ec_7fbe
    ld a, [hl-]
    call nz, $fffe
    ld a, [hl-]
    db $fc
    cp $ff
    inc a
    cp $fe
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $fc
    rst $38
    ld a, [hl]
    cp $f8
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    jr c, jr_0ec_5268

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
    ld h, a
    ld a, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    ld [hl], a
    adc b
    nop
    ld bc, $04fb
    rlca
    rlca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc d
    db $fd
    rra
    rra
    dec [hl]
    ei
    rrca
    rrca
    scf
    ei

jr_0ec_5268:
    rlca
    rlca
    ccf
    di
    nop
    ld bc, $f73b
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    ld [bc], a
    inc bc
    or b
    ld [hl], b
    ld [bc], a
    inc bc
    or b
    ld [hl], b
    cp $ff
    cp b
    ld a, b
    ld a, d
    rst $38
    cp b
    ld a, b
    cp [hl]
    ld a, e
    cp b
    ld a, b

jr_0ec_5304:
    or $3b
    jr nc, jr_0ec_5304

    ld [bc], a
    rlca
    xor h
    ld [hl], d
    ld bc, $de01
    ldh [rP1], a
    nop
    ld a, $00
    nop
    ret nz

    ld a, $00
    nop
    ld hl, sp+$1c
    ld [hl+], a
    or b
    ld a, a
    inc b
    ld a, [hl-]
    ld hl, sp-$01
    ld a, [hl-]
    call nz, $fffe
    ld a, [hl-]
    call nz, $fffe
    ld a, [hl-]
    db $fc
    cp $ff
    inc a
    cp $fe
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $fc
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    jr c, jr_0ec_53e8

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    ld l, a
    ld [hl], b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    db $76
    adc c
    nop
    ld bc, $04f8
    rlca
    rlca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc e
    db $fd
    rra
    rra
    sbc a
    ei
    rra
    rra
    scf
    rst $38
    rrca
    rrca
    ccf
    rst $30

jr_0ec_53e8:
    rlca
    rlca
    ccf
    rst $30
    nop
    ld bc, $ff37
    nop
    nop
    ld [hl], e
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ld h, b
    ld [bc], a
    inc bc
    and b
    ld h, b
    cp $ff
    and b
    ld h, b
    ld a, d
    rst $38
    or b
    ld [hl], b

jr_0ec_5478:
    cp [hl]
    ld a, e
    cp b
    ld a, b
    or $3b
    jr c, jr_0ec_5478

    ld [bc], a
    rlca
    cp b
    ld a, b
    ld bc, $f801
    db $fc
    nop
    nop
    inc e
    ld [hl+], a
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    ret nz

    inc e
    ld [hl+], a
    ldh a, [$f8]
    inc b
    ld a, [hl-]
    ld hl, sp-$01
    ld a, [hl-]
    inc b
    ld hl, sp-$01
    ld a, [hl-]
    call nz, $fffe
    ld a, [hl-]
    call nz, $fffe
    ld a, [hl-]
    db $fc
    cp $ff
    inc a
    cp $fe
    rst $38
    ld a, $fe
    inc c
    rst $38
    ld a, [hl]
    cp $1c
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    nop
    ld [hl], b
    add b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $30
    rst $30
    ret nz

    ret nz

    ld a, a
    rst $38
    ldh [$e0], a
    ld a, b
    adc a
    ret nz

    jr nz, jr_0ec_55d8

    adc a
    ldh a, [$f0]
    rst $38
    rrca
    ld hl, sp-$01
    adc a
    ld a, a
    db $fc
    rst $38
    ld a, a
    rst $38
    cp $fb
    rst $38
    rst $38
    cp $fb
    rst $30
    rst $38
    cp $fb
    di
    rst $38
    ld a, [c]
    rst $38
    ld [hl], e
    ld a, a
    db $76
    adc a
    dec sp
    ccf
    db $fc
    rst $38
    inc bc
    inc bc
    ld a, b
    rst $38
    nop
    nop
    rlca
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_55d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ec_5612

jr_0ec_5612:
    nop
    nop
    ld a, h
    inc a
    nop
    nop
    ld a, [hl]
    ld a, $00
    nop
    ld a, $39
    ld b, $06
    rrca
    ret z

    rrca
    adc a
    inc bc
    db $f4
    sbc e
    ld e, a
    rlca
    rst $38
    sub a
    rst $18
    scf
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    ld h, a
    rst $38
    add $fe
    ld h, a
    rst $38
    add $fe
    ld h, a
    rst $38
    add $fe
    rst $20
    rst $38
    call z, $cffc
    rst $38
    sbc h
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0ec_56c7

jr_0ec_56c7:
    nop
    jr c, jr_0ec_570a

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    rst $28
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    ld [hl], c
    sbc [hl]
    add b
    ld b, b
    ld [hl], a
    sbc a
    ldh [$e0], a
    rst $38
    rra
    ldh a, [rIE]
    sbc a
    ld a, a
    ld hl, sp-$01
    ld a, a
    rst $38
    db $fc
    rst $30
    rst $38
    rst $38
    db $fc
    rst $30
    rst $28
    rst $38
    db $fc
    rst $30
    rst $20
    rst $38
    db $e4
    rst $38
    ld h, [hl]
    ld a, a
    db $ec
    rra
    scf
    ccf
    ld hl, sp-$01
    ld b, $07
    pop af
    rst $38
    nop
    ld bc, $ff0f
    nop
    nop

jr_0ec_570a:
    ld bc, $000f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rra
    rrca
    nop
    nop
    ccf
    rra
    nop
    nop
    ld e, $1d
    jr @+$1a

    rrca
    adc b
    inc a
    cp h
    rlca
    add sp, $2c
    cp h
    rrca
    rst $38
    inc l
    cp h
    ld l, a
    rst $38
    inc a
    db $fc
    rst $08
    rst $38
    cp h
    db $fc

jr_0ec_57b4:
    rst $08
    rst $38
    sbc b
    ld hl, sp-$31
    rst $38
    sbc b
    ld hl, sp-$31
    rst $38
    sbc b
    ld hl, sp-$21
    rst $38
    jr nc, jr_0ec_57b4

    sbc [hl]
    rst $38
    ld h, b
    ldh [$80], a
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
    jr c, @+$3a

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
    ld h, a
    ld a, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    ld [hl], a
    adc b
    nop
    ld bc, $04fb
    rlca
    rlca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc d
    db $fd
    rra
    rra
    scf
    ei
    rrca
    rrca
    dec [hl]
    cp $07
    rlca
    ccf
    rst $30
    nop
    ld bc, $f73f
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rSB], a
    ld bc, $e0e0
    rst $38
    rst $38
    ld h, b
    and b
    ld a, e
    db $fd
    ld h, b
    and b
    cp l
    ld a, e
    ld h, b
    and b
    push af
    dec sp
    ld h, b
    and b
    ld bc, $3407
    db $ec
    ld bc, $3401
    db $ec
    ld bc, $2c01
    db $fc
    ld bc, $fcc1
    db $fc
    ld bc, $3cf9
    db $fc
    and b
    ld e, a
    inc a
    db $fc
    ldh a, [$ef]
    inc a
    db $fc
    sub $3f
    inc e
    ldh [$fe], a
    rst $30
    ld e, $e0
    cp $f7
    ld a, [hl-]
    db $fc
    or $ff
    inc a
    cp $f4
    rst $38
    ld a, [hl]
    cp $ec
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    cp $fe
    nop
    ccf
    ld a, h
    db $fc
    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    jr c, jr_0ec_59e8

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
    ld h, a
    ld a, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    ld [hl], a
    adc b
    nop
    ld bc, $04fb
    rlca
    rlca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc e
    rst $38
    rra
    rra
    scf
    rst $38
    rrca
    rrca
    scf
    rst $38

jr_0ec_59e8:
    rlca
    rlca
    ccf
    rst $30
    nop
    ld bc, $f73f
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ld bc, $6001
    and b
    rra
    rra
    ld h, b
    and b
    ei
    db $fd
    ld h, b
    and b
    ld a, l
    ei
    ld h, b
    and b
    or l
    ld a, e
    ld h, b
    and b
    pop hl
    daa
    ld [hl], h
    xor h
    ld bc, $7401
    xor h
    ld bc, $2c01
    db $fc
    ld bc, $3c01
    db $fc
    ld bc, $3c01
    db $fc
    ld bc, $fcc1
    db $fc
    ld bc, $3cf9
    db $fc
    ldh [rIE], a
    inc a
    db $fc
    ldh a, [rIE]
    inc a
    ret nz

    or $ff
    ld e, $e0
    cp $f7
    ld a, [hl-]
    db $fc
    cp $f7
    inc a
    cp $f6
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $ec
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    jr c, jr_0ec_5b68

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
    ld h, a
    ld a, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    ld [hl], a
    adc b
    nop
    ld bc, $04fb
    rlca
    rlca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rrca
    rrca
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc e
    rst $38
    rra
    rra
    scf
    rst $38
    rrca
    rrca
    scf
    rst $38

jr_0ec_5b68:
    rlca
    rlca
    ccf
    rst $30
    nop
    ld bc, $f73f
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ld bc, $6001
    and b
    rra
    rra
    ld h, b
    and b
    ei
    db $fd
    ld h, b
    and b
    ld a, l
    ei
    ld h, b
    and b
    or l
    ld a, e
    ld h, b
    and b
    pop hl
    daa
    ld [hl], h
    xor h
    ld bc, $7401
    xor h
    ld bc, $2c01
    db $fc
    ld bc, $3c01
    db $fc
    ld bc, $3c01
    db $fc
    ld bc, $fcc1
    db $fc
    ld bc, $3cf9
    db $fc
    ldh [rIE], a
    inc a
    db $fc
    ldh a, [rIE]
    inc a
    ret nz

    or $ff
    ld e, $e0
    cp $f7
    ld a, [hl-]
    db $fc
    cp $f7
    inc a
    cp $f6
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $ec
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    ccf
    rra
    rlca
    inc bc
    rst $38
    ccf
    rra
    scf
    rst $38
    ccf
    ccf
    scf
    rst $38
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    ccf
    rra
    scf
    rst $38
    rra
    rlca
    dec sp
    rst $38
    nop
    nop
    scf
    ld a, a
    nop
    nop
    jr nc, jr_0ec_5d5f

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
    ret nz

    db $fc
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
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_5d48

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_5d48:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_5d5f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    nop
    ldh [rIE], a
    ld a, h
    ldh a, [$f6]
    rst $38
    ld a, [hl]
    db $fc
    or $ff
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    db $fc
    xor $ff
    ld a, h
    ldh a, [$f6]
    rst $38
    nop
    nop
    ld b, $ff
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
    ld bc, $801f
    add b
    rrca
    rrca
    add b
    add b
    rrca
    rrca
    add b
    add b
    rra
    rra
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    rlca
    ret nz

    add b
    rrca
    dec bc
    ldh [$c0], a
    rra
    ld bc, $c0e0
    ccf
    nop
    add b
    add b
    ccf
    ld e, $00
    ret nz

    ccf
    ccf
    nop
    ld hl, sp+$3e
    ccf
    nop
    cp $3e
    ccf
    ld sp, $3eff
    ccf
    scf
    ei
    inc e
    rra
    ld l, a
    rst $30
    jr jr_0ec_5e89

    ld l, a
    rst $38
    jr jr_0ec_5e8d

    ld l, a
    rst $38
    jr jr_0ec_5e91

    rst $28
    rst $38
    jr c, jr_0ec_5eb5

    rst $08
    rst $38
    jr c, jr_0ec_5eb9

    rst $00
    rst $38
    jr c, jr_0ec_5ebd

    inc bc
    rst $38
    inc a
    ccf
    nop
    rst $38
    ld e, $1f
    nop
    rst $08
    rra

jr_0ec_5e89:
    rra
    add b
    add e
    rrca

jr_0ec_5e8d:
    rrca
    add b
    add b
    rlca

jr_0ec_5e91:
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

jr_0ec_5eb5:
    nop
    nop
    nop
    nop

jr_0ec_5eb9:
    nop
    nop
    nop
    nop

jr_0ec_5ebd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_5f18:
    nop
    nop
    ldh [$e0], a
    pop bc
    pop bc
    ldh a, [$f0]
    ldh [$e7], a
    ld [hl], b
    ldh a, [$f0]
    rst $38
    jr nc, jr_0ec_5f18

    ldh a, [rIE]
    db $10
    ldh a, [$f0]
    rst $38
    db $10
    ldh a, [$f8]
    rst $38
    db $10
    ldh a, [$f8]
    rst $18
    ret nz

    ldh [$d9], a
    cp a
    ldh [$c0], a
    cp e
    rst $38
    ldh a, [$e0]
    ld [hl], e
    rst $38
    ldh a, [$e0]
    ld h, a
    rst $38
    ldh [$e0], a
    rst $28
    rst $38
    ret nz

    ret nz

    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0ec_5fe4

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld b, b
    ld a, [hl]
    nop
    nop
    ccf
    jp Boot


    rst $38
    inc bc
    ld bc, $df02
    inc hl
    dec b
    ld b, $cf
    inc sp
    rrca
    rrca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rra
    rra
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc e
    rst $38
    rra
    rra
    scf
    rst $38
    rrca
    rrca
    scf
    rst $38

jr_0ec_5fe4:
    rlca
    rlca
    ccf
    rst $30
    nop
    ld bc, $f73f
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ei
    ld a, [$8080]
    jp c, $c0e3

    ld b, b
    ld sp, hl
    pop bc
    ld [hl], h
    xor h
    cp c
    pop bc
    ld [hl], h
    xor h
    ld de, $ac21
    db $fc
    ld bc, $7c01
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    ret nz

    ld a, h
    ld a, h
    nop
    ld hl, sp+$7c
    ld a, h
    ldh [rIE], a
    inc a
    inc a
    ldh a, [rIE]
    inc a
    ret nz

    or $ff
    ld e, $e0
    cp $f7
    ld a, [hl-]
    db $fc
    cp $f7
    inc a
    cp $f6
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $ec
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    jr c, jr_0ec_6164

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld b, b
    ld a, [hl]
    nop
    nop
    ccf
    jp Boot


    rst $38
    inc bc
    ld bc, $df02
    inc hl
    dec b
    ld b, $cf
    inc sp
    rrca
    rrca
    ldh a, [$fe]
    rrca
    rrca
    db $fc
    rst $38
    rra
    rra
    jp Jump_000_1fff


    rra
    add b
    rst $38
    rra
    rra
    sbc b
    rst $38
    rra
    rra
    sbc e
    rst $38
    rra
    rra
    scf
    rst $38
    rrca
    rrca
    scf
    rst $38

jr_0ec_6164:
    rlca
    rlca
    ccf
    rst $30
    nop
    ld bc, $f73f
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    inc bc
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ei
    ld a, [$8080]
    jp c, $c0e3

    ld b, b
    ld sp, hl
    pop bc
    ld [hl], h
    xor h
    cp c
    pop bc
    ld [hl], h
    xor h
    ld de, $ac21
    db $fc
    ld bc, $7c01
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    ret nz

    ld a, h
    ld a, h
    nop
    ld hl, sp+$7c
    ld a, h
    ldh [rIE], a
    inc a
    inc a
    ldh a, [rIE]
    inc a
    ret nz

    or $ff
    ld e, $e0
    cp $f7
    ld a, [hl-]
    db $fc
    cp $f7
    inc a
    cp $f6
    rst $38
    ld a, $fe
    db $fc
    rst $38
    ld a, [hl]
    cp $ec
    rst $38
    ld a, [hl]
    cp $18
    rst $38
    ld a, [hl]
    cp $18
    ld a, a
    db $fc
    db $fc
    nop
    ccf
    jr nc, @-$0e

    nop
    rra
    ld h, b
    ldh [rNR10], a
    rra
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
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
    nop
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    ld b, $07
    db $10
    ldh a, [rDIV]
    rlca
    dec d
    ld a, [$0700]
    rrca
    rst $30
    nop
    rlca
    dec bc
    db $fc
    nop
    rlca
    rra
    rst $28
    nop
    rlca
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld l, a
    ld hl, sp+$7e
    ld a, a
    ld [hl], b
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld h, b
    rst $38
    ld c, $0f
    ld h, b
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ccf
    ld a, a
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
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    jr z, jr_0ec_6386

    nop
    nop
    inc b
    ld a, [de]
    nop
    nop
    ld l, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    inc c
    nop
    add b
    inc bc
    inc b

jr_0ec_6386:
    add b
    ld h, b
    ld bc, $e002
    db $10
    ld b, b
    add c
    ldh a, [$08]
    db $ec
    db $dd
    ld [hl], b
    adc b
    xor h
    ld a, a
    add sp, -$0c
    db $fc
    rst $28
    db $fc
    ld hl, sp-$04
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$08
    db $fc
    rst $18
    ld hl, sp-$08
    call z, $f03f
    ldh a, [rNR32]
    rst $38
    ldh [$e0], a
    ldh [rIE], a
    nop
    add b
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    ld b, $fe
    nop
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
    ld b, $7e
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
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_641a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_641a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    db $10
    ldh a, [rDIV]
    rlca
    rlca
    rst $30
    nop
    rlca
    rrca
    rst $38
    nop
    rlca
    rrca
    rst $38
    nop
    rlca
    rra
    rst $28
    nop
    rlca
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld h, a
    ld hl, sp+$7e
    ld a, a
    ld [hl], b
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld h, b
    rst $38
    ld c, $0f
    ld h, b
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ccf
    ld a, a
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

jr_0ec_64d8:
    nop
    nop
    nop
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
    ld h, b
    nop
    nop
    nop
    jr z, jr_0ec_6506

    nop
    nop
    inc b
    ld a, [de]
    nop
    nop

jr_0ec_64f8:
    ld l, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    inc c
    rrca
    nop
    ret nz

    nop
    rlca

jr_0ec_6506:
    ret nz

    jr nz, jr_0ec_6509

jr_0ec_6509:
    inc bc
    ld h, b
    sub b
    ret nz

    pop bc
    jr nc, jr_0ec_64d8

    db $ec
    rst $38
    jr jr_0ec_64f8

    db $ec
    rst $38
    add sp, -$0c
    db $fc
    rst $28
    db $fc
    ld hl, sp-$04
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$08
    db $ec
    rst $18
    ld hl, sp-$08
    call z, $f03f
    ldh a, [rNR32]
    rst $38
    ldh [$e0], a
    ldh [rIE], a
    nop
    add b
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    ld b, $fe
    nop
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
    ld b, $7e
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
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_659a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_659a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    db $10
    ldh a, [rDIV]
    rlca
    nop
    ldh a, [rP1]
    rlca
    nop
    ldh a, [rP1]
    rlca
    rlca
    rst $38
    nop
    rlca
    rrca
    rst $38
    nop
    rlca
    ld l, a
    rst $38
    ld c, $0f
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, [hl]
    ld a, a
    ld [hl], a
    rst $38
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld h, b
    rst $38
    ld c, $0f
    ld h, b
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ccf
    ld a, a
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
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    jr z, jr_0ec_6686

    nop
    nop
    inc b
    ld a, [de]
    nop
    nop
    ld l, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    inc c
    nop
    add b
    inc bc
    inc b

jr_0ec_6686:
    add b
    ld h, b
    ld bc, $e002
    stop
    ld bc, $08f0
    nop
    ld bc, $8870
    call z, $e8ff
    db $f4
    db $ec
    rst $38
    db $fc
    ld hl, sp-$14
    rst $38
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    ld hl, sp-$08
    db $ec
    rst $38
    ld hl, sp-$08
    db $ec
    rst $38
    ldh a, [$f0]
    call c, $e0ff
    ldh [$e0], a
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    nop
    nop
    cp $00
    nop
    ld b, $fe
    nop
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
    ld b, $7e
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
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0ec_671a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ec_671a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld [$02f8], sp
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    nop
    db $fc
    inc e
    inc bc
    nop
    db $fc
    ccf
    rra
    add b
    db $fc
    ccf
    ccf
    rlca
    rst $38
    ccf
    ccf
    ccf
    rst $38
    ccf
    ccf
    ccf
    rst $38
    ld a, $3f
    ld a, a
    rst $28
    ld e, $1f
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    nop
    ld bc, $ffe7
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    add b
    add b
    ld [bc], a
    inc bc
    ret nz

    ld b, b
    pop bc
    pop bc
    ld [hl], h
    xor h
    pop hl
    pop af
    ld [hl], h
    xor h
    pop hl
    ld sp, hl
    xor h
    db $fc
    pop af
    jp hl


    ld a, h
    db $fc
    db $fc
    rst $28
    ld a, $c2
    db $ec
    rst $38
    ld a, [hl]
    ldh a, [$ec]
    rst $38
    ld a, [hl]
    ld hl, sp-$34
    rst $38
    ld a, [hl]
    db $fc
    jr @+$01

    cp $fc
    jr @+$01

    db $fc
    db $fc
    jr nc, @+$01

    db $fc
    db $fc
    ld sp, $f8ff
    ld hl, sp+$01
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    add a
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
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f8f8
    nop
    nop
    inc b
    db $fc
    nop
    ld bc, $fc00
    inc e
    ld a, l
    nop
    cp $7e
    cp a
    dec a
    cp $ff
    ld sp, $ffc3
    db $fd
    ld [hl-], a
    rst $38
    ld a, a
    sbc $31
    nop
    rst $38
    ld l, l
    sub d
    add e
    ld a, a
    inc [hl]
    ld a, e
    rlca
    rst $38
    ld a, [hl]
    ld a, a
    ld h, a
    db $fc
    ld e, [hl]
    ccf
    ld l, h
    ei
    ld e, [hl]
    ld a, a
    ld l, a
    ld sp, hl
    ld a, $3f
    ld l, l
    ld a, [c]
    ld c, $0f
    ld l, a
    rst $30
    nop
    ld bc, $f86f
    nop
    nop
    ld l, a
    rst $38
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
    nop
    nop
    nop
    nop
    ld c, $0e
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
    ld b, b
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    ld [hl], b
    ld a, h
    ld a, b
    rst $38
    db $fc
    ld a, [$ff87]
    cp $18
    rst $38
    db $fc
    ld a, [hl]
    sbc b
    nop
    rst $38
    or $18
    add e
    db $fc
    ld l, h
    sub d
    ret nz

    rst $38
    ld e, b
    cp h
    call z, $fc7f
    db $fc
    ld l, h
    cp a
    db $f4
    ld hl, sp-$14
    ccf
    db $f4
    db $fc
    ld l, h
    sbc a
    ld hl, sp-$08
    db $ec
    rst $18
    ldh [$e0], a
    db $ec
    ccf
    nop
    nop
    db $ec
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rSC], a
    inc bc
    ret nc

    ldh [$03], a
    ld [bc], a
    ld [hl], b
    ldh [rTAC], a
    rlca
    ldh [$f0], a
    rlca
    rlca
    ldh [$e0], a
    ld c, $11
    add b
    add b
    rra
    jr nz, jr_0ec_6d3f

jr_0ec_6d3f:
    nop
    rra
    jr nz, jr_0ec_6d43

jr_0ec_6d43:
    nop
    rra
    ccf
    add b
    rst $38
    ccf
    ld a, a
    dec b
    ld a, [$7f3f]
    ccf
    rst $30
    ccf
    ccf
    dec hl
    db $fc
    ld a, $3f
    ld a, a
    rst $28
    ld e, $1f
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    ld bc, $ffcf
    nop
    ld bc, $ffc0
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    nop
    add d
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
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, b
    cp b
    nop
    nop
    and $de
    nop
    nop
    and c
    ld a, a
    add b
    add b
    ldh a, [$ef]
    ld b, b
    ret nz

    db $fc
    rst $28
    nop
    ret nz

    db $ec
    rst $38
    ld [hl], b
    ldh a, [$ec]
    rst $38
    ld a, b
    ld hl, sp-$24
    rst $38
    ld a, h
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    jr nc, @+$01

    db $fc
    db $fc
    ld sp, $f8ff
    db $fc
    nop
    nop
    inc b
    ld hl, sp+$01
    ld bc, $807c
    inc bc
    inc bc
    ld a, h
    add b
    inc bc
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ret nz

    ldh a, [rSB]
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
    nop
    nop
    ld b, $07
    nop
    nop
    dec bc
    rrca
    ld b, b
    add b
    dec c
    dec de
    ret nz

    add b
    ld e, $21
    nop
    inc a
    nop
    ccf
    ld hl, sp-$01
    ccf
    ld a, a
    dec b
    ld a, [$7f3f]
    ccf
    rst $30
    ld a, [hl]
    ld a, a
    dec hl
    db $fc
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, $3f
    ld a, a
    rst $28
    inc e
    rra
    ld l, a
    rst $38
    inc c
    rrca
    ld l, a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    ld bc, $ffcf
    ld bc, $f001
    rst $38
    nop
    ld bc, $ff0f
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    cp b
    nop
    nop
    and $de
    nop
    nop
    and c
    ld a, a
    add b
    add b
    ldh a, [$ef]
    ld b, b
    ret nz

    db $fc
    rst $28
    ld [hl], b
    ldh a, [$ec]
    rst $38
    ld a, b
    ld hl, sp-$14
    rst $38
    ld a, h
    db $fc
    call c, $fcff
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    pop af
    rst $38
    db $fc
    db $fc
    ld a, a
    ld a, a
    ld hl, sp-$04
    ccf
    ccf
    ld a, b
    add b
    inc bc
    inc bc
    ret nz

    ldh a, [rSB]
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

jr_0ec_7014:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0ec_7014

    ld [bc], a
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    ld [bc], a
    inc bc
    db $10
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [rP1]
    rlca
    nop
    db $fc
    nop
    rrca
    nop
    rst $38
    ld c, $3f
    dec b
    ld a, [$3f3e]
    ld l, a
    rst $30
    ld a, [hl]
    ld a, a
    ld l, e
    db $fc
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld a, a
    rst $28
    ld a, [hl]
    ld a, a
    ld l, a
    rst $38
    ld a, $3f
    ld l, a
    rst $38
    ld c, $0f
    ld [hl], a
    rst $38
    nop
    nop
    ld l, a
    rst $38
    nop
    nop
    nop
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

Jump_0ec_70ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    cp a
    ldh [$e0], a
    db $ec
    rst $18
    ld hl, sp-$08
    xor h
    ld a, a
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $28
    db $fc
    db $fc
    db $ec
    rst $38
    db $fc
    db $fc
    db $ec
    rst $38
    ld hl, sp-$04
    call c, $e0ff
    ld hl, sp-$14
    rst $38
    nop
    ldh [$0c], a
    rst $38
    nop
    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    ccf
    nop
    add b
    jr nz, jr_0ec_7181

    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
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

jr_0ec_7181:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret z

    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $fdfa
    ld bc, $e701
    ei
    ld bc, $8501
    cp $02
    inc bc
    rrca
    rst $30
    nop
    inc bc
    ccf
    rst $30
    ld c, $0f
    scf
    rst $38
    ld e, $1f
    scf
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    inc c
    rst $38
    rra
    ccf
    adc h
    rst $38
    ld e, $01
    ret nz

    ret nz

    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c0c0
    dec b
    inc bc
    and b
    ldh [rTAC], a
    inc bc
    ld h, b
    or b
    nop
    ld bc, $08f0
    inc bc
    cp a
    ldh a, [$f8]
    and b
    ld e, a
    db $fc
    cp $fc
    rst $28
    db $fc
    cp $d4
    ccf
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

    rst $28
    rst $38
    ret nz

    ret nz

    di
    rst $38
    nop
    add b
    inc bc
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [de]
    dec e
    nop
    nop
    ld h, a
    ld a, e
    ld bc, $8501
    cp $02
    inc bc
    rrca
    rst $30
    nop
    inc bc
    ccf
    rst $30
    ld c, $0f
    scf
    rst $38
    ld e, $1f
    scf
    rst $38
    ld a, $3f
    dec sp
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    inc c
    rst $38
    rra
    ccf
    adc h
    rst $38
    jr nz, jr_0ec_7399

    nop
    nop
    ld a, $01
    add b
    add b
    ld a, $01
    ret nz

    ret nz

    ld e, $01
    ret nz

    ret nz

    inc bc
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

jr_0ec_7399:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8007
    add b
    dec bc
    rlca
    ld b, b
    ret nz

    ld c, $07
    ret nz

    ld b, b
    rlca
    rrca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    ld bc, $7001
    adc b
    nop
    nop
    ld hl, sp+$04
    nop
    nop
    ld hl, sp+$04
    ld bc, $f8ff
    db $fc
    and b
    ld e, a
    db $fc
    cp $fc
    rst $28
    db $fc
    cp $d4
    ccf
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

    rst $28
    rst $38
    ret nz

    ret nz

    di
    rst $38
    nop
    add b
    inc bc
    rst $38
    nop
    add b
    dec c
    rst $38
    add b
    add b
    rst $38
    rst $38
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
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    add b
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld h, a
    ld a, e
    ld bc, $8501
    cp $02
    inc bc
    rrca
    rst $30
    ld c, $0f
    ccf
    rst $30
    ld e, $1f
    scf
    rst $38
    ld a, $3f
    scf
    rst $38
    ccf
    ccf
    dec sp
    rst $38
    ccf
    ccf
    rra
    rst $38
    ccf
    ccf
    jr @+$01

    ccf
    ccf
    adc a
    rst $38
    rra
    ccf
    cp $fe
    ld e, $01
    db $fc
    db $fc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rSC], a
    ld bc, $f0d0
    inc bc
    ld bc, $d8b0
    nop
    inc a
    ld a, b
    add h
    rra
    rst $38
    nop
    db $fc
    and b
    ld e, a
    db $fc
    cp $fc
    rst $28
    db $fc
    cp $d4
    ccf
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, h
    db $fc
    or $ff
    jr c, @-$06

    or $ff
    jr nc, @-$0e

    rst $28
    rst $38
    ret nz

    ret nz

    di
    rst $38
    nop
    add b
    rrca
    rst $38
    add b
    add b
    ldh a, [rIE]
    nop
    add b
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
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rlca
    rlca
    ld [bc], a
    db $fd
    rra
    rra
    scf
    ei
    ccf
    ccf
    dec [hl]
    cp $3f
    ccf
    ccf
    rst $30
    ccf
    ccf
    ccf
    rst $30
    ccf
    ccf
    scf
    rst $38
    rra
    ccf
    scf
    rst $38
    rlca
    rra
    dec sp
    rst $38
    nop
    rlca
    scf
    rst $38
    nop
    inc bc
    jr nc, @+$01

    nop
    inc bc
    nop
    db $fc
    nop
    ld bc, $fc00
    ld bc, $0401
    db $fc
    ld bc, $fc01
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ld b, b
    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    ld [$400f], sp
    ret nz

    nop
    rrca
    nop
    ret nz

    nop
    ccf
    nop
    ldh [rP1], a
    rst $38
    nop
    ldh a, [$a0]
    ld e, a
    ld [hl], b
    db $fc
    or $ef
    ld a, h
    db $fc
    sub $3f
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $fe
    rst $30
    ld a, [hl]
    cp $f6
    rst $38
    ld a, [hl]
    cp $f6
    rst $38
    ld a, h
    db $fc
    xor $ff
    ld [hl], b
    ldh a, [$f6]
    rst $38
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    dec b
    rlca
    and b
    ret nz

    ld b, $0d
    ldh [$c0], a
    rrca
    stop
    add b
    rrca
    rra
    ret nz

    db $fd
    ccf
    ld a, a
    dec b
    ld a, [$7f3f]
    ccf
    rst $30
    ccf
    ccf
    dec hl
    db $fc
    ld a, $3f
    ld a, a
    rst $28
    ld e, $1f
    ld a, a
    rst $28
    ld c, $0f
    ld l, a
    rst $38
    nop
    inc bc
    ld l, a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    nop
    ld bc, $ffcf
    nop
    ld bc, $ffc0
    ld bc, $b001
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    nop
    nop
    cp $00
    nop
    add d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    nop
    rst $38
    nop
    nop
    ld e, a
    cp a
    nop
    add b
    rst $20
    rst $18
    add b
    add b
    and c
    ld a, a
    add b
    add b
    ldh a, [$ef]
    ld b, b
    ret nz

    db $fc
    rst $28
    nop
    ret nz

    db $ec
    rst $38
    ld [hl], b
    ldh a, [$ec]
    rst $38
    ld a, b
    ld hl, sp-$24
    rst $38
    ld a, h
    db $fc
    ld hl, sp-$01
    db $fc
    db $fc
    jr @+$01

    db $fc
    db $fc
    jr nc, @+$01

    db $fc
    db $fc
    ld sp, $f8ff
    db $fc
    inc bc
    inc bc
    ld a, b
    add b
    inc bc
    inc bc
    ret nz

    ldh a, [rSB]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0ec_7fbe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
