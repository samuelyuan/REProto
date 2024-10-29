SECTION "ROM Bank $0ba", ROMX[$4000], BANK[$ba]

    nop
    nop
    nop
    nop
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
    dec bc
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
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
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
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0ba_4051

jr_0ba_4051:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $03
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    cp h
    rst $38
    cp $fe
    or $ff
    cp $01
    ld bc, $0040
    nop
    nop
    inc b
    nop
    ld bc, $c000
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    add c
    ld bc, $00c0
    nop
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    db $fc
    rst $20
    ldh [$f3], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]

jr_0ba_4229:
    ld hl, sp-$08
    jr nc, jr_0ba_4229

    db $fc
    db $fc
    db $fc
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    rst $38
    rst $38
    ldh [$e0], a
    pop hl
    ldh [rIE], a
    db $ec
    rst $38
    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    rst $38
    ld e, $ff
    jr z, @+$01

    nop
    rst $38
    call nz, RST_00
    nop
    nop
    add b
    nop
    jr nc, jr_0ba_425e

jr_0ba_425e:
    nop
    nop
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    db $fd
    rrca
    rrca
    rst $38
    ld de, $60ff
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    ld [hl-], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rra
    ld a, a
    rra
    ccf
    ccf
    rra
    dec de
    nop
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    pop af
    or c
    rst $38
    ret nz

    rst $38
    cp $ff
    sbc a
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    ld bc, $38ff
    rst $38
    ld b, $ff
    ld bc, $28fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $7e
    rst $38
    di
    rst $38
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    ld hl, sp-$40
    ldh a, [$f0]
    ld sp, hl
    ld a, b
    db $fc
    call z, Call_000_00ff
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    stop
    nop
    nop
    nop
    jr jr_0ba_42ec

jr_0ba_42ec:
    nop
    nop
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    nop
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
    ldh a, [$80]
    rst $38
    rst $20
    rst $38
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    ld bc, $0302
    inc b
    nop
    nop
    nop
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
    ld b, $07
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
    add hl, bc
    ld a, [bc]
    dec bc
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
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0ba_4381

jr_0ba_4381:
    nop
    nop
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
    ld a, [de]
    dec de
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
    dec e
    ld e, $1f
    jr nz, jr_0ba_43a1

jr_0ba_43a1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rlca
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1eff
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    cp $fc
    db $fc
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, c
    rst $38
    rst $38
    rst $38
    ld h, c
    cp $f0
    cp $c0
    pop af
    ld bc, $0fcf
    ccf
    inc sp
    rst $38
    jp $03ff


    ld b, $ff
    dec c
    rst $38
    inc hl
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    ld b, a
    rlca
    rst $38
    rst $38
    di
    pop af
    ldh [$e0], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    add b
    ldh a, [$80]
    ret nz

    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ee
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    sbc a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $30
    jr jr_0ba_465a

jr_0ba_465a:
    ld bc, $0101
    ld bc, $157f
    rst $38
    add b
    rst $38
    ldh [rIF], a
    rrca
    rrca
    rrca
    rst $38
    db $fc
    and $e0
    ldh [$e0], a
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $28
    stop
    nop
    nop
    add hl, bc
    ld bc, $03c3
    inc bc
    inc bc
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    push bc
    rst $38
    ret nz

    rst $38
    call z, $81ff
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    xor a
    rst $38
    db $fc
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    add hl, hl
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $0f
    rrca
    inc b
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    di
    sub b
    rst $38
    adc h
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jp nc, $e5ff

    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    cp h
    ld hl, sp-$08
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    add a
    ldh a, [$f0]
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rra
    rra
    sbc a
    rra
    rst $38
    rst $38
    pop hl
    ldh [$e0], a
    ldh [$c3], a
    ret nz

    jp nz, $c000

    ret nz

    add b
    add b
    rst $38
    ld bc, $60ff
    rst $38
    ld e, h
    rst $38
    nop
    rst $38
    ld e, $ff
    inc bc
    rst $38
    add d
    rst $38
    ld d, l
    ccf
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$78
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fd
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ccf
    ccf
    ccf
    ccf
    ccf
    ld l, $3f
    ccf
    ccf
    dec sp
    ld a, a
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    ld [hl], b
    cp $08
    rst $38
    ret nz

    rst $38
    ld [hl-], a
    rst $38
    ccf
    ld a, a
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    pop hl
    ldh [$e2], a
    ldh [$e8], a
    ldh [$e8], a
    ldh [$e0], a
    ldh [rIE], a
    cp $3f
    rrca
    ld a, a
    rrca
    ccf
    dec a
    rra
    rra
    sbc a
    rra
    rst $18
    ld e, a
    rst $38
    cp a
    ldh a, [$f0]
    ldh a, [$f0]
    db $fc
    ldh a, [$f6]
    ld [hl], b
    ld a, [c]
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$08
    add sp, -$08
    ret z

    rst $38
    rst $20
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    ccf
    rra
    ld c, a
    rrca
    rrca
    rrca
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    call z, $fcfc
    cp $8e
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ba_47ec

jr_0ba_47ec:
    add c
    add b
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
    ld bc, $0302
    inc b
    dec b
    nop
    nop
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
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
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
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0ba_4889

    nop
    nop
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
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ba_4889:
    nop
    nop
    rra
    jr nz, jr_0ba_48af

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_0ba_48a1

jr_0ba_48a1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_0ba_48af:
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0ba_48f0

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ba_48f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
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
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $1f
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    adc $c0
    rst $00
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    jp nz, $85ff

    rst $38
    xor e
    rst $38
    sub l
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    inc e
    inc e
    ld c, $0e
    rra
    ld e, $1f
    ld e, $3f
    inc a
    ld a, a

