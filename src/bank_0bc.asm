SECTION "ROM Bank $0bc", ROMX[$4000], BANK[$bc]

    rla
    add sp, $03
    db $fc
    rlca
    ld hl, sp+$01
    cp $15
    ld [$f00f], a

jr_0bc_400c:
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld d, a
    xor b
    and a
    ld e, b
    ld [hl], b
    adc a
    db $fc
    inc bc
    dec a
    jp nz, Jump_000_24db

    rst $30
    ld [$08f7], sp
    ld l, a
    sub b
    rst $18
    jr nz, jr_0bc_400c

    db $20, $bf
    ld b, b
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr @+$01

    nop
    cp $01
    db $fd
    ld [bc], a
    dec a
    jp nz, Jump_000_34cb

    di
    inc c
    db $f4
    dec bc
    rst $28
    db $10
    call nc, Call_000_1c20
    ldh [$88], a
    ld h, b
    ld c, c
    add b
    ld d, e
    add b
    add b
    nop
    ret nc

    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
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
    rrca
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03fe
    db $fc
    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $db
    daa
    ei
    rlca
    ei
    rlca
    ld a, a
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    xor a
    ld e, a
    ld l, a
    sbc a
    ld e, a
    sbc a
    rst $38
    rra
    ld a, a
    rra
    ccf
    rra
    rra
    ccf
    rra
    ccf
    cp a
    ccf
    rst $08
    ccf
    and e
    ld a, a
    ld hl, sp+$3f
    ld a, [hl]
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
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
    cp a
    rst $38
    rst $08
    rst $38
    ld [hl], a
    ld a, a
    dec a
    ccf
    adc a
    adc a
    dec sp
    dec sp
    rlca
    rlca
    ld d, $16
    inc bc
    inc bc
    dec hl
    dec hl
    scf
    scf
    rla
    rla
    ld h, a
    ld h, a
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
    ld [hl], b
    adc a
    inc e
    db $e3
    rlca
    ld hl, sp+$00
    rst $38
    nop

jr_0bc_4135:
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
    add b
    ld a, a
    sbc a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fc
    rst $38
    rst $28
    rst $28
    jp $c1c3


jr_0bc_415d:
    pop bc
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_0bc_4135

    inc c
    di
    inc bc
    db $fc
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld a, c
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
    ret nz

    ccf
    jr nc, jr_0bc_415d

    inc c
    di
    inc bc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld b, $08
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    dec bc
    inc c
    dec c
    ld b, $06
    ld c, $0f
    db $10
    ld b, $11
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $13
    inc d
    dec d
    ld d, $17
    jr jr_0bc_4238

    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

jr_0bc_4238:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc h
    dec h
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $26
    daa
    jr z, jr_0bc_4286

    ld a, [hl+]
    dec hl
    ld a, [bc]
    inc l
    dec l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $2e
    cpl
    jr nc, jr_0bc_429e

    ld b, $32
    inc sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $34
    dec [hl]
    ld b, $36
    scf
    ld b, $06
    ld b, $06
    ld b, $06

jr_0bc_4286:
    ld b, $06
    ld b, $06
    ld b, $06
    jr c, jr_0bc_4294

    ld b, $39
    ld b, $06
    ld b, $06

jr_0bc_4294:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, [hl-]
    dec sp

jr_0bc_429e:
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0300
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
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
    jr nc, @-$2f

    ld [$03f7], sp
    db $fc
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
    rst $08
    rst $38
    scf
    ccf
    add hl, bc
    rrca
    ld b, $07
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rst $38
    rst $38
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
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    cp $cf
    cp $f3
    cp $fd
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    ld a, a
    scf
    ccf
    dec c
    rrca
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
    rst $38
    rst $38
    rst $38
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
    ccf
    rra
    ccf
    rlca
    dec a
    inc bc
    jr c, jr_0bc_456d

    jr nc, jr_0bc_4577

    add b
    rra
    sub c
    rra
    ld [bc], a

jr_0bc_456d:
    rra
    add h
    rra
    ret z

    rra
    sub b
    rra
    add b
    rra
    add b

jr_0bc_4577:
    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [rIF], a
    pop bc
    ld c, $e1
    ld c, $c1
    ld c, $e1
    ld c, $cc
    inc bc
    rst $08
    nop
    rst $08
    nop
    rst $08
    add b
    rst $00
    adc b
    pop bc
    adc [hl]
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    add b
    ldh a, [$80]
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0bc_45c0:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    inc c
    di
    dec c
    ld a, [c]
    daa
    ret c

    and $19
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    scf
    ret z

    rst $08
    jr nc, jr_0bc_45c0

    inc e
    call c, $bf23
    ld b, b
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop

jr_0bc_45f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    rra
    sbc a
    rlca
    rst $20
    nop
    ld hl, sp+$00
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
    ldh a, [rIF]
    dec hl
    rst $10
    rlca
    ld hl, sp-$79
    ld a, b
    add hl, bc
    or $1e
    pop hl
    ccf
    ret nz

    ld c, a
    or b
    ld [hl], e
    adc h
    db $fc
    inc bc
    cp $01
    ld a, $c1
    call $f332
    inc c
    ld hl, sp+$07
    rst $30
    ld [$10ef], sp
    rra
    ldh [$cf], a
    jr nc, jr_0bc_45f8

    ld c, h
    ld a, h
    add e
    ld a, a
    add b
    cp $00
    dec a
    ret nz

jr_0bc_464e:
    rrca
    ldh a, [rIE]
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
    rra
    nop
    rlca
    nop
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bc_466c:
    ccf
    ccf
    rrca
    rst $08
    ld bc, $00f1
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $30
    rrca
    ld l, a
    sub c
    rst $18
    jr nz, jr_0bc_466c

    jr nz, jr_0bc_464e

    ld b, b
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr @+$01

    nop
    cp $01
    db $fd
    ld [bc], a
    dec a
    jp nz, Jump_000_34cb

    di
    inc c
    db $f4
    dec bc
    rst $28
    db $10
    call nc, Call_000_1c20
    ldh [$88], a
    ld h, b
    ld c, c
    add b
    ld d, e
    add b
    add b
    nop
    ret nc

    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
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
    rrca
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp-$7d
    ldh a, [$c7]
    ldh a, [$e7]
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ld b, b
    ld e, a
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
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    xor a
    ld e, a
    ld l, a
    sbc a
    ld e, a
    sbc a
    rst $38
    rra
    ld a, a
    rra
    ccf
    rra
    rra
    ccf
    rra
    ccf
    cp a
    ccf
    rst $08
    ccf
    and e
    ld a, a
    ld hl, sp+$3f
    ld a, [hl]
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
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
    cp a
    rst $38
    rst $08
    rst $38
    ld [hl], a
    ld a, a
    dec a
    ccf
    adc a
    adc a
    dec sp
    dec sp
    rlca
    rlca
    ld d, $16
    inc bc
    inc bc
    dec hl
    dec hl
    scf
    scf
    rla
    rla
    ld h, a
    ld h, a
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
    ld [hl], b
    adc a
    inc e
    db $e3
    rlca
    ld hl, sp+$00
    rst $38
    nop

jr_0bc_4775:
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
    add b
    ld a, a
    sbc a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fc
    rst $38
    rst $28
    rst $28
    jp $c1c3


jr_0bc_479d:
    pop bc
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_0bc_4775

    inc c
    di
    inc bc
    db $fc
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld a, c
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
    ret nz

    ccf
    jr nc, jr_0bc_479d

    inc c
    di
    inc bc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld b, $08
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    dec bc
    inc c
    dec c
    ld b, $06
    ld b, $0e
    rrca
    ld b, $10
    ld de, $0a0a
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $13
    inc d
    dec d
    ld d, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rla
    jr @+$0c

    ld a, [bc]
    ld b, $06
    add hl, de
    ld a, [bc]
    ld a, [de]
    dec de
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $1c
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    dec e
    ld e, $1f
    jr nz, jr_0bc_489d

    ld b, $06
    ld b, $06
    ld b, $06