jr_0ba_4b1b:
    ld a, l
    ld a, a
    ld a, b
    rst $38
    ld hl, sp-$01
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp+$38
    ld sp, hl
    jr c, jr_0ba_4b1b

    ldh a, [$e0]
    ldh [$7c], a
    ld a, h
    ld a, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $1f
    ld e, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    sbc a
    rra
    rst $38
    cp a
    rst $38
    ld a, a
    rst $18
    sbc $83
    add d
    rlca
    nop
    rrca
    ld bc, $021f
    ccf
    ld bc, $0b3f
    cp $06
    db $fc
    inc e
    ld hl, sp+$08
    cp $2e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    sub a
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    add a
    add a
    rst $38
    rst $38
    rst $38
    di
    db $fc
    add h
    ld hl, sp+$08
    ldh [rNR41], a
    jp $8040


    add b
    add h
    add b
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    and $ff
    pop bc
    rst $38
    add h
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    sbc a
    cp $7e
    jp $87c3


    add a
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    cp a
    cp a
    rst $38
    rst $38
    rst $18
    rst $18
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    ld c, a
    cpl
    rrca
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    daa
    rlca
    rlca
    rlca
    rst $28
    rrca
    rst $28
    cpl
    rst $38
    cp a
    di
    ld [hl], e
    ldh [$60], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add d
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rst $00
    rst $00
    rst $38
    cp a
    ei
    ei
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ld [c], a
    ldh [$c2], a
    ret nz

    add b
    add b
    ldh [$e0], a
    cp $de
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp $ff
    dec a
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp+$7f
    ld a, b
    rrca
    rrca
    rlca
    ld bc, $0007
    rlca
    nop
    rrca
    nop
    rrca
    inc c
    rrca
    ld [bc], a
    rra
    dec bc
    rra
    inc d
    rra
    ld [$d5ff], sp
    rst $38
    rst $28
    rst $38
    call c, $f8ff
    rst $38
    call nc, $eaff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    dec bc
    inc bc
    dec de
    inc bc
    dec de
    inc bc
    ccf
    rlca
    ccf
    inc hl
    ld a, a
    ld b, e
    rst $38
    add e
    rst $38
    ld c, e
    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    add h
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld hl, $20ff
    rst $38
    call c, $82ff
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    or a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add d
    add b
    nop
    nop
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ccf
    ccf
    rlca
    rlca
    ret nz

    nop
    ret nz

    nop
    jp $e340


    add b
    ldh a, [$80]
    ldh a, [$a0]
    ld sp, hl
    ld bc, $91f9
    db $fd
    pop bc
    rst $38
    ld h, e
    rst $38
    inc sp
    cp $1a
    cp $8e
    cp $1e
    db $fc
    inc [hl]
    db $fc
    ld e, h
    db $fc
    xor h
    db $fc
    ld a, h
    cp $ee
    cp $be
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    di
    di
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    ld a, b
    ld a, b
    ld a, a
    ld e, a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    add b
    add b
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
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
    add c
    add c
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld c, $0e
    add a
    rlca
    add a
    rlca
    rlca
    rlca
    rrca
    rrca
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ba_4dfe

    ld hl, $2322
    inc h
    ld a, [bc]
    dec h
    ld h, $27
    jr z, jr_0ba_4e27

jr_0ba_4dfe:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ba_4e37

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ba_4e18

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0ba_4e18:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [bc]
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_0ba_4e27:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, h
    ld e, l

jr_0ba_4e37:
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    nop
    ld h, d
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    ld l, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], l
    db $76
    inc bc
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld a, [bc]
    add l
    add [hl]
    add a
    ld a, [bc]
    ld a, [bc]
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld a, [bc]
    ld a, [bc]
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld a, [bc]
    ld a, [bc]
    sbc a
    and b
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    rlca
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc hl
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
    inc bc
    inc bc
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    cp $ff
    rst $38
    ld a, d
    ld a, [$fefe]
    ld l, l
    db $fd
    ld e, e
    db $db
    jr c, @-$06

    cp h
    db $fc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
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
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0ba_507c

jr_0ba_507c:
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    cp $00
    rrca
    nop
    ld a, [hl]
    nop
    call c, Call_0ba_7800
    nop
    stop
    ld [hl], b
    nop
    ld e, b
    nop
    ldh a, [$80]
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, d
    ld h, b
    jr nz, @+$22

    jr nz, jr_0ba_5166

    db $10
    db $10
    ld a, [de]
    db $10
    rla
    db $10
    rrca
    nop
    dec b
    nop
    sub $00
    rla
    nop
    ld b, a
    nop
    rst $00
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc hl
    nop
    dec de
    nop
    add e
    nop
    ld bc, $0100
    nop

jr_0ba_5166:
    ld bc, $0100
    nop
    db $10
    db $10
    db $10
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    adc b
    nop
    dec bc
    ld bc, $011a
    ld [bc], a
    ld bc, $0102

jr_0ba_5186:
    jr nc, jr_0ba_5188

jr_0ba_5188:
    ld [de], a
    nop
    rrca
    nop
    ld c, $00
    rst $08
    nop
    rst $00
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0ba_5186

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, e
    nop
    sbc a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh [rIF], a
    ldh [rP1], a
    ret nz

    ld hl, $3cc3
    ld h, a
    sbc e
    ld c, a
    sub [hl]
    rra
    adc c
    rrca
    add [hl]
    rlca
    dec bc
    rrca
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    add d
    cp $7e
    ld a, [hl]
    cp a
    ccf
    rst $28
    rrca
    ld a, e
    ld [bc], a
    ld a, l
    ld bc, $007e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, h
    add b
    ld a, e
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $38
    ld hl, sp-$07
    cp $7e
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0ba_52b6

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0ba_52b6:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0ba_52e3

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop

jr_0ba_52e3:
    nop
    nop
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
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    cp [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ba_5317:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $01
    rst $38
    rlca
    ld a, h
    call c, $e02f
    rla
    ldh a, [$0d]
    db $fc
    ld e, [hl]
    cp $7f
    rst $38
    nop
    ccf
    nop
    cp a
    rst $00
    jr z, jr_0ba_5317

    ld e, a
    ldh a, [$ef]
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$5f], a
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    cp a
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rst $00
    rlca
    ld a, l
    ld bc, $083e
    jp hl


    ld c, $f8
    rrca
    ret nz

    rra
    ret nz

    rra
    pop bc
    rra
    rst $20
    ccf
    push af
    dec b
    rst $38
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    rlca
    rst $38
    rrca
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    call nz, Call_000_0201
    nop
    ld b, e
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $00ff
    ld hl, sp+$07
    ld b, a
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$15
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    adc d
    nop
    add l
    nop
    adc d
    nop
    add l
    nop
    adc d
    nop
    add l
    nop
    add d
    nop
    add l

jr_0ba_5409:
    nop
    add d
    nop
    dec b
    ret nz

    ld [bc], a
    ret nz

    dec b
    ret nz

    add d
    ret nz

    dec b
    nop
    jp nz, $c100

    nop
    jp nz, $c100

    nop
    ld [bc], a
    nop
    pop bc
    ret nz

    ld [c], a
    ldh [$e1], a
    jr nz, jr_0ba_5409

    nop
    pop hl

jr_0ba_5429:
    ret nz

    ldh [$e0], a
    add c
    add b
    ldh [$e0], a
    pop de
    ret nc

    ret nz

    ret nz

    ld sp, $b0f0
    ldh a, [$f1]
    ldh a, [$60]
    ldh [$f1], a
    ldh a, [$f0]