jr_0bc_489d:
    ld hl, $0a22
    ld b, $06
    inc hl
    inc h
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $25
    ld b, $06
    ld h, $27
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $28
    add hl, hl
    ld b, $2a
    dec hl
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc l
    ld b, $06
    dec l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, $2f
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    ld [bc], a
    ld [bc], a
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
    inc bc
    inc bc
    ld [bc], a
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    dec b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
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
    jr nc, @-$2f

    ld [$03f7], sp
    db $fc
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
    rst $08
    rst $38
    scf
    ccf
    add hl, bc
    rrca
    ld b, $07
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

jr_0bc_4b1f:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_0bc_4b1f

    inc c
    di
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    ld a, a
    scf
    ccf
    dec c
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $0001
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
    rst $38
    nop
    rst $08
    db $10
    pop bc
    ld e, $c0
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    pop bc
    rra
    pop bc
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret c

    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rrca
    rst $08
    inc bc
    di
    nop
    db $fc
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
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
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
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    sbc a
    rlca
    rst $20
    nop
    ld hl, sp+$00
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
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $80
    cp $80
    db $fc
    ld bc, $01fc
    db $fc
    pop bc
    ld hl, sp-$1d
    ld hl, sp-$0d
    ld hl, sp-$05
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    jr nz, jr_0bc_4c95

    nop
    rst $08
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
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    dec b
    rlca
    nop

jr_0bc_4c85:
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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

jr_0bc_4c95:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ret nz

    rra
    add b
    ccf
    add b
    ccf
    add b
    ccf
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
    jr nc, jr_0bc_4c85

    inc e
    db $e3
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ld [hl], a
    ld a, a
    dec a
    ccf
    adc a
    adc a
    dec sp
    dec sp
    rlca
    rlca
    ld d, $16
    inc bc
    inc bc
    dec hl
    dec hl
    scf
    scf
    rla
    rla
    ld h, a
    ld h, a
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
    ld [hl], b
    adc a
    inc e
    db $e3
    rlca
    ld hl, sp+$00
    rst $38
    nop

jr_0bc_4cf5:
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
    add b
    ld a, a
    sbc a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fc
    rst $38
    rst $28
    rst $28
    jp $c1c3


jr_0bc_4d1d:
    pop bc
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_0bc_4cf5

    inc c
    di
    inc bc
    db $fc
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld a, c
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
    ret nz

    ccf
    jr nc, jr_0bc_4d1d

    inc c
    di
    inc bc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0101
    ld c, $0f
    db $10
    ld de, $1211
    inc de
    inc d
    ld bc, $1615
    rla
    jr @+$03

    ld bc, $0e01
    rrca
    db $10
    ld de, $1211
    add hl, de
    ld a, [de]
    ld bc, $1b15
    inc e
    dec e
    ld bc, $0101
    ld c, $0f
    db $10
    ld de, $1211
    ld e, $1f
    ld bc, $2120
    ld [hl+], a
    inc hl
    ld bc, $0101
    ld c, $0f
    db $10
    ld de, $1211
    inc h
    dec h
    ld bc, $2620
    daa
    jr z, @+$03

    ld bc, $2901
    ld a, [hl+]
    dec hl
    inc l
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bc_4e5e

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_4e5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0204
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0203
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0204
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $00
    cp $00
    cp $00
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $fe
    cp $00
    rst $38
    nop
    rst $38
    and d
    nop
    ld de, $0300
    nop
    rrca
    nop
    add hl, bc
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ret z

    nop
    ld a, [hl-]
    nop
    jr jr_0bc_50bc

jr_0bc_50bc:
    jr nc, jr_0bc_50be

jr_0bc_50be:
    ldh a, [rP1]
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    pop bc
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    ld [$7f00], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    nop
    or b
    nop
    db $f4
    nop
    ei
    nop
    ld b, d
    nop
    inc b
    nop
    inc bc
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    dec bc
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
    inc de
    nop
    inc bc
    nop
    ldh [rP1], a
    rst $00
    nop
    nop
    nop
    jp $ffbc


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld bc, $0001
    nop
    nop
    nop
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    ld h, $00
    ld a, [$0300]
    nop
    dec bc
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, a
    nop
    dec d
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    adc b
    nop
    nop
    nop
    ldh [rP1], a
    stop
    ret nz

    dec [hl]
    ccf
    cp a
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
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
    ld e, $00
    or $00
    cp b
    nop
    adc a
    nop
    add b
    nop
    sub c
    nop
    add hl, bc
    nop
    ld [hl], b
    nop
    jr nc, jr_0bc_5202

jr_0bc_5202:
    cp $00
    cp [hl]
    nop
    add b
    nop
    sbc h
    nop
    sub c
    nop
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr nc, jr_0bc_521c

jr_0bc_521c:
    ld [hl-], a
    nop
    cp $00
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    db $fd
    nop
    ld [hl], a
    nop
    ei
    nop
    ld sp, hl
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    add hl, sp
    nop
    sbc [hl]
    nop
    ld l, b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $9d00
    nop
    nop
    nop
    stop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
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

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop

jr_0bc_5299:
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

jr_0bc_52a9:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$c0], a
    ldh [$e0], a
    rst $18
    ldh [$df], a
    jr nz, @+$21

    jr nz, @+$21

    jr nc, jr_0bc_5299

    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [rIF]
    jr nc, jr_0bc_52a9

    jr nc, jr_0bc_52eb

    jr nc, jr_0bc_52ed

    jr nc, jr_0bc_52ef

    jr nc, jr_0bc_52f1

    jr nc, @+$11

    jr nc, @+$11

    jr nc, @+$11

    ccf
    jr nc, jr_0bc_532a

jr_0bc_52eb:
    jr nc, jr_0bc_532c

jr_0bc_52ed:
    jr nc, jr_0bc_532e

jr_0bc_52ef:
    jr nc, jr_0bc_5321

jr_0bc_52f1:
    ccf
    jr nc, jr_0bc_5333

    jr nc, jr_0bc_5335

    jr nc, jr_0bc_5337

    rra
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $28
    nop
    ld b, b
    nop
    ld h, e
    nop
    or e
    nop
    rst $38
    nop
    dec sp
    nop
    rrca
    nop
    dec e

jr_0bc_5321:
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld [hl], l
    nop

jr_0bc_532a:
    ld hl, sp+$00

jr_0bc_532c:
    sub a
    nop

jr_0bc_532e:
    rla
    nop
    nop
    nop
    nop

jr_0bc_5333:
    nop
    nop

jr_0bc_5335:
    nop
    nop

jr_0bc_5337:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0b0a
    inc c
    ld bc, $0e0d
    rrca
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec bc
    ld de, $0d01
    ld [de], a
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec d
    ld d, $01
    rla
    jr @+$1b

    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec de
    inc e
    ld bc, $1d17
    ld e, $1f
    ld bc, $0101
    ld bc, $0101
    ld bc, $2001
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0204
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc bc
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    inc bc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $00
    cp $00
    cp $00
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $fe
    cp $00
    rst $38
    nop
    rst $38
    and d
    nop
    ld de, $0300
    nop
    rrca
    nop
    add hl, bc
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ret z

    nop
    ld a, [hl-]
    nop
    jr jr_0bc_564c

jr_0bc_564c:
    jr nc, jr_0bc_564e

jr_0bc_564e:
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
    nop
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    ld [$7f00], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    nop
    or b
    nop
    db $f4
    nop
    ei
    nop
    ld b, d
    nop
    inc b
    nop
    inc bc
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    dec bc
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
    inc de
    nop
    inc bc
    nop
    ldh [rP1], a
    rst $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    ld h, $00
    ld a, [$0300]
    nop
    dec bc
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, a
    nop
    dec d
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    adc b
    nop
    nop
    nop
    ldh [rP1], a
    stop
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
    ret nz

    ccf
    nop
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
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
    ld e, $00
    or $00
    cp b
    nop
    adc a
    nop
    add b
    nop
    sub c
    nop
    add hl, bc
    nop
    ld [hl], b
    nop
    jr nc, jr_0bc_5742

jr_0bc_5742:
    cp $00
    cp [hl]
    nop
    add b
    nop
    sbc h
    nop
    sub c
    nop
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr nc, jr_0bc_575c

jr_0bc_575c:
    ld [hl-], a
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
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    db $fd
    nop
    ld [hl], a
    nop
    ei
    nop
    ld sp, hl
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    add hl, sp
    nop
    sbc [hl]
    nop
    ld l, b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $9d00
    nop
    nop
    nop
    stop
    ld bc, $0100
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$f0]
    ldh a, [$c0]
    ldh a, [$f0]
    rst $08
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [rIF]
    jr nc, @-$2f

    jr nc, jr_0bc_57eb

    jr nc, jr_0bc_57ed

    jr nc, jr_0bc_57ef

    jr nc, jr_0bc_57f1

    jr nc, @+$11

    jr nc, @+$11

    jr nc, @+$11

    ccf
    jr nc, jr_0bc_582a

jr_0bc_57eb:
    jr nc, jr_0bc_582c

jr_0bc_57ed:
    jr nc, jr_0bc_582e

jr_0bc_57ef:
    jr nc, jr_0bc_5821

jr_0bc_57f1:
    ccf
    jr nc, jr_0bc_5833

    jr nc, jr_0bc_5835

    jr nc, jr_0bc_5837

    rra
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $28
    nop
    ld b, b
    nop
    ld h, e
    nop
    or e
    nop
    rst $38
    nop
    dec sp
    nop
    rrca
    nop
    dec e

jr_0bc_5821:
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld [hl], l
    nop

jr_0bc_582a:
    ld hl, sp+$00

jr_0bc_582c:
    sub a
    nop

jr_0bc_582e:
    rla
    nop
    nop
    nop
    nop

jr_0bc_5833:
    nop
    nop

jr_0bc_5835:
    nop
    nop

jr_0bc_5837:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    rlca
    ld [$0109], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a02
    dec bc
    inc c
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    db $10
    ld de, $0112
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0e
    inc de
    inc d
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e01
    rrca
    ld d, $17
    jr jr_0bc_5901

jr_0bc_5901:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    and d
    nop
    ld de, $0300
    nop
    rrca
    nop
    add hl, bc
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ret z

    nop
    ld a, [hl-]
    nop
    jr jr_0bc_5b1c

jr_0bc_5b1c:
    jr nc, jr_0bc_5b1e

jr_0bc_5b1e:
    ldh a, [rP1]
    sbc a
    nop
    or b
    nop
    db $f4
    nop
    ei
    nop
    ld b, d
    nop
    inc b
    nop
    inc bc
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    dec bc
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
    inc de
    nop
    inc bc
    nop
    ldh [rP1], a
    rst $00
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
    cp $01
    ld bc, $fffe
    nop
    rst $38
    nop
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    ld h, $00
    ld a, [$0300]
    nop
    dec bc
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, a
    nop
    dec d
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    adc b
    nop
    nop
    nop
    ldh [rP1], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $00
    or $00
    cp b
    nop
    adc a
    nop
    add b
    nop
    sub c
    nop
    add hl, bc
    nop
    ld [hl], b
    nop
    jr nc, jr_0bc_5bc2

jr_0bc_5bc2:
    cp $00
    cp [hl]
    nop
    add b
    nop
    sbc h
    nop
    sub c
    nop
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr nc, jr_0bc_5bdc

jr_0bc_5bdc:
    ld [hl-], a
    nop
    cp $00
    db $fd
    nop
    ld [hl], a
    nop
    ei
    nop
    ld sp, hl
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    add hl, sp
    nop
    sbc [hl]
    nop
    ld l, b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $9d00
    nop
    nop
    nop
    stop
    ld bc, $0100
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $28
    nop
    ld b, b
    nop
    ld h, e
    nop
    or e
    nop
    rst $38
    nop
    dec sp
    nop
    rrca
    nop
    dec e
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld [hl], l
    nop
    ld hl, sp+$00
    sub a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $00
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0bc_5d1e

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
    nop
    nop
    nop
    rra
    jr nz, jr_0bc_5d3a

    nop
    nop
    nop
    nop
    nop

jr_0bc_5d1e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
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

jr_0bc_5d3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    ld b, a
    sbc b
    rlca
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    dec a
    jp $c23f


    ld a, $c4
    inc d
    ld l, l
    inc e
    ld l, c
    inc e
    ld l, c
    inc e
    ld l, e
    ld e, $65
    ld l, $55
    adc [hl]
    dec [hl]
    adc [hl]
    inc [hl]
    sbc a
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld b, b
    ldh [rLCDC], a
    ret nz

    sbc a
    add b
    scf
    add b
    inc sp
    inc c
    ld [hl], e
    rra
    ldh [$3f], a
    nop
    ld a, $c1
    rrca
    ldh a, [$1f]
    ldh [$38], a
    rst $00
    nop
    rst $08
    nop
    cp $01
    add b
    ld a, a
    ld bc, $7ffe
    rst $38
    add b
    db $fc
    nop
    di
    nop
    call z, Call_000_3002
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    inc b
    rrca
    inc b
    rrca
    db $e4
    rrca
    or h
    rrca
    inc [hl]
    adc a
    ld [hl], h
    rrca
    db $f4
    rrca
    db $f4

jr_0bc_5f46:
    rrca
    db $f4
    adc a
    ld h, h
    rrca
    inc h
    rra
    ret z

    ccf
    db $10
    db $fc
    jr nz, jr_0bc_5f46

    ret nz

    call z, $3102
    ld [$07c0], sp
    inc b
    rrca
    nop
    ld a, h
    ld hl, $fef3
    nop
    push de
    nop
    xor d
    nop
    ld d, c
    nop
    jr z, jr_0bc_5f6a

jr_0bc_5f6a:
    ld de, $0200
    nop
    ld bc, $0b00
    ld bc, $0257
    xor [hl]
    inc b
    ld d, [hl]
    inc b
    xor [hl]
    inc b
    ld d, [hl]
    inc b
    xor [hl]
    dec b
    ld d, [hl]
    dec b
    cp [hl]
    dec b
    cp $05
    and $1d
    ld e, $e4
    cp $04
    cp $04
    cp $04
    ld a, a
    inc b
    rst $38
    inc bc
    ld e, a
    nop
    xor [hl]
    nop
    ld d, l
    nop
    ld [$5700], a
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, a
    nop
    xor d
    nop
    ld a, l
    nop
    xor a
    nop
    rst $18
    nop
    xor e
    ld bc, $02d7
    xor [hl]
    inc b
    call c, $f809
    inc de
    ldh a, [$27]
    ldh a, [$27]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$27]
    ldh a, [rNR42]
    cp $20
    rst $38
    ld e, $ff
    ld bc, $00ff
    cp a
    nop
    ld d, a
    inc bc
    cpl
    inc b
    ld e, h
    ld [$13b8], sp
    ld [hl], b
    daa
    ldh [rVBK], a
    ret nz

    sbc a
    add b
    ccf
    nop
    ld a, c
    nop
    ldh a, [$6f]
    sub b
    ccf
    ret nz

    ccf
    ret nz

    ld c, $f1
    add b
    rrca
    ld [hl], c
    adc [hl]
    ccf
    ret nz

    ld l, a
    sub b
    rst $00
    jr jr_0bc_5fff

    sbc c
    nop
    rst $38
    nop
    cp $01

jr_0bc_5fff:
    inc e
    db $e3
    ld bc, $e2ff
    cp [hl]
    inc e
    ld a, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld [hl], l
    nop
    ld [$d700], a
    nop
    ld a, [$ff00]

jr_0bc_6017:
    jr jr_0bc_6017

    ld h, $e7
    ld b, c
    pop bc
    sbc b
    add b
    ld a, $00
    ld a, a
    ld a, b
    add a
    sub h
    ld h, e
    ld a, [bc]
    pop af
    ld c, $f1
    ld c, $f1
    inc c
    di
    inc d
    ld [c], a
    add hl, de
    db $e4
    inc sp
    ret


    rst $00
    ld [hl-], a
    rrca
    db $e4
    inc e
    ld [$10f3], sp
    db $ec
    ld [c], a
    jr c, jr_0bc_6047

    db $eb
    nop
    push de
    nop
    db $eb
    add b
    push af