jr_0ba_543f:
    ldh a, [$b8]
    ld hl, sp-$10
    ldh a, [$38]
    jr c, jr_0ba_543f

    jr jr_0ba_5429

    ld hl, sp+$40
    ld hl, sp+$08
    nop
    ld a, b
    nop
    ld hl, sp-$08
    add h
    db $fc
    ld [hl], b
    db $fc
    ldh [$fc], a
    nop
    db $fc
    nop
    db $fc
    ld h, b
    db $fc
    ret nz

    db $fc
    ldh [$fe], a
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld hl, sp-$02
    rlca
    rst $38
    ld bc, $07ef
    di
    rlca
    ldh a, [$87]
    ld [hl], b
    add e
    ld a, b
    jp $c138


    inc a
    db $ed
    inc e
    ld a, a
    rrca
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    rla
    nop
    dec hl
    nop
    rla
    nop
    dec hl
    nop
    rla
    nop
    dec hl
    nop
    rla
    nop
    dec hl
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    dec bc
    nop
    rla
    nop
    dec bc
    nop
    dec d
    nop
    adc e
    add b
    sub l
    add b
    adc e
    add b
    sub l
    add b
    adc e
    add b
    add l
    add b
    adc e
    add b
    add l
    add b
    set 0, b
    push bc
    ret nz

    set 0, b
    push bc
    ret nz

    set 0, b
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    call nc, $aa00
    nop
    call nc, $aa00
    nop
    call nc, $aa00
    nop
    call nc, $aa00
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    call nc, $e800
    nop
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    ret nc

    nop
    add sp, $00
    rst $18
    rrca
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc a
    ccf
    jr nz, jr_0ba_5720

    inc bc
    inc sp
    rlca
    scf
    nop
    jr c, jr_0ba_56eb

jr_0ba_56eb:
    rra
    jr nz, jr_0ba_56f5

    jr c, jr_0ba_5710

    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ld a, a

jr_0ba_56f5:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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

jr_0ba_5710:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop

jr_0ba_5720:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    ld a, a
    ld a, a
    add l
    add l
    ret nz

    ret nz

    ld hl, sp-$08
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    db $fc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rrca
    ld bc, $f00f
    pop af
    ld c, $0e
    rra
    rra
    ld hl, sp-$08
    nop
    rlca
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [bc], a
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    ld l, a
    rrca
    rst $28
    rra
    rst $08
    ccf
    rra
    cp $3e
    cp $fe
    db $fd
    db $fc
    db $fd
    db $fc
    ei
    ld hl, sp-$3d
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0ba_581c

    jr jr_0ba_581e

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_0ba_581c:
    cp $01

jr_0ba_581e:
    cp $01
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $06
    cp $06
    cp $06
    cp $06

jr_0ba_5832:
    db $fc

jr_0ba_5833:
    inc c
    db $fc

jr_0ba_5835:
    inc c
    db $fc

jr_0ba_5837:
    inc c
    db $fc

jr_0ba_5839:
    inc c
    ld sp, hl
    jr jr_0ba_5835

    jr jr_0ba_5837

    jr jr_0ba_5839

    jr jr_0ba_5833

    jr nc, jr_0ba_5837

    jr nc, @-$07

    jr nc, @-$09

    jr nc, jr_0ba_5832

    ld h, b
    rst $28
    ld h, b
    rst $28
    ld h, b
    rst $28
    ld h, b
    rst $08
    ret nz

    db $db
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $06
    cp $06
    cp $06
    cp $06
    db $fc
    inc c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    db $e3
    ld h, e
    pop hl
    ld h, c
    xor $6e
    ldh [$60], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    and b
    and b
    and c
    and c
    scf
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ba_5902

jr_0ba_5902:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_0ba_590a

jr_0ba_590a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    cp $06
    cp $06
    db $fc
    inc c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    ld sp, hl
    add hl, de
    ei
    dec de
    ei
    dec de
    ld a, [$f31a]
    inc sp
    rst $30
    scf
    rst $30
    scf
    di
    inc sp
    pop hl
    ld h, c
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    add b
    add b
    add d
    add d
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

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0ba_59f4

    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ba_59ee

jr_0ba_59ee:
    jr nc, jr_0ba_59f0

jr_0ba_59f0:
    inc b
    nop
    inc c
    nop

jr_0ba_59f4:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ba_5aa3

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$0c

    ld a, [bc]
    ld hl, $2322
    ld a, [bc]
    inc h
    dec h
    ld h, $27
    jr z, jr_0ba_5ac8

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_0ba_5aa3:
    ld l, $2f
    jr nc, jr_0ba_5ad8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld a, [bc]
    jr c, jr_0ba_5ae9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, [bc]
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0ba_5ac8:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_0ba_5ad8:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    ld h, c
    nop
    nop
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_0ba_5ae9:
    ld l, b
    ld l, c
    ld l, d
    dec [hl]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    inc bc
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld a, [bc]
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    ld a, [bc]
    ld a, [bc]
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    ld a, [bc]
    ld a, [bc]
    or h
    or l
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    cp $ff
    rst $38
    ld a, d
    ld a, [$fefe]
    ld l, l
    db $fd
    ld e, e
    db $db
    jr c, @-$06

    cp h
    db $fc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
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
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0ba_5d1c

jr_0ba_5d1c:
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    cp $00
    rrca
    nop
    ld a, [hl]
    nop
    call c, Call_0ba_7800
    nop
    stop
    ld [hl], b
    nop
    ld e, b
    nop
    ldh a, [$80]
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, d
    ld h, b
    jr nz, @+$22

    jr nz, jr_0ba_5e06

    db $10
    db $10
    ld a, [de]
    db $10
    rla
    db $10
    rrca
    nop
    dec b
    nop
    sub $00
    rla
    nop
    ld b, a
    nop
    rst $00
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc hl
    nop
    dec de
    nop
    add e
    nop
    ld bc, $0100
    nop

jr_0ba_5e06:
    ld bc, $0100
    nop
    db $10
    db $10
    db $10
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    adc b
    nop
    ld a, [bc]
    nop
    dec de
    nop
    inc bc
    nop
    ld [bc], a
    nop

jr_0ba_5e26:
    ld sp, $1200
    nop
    rrca
    nop
    ld c, $00
    adc $01
    add $01
    rst $38
    ld bc, $00ff
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0ba_5e26

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0300
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, e
    nop
    sbc a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld a, a
    inc bc
    ld a, h
    rlca
    ld a, d
    rlca
    ld a, b
    rrca
    ld a, b
    rlca
    ld a, [hl]
    rlca
    ld sp, hl
    rlca
    ld sp, $270f
    rra
    inc bc
    ccf
    add c
    ld a, a
    add c
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    inc a
    nop
    cp a
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$03
    cp $00
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0ba_5f46

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0ba_5f46:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0ba_5f73

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop

jr_0ba_5f73:
    nop
    nop
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
    nop
    ld b, $00
    rlca
    nop
    rrca
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    cp $0e
    ld hl, sp+$01
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    inc bc
    db $fd
    nop
    ld hl, sp+$04
    ret nz

    inc h
    call nz, $ce02
    db $fd
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $0f
    ldh a, [$1f]