jr_0bc_6047:
    ld h, b
    ld a, a
    db $10
    rra
    adc b
    rrca
    db $e4
    rrca
    db $e4
    rrca
    db $e4
    ld l, a
    sub h
    ld c, a
    or h
    rst $08
    inc [hl]
    rst $08
    inc [hl]
    adc a
    ld [hl], h
    inc c
    sub a
    rst $08
    inc d
    rst $28
    inc b
    rst $08
    inc h
    ld l, a
    add h
    rra

jr_0bc_6067:
    ret z

    ccf
    sub b
    ld a, a
    jr nz, jr_0bc_6067

    ld b, b
    db $dd
    add b
    cp [hl]
    nop
    push af
    nop

jr_0bc_6074:
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$5500], a
    nop
    cp d
    nop
    ld e, l
    nop
    ei
    nop
    ld [hl], l
    nop
    ld [$ff00], a
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    db $fc
    add b
    di
    nop
    adc $00
    jr nc, jr_0bc_60b3

    ldh a, [rIF]
    add b
    ld e, h
    nop
    ld [hl], e
    inc bc
    rst $08
    cp d
    nop
    ld d, l

jr_0bc_60b3:
    nop
    ld [$5d00], a
    nop
    cp a
    nop
    ld d, a
    nop
    xor a
    ld bc, $025f
    rst $38
    ld [bc], a
    cp $04
    db $fc
    add hl, bc
    ld sp, hl
    ld [de], a
    ld hl, sp+$13
    ld sp, hl
    ld d, $f8
    rla
    ld sp, hl
    ld d, $f8
    inc de
    ld hl, sp+$13
    db $fc
    db $10
    rst $38
    inc c
    rst $38
    inc bc
    di
    nop
    call z, $3003
    dec b
    adc a
    jr nz, jr_0bc_6142

    jr nz, jr_0bc_6074

    jr nz, @+$01

    jr nz, @+$01

    ld d, b
    rst $18
    adc h
    adc a
    ld [hl+], a
    inc bc
    ld [hl], c
    inc bc
    ld a, c
    dec bc
    push af
    ld h, e
    sbc l
    adc e
    ld [hl], l
    ld h, e
    sbc l
    adc e
    ld [hl], l
    ld h, e
    sbc c
    add a
    ld [hl], d
    inc c
    db $e4
    dec de
    ret z

    inc a
    inc de
    ldh a, [$2f]
    pop bc
    rst $38
    ld bc, $017f
    rst $18
    rlca
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

jr_0bc_6142:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $00
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0bc_6200:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop hl
    pop hl
    and $e7
    add sp, -$11
    add sp, -$11
    ldh a, [rIE]
    and b
    cp a
    jr nz, jr_0bc_63ed

    jr nz, @+$41

    jr nz, jr_0bc_63f1

    jr nc, jr_0bc_63f3

    jr c, jr_0bc_63f5

    jr c, @+$41

    inc a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    db $fc
    db $fc
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

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

jr_0bc_63ed:
    rst $38
    cp $ff
    ld a, [c]

jr_0bc_63f1:
    di
    inc b

jr_0bc_63f3:
    rlca
    inc b

jr_0bc_63f5:
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
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
    db $fc
    nop
    db $fc
    inc bc
    ei
    inc b
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
    rlca
    rst $38
    rrca
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    pop hl
    pop hl
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rst $08
    rst $08
    rrca
    rst $08
    rlca
    rst $00
    scf
    rst $30
    ld c, $fe
    inc e
    db $fc
    ld e, $fe
    ld a, $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0bc_6530

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bc_6547

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_6530:
    dec h
    ld h, $27
    jr z, jr_0bc_655e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0bc_6575

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bc_6547:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_655e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_6575:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld b, $01
    ld bc, $0303
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$b0], a
    ld [hl], b
    ld a, d
    db $f4
    jr nz, @-$06

    jr @-$0a

    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$ec], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$ec]
    ldh [$f0], a
    ldh a, [$f4]
    ld hl, sp-$02
    ld a, [$f8fa]
    cp $fe
    rst $38
    nop
    cp $80
    cp $fe
    cp $fc
    cp $e0
    cp $e0

jr_0bc_6727:
    cp $80
    cp $f8

jr_0bc_672b:
    cp $fe

jr_0bc_672d:
    rst $38
    db $fc
    rst $38
    db $fc

jr_0bc_6731:
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $30
    ld [$1ce3], sp
    or c
    ld c, [hl]
    adc c
    ld a, [hl]
    add b
    ld a, a
    and h
    ld e, e
    jr nz, jr_0bc_6727

    ld h, b
    db $db
    inc h
    db $db
    jr nz, jr_0bc_6731

    jr nz, jr_0bc_672b

    jr nz, jr_0bc_672d

    ld hl, $71d2
    ret nc

    dec [hl]
    ret nc

    dec [hl]
    ret nc

jr_0bc_675e:
    ld d, h
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$d8]
    db $f4
    ret c

    rst $30
    ldh [$f4], a
    ret nc

    di
    ldh [$f1], a
    add sp, -$1c
    pop hl
    ld [c], a
    db $e3
    db $fc
    and $f8
    ldh [$e1], a
    sbc b
    rst $20
    ld [hl], b
    adc a
    add e
    ld a, h
    add l
    ld a, d
    and h
    ld e, e
    ld [$4ef7], sp
    or e
    adc b
    rst $30
    ld [bc], a
    db $fd
    ld [$28f7], sp
    rst $10
    nop

jr_0bc_6791:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $13
    ret z

    ld [de], a
    and c
    jr nz, jr_0bc_67fc

    ld c, h
    inc hl
    ld c, l
    ld [hl+], a
    ld a, [hl-]
    add l
    add l
    jr nc, jr_0bc_675e

    nop
    cp $01
    rst $18
    nop
    rst $18
    nop
    ld d, a
    and b
    ld d, a
    and b
    rlca
    ld hl, sp+$2a
    push de
    jr z, jr_0bc_6791

    ld [$08f7], sp
    rst $30
    ld [$00f7], sp
    ccf
    ld b, b
    rra
    ld b, b
    rla
    ld b, b
    rlca
    ld [$8803], sp
    nop
    jp z, Jump_0bc_6200

    add b
    ld h, d
    add b

jr_0bc_67d2:
    ld [hl], d
    add b
    ld d, [hl]
    and b
    ld e, a
    and b
    rst $10
    jr z, jr_0bc_67d2

    ld [$c03f], sp
    dec e
    ld [c], a
    inc c
    ld [hl], e
    ld a, [bc]
    ld [hl], l
    ld [bc], a
    ld a, l
    add b
    ld a, l
    add b
    ld a, l
    add d
    ld l, l
    add b
    ld c, a
    add b
    rlca
    nop
    inc bc
    nop
    db $10
    add b

jr_0bc_67f5:
    stop
    db $10
    ld b, $38
    inc bc
    inc [hl]

jr_0bc_67fc:
    ld bc, $0c70
    ret nz

    inc b
    ld h, c
    nop
    ld b, b
    ld de, $e186
    ld [$8000], sp
    rlca
    ld hl, sp-$79
    ld a, b
    ld de, $61ee
    ld [de], a
    ld h, h
    ld de, $1106
    inc d
    dec bc
    adc [hl]
    ld bc, $0528
    nop
    ld bc, $0180
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8cdb
    ld [hl-], a
    jr nc, jr_0bc_67f5

    add b
    ld b, l
    dec hl
    ld d, h
    sbc $20
    ld h, c