jr_0ba_5fd3:
    rst $28
    ccf
    sbc $7f
    and c
    ccf
    sbc $1f
    rst $28
    rrca
    ldh a, [rP1]
    rst $38
    ld c, a
    ret z

    inc hl
    ldh [$b1], a
    ldh a, [$f0]
    ldh a, [$e8]
    add sp, $00
    nop
    rst $00
    call nz, $e1e2
    add h
    jr c, jr_0ba_5fd3

    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    ldh a, [rIF]
    add b
    ld [hl], e
    nop
    ret nz

    nop
    add a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$fe00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$0e
    rrca
    ld a, a
    ld a, a
    dec l
    dec l
    dec c
    dec c
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    jr nz, jr_0ba_6070

jr_0ba_6070:
    nop
    nop
    or b
    nop
    add sp, $00
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    xor $00
    adc b
    nop
    ret z

    nop
    ldh [rP1], a
    rst $38
    nop
    ld [hl], b
    nop
    rst $00
    rst $00
    ldh a, [rIE]
    nop
    rst $38
    add d
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ld b, e
    rst $38
    rrca
    rst $38
    ld a, b
    ld hl, sp+$70
    ldh a, [$7c]
    call c, $8272
    jp $0e83


    ld c, $3d
    dec a
    db $eb
    db $eb
    nop
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    call z, $87cc
    rlca
    pop hl
    ld bc, $00f0
    ld a, c
    ld bc, $00fc
    or a
    nop
    db $10
    add b
    ld e, b
    rst $08
    ld sp, $61ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc c
    rst $38
    db $fc
    rst $00
    db $fc
    add e
    nop
    ld a, b
    nop
    ldh a, [rP1]
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
    pop bc
    cp $ff
    ldh a, [rIE]
    nop
    rst $38
    db $10
    rst $38
    inc d
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    jr c, jr_0ba_6160

jr_0ba_6160:
    ld b, c
    ld a, a
    ret nz

    rst $38
    ld b, d
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld sp, $fcfe
    rst $00
    sbc $c3
    rst $30
    pop af
    ld [hl], a
    ld a, h
    jr nc, jr_0ba_61b4

    jr c, jr_0ba_61b7

    sbc b
    rra
    ld h, a
    rlca
    ld b, $07
    rst $00
    rst $00
    add a
    add a
    ld d, l
    ld d, l
    dec l
    dec l
    ld c, $0e
    add d
    add d
    rst $38
    rst $38
    db $eb
    db $eb
    ld e, a
    ld e, a
    ld c, e
    ld c, e
    push hl
    push hl
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    cp h
    cp h
    inc l
    inc l
    add b
    nop
    nop
    nop
    ld b, c
    pop bc
    rst $18
    rst $18
    rst $38
    rst $38
    cp b
    rst $08
    ld [hl], b
    sbc a
    ld [hl], c
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    nop
    nop
    nop

jr_0ba_61b4:
    nop
    nop
    nop

jr_0ba_61b7:
    nop
    nop
    nop
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    jr jr_0ba_61d7

    dec c
    inc bc

jr_0ba_61d7:
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
    ld bc, $2100
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rst $38
    rst $38
    nop
    add b
    nop
    nop
    nop
    inc c
    ld [$0404], sp
    ld a, [bc]
    add d
    ld c, l
    ld [bc], a
    dec b
    ld bc, $0302
    cp $7b
    ld a, [hl]
    cp h
    ld a, $df
    sbc a
    ccf
    rst $38
    adc a
    rst $38
    ld bc, $00ff
    rst $38
    pop hl
    rst $38
    ldh a, [$fe]
    ld a, [c]
    cp $e2
    cp $c0
    db $fc
    db $e4
    db $fc
    db $e4
    db $fc
    add sp, -$08
    ld hl, sp-$08
    or b
    or b
    db $10
    db $10
    jr jr_0ba_6280

    dec e
    dec e
    dec c
    dec c
    rlca
    rlca
    ld a, a
    ld a, a
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp h
    nop
    ld a, h
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_0ba_6280:
    nop
    inc c
    nop
    add hl, bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    inc c
    rlca
    ld [$0601], sp
    ld bc, $0100
    nop
    ret nz

    ld bc, $20c0
    ret nz

    jr nz, jr_0ba_631d

    inc c
    jr c, jr_0ba_62f5

    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    ret nz

    nop
    ret nz

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
    ret nz

    nop
    or b
    add b
    ld l, b
    ldh [rNR50], a
    ldh [rNR12], a

jr_0ba_62f5:
    ldh a, [$09]
    ld hl, sp+$09
    ld hl, sp+$48
    ldh a, [$2c]
    ldh a, [$f4]
    ld hl, sp+$6e
    ld l, b
    rst $10
    ld [hl], h
    rst $30
    ld [hl], h
    pop af
    jr nc, @-$0d

    or b
    reti


    sbc b
    rst $18
    rst $18
    cp l
    cp a
    inc a
    ccf
    inc b
    rlca
    inc b
    rlca

jr_0ba_6316:
    inc c
    rrca
    inc e
    rra
    nop
    rra
    db $10

jr_0ba_631d:
    rra
    cp [hl]
    cp a
    inc a
    inc a
    daa
    jr nz, jr_0ba_6316

    ldh a, [$f8]
    ld hl, sp-$01
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ldh a, [$b0]
    db $fc
    add b
    cp a
    add b
    scf
    ldh a, [$58]
    ld hl, sp+$3f
    rst $38
    call c, $b3fc
    or b
    ld a, b
    ld hl, sp-$02
    xor $7f
    rst $20
    rst $38
    ldh a, [rIE]
    ld hl, sp-$1d
    rst $38
    db $e3
    rst $38
    jp $c3ff


    rst $38
    nop
    adc a
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    inc bc
    inc e
    nop
    cp a
    add b
    ld a, a
    pop hl
    ld e, $e2
    dec e
    ld [c], a
    dec e
    ld h, h
    sbc e
    jr nc, @-$2f

    nop
    ld a, a
    nop
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
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    sub b
    add b
    sub b
    add b
    sub b
    add b
    ret z

    ret nz

    ret c

    ret nc

    ld l, b
    ldh [$58], a
    ret nc

    ld a, b
    ldh a, [$d8]
    ret nc

    ld hl, sp-$20
    jr c, jr_0ba_63a2