jr_0bc_6833:
    ld a, [bc]
    cpl
    ld b, b
    db $db
    jr nz, jr_0bc_6833

    nop
    ld e, a
    nop
    ei
    nop
    ld [hl], d
    nop
    call nz, Call_0bc_6d1b
    ld [de], a
    adc d
    ld [hl], l
    xor b
    ld d, a
    add hl, hl
    sub $ac
    ld d, e
    and h
    ld e, e
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld bc, $04de
    db $d3
    inc b
    ld d, c
    ld b, h
    nop
    ld b, b
    nop
    ld e, c
    nop
    dec a
    nop
    cp $00
    xor $10
    xor [hl]
    ld d, b
    xor [hl]
    ld d, b
    xor a
    ld d, b
    cp a
    ld b, b
    cp e
    ld b, h
    ld h, e
    sbc h
    ld h, l
    sbc d
    nop
    ei
    inc d
    ld l, e
    inc b
    ld l, e
    nop
    ld l, a
    add b
    ld a, a
    add h
    ld [hl], e
    add h
    ld h, c
    add h
    ld b, b
    add h
    nop
    add b
    nop
    add b
    nop
    ld [bc], a
    nop
    adc c
    ld b, $f1
    ld a, [bc]
    nop
    rlca
    nop
    db $10
    ld h, b
    nop
    add e
    ld e, b
    rlca
    and b
    nop
    dec c
    ld de, $72ee
    adc l
    ld c, $f1
    ld [hl+], a
    ld e, l
    sub $39
    and $19
    jp z, $c235

    dec a
    sub $2d
    sbc e
    inc c
    sub d
    ld c, l
    inc c
    di
    rlca
    ld hl, sp+$7c
    rst $38
    and l
    rst $20
    sub b
    xor h
    ld c, e
    inc [hl]
    and b
    ld c, b
    inc d
    ld a, [bc]
    and b
    ld e, a
    ld a, $c1
    dec de
    and h
    push af
    nop
    or a
    nop
    rst $30
    nop

jr_0bc_68cc:
    rst $38
    nop
    or l
    nop
    ld d, [hl]
    and b
    ld b, $f0
    ld b, d
    cp h
    ld c, d
    or l
    ld b, b
    cp a
    ld c, b
    or a
    ld b, d
    cp l
    ld b, d
    cp l
    ld [bc], a
    db $dd
    nop
    sub a
    nop
    sub a
    nop
    pop bc
    nop
    ld b, c
    add b
    ld b, b
    sub c
    nop
    sub c
    nop
    sub b
    nop
    sub c
    nop
    xor $00
    xor [hl]
    ld b, b
    cp d
    ld b, h
    cp e
    ld b, h
    cp a
    ld b, b
    xor e
    ld d, h
    pop bc
    ld a, $c9
    ld [hl], $02
    db $fd
    ld b, [hl]
    cp c
    ld a, [bc]
    or l
    ld b, b
    cp l
    inc b
    cp c
    ld [$48f7], sp
    or c
    ld [bc], a
    nop
    ld b, d
    nop
    ld b, b
    nop
    ld [bc], a
    inc b
    add hl, bc
    ld b, $70
    rrca
    nop
    adc [hl]
    nop
    add b
    inc h
    nop
    nop
    ld d, $c0
    ld c, $01
    add d
    inc e
    db $fc
    ld a, h
    db $fc
    rst $38
    cp $21
    dec bc
    ld b, c
    dec de
    pop hl
    dec bc
    ld bc, $0117
    ld bc, $0301
    and c
    inc bc
    rlc c
    rst $18
    jr nz, jr_0bc_68cc

    db $76
    db $ed
    ld [de], a
    dec e
    ld [c], a
    add hl, de
    add [hl]
    ld c, l
    ld [hl+], a
    ld b, l
    xor d
    dec de
    inc b
    rst $08
    db $10
    xor a
    nop
    rrca
    or b
    cp a
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld l, a
    db $10
    ld l, a
    db $10
    rst $28
    db $10
    xor a
    ld d, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh [rIF], a
    ret nz

    rrca
    ret nz

    rrca
    add b
    rrca
    add b
    rrca
    add b
    rra
    add b
    ccf
    nop
    ld a, a
    nop
    cp a
    ld c, b
    cp b
    ld c, a
    or d
    ld c, a
    or d
    ld c, a
    db $e3
    ld e, $c7
    ld a, $c0
    ccf
    adc b
    ld [hl], a
    nop
    rst $30
    ld [$40f7], sp
    or a
    ld [$06b7], sp
    or a
    ld b, [hl]
    and a
    ld b, [hl]
    add a
    rrca
    rst $00
    rlca
    rrca
    scf
    rrca
    inc hl
    rla
    ret nz

    ld e, $c1
    inc sp
    ld b, $3a
    dec c
    push bc
    ld [de], a
    nop
    cpl
    ld d, b
    inc c
    ldh a, [$82]
    ld a, b
    dec b
    reti


    ld c, b
    db $10
    ld a, l
    add c
    or [hl]
    ld c, d
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    ret c

    rst $38
    cp a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $8fff
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    cp a
    ccf
    rst $18
    inc de
    ld l, a
    dec c
    scf
    inc hl
    rra
    ld h, e
    inc bc
    ret nz

    or [hl]
    ld sp, hl
    ld a, [c]
    ldh a, [$fd]
    jr nc, @-$01

    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0bc_6b20

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bc_6b37

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_6b20:
    dec h
    ld h, $27
    jr z, jr_0bc_6b4e

Jump_0bc_6b25:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0bc_6b65

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bc_6b37:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_6b4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_6b65:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld b, $01
    ld bc, $0303
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$b0], a
    ld [hl], b
    ld a, d
    db $f4
    jr nz, @-$06

    jr @-$0a

    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$ec], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$ec]
    ldh [$f0], a
    ldh a, [$f4]
    ld hl, sp-$02
    ld a, [$f8fa]
    cp $fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    ldh [$fe], a
    add b
    cp $f8

Call_0bc_6d1b:
    cp $fe
    cp $fc
    cp $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $30
    ld [$1ce3], sp
    or e
    ld c, h
    adc e
    ld a, h
    add d
    ld a, h
    and h
    ld e, d
    ld hl, $65de
    jp c, $db24

    dec h
    jp c, $da25

    dec h
    jp c, $de21

    ld [hl], c
    sbc $31
    sub $30
    rst $10
    ld d, b
    rst $30
    db $10
    rst $30
    ld d, b
    pop af
    ld d, b
    pop af
    ret c

    push af
    ret c

    rst $30
    ldh [$f4], a
    ret nc

    di
    ldh [$f5], a
    ldh [$fe], a
    pop hl
    ld a, [c]
    ld [c], a
    db $fd
    and $f9
    ldh [$e1], a
    sbc b
    rst $20
    ld [hl], b
    adc a
    add e
    ld a, h
    add l
    ld a, d
    and h
    ld e, e
    ld [$4ef7], sp
    or e
    adc b
    rst $30
    ld [bc], a
    db $fd
    ld [$28f7], sp
    rst $10
    nop

jr_0bc_6d81:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $13
    ret z

    ld [de], a
    and c
    jr nz, jr_0bc_6dec

    ld c, h
    inc hl
    ld c, l
    ld [hl+], a
    ld a, [hl-]
    ld bc, $3000
    add b
    nop
    jp nz, $da00

    nop
    rst $18

jr_0bc_6d9f:
    nop
    rst $30
    nop
    db $fd
    nop
    ld l, l
    sub b
    dec l
    ret nc

    dec a
    ret nz

    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    adc d
    ld [hl], l
    add d
    ld a, l
    add b
    ld e, a
    add b
    ld d, a
    nop
    rst $30
    ld [$08f7], sp
    push af
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp d
    ld b, [hl]
    cp b
    rst $18
    jr nz, jr_0bc_6d9f

    jr z, jr_0bc_6d81

    ld c, b
    cp d
    ld b, b
    ld a, [hl-]
    ret nz

    ld a, [hl-]
    ret nz

    ld e, $e0
    rla
    add sp, $07
    ld hl, sp-$6b
    ld l, b
    ld d, $e9
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, h
    xor e
    inc d
    db $eb
    nop

jr_0bc_6de5:
    rst $38
    nop
    ld e, $06
    jr c, @+$05

    inc [hl]

jr_0bc_6dec:
    ld bc, $0070
    call Call_0bc_6f00
    jp nz, Jump_000_053d

    ld a, [c]
    and c
    ld c, b
    nop
    add b
    rlca
    ld hl, sp-$79
    ld a, b
    ld de, $61ee
    ld [de], a
    ld h, h
    ld de, $1106
    inc d
    dec bc
    adc [hl]
    ld bc, $0528
    nop
    ld bc, $0180
    ld a, [bc]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $8cdb
    ld [hl-], a
    jr nc, jr_0bc_6de5

    add b
    ld b, l
    dec hl
    ld d, h
    sbc $20
    ld h, c
    ld a, [bc]
    ld a, [hl+]
    ld b, b
    jr jr_0bc_6e28