jr_0ba_63a2:
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp-$10
    ld hl, sp-$10
    cp b
    or b
    inc c
    nop
    inc e
    nop
    inc a
    nop
    db $fc
    nop
    db $ec
    nop
    inc b
    nop
    inc c
    ld [$003c], sp
    db $fc
    nop
    db $f4
    nop
    ld hl, sp-$10
    ld hl, sp-$40
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$80]
    ld hl, sp-$20
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld a, [bc]
    nop
    dec e
    nop
    ld a, [de]
    nop
    dec e
    nop
    ld a, [de]
    nop
    sbc a
    add a
    sbc a
    sbc a
    db $fc
    db $fc
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld c, $00
    rrca
    nop
    ld c, $00
    rrca
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec e
    nop
    ld e, $00
    dec e
    nop
    ld e, $00
    dec e
    nop
    ld a, [de]
    nop
    dec e
    nop
    ld a, [de]
    nop
    dec a
    nop
    ld a, [hl-]
    nop
    dec a
    nop
    ld a, [hl-]
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    dec [hl]
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    ld l, d
    nop
    ld [hl], l
    nop
    ld l, d
    nop
    ld [hl], l
    nop
    ld [$f500], a
    nop
    ld [$d400], a
    nop
    ld [$d400], a
    nop
    ld [$d400], a
    nop
    add sp, $00
    call nc, $a800
    nop
    call nc, $a800
    nop
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, c
    ld bc, $01a1
    ld b, c
    ld bc, $0181
    ld b, e
    inc bc
    add e
    inc bc
    ld b, e
    inc bc
    add e
    inc bc
    rlca
    rlca
    add a
    rlca
    rlca
    rlca
    add [hl]
    ld b, $0e
    ld c, $0d
    inc c
    dec a
    inc a
    ei
    ld hl, sp-$3d
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr @+$21

    jr jr_0ba_658e

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    push af
    nop
    ld [$f500], a
    nop
    ld [$d500], a
    nop
    ld [$d500], a
    nop

jr_0ba_658e:
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    call nc, $aa00
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc e
    jr jr_0ba_6628

    jr jr_0ba_662b

    jr jr_0ba_662b

    jr jr_0ba_6649

    jr nc, jr_0ba_664f

    jr nc, jr_0ba_6653

    jr nc, jr_0ba_6656

    jr nc, jr_0ba_668e

    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

jr_0ba_6628:
    rst $38
    ret nz

    cp a

jr_0ba_662b:
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08

jr_0ba_6649:
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a

jr_0ba_664f:
    ldh a, [$80]
    rst $38
    ld [hl], b

jr_0ba_6653:
    rst $38
    ld c, $ff

jr_0ba_6656:
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
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

jr_0ba_668e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec e
    dec e
    jr jr_0ba_66d6

    jr jr_0ba_66d8

    jr jr_0ba_66da

    jr c, jr_0ba_66fc

    jr nc, jr_0ba_66f6

    jr nc, jr_0ba_66f8

    jr nc, jr_0ba_66fa

    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, b
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

jr_0ba_66d6:
    ret nz

    ret nz

jr_0ba_66d8:
    ret nz

    ret nz

jr_0ba_66da:
    add b
    add b
    and b
    and b
    add b
    add b
    and c
    and c
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ba_66f2

jr_0ba_66f2:
    ld [$1800], sp
    nop

jr_0ba_66f6:
    inc c
    nop

jr_0ba_66f8:
    jr nc, jr_0ba_66fa

jr_0ba_66fa:
    nop
    nop

jr_0ba_66fc:
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld b, $06
    ld b, $06
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec e
    dec e
    dec de
    dec de
    dec de
    dec de
    ld a, [de]
    ld a, [de]
    dec sp
    dec sp
    scf
    scf
    scf
    scf
    inc sp
    inc sp
    ld [hl], c
    ld [hl], c
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    pop bc
    add b
    add b
    add d
    add d
    add b
    add b
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0ba_67e4

    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ba_67de

jr_0ba_67de:
    jr nc, jr_0ba_67e0

jr_0ba_67e0:
    inc b
    nop
    inc c
    nop

jr_0ba_67e4:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ba_6893

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld a, [bc]
    dec h
    ld h, $27
    jr z, jr_0ba_68b7

    ld a, [hl+]
    dec hl
    nop
    nop
    nop

jr_0ba_6893:
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ba_68cb

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, [bc]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    scf
    jr c, jr_0ba_68e0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld a, [bc]
    ld b, c
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h

jr_0ba_68b7:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ccf
    ccf
    ld c, c
    ld hl, $0024
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ccf

jr_0ba_68cb:
    ld d, c
    ld d, d
    ld d, e
    nop
    ld d, h
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld d, e
    nop
    nop

jr_0ba_68e0:
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ccf
    ld l, l
    inc bc
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld a, [bc]
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld a, [bc]
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rlca
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    cp $ff
    rst $38
    ld a, d
    ld a, [$fefe]
    ld l, l
    db $fd
    ld e, e
    db $db
    jr c, @-$06

    cp h
    db $fc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
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
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0ba_6b0c

jr_0ba_6b0c:
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    cp $00
    ld c, $00
    ld a, [hl]
    nop
    db $dd
    nop
    ld a, c
    nop
    ld de, $7100
    nop
    ld e, c
    nop
    pop af
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, d
    ld h, b
    jr nz, @+$22

    jr nz, jr_0ba_6bf6

    db $10
    db $10
    ld a, [de]
    db $10
    rla
    db $10
    rrca
    nop
    dec b
    nop
    sub $00
    rla
    nop
    ld b, a
    nop
    rst $00
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc hl
    nop
    dec de
    nop
    add e
    nop
    ld bc, $0100
    nop

jr_0ba_6bf6:
    ld bc, $0100
    nop
    db $10
    db $10
    db $10
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    adc b
    nop
    ld a, [bc]
    nop
    dec de
    nop
    inc bc
    nop
    ld [bc], a
    nop

jr_0ba_6c16:
    ld sp, $1200
    nop
    rrca
    nop
    ld c, $00
    rst $08
    nop
    rst $00
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0ba_6c16

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    and b
    nop
    ld h, b
    nop
    jr nz, jr_0ba_6cb0

jr_0ba_6cb0:
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    ld a, h
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0ba_6d46

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0ba_6d46:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0ba_6d73

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
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

jr_0ba_6d73:
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld l, $3e
    jr nz, jr_0ba_6dbb

    inc bc
    rra
    ld bc, $080f
    rrca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    nop
    rlca
    ld de, $001f
    rra
    ld hl, HeaderManufacturerCode
    ccf
    inc bc
    ccf
    inc bc
    ld a, $01
    rra
    ld bc, $800f
    rrca
    add c
    rrca
    add b
    rrca
    add b
    rrca
    add h
    rlca
    adc h
    rrca
    ret nz

    rrca
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    ret nz

    nop
    add b
    inc de
    add b
    rrca
    add b
    ld bc, $0380
    nop

jr_0ba_6dbb:
    ld a, a
    ld e, $61
    ld c, $71
    ccf
    db $fd
    rst $18
    rst $38
    push hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ld sp, hl
    db $fc
    pop af
    and $f0
    db $e3
    ld hl, sp-$7f
    db $fc
    ld bc, $20ff
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    ld [hl], b
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
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    rlca
    ret nc

    rst $18
    ldh [rIE], a
    ldh a, [rIE]
    inc e
    ld [hl+], a
    rlca
    nop
    ld h, b
    add e
    jr jr_0ba_6e9c

    rlca
    jr jr_0ba_6e3f

    ld a, [de]
    nop
    ret c

    nop

jr_0ba_6e3f:
    add e
    ld bc, $c0c2
    inc bc
    ret nz

    jr nz, jr_0ba_6e87

    and b
    ld b, b
    and b
    nop
    ld [c], a
    nop
    db $e3
    ld b, b
    cp a
    rst $18
    rst $10
    rst $08
    rst $08
    ld [hl], a
    rst $30
    ld a, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    push af
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    ret nz

    nop
    nop
    nop
    jr nz, jr_0ba_6e7b

jr_0ba_6e7b:
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ba_6e87:
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38

jr_0ba_6e9c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ld bc, $0e00
    inc bc
    ld b, c
    ccf
    ldh [$1f], a
    jr nc, @+$01

    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc e
    ld bc, $8070
    nop
    add b
    inc e
    inc bc
    ldh [$03], a
    nop
    ld [hl], e
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    dec b
    nop
    inc de
    nop
    ld a, l
    nop
    ccf
    rra
    ldh [$3f], a
    rst $18
    ld a, a
    xor a

jr_0ba_6f02:
    rst $38
    ld [hl], b
    ld a, a
    cpl
    ccf
    sbc a
    rra
    ldh [rP1], a
    rst $38
    ccf
    ret nz

    dec de
    db $e4
    ld bc, $013e
    ld b, $01
    ld b, $03
    inc c
    ld b, $39
    inc c
    ld a, [c]
    jr jr_0ba_6f02

    ld [hl], b
    adc b
    ld hl, sp-$61
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld bc, $27ff
    rst $38
    ld a, $fe
    ld bc, $00ff
    rla
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    dec de
    nop
    add b
    ld h, e
    nop
    nop
    nop
    add b
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc de
    ld [$1c16], sp
    db $e3
    ld a, $c1
    dec sp
    call nz, $9e61
    ret nz

    inc sp
    ret nz

    scf
    db $e3
    inc e
    pop bc
    ld a, $c0
    dec a
    add b
    ld a, b
    ld b, b
    cp b
    add b
    ld a, a
    nop
    di
    nop
    pop hl
    add b
    ld a, b
    ret nz

    cp h
    ldh [rLCDC], a
    ldh a, [$e0]
    ldh [$5c], a
    ret nz

    cp h
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    jp nz, $e600

    ldh [$e2], a
    ldh [$63], a
    ldh [$60], a
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    ret z

    ret z

    rst $10
    rst $10
    ld [c], a
    ld [c], a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ret nz

    rst $38
    add a
    rst $38
    add c
    rst $38
    ret nz

    rst $18
    ldh a, [$f3]
    cp $fe
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [$80]
    ld [$2480], sp
    ldh [rTMA], a
    ldh a, [$c9]
    ld hl, sp+$79
    ld hl, sp+$3c
    db $fc
    ld e, $fe
    dec bc
    rst $38
    adc $fe
    add a
    rst $38
    add e
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    ret nz

    ld a, a
    jp Jump_000_007f


    add c
    nop
    ld bc, $0100
    nop
    ld [$0c00], sp
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, $ff
    ld d, $ff
    adc b
    rst $38
    sbc b
    rst $38
    ld a, b
    rst $38
    ld a, b
    cp $83
    sbc a
    inc h
    inc a
    cp h
    inc a
    ld d, d
    ld d, d
    nop
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    db $10
    db $10
    ld l, $3e
    dec e
    rra
    ld h, b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add a
    inc bc
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f0e
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $17fd
    rla
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    and b
    add b
    or b
    add b
    cp b
    ldh [$7c], a
    ldh [$3c], a
    ret nz

    ld a, [$f180]
    ld [$3cfc], sp
    ei
    ld a, [$f0f3]
    db $e3
    ldh [$87], a
    add b
    sbc [hl]
    add b
    jr c, jr_0ba_70c0

jr_0ba_70c0:
    jr nz, jr_0ba_70c2

jr_0ba_70c2:
    ldh [$e0], a
    and b
    and b
    add e
    add b
    adc a
    add b
    jr c, jr_0ba_70cc

jr_0ba_70cc:
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    ld bc, $ff00
    nop
    ld a, a
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $acc4
    xor h
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    cp $02
    cp $82
    cp $e2
    ld e, $f1
    rrca
    dec [hl]
    rst $08
    rra
    rst $28
    ld [$0017], sp
    rst $18
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    and b
    nop
    jr nz, jr_0ba_713e

jr_0ba_713e:
    jr nc, jr_0ba_7140

jr_0ba_7140:
    jr jr_0ba_7142

jr_0ba_7142:
    inc b
    nop
    ld a, [hl]
    nop
    cp $00
    add $00
    rla
    nop
    ld bc, $0100
    nop
    rlca
    nop
    rst $38
    nop
    ei
    nop
    inc bc
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    ld a, [$8600]
    nop
    ld c, $00
    ld [$0400], sp
    nop
    inc d
    nop
    jr c, jr_0ba_716c

jr_0ba_716c:
    stop
    stop
    jr nz, jr_0ba_7172

jr_0ba_7172:
    ld b, b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    inc c
    nop
    ld c, $00
    inc e
    nop
    jr jr_0ba_71e8

jr_0ba_71e8:
    inc e
    nop
    jr jr_0ba_71ec

jr_0ba_71ec:
    inc [hl]
    nop
    jr c, jr_0ba_71f0

jr_0ba_71f0:
    or c
    add c
    ld sp, hl
    pop af
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$1d
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0ba_724c

    jr @+$21

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop

jr_0ba_724c:
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld a, [de]
    nop
    dec e
    nop
    ld a, [de]
    nop
    inc e
    nop
    ld a, [hl-]
    nop
    inc [hl]
    nop
    jr c, jr_0ba_7278

jr_0ba_7278:
    inc [hl]
    nop
    jr c, jr_0ba_727c

jr_0ba_727c:
    ld [hl], h
    nop
    ld l, b
    nop
    ld [hl], c
    ld bc, $0169
    pop de
    ld bc, $01e1
    db $d3
    inc bc
    ld [c], a
    ld [bc], a
    jp nc, $a202

    ld [bc], a
    add $06
    and h
    inc b
    call nz, $8404
    inc b
    ld c, h
    inc c
    adc c
    ld [$084a], sp
    adc b
    ld [$1818], sp
    sub h
    db $10
    ld d, $10
    rla
    db $10
    dec [hl]
    jr nc, jr_0ba_72da

    jr nz, jr_0ba_72dc

    jr nz, @+$31

    jr nz, jr_0ba_7320

    ld h, b
    ld e, a
    ld b, b
    ld e, e
    ld b, b
    ld e, a
    ld b, b
    rst $18
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ccf