jr_0bc_6e28:
    nop
    nop
    stop
    sbc e
    nop
    ld e, a
    nop
    rst $08
    db $10
    ld a, l
    nop
    jp hl


    inc b
    add sp, $05
    ld l, c
    add h
    db $ec
    inc bc
    db $ec
    inc de
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    sub b
    ld l, a
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    nop
    rst $38
    ld [$2957], sp
    sub h
    ld a, d
    add h
    ld l, [hl]

jr_0bc_6e53:
    sub b
    xor [hl]
    ld d, b
    xor [hl]
    ld d, b
    xor e
    ld d, b
    ei
    nop
    db $db
    nop
    rst $18
    nop
    rst $30
    ld [$b847], sp
    ld d, [hl]
    add hl, hl
    ld b, h
    dec hl
    nop
    ld l, a
    ld [bc], a
    db $fd
    add [hl]
    ld a, c
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    sub b
    ld l, a
    sub b
    ld l, e
    add b
    ld a, d
    ld [bc], a
    ld b, b
    adc c
    ld b, $21
    jp c, Jump_000_3700

    ld b, b
    db $10
    jr nc, jr_0bc_6e53

    add h
    ld a, e
    ld bc, $00a6
    dec c
    ld de, $72ee
    adc l
    ld c, $f1
    ld [hl+], a
    ld e, l
    sub $39
    and $19
    jp z, $c235

    dec a
    sub $2d
    sbc e
    inc c
    sub d
    ld c, l
    inc c
    di
    rlca
    ld hl, sp+$7c
    rst $38
    and l
    rst $20
    sub b
    xor h
    ld c, e
    inc [hl]
    and b
    ld c, b
    inc d
    ld a, [bc]
    and b
    ld e, a
    ld a, $c1
    dec de
    inc h
    dec h
    nop
    nop
    nop
    nop

jr_0bc_6ebb:
    nop

jr_0bc_6ebc:
    ld b, d
    nop
    sub h
    nop
    sub $20
    add $30
    cp $00
    cp $01
    jp c, $cb25

    inc h
    ld c, e
    and h
    ld b, e
    xor h
    ld [de], a
    db $ed
    jr jr_0bc_6ebb

    add hl, bc
    or $09
    or $41
    cp [hl]
    ld b, c
    sbc [hl]
    ld b, b
    cp a
    ld c, b
    or a
    ld c, b
    or l
    ld [$8af5], sp
    ld [hl], l
    adc d
    ld h, h
    sbc d
    ld h, h
    xor a
    ld b, b
    xor [hl]
    ld b, b
    and [hl]
    ld c, b
    rst $38
    nop
    db $eb
    inc b
    ld a, [c]
    dec c
    or $09
    jp z, $d025

    cpl
    ld [bc], a
    cp l
    ld [bc], a
    db $fd

Call_0bc_6f00:
    nop
    rst $38
    nop
    ld a, [$be40]
    nop
    db $ec
    ld [bc], a
    inc l
    ld bc, $502e
    ld hl, $de01
    ld a, b
    add a
    jr z, @-$3a

    or b
    ld b, $00
    xor $00
    sbc a
    nop
    db $fc
    nop
    db $fc
    ld bc, $21fe
    dec bc
    ld b, c
    dec de
    pop hl

jr_0bc_6f25:
    dec bc
    ld bc, $0117
    ld bc, $0301
    and c
    inc bc
    rlc c
    rst $18
    jr nz, jr_0bc_6ebc

    db $76
    db $ed
    ld [de], a
    dec e
    ld [c], a
    add hl, de
    add [hl]
    ld c, l
    ld [hl+], a
    ld b, a
    xor b
    rra
    nop
    rst $08
    db $10
    adc a
    nop
    rrca
    add b
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld e, a
    nop
    ld e, a
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
    xor a
    ld d, b
    adc a
    ld [hl], b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]

jr_0bc_6f69:
    or b
    rrca
    and b
    rra
    and b
    ccf
    add b
    ld a, a
    nop
    cp a
    ld c, b
    xor b
    ld b, a
    xor d
    ld b, a
    xor d
    ld b, a
    ld a, [$fe07]
    rlca
    ret nc

    cpl
    ret c

    daa
    ld b, b
    cp a
    ld [$08f7], sp
    rst $30
    jr nz, jr_0bc_6f69

    ld h, $df
    ld b, $ff
    ld b, $f7
    ld [$00c7], sp
    adc a
    jr nc, jr_0bc_6f25

    jr nz, jr_0bc_6faf

    ret nz

    rra
    ret nz

    inc sp
    inc b
    ld a, [hl-]
    ld [$02c5], sp
    ldh a, [$66]
    add hl, de
    ld [bc], a
    call z, Call_0bc_7a80
    dec b
    pop de
    nop
    ld d, e
    dec e
    pop hl
    add [hl]

jr_0bc_6faf:
    ld a, [de]
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ret c

    rst $38
    cp a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $8fff
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    cp a
    ccf
    rst $18
    inc de
    ld l, a
    dec c
    scf
    inc hl
    rra
    ld h, e
    inc bc
    ret nz

    or [hl]
    ld sp, hl
    ld a, [c]
    ldh a, [$fd]
    jr nc, @-$01

    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
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
    cp a
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0bc_7110

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bc_7127

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_7110:
    dec h
    ld h, $27
    jr z, jr_0bc_713e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0bc_7155

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bc_7127:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_713e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_7155:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld b, $01
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$b0], a
    ld [hl], b
    ld a, d
    db $f4
    jr nz, @-$06

    jr @-$0a

    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$ec], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$ec]
    ldh [$f0], a
    ldh a, [$f4]
    ld hl, sp-$02
    ld a, [$f8fa]
    cp $fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$02
    cp $fe
    db $fc
    cp $fc
    ld bc, $01fc
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $f4
    add hl, bc
    ldh [rNR33], a
    or b
    ld c, l
    adc b
    ld a, h
    add c
    ld a, h
    and l
    ld e, b
    dec h
    ret c

    ld h, h
    ret c

    inc h
    ret c

    dec h
    ret c

    dec h
    jp c, $da25

    dec h
    jp c, $d877

    ld [hl-], a
    push de
    ld [hl-], a
    push de
    ld d, d
    push af
    ld [de], a
    push af
    ld d, c
    ldh a, [$50]
    pop af
    ret nc

    db $fd
    ret nc

    rst $38
    ldh [$f4], a
    ret nc

    ldh a, [$e5]
    ldh a, [$ec]
    ldh a, [$ec]
    ldh a, [$e6]
    ld hl, sp-$1f
    ld hl, sp-$20
    pop hl
    sbc b
    rst $20
    ld [hl], b
    adc a
    add e
    ld a, h
    add l
    ld a, d
    and h
    ld e, e
    ld [$4ef7], sp
    or e
    adc b
    rst $30
    ld [bc], a
    db $fd
    ld [$28f7], sp
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $e3
    inc bc
    ret c

    ld b, $81
    inc b
    ld e, b
    ld l, h
    inc de
    ld l, l
    ld [de], a
    ld a, d
    ld bc, $106f
    rra
    nop
    ld e, [hl]

jr_0bc_738b:
    nop
    rra

jr_0bc_738d:
    nop
    rlca
    nop
    ld b, $00
    ld [c], a
    nop
    ld h, b
    nop
    ld l, b
    db $10
    db $ec
    nop
    db $ec
    nop
    ld l, [hl]
    add b
    ld a, [hl-]
    call nz, $c03e
    ld d, $c8
    ld d, $c0
    ld [bc], a
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    jr nz, jr_0bc_738d

    ld [hl+], a
    db $dd
    jr nz, @-$1f

    jr z, jr_0bc_738b

    add hl, hl
    sub $a9
    ld d, [hl]
    ld bc, $007e
    ld a, a
    ld [bc], a
    dec d
    ld [bc], a
    nop
    jr z, jr_0bc_73c2

jr_0bc_73c2:
    inc h
    nop
    and b
    nop
    add h
    db $10
    ldh a, [rP1]
    and a
    ld d, b
    or [hl]
    ld c, c
    and [hl]
    ld e, c
    or a
    ld c, b
    db $76
    adc c
    ld b, d
    cp l
    ld [bc], a
    inc e
    nop
    ccf
    nop
    ld a, $c4
    nop
    sub h
    nop
    and c
    nop
    dec b
    nop
    ld bc, $a002
    ld b, b
    adc $00
    rlca
    ld hl, sp-$79
    ld a, b
    ld de, $61ee
    ld [de], a
    ld h, h
    ld de, $1106
    inc d
    dec bc
    adc [hl]
    ld bc, $0528
    nop
    ld bc, $0180
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $0411
    and b
    cp b
    ld b, c
    and b
    ld c, l
    db $eb
    inc d
    ld e, [hl]
    and b
    ld h, e
    ld [$402a], sp
    sbc $00
    sbc $00
    ld sp, hl
    nop
    ld sp, hl
    nop
    add hl, de
    nop
    ret c

    nop
    stop
    add b
    nop
    adc b
    nop
    add hl, bc
    add b
    ld c, e
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld e, e
    nop
    ld e, c
    ld [bc], a
    jp c, $f201

    dec c
    jp nc, $c02d

    ccf
    add h
    ld e, e
    add h
    ld a, e
    inc d
    db $eb
    inc d
    db $eb
    db $10
    xor $10
    xor $00
    rst $28
    ld [bc], a
    db $ed
    nop
    add a
    ld [de], a
    dec b
    add d
    nop
    add e
    nop
    or b
    add hl, bc
    or b
    ld [$2ed0], sp
    ld a, d
    add h
    adc $31
    db $db
    inc h
    ei
    inc b

jr_0bc_7462:
    cp h
    ld b, e
    sub b

jr_0bc_7465:
    ld l, a
    add b
    ld a, d
    nop
    db $e3
    nop
    inc bc
    ret nc

    ld bc, $02d0
    pop bc
    nop
    call c, $ee00
    db $10
    cp b
    nop
    ld c, $00
    ld de, $72ee
    adc l
    ld c, $f1
    ld [hl+], a
    ld e, l
    sub $39
    and $19
    jp z, $c235

    dec a
    sub $2d
    sbc e
    inc c
    sub d
    ld c, l
    ld c, h
    or e
    rlca
    ld hl, sp+$7c
    rst $38
    and l
    rst $20
    db $10
    jr nz, jr_0bc_74a5

    inc b
    sbc a
    ld b, b
    dec d
    ld a, [bc]
    add c
    ld a, [hl]
    ccf
    ret nz

    db $db

jr_0bc_74a5:
    inc h

jr_0bc_74a6:
    rst $28
    nop
    db $ed
    nop
    db $dd
    nop

jr_0bc_74ac:
    rst $18
    nop
    inc e
    nop
    ld c, d
    nop
    ld c, b
    jr nz, @+$2e

    nop
    add b

jr_0bc_74b7:
    nop
    add b
    nop
    add b
    jr nz, @-$33

    jr nz, jr_0bc_74a6

    ld [$08f7], sp
    cp $01
    xor e
    ld d, h
    adc e
    ld [hl], h
    ld c, c
    or [hl]
    ld b, b
    sbc a
    ld b, b
    cp a
    ld c, d
    or l
    ld b, d
    cp l
    ld [bc], a
    db $fd

jr_0bc_74d4:
    ld [hl+], a
    db $dd
    jr nz, jr_0bc_74b7

    nop
    db $ed
    inc b
    ret


    nop
    push bc
    jr nz, jr_0bc_7465

    jr nz, jr_0bc_7462

    nop
    add b
    db $10
    inc b
    ld d, h
    add hl, bc
    ld c, e
    inc b
    ld d, l
    ld a, [hl+]
    ld a, $81
    xor $11
    db $ec
    inc de
    ld c, h
    or d
    jr nz, jr_0bc_74d4

    nop
    db $fc
    ld [bc], a
    inc a
    nop
    ld [hl], b
    dec b
    nop
    push af
    nop
    dec [hl]
    nop
    ld b, l
    nop
    sub [hl]
    nop
    ld e, $00
    ld bc, $011e
    db $fc
    ld bc, $01fc
    cp $21
    dec bc
    ld b, c
    dec de
    pop hl

jr_0bc_7515:
    dec bc
    ld bc, $0117
    ld bc, $0301
    and c
    inc bc
    rlc c
    rst $18
    jr nz, jr_0bc_74ac

    db $76
    db $ed
    ld [de], a
    dec e
    ld [c], a
    add hl, de
    add [hl]
    dec c
    ld [bc], a
    ld b, a
    adc b
    ld a, a
    nop
    ld l, a
    sub b
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ld c, a
    nop
    ld c, a
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    adc a
    ld [hl], b
    xor a
    ld d, b
    xor a
    ld d, b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [rIF], a
    and b
    rrca
    ldh [rTAC], a
    add sp, $00
    rst $00
    db $10
    rst $00
    db $10
    rst $00
    ld de, $5106
    ld b, $50
    rlca
    ld [$0807], sp
    daa
    ld [$98b7], sp
    ld h, a
    ld hl, sp+$07
    ret c

    daa
    ret nz

    ccf
    ldh [rNR22], a
    add d
    ld l, a
    nop
    adc l
    nop
    cp a
    nop
    scf
    nop
    rra
    ld d, b
    ld [hl+], a
    or h
    ld a, [bc]
    jr c, jr_0bc_7515

    adc d
    nop
    add hl, sp
    ld bc, $066a
    ld b, b
    jr z, jr_0bc_75de

    ld bc, $0227
    db $dd
    nop
    xor a
    ld a, [de]
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ret c

    rst $38
    cp a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38

jr_0bc_75de:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $8fff
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    cp a
    ccf
    rst $18
    inc de
    ld l, a
    dec c
    scf
    inc hl
    rra
    ld h, e
    inc bc
    ret nz

    or [hl]
    ld sp, hl
    ld a, [c]
    ldh a, [$fd]
    jr nc, @-$01

    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0bc_7700

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bc_7717

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_7700:
    dec h
    ld h, $27
    jr z, jr_0bc_772e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0bc_7745

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bc_7717:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_772e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bc_7745:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld b, $03
    ld bc, $0303
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$b0], a
    ld [hl], b
    ld a, d
    db $f4
    jr nz, @-$06

    jr @-$0a

    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$ec], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$ec]
    ldh [$f0], a
    ldh a, [$f4]
    ld hl, sp-$02
    ld a, [$f8fa]
    cp $fe
    rst $38
    nop
    rst $38
    add b

jr_0bc_78ef:
    rst $38
    cp $ff
    db $fc
    rst $38

jr_0bc_78f4:
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    push af
    ld a, [bc]
    pop hl
    ld e, $b0
    ld c, a
    adc b
    ld a, a
    add b
    ld [hl], a
    and b
    ld d, e
    jr nz, jr_0bc_78ef

    ld h, b
    pop de
    jr z, @-$2d

    ld a, [hl+]
    ret nc

    jr z, jr_0bc_78f4

    ld a, [hl+]
    ret nc

    ld a, [hl+]
    ret nc

    ld a, h
    ret nc

    ld a, $d0
    ld a, $d0
    ld e, [hl]
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [rTAC]
    ldh a, [$09]
    db $f4
    ld [$00f7], sp
    db $f4
    nop
    rst $38
    ld [bc], a
    pop af
    add sp, -$1b
    ldh [$e2], a
    db $e3
    db $fc
    rst $20
    ld hl, sp-$20
    pop hl
    sbc b
    rst $20
    ld [hl], b
    adc a
    add e
    ld a, h
    add l
    ld a, d
    and h
    ld e, e
    ld [$4ef7], sp
    or e
    adc b
    rst $30
    ld [bc], a
    db $fd
    ld [$28f7], sp
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $13
    ret z

    ld [de], a
    and c
    ld sp, $4542
    ld [hl+], a
    ld b, l
    ld [hl+], a
    and d
    dec b
    and l
    nop
    and l
    nop
    ld b, d
    or l
    ld c, d
    or l
    ld c, d
    or l
    ld b, d
    or l
    ld [bc], a
    cp l
    nop
    push af
    nop
    cp l
    nop
    rst $38
    nop
    ld a, a
    nop
    ld d, $00
    ld d, a
    nop
    inc b
    ret nz

    ld de, $11c0
    ldh a, [$03]
    add sp, $03
    db $ed
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    ld [hl], $c0
    sub [hl]
    ld h, b
    adc c
    db $76
    adc c
    db $76
    adc c
    db $76
    add hl, bc
    or $09
    or $00
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    dec a
    add b
    inc c
    add b
    nop
    ld [$7000], sp
    nop
    ld hl, sp+$00
    db $ec
    db $10
    and $10
    xor [hl]
    db $10
    rst $00
    jr c, @-$3b

    inc [hl]
    add c
    ld a, [hl]
    inc b
    rlc b
    ld a, c
    nop
    ld e, b
    ld de, $e186
    ld [$8000], sp
    rlca
    ld hl, sp-$79
    ld a, b
    ld de, $61ee
    ld [de], a
    ld h, h
    ld de, $1106
    inc d
    dec bc
    adc [hl]
    ld bc, $0528
    nop
    ld bc, $0180
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $8cdb
    ld [hl-], a
    db $76
    adc c
    jp c, Jump_0bc_6b25

    add h
    adc $20
    ld l, b
    ld [bc], a
    ld c, d
    jr nz, jr_0bc_7a59

    jr z, jr_0bc_7a19

    ld l, d
    dec d
    ld l, d
    sub l
    ld l, d
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add b
    ld a, a
    add b
    ld a, a
    nop