jr_0ba_72da:
    rst $30
    rrca

jr_0ba_72dc:
    rra
    ldh [rIF], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    nop
    ld b, $00
    dec b
    nop
    ld c, $00
    dec c
    nop
    ld c, $00
    dec c
    nop
    ld a, [de]
    nop
    dec e
    nop
    ld a, [de]
    nop
    dec e
    nop
    ld a, [de]
    nop
    inc [hl]
    nop
    ld a, [hl-]
    nop
    inc [hl]
    nop
    ld a, [hl-]
    nop

jr_0ba_7320:
    inc [hl]
    nop
    ld l, b
    nop
    ld [hl], h
    nop
    ld l, b
    nop
    ld [hl], h
    nop
    add sp, $00
    ret nc

    nop
    jp hl


    ld bc, $01d1
    pop hl
    ld bc, $01d1
    and e
    inc bc
    db $d3
    inc bc
    and e
    inc bc
    ld b, d
    ld [bc], a
    and [hl]
    ld b, $46
    ld b, $a6
    ld b, $44
    inc b
    adc l
    dec c
    ld c, l
    dec c
    adc l
    dec c
    ld [$9808], sp
    jr jr_0ba_7369

    jr @-$66

    jr jr_0ba_7365

    db $10
    jr nc, jr_0ba_7388

    jr nc, jr_0ba_738a

    inc sp
    inc sp
    ld hl, $2e21
    ld l, $60
    ld h, b
    ld b, b
    ld b, b
    ld b, b

jr_0ba_7365:
    ld b, b
    ld b, b
    ld b, b
    ret nz

jr_0ba_7369:
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add c
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ba_7382

jr_0ba_7382:
    ld [$1800], sp
    nop
    inc c
    nop

jr_0ba_7388:
    jr nc, jr_0ba_738a

jr_0ba_738a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld b, [hl]
    ld b, $86
    ld b, $45
    dec b
    adc l
    dec c
    dec c
    dec c
    adc l
    dec c
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    ld a, [de]
    ld a, [de]
    rla
    rla
    scf
    scf
    scf
    scf
    inc sp
    inc sp
    ld hl, $6321
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    add b
    add b
    add d
    add d
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

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0ba_7474

    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ba_746e

jr_0ba_746e:
    jr nc, jr_0ba_7470

jr_0ba_7470:
    inc b
    nop
    inc c
    nop

jr_0ba_7474:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ba_7523

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, jr_0ba_7536

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ba_7546

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop

jr_0ba_7523:
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_0ba_755d

    ld [hl-], a
    ld a, [bc]
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    dec [hl]

jr_0ba_7536:
    ld [hl], $37
    jr c, jr_0ba_7573

    ld a, [hl-]
    dec sp
    ld sp, $0a3c
    dec a
    nop
    nop
    nop
    nop
    ld a, $3f

jr_0ba_7546:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_0ba_755d:
    ld d, h
    nop
    ld d, l
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, h
    nop
    nop
    nop
    nop
    nop

jr_0ba_7573:
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld e, l
    ld sp, $0067
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    inc bc
    ld [hl], c
    ld [hl], d
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $7f
    add b
    add c
    add d
    add e
    ld a, [bc]
    add h
    add l
    add [hl]
    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld a, [bc]
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    rlca
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    dec b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    db $fd
    db $fd
    ld a, c
    ld sp, hl
    rst $38
    rst $38
    ld l, h
    db $fc
    ld e, d
    jp c, $f838

    cp h
    db $fc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
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
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0ba_779c

jr_0ba_779c:
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc sp
    rrca

Call_0ba_7800:
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    jr nz, jr_0ba_78a2

    jr nz, @+$41

    jr nz, jr_0ba_78a6

    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_0ba_788c

    db $10
    rra
    db $10
    rst $18
    db $10
    rra
    db $10
    ld e, a
    db $10
    rst $18
    db $10
    ld a, a
    ld [$080f], sp
    cpl
    ld [$081f], sp
    adc a
    ld [$080f], sp
    rrca
    ld [$0407], sp
    rlca
    inc b
    rlca
    inc b

jr_0ba_788c:
    rlca
    inc b
    add a
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, e
    ld [bc], a
    jp $8302


    ld [bc], a
    adc e
    ld [bc], a
    add hl, bc
    ld bc, $0119

jr_0ba_78a2:
    inc bc
    ld bc, $0103

jr_0ba_78a6:
    ld sp, $1301
    ld bc, $000f
    ld c, $00
    rst $08
    nop
    rst $00
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0ba_78a6

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_0ba_7938:
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00

jr_0ba_7976:
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    cp $40
    cp $40
    cp $40
    cp $40

jr_0ba_7990:
    cp $40
    cp $40
    cp $20
    cp $20
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_0ba_7990

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $00
    jr c, jr_0ba_7976

    jr c, jr_0ba_7938

    ld a, b
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0ba_79e6

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0ba_79e6:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0ba_7a13

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0200

jr_0ba_7a13:
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    ld c, $00
    ld [$0800], sp
    nop
    ld c, $00
    rrca
    nop
    dec c
    nop
    inc c
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld bc, $0200
    nop
    add d
    nop
    add c
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rst $00
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    dec b
    nop
    ld [$1301], sp
    inc bc
    dec e
    dec b
    inc a
    nop
    ld a, h
    nop
    ld e, [hl]
    nop
    ld b, a
    nop
    pop bc
    nop
    add b
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    nop
    ccf
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rrca
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jp nz, $8302

    inc bc
    adc a
    rrca
    ld c, a
    rrca
    daa
    rlca
    inc b
    rlca
    inc d
    rlca
    inc b
    rlca
    jr jr_0ba_7b0b

    ld a, [$ffff]
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ba_7b0b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld b, $00
    add hl, bc
    ld bc, $0109
    inc de
    inc bc
    daa
    rlca
    dec l
    rrca
    daa
    rlca
    ld e, [hl]
    rra
    call c, $dc1f
    ld a, a
    db $ec
    ld a, a
    ret nz

    ccf
    db $fc
    rra
    ld hl, sp+$0f
    ld hl, sp-$31
    ld hl, sp-$01
    pop af
    rst $38
    ld [hl], e
    ld a, a
    db $10
    rra
    sub b
    rra
    ret nz

    rrca
    ld b, b
    rrca
    db $76
    ld a, a
    ld d, [hl]
    ld e, a
    ld de, $111f
    rra