jr_0bc_7a19:
    ld a, e
    nop
    rst $38
    nop
    rlc b
    rst $00
    nop
    ld b, c
    nop
    ld d, c
    nop
    ld d, b
    ld [$2c10], sp
    nop
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$70

    ld [hl], b
    ld h, $d8
    ld [hl+], a
    call c, $de21
    ld bc, $21fe
    sbc $21
    sbc $20
    rst $18
    nop
    rst $30
    nop
    db $e3
    inc b
    pop hl
    inc b
    pop bc
    inc b
    nop
    inc h
    nop
    and b
    nop
    xor [hl]
    nop
    cpl
    nop
    rra
    nop
    rra
    nop
    sbc e

jr_0bc_7a59:
    nop
    ld sp, hl
    ld b, $f1
    ld a, [bc]
    nop
    cp a
    nop
    ld e, h
    inc b
    nop
    add e
    ld e, b
    rlca
    and b
    nop
    dec c
    ld de, $72ee
    adc l
    ld c, $f1
    ld [hl+], a
    ld e, l
    sub $39
    and $19
    jp z, $c235

    dec a
    sub $2d
    sbc e
    inc c
    sub d
    ld c, l

Call_0bc_7a80:
    ld c, h
    or e
    rlca
    ld hl, sp+$7c
    rst $38
    and l
    rst $20
    sub b
    xor h
    ld c, e
    inc [hl]
    xor l
    ld d, d
    push af
    ld [bc], a
    and h
    ld d, e
    ld [hl], $c1
    inc de
    and h
    or h
    ld bc, $2590
    ld b, d
    or l

jr_0bc_7a9c:
    ld c, d
    or l
    ld c, d
    or l
    ld b, d
    or l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    nop
    db $fd
    nop
    db $fd
    nop
    rst $18
    nop
    sbc a
    nop
    sub a
    nop
    inc de
    nop
    ld [de], a
    nop
    ld [de], a
    ld [$1c40], sp
    ld b, b
    inc a
    ld b, b
    cp [hl]
    nop

jr_0bc_7abe:
    xor a
    nop
    xor [hl]
    nop
    rst $28
    nop
    xor $00

jr_0bc_7ac6:
    ld [$7204], a
    adc h
    add hl, bc
    or $01
    cp $49
    or [hl]
    ld b, c
    cp [hl]
    ld b, c
    xor [hl]
    nop
    rst $28
    nop
    rst $20
    ld bc, $10c6
    jp $0110


    stop
    stop
    inc c
    nop
    ld c, $00
    sbc a
    nop
    ei
    inc b
    reti


    ld b, $70
    rrca
    jr nz, jr_0bc_7abe

    nop
    ld hl, sp+$00
    dec b
    nop
    cp [hl]
    ldh a, [$0e]
    nop
    sub d
    nop
    db $fc
    nop
    db $fc
    ld bc, $21fe
    dec bc
    ld b, c
    dec de
    pop hl
    dec bc
    ld bc, $0117
    ld bc, $0301
    and c
    inc bc
    rlc c

jr_0bc_7b10:
    rst $18
    jr nz, jr_0bc_7a9c

    db $76
    db $ed
    ld [de], a
    dec e
    ld [c], a
    add hl, de
    add [hl]
    ld c, l
    ld [hl+], a
    ld b, a
    xor b
    rst $18
    jr nz, jr_0bc_7b10

    db $10
    xor a
    db $10
    adc a
    jr nc, jr_0bc_7ac6

    jr nz, @+$61

    and b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    xor a
    ld b, b
    ccf

jr_0bc_7b35:
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rrca
    ld h, b
    rrca
    ld h, b
    rrca
    ret nz

    rrca
    add b
    rrca
    nop
    rra
    nop
    rra
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    nop
    ld l, a
    db $10
    rst $20
    jr jr_0bc_7b35

    rra
    ret nz

    ccf
    add b
    ld a, a
    add c
    db $76
    ld bc, $00f6
    rst $30
    nop
    rst $30
    nop
    rst $20
    ld [$08e7], sp
    rst $00
    ld [$0ec7], sp
    add a
    ld e, $87
    ld e, $07
    cp b
    rlca
    jr nc, @+$11

    ld [hl], b
    rrca
    ld h, b
    rla
    ret nz

    rra
    ret nz

    scf
    nop
    ld a, $00
    db $fd
    inc b
    inc c
    ld bc, $0451
    db $f4
    ld bc, $05f9
    reti


    ld c, b
    db $10
    ld a, l
    add c
    cp $02
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ret c

    rst $38
    cp a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $8fff
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    cp a
    ccf
    rst $18
    inc de
    ld l, a
    dec c
    scf
    inc hl
    rra
    ld h, e
    inc bc
    ret nz

    or [hl]
    ld sp, hl
    ld a, [c]
    ldh a, [$fd]
    jr nc, @-$01

    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    xor h
    cp $a8
    rst $38
    db $ec
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0601
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0c0b
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0bc_7ca4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_0bc_7cba

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bc_7c91

jr_0bc_7c91:
    nop
    nop
    nop
    nop
    nop
    cpl
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop

jr_0bc_7ca4:
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_0bc_7cba:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6b6a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7473
    ld [hl], l
    ld bc, $7776
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7b01
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8301
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $9a99
    sbc e
    sbc h
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $a09f
    and c
    and d
    and e
    and h
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0205
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    pop hl
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rlca
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

    rst $38
    jr nc, @+$01

    db $10
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    xor a
    rst $38
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [hl-], a
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $ff
    rst $38
    rst $38
    db $e4
    dec de
    add b
    ld a, a
    add b
    ld a, a
    pop af
    rrca
    db $fc
    inc bc
    ldh a, [rIF]
    db $fc
    rlca
    inc c
    rst $30
    rst $38

jr_0bc_7f51:
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_0bc_7f51

    add a
    ld a, b
    nop
    rst $38
    nop
    rst $38
    pop af
    rrca
    db $fc
    rlca
    cp $07
    ld hl, sp+$0f
    inc a
    rst $08
    sbc b
    ld l, a
    ld hl, sp+$1f
    ld a, a
    add b
    ld a, $e1
    inc bc
    db $fc
    ldh [$7f], a
    ret nz

    ld a, a
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
    ei
    inc b
    rst $38
    nop
    ld [c], a
    dec e
    db $e3
    inc e
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc bc

jr_0bc_7fbc:
    rst $38
    inc c

jr_0bc_7fbe:
    db $fc
    inc de

jr_0bc_7fc0:
    di
    inc e
    rst $30
    jr jr_0bc_7fbc

    jr jr_0bc_7fbe

    jr jr_0bc_7fc0

    jr @-$03

    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ld a, [$fd0d]
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    rrca
    db $f4
    rra
    db $e4
    ccf
    db $e4
    ccf
    push bc
    ld a, a
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