jr_0ba_7b5a:
    pop bc
    rrca
    ld bc, $1c07
    rra
    ld h, d
    ld h, e
    inc bc
    inc bc
    db $f4
    inc b
    ldh [rP1], a
    rrca
    nop
    ld a, $00
    ldh a, [rP1]
    ret nz

    nop
    rlca
    rlca
    dec bc
    rrca
    jr nc, jr_0ba_7bb5

    jr nc, jr_0ba_7bb7

    jr nc, @+$41

    jr c, @+$41

    ld d, b
    ld e, a
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    and b
    nop
    nop
    nop
    db $10
    ld [hl], b
    ld c, $fc
    nop
    ret nz

    nop
    add b
    nop
    nop
    add b
    nop
    or b
    jr c, @-$37

    ccf
    ret nz

    jr nz, jr_0ba_7b5a

    nop
    ret nz

    nop
    add b
    nop
    add b
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $28
    ldh [$ef], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ba_7bb5:
    rst $38
    rst $38

jr_0ba_7bb7:
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    dec c
    nop
    db $fc
    rra
    nop
    rra
    ld b, b
    ld a, a
    ld b, $ff
    jr nc, @+$01

    ldh [rIE], a
    call z, $87ff
    cp $03
    inc c
    rlca
    jr c, jr_0ba_7c12

    ld [de], a
    ld [$1017], sp
    inc c
    db $10
    ld c, $1c
    inc hl
    jr jr_0ba_7c37

    nop
    dec de

jr_0ba_7c12:
    nop
    ld bc, $0100
    nop
    rrca
    nop
    inc c
    nop
    jr jr_0ba_7c1d

jr_0ba_7c1d:
    ld bc, $0300
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    inc de
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    db $ed
    db $fd
    inc d
    sub h
    ld b, c
    ret nz

    rst $18
    ret nz

    xor a
    and b
    inc b

jr_0ba_7c37:
    nop
    ld b, $00
    inc b
    nop
    inc c
    nop
    add b
    add b
    ld b, b
    ret nz

    add b
    add b
    ld h, c
    pop hl
    ld a, [hl]
    cp $74
    db $f4
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    add b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    ld e, $ff
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    rrca
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ba_7c85:
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

jr_0ba_7c96:
    add b
    nop

jr_0ba_7c98:
    add b
    nop
    ret nz

    nop
    ret nz

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
    add b
    nop
    ld a, b
    ldh [rTAC], a
    db $fc
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    ld a, b
    ret nz

    jr nc, jr_0ba_7c85

    jr nc, jr_0ba_7d2a

    sbc h
    jr nc, jr_0ba_7c96

    jr nc, jr_0ba_7c98

    ld [hl], b
    adc b
    jr nc, jr_0ba_7c98

    scf
    jr nc, @+$19

    db $10
    dec h
    jr nz, @+$15

    db $10
    inc b
    nop
    cp a
    ccf
    ld h, b
    ld a, a
    ret nc

    rst $38
    adc a
    rst $38
    ret nc

    ld a, a
    jr nz, jr_0ba_7d25

    ccf
    rra
    ld bc, $0000
    nop
    rra
    rra
    db $fd
    db $fd
    rst $38
    rlca
    cp $07
    cp $07
    ccf
    inc bc
    ld a, a
    ld a, c
    ld [hl], a
    ld a, h
    ld h, e
    ld a, [hl]
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    jr nz, jr_0ba_7d43

    jr nc, @+$41

jr_0ba_7d06:
    or b
    cp a
    ld a, b
    ld a, a
    sbc $df
    rst $20
    rst $20
    ld hl, sp-$01
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ba_7d25:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ba_7d2a:
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_0ba_7d43:
    nop
    jr nz, jr_0ba_7d06

    db $76
    adc b
    ret nz

    cp $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add e
    inc b
    xor $10
    nop
    inc e
    add c
    ld [bc], a
    ld a, [hl]
    ld bc, $e502
    nop
    ld bc, $0c00
    ei
    ld [$00f3], sp
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    cp e
    add b
    ld b, e
    ret nz

    and b
    ldh [$1f], a
    rst $38
    or a
    rst $30
    ld [hl], l
    push hl
    ldh [$80], a
    ld bc, $0300
    nop
    jp $8fc0


    add b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    ld a, [$7680]
    ldh [$1f], a
    ld h, b
    sbc a
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $ff
    rst $38
    db $fc
    db $fc
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

jr_0ba_7dc8:
    rlca
    rlca
    or b
    cp a
    ld a, h
    rst $38
    ld hl, sp-$01
    pop bc
    ld a, a
    ld [bc], a
    cp $72
    sbc [hl]
    ld [c], a
    ld a, [hl]
    add d
    cp $80
    cp $b8
    rst $38
    db $10
    rst $38
    nop
    jr c, jr_0ba_7e13

    ld [$4c30], sp
    jr z, jr_0ba_7e3c

    jr nz, jr_0ba_7e42

    nop
    ld a, b
    nop
    ld [hl], b
    jr nz, jr_0ba_7dc8

    ldh a, [$bf]
    ldh a, [$3f]
    ld [c], a
    cp $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc e
    nop
    rrca
    nop
    ld a, b
    nop
    db $fc
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    ei
    rra

jr_0ba_7e13:
    rst $38
    ld a, [hl-]
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    add c
    db $fd
    inc bc
    ld sp, hl
    inc bc
    ld hl, sp+$06
    ldh a, [$0c]
    pop af
    ld [$08f3], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38

jr_0ba_7e3c:
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_0ba_7e42:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

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
    add b
    add b
    nop
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$e0], a
    ldh a, [$e0]
    ld [hl], b
    ldh [$f0], a
    ret nz

    ldh a, [$80]
    ret nz

    rrca
    adc a
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld b, e
    nop
    ld h, c
    nop
    ldh a, [rP1]
    ldh [rP1], a
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$1d
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0ba_7f3c

    jr jr_0ba_7f3e

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    inc bc

jr_0ba_7f3c:
    rlca
    inc bc

jr_0ba_7f3e:
    ld b, $02
    ld b, $02
    ld c, $06
    inc c
    inc b
    inc c
    inc b
    inc c
    inc b
    dec e
    inc c
    jr jr_0ba_7f56

    jr @+$0a

    db $10
    db $10
    ldh a, [$f0]
    ldh a, [$f0]

jr_0ba_7f56:
    rst $30
    ldh a, [$f5]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$eb], a
    ldh [$df], a
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0307
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    ld c, $06
    ld e, $0e
    ld e, $0e
    ld e, $0e
    dec e
    dec c
    inc a
    inc e
    inc a
    inc e
    jr c, jr_0ba_7ffa

    jr c, jr_0ba_7ffc

    jr c, jr_0ba_7ffe

    ld [hl], b
    jr nc, @+$72

    jr nc, @+$75

    inc sp
    ld [hl], c
    ld sp, $76f6
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ret nz

jr_0ba_7ffa:
    ret nz

    ret nz

jr_0ba_7ffc:
    ret nz

    ret nz

jr_0ba_7ffe:
    add b
    add b
