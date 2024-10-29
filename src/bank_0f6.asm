SECTION "ROM Bank $0f6", ROMX[$4000], BANK[$f6]

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
    jr nz, jr_0f6_404b

    nop
    nop
    jr nz, jr_0f6_404f

    nop
    nop
    jr nz, jr_0f6_4053

    nop
    nop
    jr jr_0f6_402f

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_402f:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, e
    ld a, h
    nop
    nop
    inc sp
    inc a
    nop
    nop
    rra

jr_0f6_404b:
    inc e
    nop
    nop
    ld [de], a

jr_0f6_404f:
    dec e
    nop
    nop
    rla

jr_0f6_4053:
    jr jr_0f6_4055

jr_0f6_4055:
    nop
    rra
    jr jr_0f6_4059

jr_0f6_4059:
    nop
    rla
    jr jr_0f6_405d

jr_0f6_405d:
    nop
    rla
    jr jr_0f6_4061

jr_0f6_4061:
    nop
    rra
    rra
    nop
    nop
    dec a
    dec sp
    nop
    nop
    dec a
    dec sp
    nop
    nop
    ld a, $2f
    nop
    nop
    inc l
    inc sp
    nop
    nop
    jr @+$21

    nop
    nop
    ld [$000f], sp
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
    ld [$000f], sp
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
    db $10
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
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_40ee:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_40ee

jr_0f6_40f6:
    nop
    nop
    jr c, @-$06

    nop
    nop
    jr c, jr_0f6_40f6

jr_0f6_40fe:
    nop
    nop
    cp b
    ld a, b

jr_0f6_4102:
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    jr nc, jr_0f6_40fe

    nop
    nop
    jr nc, jr_0f6_4102

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
    db $10
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
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
    jr nz, jr_0f6_41cf

    nop
    nop
    jr nz, jr_0f6_41d3

    nop
    nop
    jr jr_0f6_41af

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    inc de
    nop
    nop
    rla
    rra
    nop
    nop
    inc e

jr_0f6_41af:
    rra
    nop
    nop
    jr c, @+$41

    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    set 7, h
    nop
    nop
    ld l, e
    ld a, h
    nop
    nop
    inc sp
    inc a
    nop
    nop
    ld e, $1d
    nop
    nop
    ld [de], a

jr_0f6_41cf:
    dec e
    nop
    nop
    ld [de], a

jr_0f6_41d3:
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [de], a
    dec e
    nop
    nop
    ld [de], a
    dec e
    nop
    nop
    rla
    rra
    nop
    nop
    rrca
    inc c
    nop
    nop
    dec bc
    inc c
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
    inc c
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
    inc b
    rlca
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
    db $10
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]

jr_0f6_426a:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_426a

jr_0f6_4272:
    nop
    nop
    jr c, @-$06

    nop
    nop
    jr c, jr_0f6_4272

    nop
    nop
    cp b
    ld a, b
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ld [hl], b
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
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f6_434b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr jr_0f6_432f

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_432f:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop

Jump_0f6_433d:
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    scf
    jr c, jr_0f6_4349

jr_0f6_4349:
    nop
    rra

jr_0f6_434b:
    jr jr_0f6_434d

jr_0f6_434d:
    nop
    ld e, $11
    nop
    nop
    ld e, $11
    nop
    nop
    dec a
    inc hl
    nop
    nop
    ld a, [hl-]
    daa
    nop
    nop
    ld a, [$01e7]
    ld bc, $4ff4
    inc bc
    ld [bc], a
    ld hl, sp-$01
    inc bc
    ld [bc], a
    ldh a, [rIE]
    ld bc, $e001
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
    jr nz, jr_0f6_43cf

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    dec b
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
    inc bc
    inc bc
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
    ccf
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

jr_0f6_43cf:
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_43ee:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_43ee

jr_0f6_43f6:
    nop
    nop
    jr c, @-$06

jr_0f6_43fa:
    nop
    nop
    jr c, jr_0f6_43f6

    nop
    nop
    jr c, jr_0f6_43fa

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $e4
    db $fc
    nop
    nop
    or h
    db $ec
    nop
    nop
    db $f4
    db $ec
    nop
    nop
    inc d
    db $ec
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
    inc e
    db $fc

jr_0f6_4426:
    nop
    nop
    inc e
    db $f4

jr_0f6_442a:
    nop
    nop
    jr z, jr_0f6_4426

jr_0f6_442e:
    nop
    nop
    jr z, jr_0f6_442a

jr_0f6_4432:
    nop
    nop
    jr z, jr_0f6_442e

    nop
    nop
    jr z, jr_0f6_4432

    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    jr z, @-$06

    nop
    nop
    jr @-$06

    nop
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
    cp h
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
    cp $fe
    nop
    nop
    db $fc
    db $fc
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f6_44cb

    nop
    nop
    jr nz, jr_0f6_44cf

    nop
    nop
    jr nz, jr_0f6_44d3

    nop
    nop
    jr jr_0f6_44af

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_44af:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    rra

jr_0f6_44cb:
    jr jr_0f6_44cd

jr_0f6_44cd:
    nop
    inc de

jr_0f6_44cf:
    inc e
    nop
    nop
    rla

jr_0f6_44d3:
    jr jr_0f6_44d5

jr_0f6_44d5:
    nop
    rra
    jr jr_0f6_44d9

jr_0f6_44d9:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ld [hl], $39
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    db $fc
    cp a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld [hl], b
    ld c, a
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
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    ld bc, $0201
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add [hl]
    rst $38
    nop
    nop
    db $fd
    db $fd
    nop
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
    inc bc
    inc bc
    db $fd
    db $fd
    rlca
    rlca
    rst $20
    rst $20
    nop
    nop
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_456e:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_456e

jr_0f6_4576:
    nop
    nop
    jr c, @-$06

jr_0f6_457a:
    nop
    nop
    jr c, jr_0f6_4576

jr_0f6_457e:
    nop
    nop
    jr c, jr_0f6_457a

jr_0f6_4582:
    nop
    nop
    jr c, jr_0f6_457e

    nop
    nop
    cp b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    jr nc, jr_0f6_4582

    nop
    nop
    ld [hl], b
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
    jr @-$06

    nop
    nop
    jr @-$06

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr @-$06

    nop
    nop
    jr @-$06

    nop
    nop
    inc [hl]
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
    ld hl, sp-$08
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
    jr nz, jr_0f6_464b

    nop
    nop
    jr nz, jr_0f6_464f

    nop
    nop
    jr nz, jr_0f6_4653

    nop
    nop
    jr jr_0f6_462f

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_462f:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, jr_0f6_4687

    nop
    nop
    rra

jr_0f6_464b:
    jr jr_0f6_464d

jr_0f6_464d:
    nop
    inc de

jr_0f6_464f:
    inc e
    nop
    nop
    rla

jr_0f6_4653:
    jr jr_0f6_4655

jr_0f6_4655:
    nop
    rra
    jr jr_0f6_4659

jr_0f6_4659:
    nop
    rla
    jr jr_0f6_465d

jr_0f6_465d:
    nop
    db $10
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    cpl
    nop
    nop
    ld a, $2f
    nop
    nop
    ld l, $31
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
    add c
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $fe01

jr_0f6_4687:
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    ld b, $ff
    inc b
    rlca
    dec b
    db $fd
    inc b
    rlca
    dec b
    db $fd
    ld [bc], a
    inc bc
    ld [$03f8], sp
    inc bc
    ret nc

    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

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
    db $10
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
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_46ee:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_46ee

jr_0f6_46f6:
    nop
    nop
    jr c, @-$06

jr_0f6_46fa:
    nop
    nop
    jr c, jr_0f6_46f6

jr_0f6_46fe:
    nop
    nop
    jr c, jr_0f6_46fa

    nop
    nop
    jr c, jr_0f6_46fe

    nop
    nop
    cp b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    inc c
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
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
    add c
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    rra
    rra
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

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    inc a
    inc a
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
    jr nz, jr_0f6_47cb

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f6_47d3

    nop
    nop
    jr jr_0f6_47af

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_47af:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, jr_0f6_4807

    nop
    nop
    rra

jr_0f6_47cb:
    ld e, $00
    nop
    ld de, $001e
    nop
    db $10

jr_0f6_47d3:
    rra
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
    ld sp, $003e
    nop
    ld [hl], c
    ld a, [hl]
    nop
    nop
    ldh a, [$bf]
    nop
    nop
    ldh a, [$bf]
    nop
    nop
    ld l, b
    ld e, a
    nop
    nop
    jr nz, jr_0f6_4837

    nop
    nop
    jr nz, jr_0f6_483b

    nop
    nop
    jr nz, jr_0f6_483f

    nop
    nop
    ld hl, $003f
    nop
    ld a, a

jr_0f6_4807:
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
    add hl, sp
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    rlca
    rlca
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc

jr_0f6_4837:
    db $fc
    nop
    nop
    ld a, h

jr_0f6_483b:
    ld a, h
    nop
    nop
    inc e

jr_0f6_483f:
    inc e
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_486e:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_486e

jr_0f6_4876:
    nop
    nop
    jr c, @-$06

jr_0f6_487a:
    nop
    nop
    jr c, jr_0f6_4876

jr_0f6_487e:
    nop
    nop
    jr c, jr_0f6_487a

    nop
    nop
    jr jr_0f6_487e

    nop
    nop
    ret c

    jr c, jr_0f6_488b

jr_0f6_488b:
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret nc

    jr nc, jr_0f6_4893

jr_0f6_4893:
    nop
    ret nc

    jr nc, jr_0f6_4897

jr_0f6_4897:
    nop
    db $10
    ldh a, [rP1]
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08

jr_0f6_48a6:
    nop
    nop
    ret z

    jr c, jr_0f6_48ab

jr_0f6_48ab:
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f6_48a6

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ret z

    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    add h
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
    jp Jump_000_00ff


    nop
    cpl
    ccf
    add b
    add b
    rra
    rra
    add b
    add b
    rlca
    rlca
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
    add b
    add b
    rra
    rra
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
    jr nz, jr_0f6_494b

    nop
    nop
    jr nz, jr_0f6_494f

    nop
    nop
    jr nz, jr_0f6_4953

    nop
    nop
    jr jr_0f6_492f

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_492f:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, jr_0f6_4987

    nop
    nop
    rra

jr_0f6_494b:
    ld e, $00
    nop
    db $10

jr_0f6_494f:
    rra
    nop
    nop
    db $10

jr_0f6_4953:
    rra
    nop
    nop
    ccf
    cpl
    nop
    nop
    jr nc, jr_0f6_498b

    nop
    nop
    ldh a, [$ef]
    ld bc, $f001
    ld c, a
    inc bc
    ld [bc], a
    ldh a, [rIE]
    inc bc
    ld [bc], a
    add sp, -$01
    ld bc, $e801
    ccf
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
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
    ld d, b

jr_0f6_4987:
    ld a, a
    nop
    nop
    ld e, a

jr_0f6_498b:
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0f6_49d3

    nop
    nop
    jr jr_0f6_49b7

    nop
    nop
    jr jr_0f6_49bb

    nop
    nop
    jr jr_0f6_49bf

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
    rlca

jr_0f6_49b7:
    rlca
    nop
    nop
    rra

jr_0f6_49bb:
    rra
    nop
    nop
    ccf

jr_0f6_49bf:
    ccf
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
    ld [$00f8], sp

jr_0f6_49d3:
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_49ee:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_49ee

jr_0f6_49f6:
    nop
    nop
    jr c, @-$06

jr_0f6_49fa:
    nop
    nop
    jr c, jr_0f6_49f6

    nop
    nop
    jr c, jr_0f6_49fa

    nop
    nop
    ld [$00f8], sp
    nop
    add sp, $18
    nop
    nop
    call nz, Call_000_003c
    nop
    ld [hl], h
    adc h
    nop
    nop
    db $f4
    call z, RST_00
    inc [hl]
    call z, RST_00
    inc a
    db $fc
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    inc a
    call nz, RST_00
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr @-$06

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
    nop
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f6_4acb

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f6_4ad3

    nop
    nop
    jr jr_0f6_4aaf

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_4aaf:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    rra

jr_0f6_4acb:
    ld e, $00
    nop
    ld de, $001e
    nop
    db $10

jr_0f6_4ad3:
    rra
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
    ld sp, $003e
    nop
    ld [hl], c
    ld a, [hl]
    nop
    nop
    ldh a, [$bf]
    nop
    nop
    ldh a, [$bf]
    nop
    nop
    ld l, b
    ld e, a
    nop
    nop
    ld c, b
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
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    ld bc, $0401
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    db $fd
    db $fd
    nop
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
    inc bc
    inc bc
    db $fd
    db $fd
    rlca
    rlca
    rst $20
    rst $20
    nop
    nop
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_4b6e:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_4b6e

jr_0f6_4b76:
    nop
    nop
    jr c, @-$06

jr_0f6_4b7a:
    nop
    nop
    jr c, jr_0f6_4b76

jr_0f6_4b7e:
    nop
    nop
    jr c, jr_0f6_4b7a

    nop
    nop
    jr jr_0f6_4b7e

    nop
    nop
    ret c

    jr c, jr_0f6_4b8b

jr_0f6_4b8b:
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret nc

    jr nc, jr_0f6_4b93

jr_0f6_4b93:
    nop
    ret nc

    jr nc, jr_0f6_4b97

jr_0f6_4b97:
    nop
    db $10
    ldh a, [rP1]
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    ret z

    jr c, jr_0f6_4bab

jr_0f6_4bab:
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
    jr @-$06

    nop
    nop
    jr @-$06

    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld [c], a
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
    ld [$00f8], sp
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
    ld hl, sp-$08
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
    jr nz, jr_0f6_4c4b

    nop
    nop
    jr nz, jr_0f6_4c4f

    nop
    nop
    jr nz, jr_0f6_4c53

    nop
    nop
    jr jr_0f6_4c2f

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_4c2f:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, jr_0f6_4c87

    nop
    nop
    rra

jr_0f6_4c4b:
    jr jr_0f6_4c4d

jr_0f6_4c4d:
    nop
    inc de

jr_0f6_4c4f:
    inc e
    nop
    nop
    rla

jr_0f6_4c53:
    jr jr_0f6_4c55

jr_0f6_4c55:
    nop
    rra
    jr jr_0f6_4c59

jr_0f6_4c59:
    nop
    rla
    jr jr_0f6_4c5d

jr_0f6_4c5d:
    nop
    db $10
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    cpl
    nop
    nop
    ld a, $2f
    nop
    nop
    ld l, $31
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
    adc b
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $fc01

jr_0f6_4c87:
    rst $38
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
    ld b, $ff
    inc b
    rlca
    ld b, $ff
    inc b
    rlca
    dec b
    db $fd
    inc b
    rlca
    dec b
    db $fd
    inc bc
    inc bc
    ret z

    ld hl, sp+$03
    inc bc
    ldh a, [$f0]
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

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
    db $10
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
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_4cee:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_4cee

jr_0f6_4cf6:
    nop
    nop
    jr c, @-$06

jr_0f6_4cfa:
    nop
    nop
    jr c, jr_0f6_4cf6

jr_0f6_4cfe:
    nop
    nop
    jr c, jr_0f6_4cfa

    nop
    nop
    jr c, jr_0f6_4cfe

    nop
    nop
    cp b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
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
    jr @-$06

    nop
    nop
    jr nc, @-$0e

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
    inc e
    db $fc
    nop
    nop
    ld a, [c]
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
    ld [bc], a
    cp $00
    nop
    add a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rra
    rra
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

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    inc a
    inc a
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
    jr nz, jr_0f6_4dcb

    nop
    nop
    jr nz, jr_0f6_4dcf

    nop
    nop
    jr nz, jr_0f6_4dd3

    nop
    nop
    jr jr_0f6_4daf

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_4daf:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    jr nc, jr_0f6_4e07

    nop
    nop
    rra

jr_0f6_4dcb:
    jr jr_0f6_4dcd

jr_0f6_4dcd:
    nop
    inc de

jr_0f6_4dcf:
    inc e
    nop
    nop
    rla

jr_0f6_4dd3:
    jr jr_0f6_4dd5

jr_0f6_4dd5:
    nop
    rra
    jr jr_0f6_4dd9

jr_0f6_4dd9:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ld [hl], $39
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    db $fc
    cp a
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ld [hl], b
    ld c, a
    nop
    nop
    jr nz, jr_0f6_4e37

    nop
    nop
    jr z, @+$41

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
    ld a, a

jr_0f6_4e07:
    ld a, a
    nop
    nop
    ld a, [hl]
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f6_4e63

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
    rrca
    rrca
    inc bc
    inc bc
    cp $fe
    ld bc, $fe01

jr_0f6_4e37:
    cp $00
    nop
    ld a, $3e
    nop
    nop
    ld c, $0e
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
    ldh a, [$f0]
    nop

jr_0f6_4e63:
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_4e6e:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_4e6e

jr_0f6_4e76:
    nop
    nop
    jr c, @-$06

jr_0f6_4e7a:
    nop
    nop
    jr c, jr_0f6_4e76

jr_0f6_4e7e:
    nop
    nop
    jr c, jr_0f6_4e7a

jr_0f6_4e82:
    nop
    nop
    jr c, jr_0f6_4e7e

    nop
    nop
    cp b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    jr nc, jr_0f6_4e82

    nop
    nop
    ld [hl], b
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
    jr @-$06

    nop
    nop
    jr nc, @-$0e

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
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
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
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, c
    rst $38
    add b
    add b
    sbc a
    sbc a
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_4f24:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$400f], sp
    ret nz

    db $10
    rra
    jr nz, jr_0f6_4f24

    jr nz, jr_0f6_4f85

    db $10
    ldh a, [$38]
    cpl
    db $10
    ldh a, [$38]
    ccf
    inc a
    db $fc
    inc l
    inc sp
    ccf
    rst $38
    rra
    dec de
    rst $38
    cp a
    rrca
    ld [$ff7f], sp
    dec bc
    inc c
    ld a, a
    rst $38
    ld b, $07
    ldh [rIE], a
    inc bc
    inc bc
    ld b, b
    rst $38
    inc bc
    inc bc
    ld b, b
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    ld bc, $8201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    rst $20
    sbc a
    nop
    nop
    ldh a, [$8f]
    ld bc, $7f01
    adc a
    inc bc

jr_0f6_4f85:
    ld [bc], a
    ldh [$1f], a
    rlca
    inc b
    add b
    ld a, a
    inc c
    rrca
    nop
    rst $38
    rrca
    rrca
    add b
    rst $38
    rrca
    rrca
    rst $00
    rst $38
    rrca
    rrca
    cp $ff
    inc c
    rrca
    ld [hl-], a
    di
    inc e
    rla
    add hl, bc
    ld sp, hl
    inc e
    rla
    dec b
    db $fd
    ld e, $1f
    dec b
    db $fd
    rra
    inc de
    ld [bc], a
    cp $1c
    inc d
    adc a
    rst $38
    ld [$7f08], sp
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_5006:
    nop
    nop
    nop
    nop

jr_0f6_500a:
    nop
    nop
    nop
    nop

jr_0f6_500e:
    nop
    nop
    nop
    nop

jr_0f6_5012:
    nop
    nop
    add b
    add b

jr_0f6_5016:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a

jr_0f6_501e:
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0f6_5006

    nop
    nop
    jr nz, jr_0f6_500a

    nop

jr_0f6_502b:
    nop
    jr nz, jr_0f6_500e

    nop
    nop
    jr nz, jr_0f6_5012

    nop
    nop
    jr nz, jr_0f6_5016

    nop
    nop
    ldh [$e0], a

jr_0f6_503a:
    nop
    nop
    jr nz, jr_0f6_501e

    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f6_503a

    nop
    nop
    jr z, @-$06

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
    dec b
    db $fd
    jp $06c3


    rst $38
    daa
    rst $20
    adc b
    rst $38
    ccf
    rst $38
    adc h
    rst $38
    ccf
    rst $38
    ld a, h
    ld a, a
    rra
    rst $38
    inc a
    ccf
    inc hl
    db $e3
    add hl, de
    rra
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0f6_50c2

    nop
    nop
    ld [hl], $0e
    nop
    nop
    dec a
    inc bc
    add b
    add b
    rra
    jr nz, @+$62

    ldh [$3f], a
    jr c, jr_0f6_502b

    ld [hl], b
    dec b
    ld b, $90
    ld [hl], b
    ld b, $05
    ret c

    ld hl, sp+$05
    ld b, $f6
    cp $03
    ld [bc], a
    db $fd
    di
    ld bc, $f301
    db $ec
    nop
    nop
    db $fd
    ld [c], a
    nop
    nop
    ld a, [hl]
    ld h, c
    nop
    nop
    inc l
    inc sp
    nop
    nop
    inc d
    dec de
    nop
    nop

jr_0f6_50c2:
    inc c
    rrca
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
    ld bc, $0001
    nop
    ld bc, $0001
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
    ld [bc], a
    inc bc
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
    nop
    nop

jr_0f6_5144:
    nop
    nop
    nop
    nop
    rlca
    rlca
    add b
    add b
    ld [$400f], sp
    ret nz

    db $10
    rra
    jr nc, jr_0f6_5144

    db $10
    rra
    ld [$0cf8], sp
    dec bc
    inc b
    db $fc
    rla
    rra
    adc b
    ld hl, sp+$1b
    rla
    ldh a, [$f0]
    ld e, $13
    ldh a, [$f0]
    sbc a
    sub d
    ldh a, [$f0]
    ld [hl], l
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    ccf
    rst $38
    ld de, $1eff
    cp $11
    rst $38
    inc e
    db $fc
    pop af
    rst $38
    inc e
    db $fc
    rst $38
    rst $38
    ld hl, sp-$08
    ld b, c
    ld a, a
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [$7f]
    ld a, a
    ldh a, [$f0]

jr_0f6_51a0:
    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$80f8], sp
    rst $38
    adc b
    ld hl, sp-$80
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    ld l, b
    ld hl, sp+$02
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    jr nz, @-$1e

jr_0f6_51bc:
    inc b
    rst $38
    jr nz, jr_0f6_51a0

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc $ff
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_51bc

jr_0f6_51dc:
    nop
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    ld [$14f8], sp
    rst $30
    ld [$22f8], sp
    db $e3
    jr nc, jr_0f6_51dc

    pop bc
    pop bc
    ld [hl], b
    ldh a, [$80]
    add b
    ldh a, [$f0]
    add b
    add b
    ld hl, sp-$08
    add c
    add c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    jp nz, Jump_0f6_433d

    jp Jump_000_01fe


    ld b, a
    rst $00
    cp $01
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], b
    adc a
    ld e, $1f
    ldh [$1f], a
    ld c, $0f
    ldh [$1f], a
    rlca
    rlca
    ldh a, [rIE]
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

jr_0f6_52b4:
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

jr_0f6_52c0:
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
    ld hl, $c03f
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_52b4

    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [$30]
    cpl
    jr nz, jr_0f6_52c0

    cpl
    ccf
    ldh [$e0], a
    dec [hl]
    cpl
    ldh [$e0], a
    ccf
    dec h
    ldh [$e0], a
    db $fd
    rst $20
    db $fc
    db $fc
    db $fc
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    ccf
    rst $38
    ld [hl], c
    rst $38
    dec e
    rst $38
    ld de, $19ff
    rst $38
    ld de, $19ff
    rst $38
    rst $38
    rst $38
    cp $fe
    ld b, c
    ld a, a
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [$7f]
    ld a, a
    ldh a, [$f0]

jr_0f6_5320:
    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$80f8], sp
    rst $38
    adc b
    ld hl, sp-$80
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    ld l, b
    ld hl, sp+$02
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    jr nz, @-$1e

jr_0f6_533c:
    inc b
    rst $38
    jr nz, jr_0f6_5320

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc $ff
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_533c

jr_0f6_535c:
    nop
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    ld [$14f8], sp
    rst $30
    ld [$22f8], sp
    db $e3
    jr nc, jr_0f6_535c

    pop bc
    pop bc
    ld [hl], b
    ldh a, [$80]
    add b
    ldh a, [$f0]
    add b
    add b
    ld hl, sp-$08
    add c
    add c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    jr jr_0f6_53db

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    dec e
    dec e
    cp b
    rst $00
    ld l, d
    ld [hl], a
    add sp, $17
    cp e
    rst $00
    ld h, d
    sbc a
    rst $30
    dec c
    cp l
    call Call_000_3dce
    ldh a, [$f0]
    ccf
    rst $30
    ret nz

jr_0f6_53db:
    ret nz

    rst $08
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f6_5434:
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

jr_0f6_5440:
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
    ld hl, $c03f
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_5434

    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [$30]
    cpl
    jr nz, jr_0f6_5440

    cpl
    ccf
    ldh [$e0], a
    dec [hl]
    cpl
    ldh [$e0], a
    ccf
    dec h
    ldh [$e0], a
    db $fd
    rst $20
    db $fc
    db $fc
    db $fc
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    ccf
    rst $38
    ld [hl], c
    rst $38
    dec e
    rst $38
    ld de, $19ff
    rst $38
    ld de, $19ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [rSTAT]
    ld a, a
    db $10
    ldh a, [$7f]
    ld a, a
    ldh a, [$f0]

jr_0f6_54a0:
    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    ld [$80f8], sp
    rst $38
    adc b
    ld hl, sp-$80
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    ld l, b
    ld hl, sp+$02
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    jr nz, @-$1e

jr_0f6_54bc:
    inc b
    rst $38
    jr nz, jr_0f6_54a0

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc $ff
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_54bc

jr_0f6_54dc:
    nop
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    ld [$14f8], sp
    rst $30
    ld [$22f8], sp
    db $e3
    jr nc, jr_0f6_54dc

    pop bc
    pop bc
    ld [hl], b
    ldh a, [$80]
    add b
    ldh a, [$f0]
    add b
    add b
    ld hl, sp-$08
    add c
    add c
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
    ld a, b
    ld a, b
    nop
    nop
    add a
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    ret nz

    cp a
    inc e
    inc e
    cp a
    rst $38
    ld l, $32
    rst $10
    cp a
    ld a, d
    ld a, [hl]
    rst $38
    sub a
    ld e, a
    ld a, e
    db $fc
    rst $38
    ld e, a
    ld a, a
    rst $38
    rst $38
    ld a, h
    ld a, a
    ld a, h
    rst $38
    ld e, b
    ld h, a
    inc e
    rst $38
    or b
    rst $08
    inc e
    rst $38
    add sp, -$69
    ld [$f8ff], sp
    add a
    ld [$b1ff], sp
    rst $08
    adc a
    rst $38
    ld b, [hl]
    ld a, [hl]
    ldh a, [rIE]
    jr c, jr_0f6_558e

    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f6_559b

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f6_55a3

    nop
    nop
    jr nz, jr_0f6_55a7

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add a
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [$07f8], sp
    rlca
    ld hl, sp-$08
    rlca
    rlca

jr_0f6_558e:
    add h
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $0201
    cp $00
    nop
    add c

jr_0f6_559b:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c

jr_0f6_55a3:
    ld a, a
    nop
    nop
    ld [hl+], a

jr_0f6_55a7:
    ld a, $00
    nop
    ld e, $1e
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
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop

jr_0f6_55d8:
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop

jr_0f6_55e0:
    add b
    add b
    nop
    nop

jr_0f6_55e4:
    add b
    add b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp $fe
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
    cp a
    rst $38
    ld b, b
    ret nz

    sbc h
    rst $38
    jr nz, jr_0f6_55e0

    sbc b
    rst $38
    jr nz, jr_0f6_55e4

    adc c
    cp $90
    ld [hl], b
    cp [hl]
    rst $38
    ret nc

    jr nc, jr_0f6_55d8

    ld a, [$30d0]
    ld c, e
    ld a, [$30d0]
    ld c, d
    ei
    ldh [rNR41], a
    ld c, e
    ei
    ldh [$e0], a
    ei
    ei
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    db $fc
    ldh [$e0], a
    ld b, e
    rst $38
    ret nz

    ret nz

    ld b, e
    db $fc
    ret nz

    ld b, b
    cp c
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0f6_567d

    add b
    add b
    jr nz, jr_0f6_5681

    ld b, b
    ret nz

    rra
    rra
    ldh [$e0], a
    inc e
    rra
    db $10
    ldh a, [rNR10]
    rra
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    inc b
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $fc1c
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

jr_0f6_567d:
    nop
    ld a, [hl]
    ld a, [hl]
    nop

jr_0f6_5681:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    add a
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    ret nz

    cp a
    inc e
    inc e
    cp a
    rst $38
    ld l, $32
    rst $10
    cp a
    ld a, d
    ld a, [hl]
    rst $38
    sub a
    ld e, a
    ld a, e
    db $fc
    rst $38
    ld e, a
    ld a, a
    rst $38
    rst $38
    ld a, h
    ld a, a
    ld a, h
    rst $38
    ld e, b
    ld h, a
    inc e
    rst $38
    or b
    rst $08
    inc e
    rst $38
    add sp, -$69
    ld [$f8ff], sp
    add a
    ld [$b1ff], sp
    rst $08
    adc a
    rst $38
    ld b, [hl]
    ld a, [hl]
    ldh a, [rIE]
    jr c, @+$3a

    ld b, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f6_571b

    nop
    nop
    jr nz, jr_0f6_571f

    nop
    nop
    jr nz, jr_0f6_5723

    nop
    nop
    ld b, b
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
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fcfc
    ld bc, $e401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0f6_571b:
    rst $38
    nop
    nop
    add b

jr_0f6_571f:
    rst $38
    nop
    nop
    ld b, b

jr_0f6_5723:
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld e, $1e
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
    rst $38
    rst $38
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
    add b
    add b
    nop
    nop

jr_0f6_5750:
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop

jr_0f6_5758:
    add b
    add b
    nop
    nop

jr_0f6_575c:
    add b
    add b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp $fe
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
    cp a
    rst $38
    ld b, b
    ret nz

    sbc h
    rst $38
    jr nz, jr_0f6_5758

    sbc b
    rst $38
    jr nz, jr_0f6_575c

    adc c
    cp $90
    ld [hl], b
    cp [hl]
    rst $38
    ret nc

    jr nc, jr_0f6_5750

    ld a, [$30d0]
    ld c, e
    ld a, [$30d0]
    ld c, d
    ei
    ldh [rNR41], a
    ld c, e
    ei
    ldh [$e0], a
    ei
    ei
    ldh [$e0], a
    rrca
    rst $38
    ldh [$e0], a
    rlca
    db $fc
    ldh [$e0], a
    ld b, a
    rst $38
    ret nz

    ret nz

    ld b, a
    db $fc
    ret nz

    ld b, b
    or e
    rst $38
    add b
    add b
    add d
    cp $00
    nop
    ld [bc], a
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
    rst $38
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0f6_580d

    add b
    add b
    jr nz, jr_0f6_5811

    add b
    add b
    jr nz, jr_0f6_5815

    ld b, b
    ret nz

    jr nz, jr_0f6_5819

    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

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
    nop
    nop
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
    nop
    nop
    nop

jr_0f6_580d:
    nop
    nop
    nop
    nop

jr_0f6_5811:
    nop
    nop
    nop
    nop

jr_0f6_5815:
    nop
    nop
    nop
    nop

jr_0f6_5819:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    rra
    rra
    call c, Call_000_313c
    ccf
    ei
    rlca
    pop af
    rst $28
    db $dd
    db $e3
    ld d, b
    xor a
    dec sp
    ccf
    ld a, b
    add a
    rrca
    rrca
    ld a, [hl]
    add c
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
    rlca
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
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
    ld [$000f], sp
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
    rrca
    rrca

jr_0f6_58b8:
    nop
    nop
    rra
    rra

jr_0f6_58bc:
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
    inc a
    inc a
    nop
    nop
    ld b, e
    ld a, a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0f6_58b8

    add b
    rst $38
    jr nz, jr_0f6_58bc

    ld h, b
    ld e, a
    ld b, b
    ret nz

    ld e, a
    ld a, a
    ret nz

    ret nz

    ld l, e
    ld e, a
    ret nz

    ret nz

    ld a, a
    ld c, e
    ret nz

    ret nz

    ei
    rst $08
    ld hl, sp-$08
    ld hl, sp-$01
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    ld a, [c]
    rst $38
    ld a, [hl]
    cp $e2
    rst $38
    ld a, [hl-]
    cp $22
    rst $38
    ld [hl-], a
    cp $22
    rst $38
    ld [hl-], a
    cp $ff
    rst $38
    db $f4
    db $ec
    add d
    rst $38
    inc [hl]
    call z, $ff82
    inc [hl]
    call z, $ff82
    ld a, $fe
    rst $38
    rst $38
    cp $fe
    add b
    rst $38
    ld a, $fe
    add b
    rst $38
    inc e
    db $fc
    ld bc, $10ff
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    ret nc

    ldh a, [rDIV]
    rst $38
    jr nz, @-$1e

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

jr_0f6_5940:
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    cp h
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_5940

    jr nc, @+$01

    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    ld [hl], b
    ldh a, [$82]
    add e
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    ld sp, $003f
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f6_5a03

    nop
    nop
    jr nz, jr_0f6_5a07

    nop
    nop
    ld a, h
    ld b, e
    rst $38
    rst $38
    ei
    add a
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    inc bc
    rst $18
    ldh [$f7], a
    rst $28
    rst $38
    rst $38
    dec de
    rla
    add b
    add b
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
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
    inc b
    rlca
    nop
    nop
    inc b

jr_0f6_5a03:
    rlca
    nop
    nop
    inc b

jr_0f6_5a07:
    rlca
    nop
    nop
    ld [$000f], sp
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
    rrca
    rrca

jr_0f6_5a38:
    nop
    nop
    rra
    rra

jr_0f6_5a3c:
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
    inc a
    inc a
    nop
    nop
    ld b, e
    ld a, a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    jr nz, jr_0f6_5a38

    add b
    rst $38
    jr nz, jr_0f6_5a3c

    ld h, b
    ld e, a
    ld b, b
    ret nz

    ld e, a
    ld a, a
    ret nz

    ret nz

    ld l, e
    ld e, a
    ret nz

    ret nz

    ld a, a
    ld c, e
    ret nz

    ret nz

    ei
    rst $08
    ld hl, sp-$08
    ld hl, sp-$01
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    ld a, [c]
    rst $38
    ld a, [hl]
    cp $e2
    rst $38
    ld a, [hl-]
    cp $22
    rst $38
    ld [hl-], a
    cp $22
    rst $38
    ld [hl-], a
    cp $ff
    rst $38
    or $ee
    jp nz, Jump_000_3fff

    rst $38
    jp nz, Jump_000_3fff

    rst $38

jr_0f6_5a98:
    add d
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    or $ce
    add b
    rst $38
    ld [$80f8], sp
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    ret nc

    ldh a, [rDIV]
    rst $38
    jr nz, jr_0f6_5a98

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

jr_0f6_5ac0:
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    cp h
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_5ac0

    jr nc, @+$01

    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    ld [hl], b
    ldh a, [$82]
    add e
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    inc bc
    inc bc
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
    inc bc
    inc bc
    nop
    nop
    inc c
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
    dec bc
    rrca
    nop
    nop
    ld b, $05
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec b
    ld b, $00
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
    ccf
    ccf
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
    ld [hl], c
    ld c, a
    nop
    nop
    rst $30
    adc a
    ld bc, $f701
    adc b
    ld e, $1f
    rst $30
    ld [$706f], sp
    db $e3
    sbc a
    ld a, a
    nop
    adc h
    db $fc
    ld l, a
    ld e, $f0
    ldh a, [$71]
    ld [hl], c
    pop hl
    pop hl
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
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
    ld [$000f], sp
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
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    rst $38
    cp a
    add b
    add b
    ld [hl], a
    rst $08
    ldh [$e0], a
    di
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ret c

    ld hl, sp-$0e
    rst $38
    ld c, b
    ld hl, sp-$1d
    rst $38
    ld c, b
    ld hl, sp-$1f
    rst $38
    jr z, @-$06

    sub c
    rst $38
    db $ec
    db $fc

jr_0f6_5c04:
    sbc a
    rst $38
    xor [hl]
    cp $88
    rst $38
    cp [hl]
    cp $08
    rst $38
    cp [hl]
    cp $08
    rst $38
    cp [hl]
    cp $c8
    rst $38
    cp h
    db $e4

jr_0f6_5c18:
    ret z

    ld a, a
    cp b
    ld hl, sp-$01
    rst $38
    ldh [$e0], a
    add b
    rst $38
    jr nz, jr_0f6_5c04

    add b
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [rSB]
    rst $38
    db $10
    ldh a, [$0e]
    rst $38
    ret nc

    ldh a, [rDIV]
    rst $38
    jr nz, jr_0f6_5c18

    ld [$40ff], sp
    ret nz

    ld [$40ff], sp
    ret nz

jr_0f6_5c40:
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    cp h
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    jr nz, jr_0f6_5c40

    jr nc, @+$01

    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    ld [hl], b
    ldh a, [$82]
    add e
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f6_5cff

    nop
    nop
    jr nz, jr_0f6_5d03

    nop
    nop
    jr nz, jr_0f6_5d07

    nop
    nop
    jr jr_0f6_5ce3

    nop
    nop
    rla
    rra
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld e, $13
    nop
    nop
    inc de
    rra
    nop
    nop
    rra

jr_0f6_5ce3:
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ld l, e
    ld a, h
    nop
    nop
    inc sp
    inc a
    nop
    nop
    rra

jr_0f6_5cff:
    inc e
    nop
    nop
    ld [de], a

jr_0f6_5d03:
    dec e
    nop
    nop
    rla

jr_0f6_5d07:
    jr jr_0f6_5d09

jr_0f6_5d09:
    nop
    rra
    jr jr_0f6_5d0d

jr_0f6_5d0d:
    nop
    rla
    jr jr_0f6_5d11

jr_0f6_5d11:
    nop
    rla
    jr jr_0f6_5d15

jr_0f6_5d15:
    nop
    rra
    rra
    nop
    nop
    dec a
    dec sp
    nop
    nop
    dec a
    dec sp
    nop
    nop
    ld a, $2f
    nop
    nop
    inc l
    inc sp
    nop
    nop
    jr jr_0f6_5d4b

    nop
    nop
    ld [$000f], sp
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

jr_0f6_5d4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]

jr_0f6_5da2:
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr c, jr_0f6_5da2

jr_0f6_5daa:
    nop
    nop
    jr c, @-$06

    nop
    nop
    jr c, jr_0f6_5daa

jr_0f6_5db2:
    nop
    nop
    cp b
    ld a, b

jr_0f6_5db6:
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    jr nc, jr_0f6_5db2

    nop
    nop
    jr nc, jr_0f6_5db6

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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld e, $fe
    jr jr_0f6_5e00

    ld de, $3cff
    inc a
    ld hl, $fcff
    db $fc
    ld b, c
    rst $38
    db $fc
    db $fc
    ld b, c
    rst $38
    adc $ce
    add c
    rst $38
    ld c, $0e
    add c
    rst $38
    ld b, $06

jr_0f6_5e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0301
    rst $38
    nop
    nop
    add a
    db $fd
    inc bc
    inc bc
    db $fd
    rst $28
    rlca
    rlca
    db $fc
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    jr jr_0f6_5e59

    rst $38
    rst $38
    db $10
    rra
    ld sp, hl
    rst $38
    db $10
    rra
    ld [hl], c
    rst $38
    db $10
    rra
    ld de, $17ff
    jr jr_0f6_5e5c

    rst $38
    rra
    db $10
    rst $38
    rst $38
    ld l, $31
    pop bc
    rst $38
    ccf
    ld hl, $ffc1
    dec l

jr_0f6_5e59:
    inc sp
    and c
    cp a

jr_0f6_5e5c:
    inc de
    rra
    ccf
    ccf
    inc c
    inc c
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
    ld bc, $0701
    rst $38
    ld bc, $0201
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
    ld [$02ff], sp
    inc bc
    ld [$04ff], sp
    rlca
    db $10
    rst $38
    inc b
    rlca
    db $10
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    sbc $ff
    ld [$000f], sp
    rst $38
    ld [$000f], sp
    rst $38
    ld [$180f], sp
    rst $38
    ld [$140f], sp
    rst $30
    inc b
    rlca
    ld [hl+], a
    db $e3
    inc bc
    inc bc
    pop bc
    pop bc
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    add c
    add c
    rra
    rra
    add e
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
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
    db $fc
    db $fc
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
    ccf
    rst $38
    nop
    nop
    dec e
    rst $38
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    ld a, [c]
    cp $00
    nop
    dec c
    di
    nop
    nop
    dec e
    db $e3
    nop
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc

jr_0f6_5f1e:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ld l, b
    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

jr_0f6_5f3a:
    nop
    nop
    jr nz, jr_0f6_5f1e

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
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f6_5f3a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr c, @-$06

    nop
    nop
    ldh a, [$f0]
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
    ld [$000f], sp
    nop
    ld b, $05
    inc bc
    inc bc
    add l
    add a
    dec b
    ld b, $c6
    ld b, l
    rrca
    rrca
    ld b, a
    call nz, Call_000_0f0b
    rst $38
    ld a, h
    dec bc
    rrca
    cp $ff
    rrca
    rrca
    sbc a
    rst $38
    dec bc
    inc c
    rra
    rst $38
    ld d, $19
    rrca
    rst $38
    dec e
    ld [de], a
    ld b, $ff
    rra
    db $10
    ld b, $ff
    ld d, $19
    ld [hl-], a
    rst $38
    ld [$f20f], sp
    rst $28
    rlca
    rlca
    ccf
    cpl
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl], b
    ld l, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    db $10
    rra
    nop
    nop
    ld h, b
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
    ld bc, $08ff
    rrca
    rlca
    rst $38
    db $10
    rra
    add hl, bc
    ld sp, hl
    rra
    rra
    ld de, $1ff1
    rra
    pop hl
    pop hl
    ld [$210f], sp
    pop hl
    ld [$110f], sp
    pop af
    inc b
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    ld [$04f8], sp
    rlca
    ld [$02f8], sp
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
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
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_6046:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr c, jr_0f6_6046

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
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    db $fc
    cp h
    nop
    nop
    cp [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rla
    rst $38
    add b
    add b
    ld [de], a
    rst $38
    add b
    add b
    inc d
    rst $38
    add b
    add b
    dec h
    rst $38
    nop
    nop
    ld h, $fe
    nop
    nop
    cp $fe
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
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    or $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f6_60c0:
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nc, jr_0f6_611d

    jr nz, jr_0f6_60c0

    ld [$100f], sp
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rP1]
    ld bc, $f070
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
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
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
    ld [$000f], sp
    nop
    ld b, $05
    inc bc
    inc bc
    add l
    add a
    dec b

jr_0f6_611d:
    ld b, $c6
    ld b, l
    rrca
    rrca
    ld b, a
    call nz, Call_000_0f0b
    rst $38
    ld a, h
    dec bc
    rrca
    cp $ff
    rrca
    rrca
    sbc a
    rst $38
    dec bc
    inc c
    rra
    rst $38
    ld d, $19
    rrca
    rst $38
    dec e
    ld [de], a
    ld b, $ff
    rra
    db $10
    ld b, $ff
    ld d, $19
    ld [hl-], a
    rst $38
    ld [$f20f], sp
    rst $28
    rlca
    rlca
    ccf
    cpl
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl], b
    ld l, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nc, @+$41

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
    jr nz, jr_0f6_61cf

    nop
    nop
    jr nz, jr_0f6_61d3

    nop
    nop
    jr nz, jr_0f6_61d7

    nop
    nop
    jr nz, jr_0f6_61db

    nop
    nop
    jr nz, jr_0f6_61df

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

jr_0f6_61be:
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    jr c, jr_0f6_61be

    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00

jr_0f6_61cf:
    nop
    ld [bc], a
    cp $00

jr_0f6_61d3:
    nop
    inc b
    db $fc
    nop

jr_0f6_61d7:
    nop
    db $fc
    db $fc
    nop

jr_0f6_61db:
    nop
    cp h
    db $fc
    nop

jr_0f6_61df:
    nop
    db $fc
    cp h
    nop
    nop
    cp [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rla
    rst $38
    add b
    add b
    ld [de], a
    rst $38
    add b
    add b
    inc d
    rst $38
    add b
    add b
    dec h
    rst $38
    nop
    nop
    ld h, $fe
    nop
    nop
    cp $fe
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
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld b, h
    db $fc
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
    ld c, [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
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
    add b
    add b
    ld d, b
    rst $18
    add b
    add b
    rst $18
    rst $18
    add b
    add b
    add a
    add a
    nop
    nop
    add a
    add a
    add b
    add b
    add a
    add a
    add b
    add b
    adc a
    adc a
    ret nz

    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ld d, b
    or b
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    dec d
    dec de
    add b
    add b
    ld a, [bc]
    dec c
    ld b, b
    ret nz

    inc b
    rlca
    ldh a, [rSVBK]
    ld b, $05
    ld l, h
    db $fc
    rlca
    rlca
    rst $28
    di
    inc bc
    inc bc
    adc a
    pop af
    nop
    nop
    ld h, a
    ld a, c
    nop
    nop
    add hl, de
    rra
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
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
    ld bc, $0001
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
    inc b
    rlca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    inc e
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
    rlca
    nop
    nop
    rra
    rra

jr_0f6_6338:
    nop
    nop
    ld a, a
    ld a, a

jr_0f6_633c:
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld h, b
    ld e, a
    jr nz, jr_0f6_6338

    cp b
    rst $38
    jr nz, jr_0f6_633c

    sbc $bf
    ld b, b
    ret nz

    rst $30
    sbc a
    ret nz

    ret nz

    rst $38
    sub a
    ldh a, [$f0]
    rst $28
    rst $38
    ld hl, sp-$08
    rst $38
    rst $08
    db $fc
    db $fc
    ccf
    rst $38
    add h
    db $fc
    daa
    rst $38
    inc b
    db $fc
    ld b, d
    rst $38
    inc e
    db $e4
    ld b, d
    rst $38
    ld a, $c2
    and l
    rst $38
    dec e
    db $e3
    jr @+$01

    db $ed
    di
    nop
    rst $38
    ld e, l
    db $d3
    add b
    rst $38
    ld e, l
    db $d3
    rst $38
    sbc a
    db $dd
    db $d3
    add b
    rst $38
    ld e, l
    db $d3

jr_0f6_6398:
    add b
    rst $38
    ld sp, $80ff
    rst $38
    sbc [hl]
    cp $00
    rst $38
    ld e, [hl]
    ld a, [$ff00]
    ld c, [hl]
    ld a, [$ff00]
    ld e, [hl]
    xor $07
    rst $38
    cp d
    or $08
    rst $38
    inc l
    db $ec
    db $10
    rst $38
    jr nz, jr_0f6_6398

    db $10
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    ret nc

    rst $18
    ret nz

    ret nz

    rst $18
    rst $18
    ldh [$e0], a
    ld e, a
    rst $18
    ldh [$e0], a
    cpl
    rst $28
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rNR50]
    rst $20
    db $10
    ldh a, [rNR50]
    rst $20
    ld [$22f8], sp
    db $e3
    ld [$42f8], sp
    jp $f808


    pop bc
    pop bc
    ld hl, sp-$08
    add b
    add b
    ldh a, [$f0]
    add b
    add b
    ld a, b
    ld a, b
    add b
    add b
    jr c, @+$3a

    add b
    add b
    ld a, h
    ld a, h
    add b
    add b
    db $fc
    db $fc
    add c
    add c
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
    ld e, $1e
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $3001
    rst $18
    ld bc, $3001
    rst $38
    nop
    nop
    or b
    rst $08
    nop
    nop
    ld a, a
    ld l, [hl]
    nop
    nop
    inc a
    inc hl
    nop
    nop
    dec l
    ld [hl-], a
    nop
    nop
    ccf
    inc a
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
    inc e
    rra
    nop
    nop
    ld [hl-], a
    cpl
    nop
    nop
    add hl, sp
    daa
    nop
    nop
    ld a, c
    ld b, a
    nop
    nop
    rst $30
    adc a
    ld bc, $e801
    jr jr_0f6_6473

    inc bc
    pop de

jr_0f6_6473:
    ld sp, $0607
    and d
    db $e3
    ld a, [bc]
    dec c
    ld l, h
    rst $28
    dec d
    dec de
    ret nc

    rst $18
    dec hl
    scf
    and b
    cp a
    ld d, h
    ld l, h
    jr nz, jr_0f6_64c7

    xor b
    ret c

    ccf
    ccf
    ld d, b
    or b
    inc a
    ccf
    and b
    ld h, b
    jr nz, jr_0f6_64d3

    ret nz

    ret nz

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
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_64c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_64d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f6_64f4:
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    ldh [$e0], a

jr_0f6_64fc:
    ld a, h
    rst $08
    ld [hl], b
    ldh a, [$cc]
    rst $38
    jr nc, jr_0f6_64f4

jr_0f6_6504:
    ld a, e
    db $fc
    db $10
    ldh a, [$bf]
    ldh a, [$90]
    ld [hl], b
    sbc e
    db $fc
    or b
    ld [hl], b
    ld b, h
    rst $38
    jr nc, jr_0f6_6504

    ld b, a
    rst $38
    ldh [$e0], a
    jr c, @+$01

    jr nz, jr_0f6_64fc

    ld b, b
    rst $38
    jr nz, @-$1e

    add b
    rst $38
    jr nz, jr_0f6_6504

jr_0f6_6524:
    add c
    rst $38
    ldh [$e0], a

jr_0f6_6528:
    ld a, [hl]
    ld c, a
    db $10
    ldh a, [$60]
    ld a, a
    ld d, b
    ldh a, [$80]
    rst $38
    jr z, @-$06

jr_0f6_6534:
    nop
    rst $38
    jr z, @-$06

    nop
    rst $38
    jr z, jr_0f6_6534

    ld bc, $d0ff
    ldh a, [$0e]
    rst $38
    jr nz, jr_0f6_6524

    jr nc, @+$01

jr_0f6_6546:
    jr nz, jr_0f6_6528

    rst $18
    rst $18
    ldh [$e0], a
    sbc [hl]
    sbc a
    db $10
    ldh a, [rOBP0]
    rst $08
    ld [$44f8], sp
    rst $00
    inc b
    db $fc
    ld [hl+], a
    db $e3
    ld [bc], a
    cp $21
    pop hl
    ld bc, $20ff
    ldh [$80], a
    rst $38
    jr nz, jr_0f6_6546

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld hl, $803f
    add b
    ld e, $1e
    add b
    add b
    ld c, $0e
    add b
    add b
    ld e, $1e
    add b
    add b
    ld a, $3e
    add b
    add b
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
    inc bc
    inc bc
    rst $38
    rst $38
    cp $fd
    rst $38
    ld bc, $f9c7
    rst $38
    add d
    cp l
    jp Jump_0f6_7f7e


    add c
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $c101
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
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

jr_0f6_662c:
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
    rrca
    rrca

jr_0f6_6638:
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    ld e, $1e
    nop
    nop
    ld hl, $c03f
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_662c

    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [$30]
    cpl
    jr nz, jr_0f6_6638

    cpl
    ccf
    ldh [$e0], a
    dec [hl]
    cpl
    ldh [$e0], a
    ccf
    dec h
    ldh [$e0], a
    db $fd
    rst $20
    ret nz

    ret nz

    rst $30
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    sbc a
    rst $38
    jp nz, Jump_000_13fe

    rst $38
    add d
    cp $21
    rst $38
    ld c, $f2
    and c
    rst $38
    rra
    pop hl
    jp nc, $8eff

    pop af
    adc h
    rst $38
    db $76
    ld sp, hl
    add b
    rst $38
    ld l, $e9
    ld b, b
    ld a, a
    ld l, $e9
    ld a, a
    ld e, a
    xor $e9
    ld b, b
    ld a, a
    ld l, $e9
    ld b, b
    ld a, a
    jr @+$01

jr_0f6_669c:
    ld b, b
    ld a, a
    ld c, a
    rst $38

jr_0f6_66a0:
    add b
    rst $38
    cpl
    db $fd
    add b
    rst $38
    daa
    db $fd
    nop
    rst $38
    cpl
    rst $30
    inc bc
    rst $38
    db $dd
    ei
    inc b
    rst $38
    ld d, $f6
    ld [$10ff], sp
    ldh a, [$08]
    rst $38
    jr nz, jr_0f6_669c

    jr @+$01

    jr nz, jr_0f6_66a0

    add sp, -$11
    ld h, b
    ldh [$ef], a
    rst $28
    ldh a, [$f0]
    cpl
    rst $28
    ldh a, [$f0]
    rla
    rst $30
    adc b
    ld hl, sp+$14
    rst $30
    ld [$12f8], sp
    di
    ld [$12f8], sp
    di
    inc b
    db $fc
    ld de, $04f1
    db $fc
    ld hl, $04e1
    db $fc
    ret nz

    ret nz

    ld a, b
    ld a, b
    ret nz

    ret nz

    ld a, b
    ld a, b
    ret nz

    ret nz

    inc a
    inc a
    ret nz

    ret nz

    inc e
    inc e
    ret nz

    ret nz

    ld a, $3e
    ret nz

    ret nz

    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_0f6_68db

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
    add c
    rst $38
    nop
    nop
    ld b, e
    ld a, [hl]
    ld bc, $fe01
    rst $30
    inc bc
    inc bc
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    ld [$7c0f], sp
    rst $38
    ld [$380f], sp
    rst $38
    ld [$080f], sp
    rst $38
    dec bc
    inc c
    adc b
    ld a, a
    rrca
    ld [$7fff], sp
    rla
    jr jr_0f6_6933

    rst $38
    rra
    db $10
    and b
    cp a
    ld d, $19
    and b

jr_0f6_68db:
    cp a
    add hl, bc
    rrca
    ccf
    ccf
    ld b, $06
    jr nz, jr_0f6_6923

    nop
    nop
    jr nz, jr_0f6_6927

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
    add e
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$03ff], sp
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $28
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    inc c

jr_0f6_6923:
    rst $38
    inc b
    rlca
    ld a, [bc]

jr_0f6_6927:
    ei
    ld [bc], a
    inc bc
    ld de, $01f1
    ld bc, $e0e0
    ld bc, $c001

jr_0f6_6933:
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

jr_0f6_693e:
    pop bc
    pop bc
    nop
    nop

jr_0f6_6942:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f6_693e

    nop
    nop
    jr nz, jr_0f6_6942

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
    ccf
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc a
    rst $38
    add b
    add b
    adc [hl]
    rst $38
    add b
    add b
    adc h
    rst $38
    add b
    add b
    adc h
    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    add [hl]
    ld sp, hl
    add b
    add b
    adc [hl]
    pop af
    add b
    add b
    add c
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc

jr_0f6_69a6:
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
    or h
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
    jr nz, jr_0f6_69a6

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
    inc b
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0f6_6a2a

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
    inc e
    inc e
    nop
    nop
    ld [hl], $2a
    nop
    nop
    ld a, [hl-]
    ld a, $00
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld l, e
    ld e, l
    nop
    nop
    ld l, [hl]
    ld e, [hl]
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

jr_0f6_6a2a:
    ld [hl], h
    ld c, h
    nop
    nop
    ld [hl], h
    ld c, h
    nop
    nop
    ld [hl], a
    ld c, e
    nop
    nop
    ld c, [hl]
    ld [hl], c
    nop
    nop
    cpl
    jr nc, jr_0f6_6a3d

jr_0f6_6a3d:
    nop
    dec de
    inc e
    nop
    nop
    jr nc, jr_0f6_6a83

    nop
    nop
    jr nc, jr_0f6_6a87

    nop
    nop
    jr @+$21

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
    ld [$000f], sp
    nop
    rrca
    dec bc
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
    add b
    rst $38
    nop
    nop
    add b

jr_0f6_6a83:
    rst $38
    ld bc, $0101

jr_0f6_6a87:
    rst $38
    ld bc, $0e01
    cp $01
    ld bc, $ff3f
    ld bc, $f801
    rst $38
    ld bc, $f001
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
    jr nz, jr_0f6_6ae3

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

jr_0f6_6ac0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $801f
    add b
    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0f6_6ac0

    ld e, $17
    db $10

jr_0f6_6ae3:
    ldh a, [$37]
    cpl
    db $10
    ldh a, [$7d]
    ld b, [hl]
    sub b
    ldh a, [rOCPD]
    ld e, l
    ldh [$e0], a
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    add a
    ld a, a
    ret nz

    ret nz

    add e
    ld a, a
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld [de], a
    cp $00
    nop
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    db $fc
    db $fc

jr_0f6_6b1e:
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
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f6_6b1e

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
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    ldh [$e0], a
    jr nz, jr_0f6_6d4d

    db $10
    ldh a, [rNR41]
    ccf
    ld [$20f8], sp
    ccf
    ld [$18f8], sp
    rla
    db $10
    ldh a, [rNR22]
    rra
    ldh a, [$f0]
    ld a, [de]
    rla
    db $fc
    db $fc
    rra
    ld [de], a
    rst $38
    rst $38
    ld e, $13
    rst $38
    rst $38
    inc de
    rra
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc bc
    inc bc
    add $ff
    ld b, $07
    add d
    rst $38
    inc c
    rrca
    add e
    rst $38
    inc c
    rrca
    add c
    rst $38
    ld c, $0f
    cp a
    pop bc
    ld a, a
    ld a, a
    ld a, [hl]
    add e
    db $ed

jr_0f6_6d4d:
    sbc $f8
    rlca
    rst $28
    ret c

    ldh [$1f], a
    ld a, b
    ld a, a
    inc bc
    rst $38
    rlca
    rlca
    db $fc
    rst $18
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f6_6da7

    nop
    nop
    jr nz, jr_0f6_6dab

    nop
    nop
    jr nz, jr_0f6_6daf

    nop
    nop
    jr nz, jr_0f6_6db3

    nop
    nop
    jr nz, jr_0f6_6db7

    nop
    nop
    jr nz, jr_0f6_6dbb

    nop
    nop
    jr nz, jr_0f6_6dbf

    nop
    nop
    add hl, de
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

jr_0f6_6da7:
    rlca
    nop
    nop
    rlca

jr_0f6_6dab:
    rlca
    nop
    nop
    rlca

jr_0f6_6daf:
    rlca
    nop
    nop
    rlca

jr_0f6_6db3:
    rlca
    nop
    nop
    rrca

jr_0f6_6db7:
    rrca
    nop
    nop
    ccf

jr_0f6_6dbb:
    ccf
    nop
    nop
    ld a, a

jr_0f6_6dbf:
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

jr_0f6_6dda:
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    ld l, b
    sbc b
    nop
    nop
    jr z, jr_0f6_6dda

    nop
    nop
    inc [hl]
    call z, RST_00
    call nc, Call_000_00ec
    nop
    ld l, h
    db $f4
    nop
    nop
    ld l, h
    db $f4
    nop
    nop
    cp $fe
    nop
    nop
    daa
    ei
    nop
    nop
    ccf
    push af
    nop
    nop
    ccf
    db $fd
    nop
    nop
    ld a, $f2
    nop
    nop
    ld l, h
    db $ec
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ret nz

jr_0f6_6e36:
    nop
    nop
    rst $38
    rst $38

jr_0f6_6e3a:
    nop
    nop
    ret nz

    rst $38

jr_0f6_6e3e:
    cp $fe
    ret nz

    rst $38
    cp $fe
    add b
    rst $38
    cp $fe
    nop
    rst $38
    cp $fe
    rst $38
    rst $38
    ld c, $0e
    jr nz, @-$1e

    ld c, $0e
    jr nz, jr_0f6_6e36

    ld b, $06
    jr nz, jr_0f6_6e3a

    ld b, $06
    jr nz, jr_0f6_6e3e

    nop
    nop
    ld b, b
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
    rlca
    rlca
    add b
    add b
    ld [$700f], sp
    ldh a, [rNR10]
    rra
    ld [$10f8], sp
    rra
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    inc c
    dec bc
    ld [$0bf8], sp
    rrca
    ld hl, sp-$08
    dec c
    dec bc
    ld a, h
    db $fc
    rrca
    add hl, bc
    rst $38
    ld a, a
    rrca
    add hl, bc
    ld a, a
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld bc, $e301
    rst $38
    inc bc
    inc bc
    ld b, c
    rst $38
    ld b, $07
    ld b, b
    rst $38
    ld b, $07
    jr nz, @+$01

    inc bc
    inc bc
    ld a, e
    push bc
    ld bc, $c401
    cp e
    ld bc, $fc01
    add e
    rra
    ld e, $f8
    rlca
    dec sp
    ld [hl], $f3
    rrca
    ld a, [hl-]
    scf
    inc c
    rst $38
    rra
    rra
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
    jr nz, jr_0f6_6f2f

    nop
    nop
    jr nz, jr_0f6_6f33

    nop
    nop
    jr nz, jr_0f6_6f37

    nop
    nop
    ccf
    ccf
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
    ld [$000f], sp
    nop
    ld b, $07
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

jr_0f6_6f2f:
    nop
    nop
    nop
    nop

jr_0f6_6f33:
    nop
    nop
    nop
    nop

jr_0f6_6f37:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    add sp, -$28
    nop
    nop
    xor b
    ret c

    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, h
    db $ec
    nop
    nop
    ld d, h
    db $ec
    nop
    nop
    inc [hl]
    db $ec
    nop
    nop
    db $fc
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
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    ld h, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld h, d
    cp $00
    nop
    ld a, [de]
    cp $00
    nop
    ld b, $fe
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $80ff
    add b
    rst $20
    rst $38
    ret nz

    ret nz

    ld e, a
    ld a, a
    ldh [$e0], a
    ld b, e
    ld a, a
    ldh a, [$f0]
    inc hl
    ccf
    ld hl, sp-$08
    inc hl
    ccf
    ldh a, [$f0]
    rra
    rra
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    inc bc
    inc bc
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rra
    rra
    add b
    add b
    db $10
    rra
    ldh [$e0], a
    jr nz, jr_0f6_7045

    db $10
    ldh a, [rNR41]
    ccf
    ld [$20f8], sp
    ccf
    ld [$18f8], sp
    rla
    db $10
    ldh a, [rNR22]
    rra
    ldh a, [$f0]
    ld a, [de]
    rla
    ldh a, [$f0]
    rra
    ld [de], a
    cp $fe
    ld e, $13
    rst $38
    rst $38
    inc de
    rra
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc bc
    inc bc
    or c
    rst $38
    inc bc
    inc bc
    jr nz, @+$01

    ld b, $07
    db $10
    rst $38
    ld b, $07
    jr nz, @+$01

    ld b, $07
    dec sp
    db $fc
    inc bc
    inc bc
    rst $08
    ldh a, [rSB]

jr_0f6_7045:
    ld bc, $e0df
    nop
    nop
    cp $f9
    ld bc, $d801
    rst $38
    ld bc, $ef01
    ld e, a
    ld bc, $f001
    ld a, a
    nop
    nop
    ldh a, [$8f]
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
    ld bc, $0101
    rst $38

jr_0f6_706c:
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc b
    rlca
    ld b, $ff

jr_0f6_7074:
    rlca
    rlca
    rst $38
    rst $38
    rrca
    rrca
    ei
    ei

jr_0f6_707c:
    ld [$110f], sp
    pop af
    ld [$100f], sp
    ldh a, [$08]
    rrca
    db $10
    ldh a, [$08]
    rrca
    jr nz, jr_0f6_706c

    ld [$200f], sp
    ldh [$08], a
    rrca
    jr nz, jr_0f6_7074

    ld [$200f], sp
    ldh [rDIV], a
    rlca
    jr nz, jr_0f6_707c

    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    ccf
    ccf
    add b
    add b
    rrca
    rrca
    add b
    add b
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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$60], a

jr_0f6_70fe:
    nop
    nop
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nc, jr_0f6_70fe

jr_0f6_710e:
    nop
    nop
    ldh a, [$f0]

jr_0f6_7112:
    nop
    nop
    jr jr_0f6_710e

    nop
    nop
    jr jr_0f6_7112

jr_0f6_711a:
    nop
    nop
    ld [$00f8], sp
    nop
    jr z, jr_0f6_711a

    nop
    nop
    ret z

    ld hl, sp+$00
    nop

jr_0f6_7128:
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    ld a, $fe
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ldh [rIE], a
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_7128

    jr nz, jr_0f6_7189

    db $10
    ldh a, [rNR23]
    rra
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    jr @-$06

    ld bc, $7c01
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
    ld e, $1e
    nop
    nop
    inc a
    inc a

jr_0f6_716c:
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop

jr_0f6_7178:
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
    ld hl, $c03f
    ret nz

    ld b, b

jr_0f6_7189:
    ld a, a
    jr nz, jr_0f6_716c

    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [$30]
    cpl
    jr nz, jr_0f6_7178

    cpl
    ccf
    ldh [$e0], a
    dec [hl]
    cpl
    cp $fe
    ccf
    dec h
    rst $38
    rst $38
    dec a
    daa
    rst $38
    rst $38
    daa
    ccf
    rst $38
    rst $38
    rra
    rra
    ld hl, sp-$01
    rrca
    dec c
    ld [hl], b
    rst $38
    dec c
    rrca
    jr nc, @+$01

    ld c, $0f
    jr @+$01

    ld c, $0f
    dec d
    ld a, [$0707]
    inc hl
    db $fc
    inc bc
    inc bc
    pop bc
    cp $0f
    rrca
    ret nz

    cp a
    dec d
    dec de
    ld h, b
    sbc a
    dec de
    dec d
    adc $3f
    dec de
    dec d
    or c
    ld a, a
    dec d
    dec de
    pop hl
    rst $38
    rrca
    rrca
    jr nz, jr_0f6_721f

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
    rst $20
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add h

jr_0f6_721f:
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
    ld a, b
    ld a, b
    rlca
    rlca
    ld hl, sp-$08
    ld bc, $fc01
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

jr_0f6_726e:
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
    and b
    ld h, b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ret nc

    jr nc, jr_0f6_7283

jr_0f6_7283:
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret nc

    jr nc, jr_0f6_728b

jr_0f6_728b:
    nop
    ret nc

    jr nc, jr_0f6_728f

jr_0f6_728f:
    nop
    add sp, -$08
    nop
    nop
    jr c, jr_0f6_726e

    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld a, b
    sbc b
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc a
    db $fc
    nop
    nop
    di
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld h, b
    ldh [rNR41], a
    ccf
    ld hl, sp-$08
    add hl, de
    rra
    db $fc
    db $fc
    ld b, $06
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
    ld a, b
    ld a, b
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

jr_0f6_72f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_72fc:
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
    ld hl, $c03f
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_72f0

    ld b, b
    ld a, a
    db $10
    ldh a, [rLCDC]
    ld a, a
    db $10
    ldh a, [$30]
    cpl
    jr nz, jr_0f6_72fc

    cpl
    ccf
    ldh [$e0], a
    dec [hl]
    cpl
    cp $fe
    ccf
    dec h
    rst $38
    rst $38
    dec a
    daa
    rst $38
    rst $38
    daa
    ccf
    ld hl, sp-$01
    rra
    ld e, $70
    rst $38
    rlca
    ld b, $30
    rst $38
    inc c
    rrca
    sub b
    rst $38
    dec c
    rrca
    dec bc
    db $fc
    ld a, l
    ld a, a
    rrca
    db $fc
    xor [hl]
    rst $18
    sub b
    rst $38
    ret c

    xor a
    ld h, b
    rst $38
    rst $18
    xor b
    nop
    rst $38
    xor b
    rst $18
    ld b, b
    rst $38
    ld a, a
    ld a, a
    and c
    cp a
    nop
    nop
    ld a, $2f
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f6_73a7

    nop
    nop
    jr nz, jr_0f6_73ab

    nop
    nop
    jr nz, jr_0f6_73af

    nop
    nop
    jr nz, jr_0f6_73b3

    nop
    nop
    jr nz, jr_0f6_73b7

    nop
    nop
    jr nz, jr_0f6_73bb

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
    ld [$000f], sp
    nop
    rlca

jr_0f6_73a7:
    rlca
    nop
    nop
    rlca

jr_0f6_73ab:
    rlca
    nop
    nop
    rlca

jr_0f6_73af:
    rlca
    nop
    nop
    rlca

jr_0f6_73b3:
    rlca
    nop
    nop
    rrca

jr_0f6_73b7:
    rrca
    nop
    nop
    ccf

jr_0f6_73bb:
    ccf
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

jr_0f6_73d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f6_73d6

    nop
    nop
    sub b
    ld [hl], b
    nop
    nop
    ret z

    jr c, jr_0f6_73ff

jr_0f6_73ff:
    nop
    ld d, h
    xor h
    nop
    nop
    db $f4
    inc c
    nop
    nop
    inc [hl]
    call z, RST_00
    ld e, d
    and $00
    nop
    ld a, [hl+]
    or $00
    nop
    rst $28
    rst $38
    nop
    nop
    inc de
    db $fd
    add b
    add b
    rra
    ld a, [$8080]
    rra
    cp $80
    add b
    rra
    ld sp, hl
    nop
    nop
    ld h, $e6
    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld a, a
    rst $38

jr_0f6_743a:
    nop
    nop
    ret nz

    rst $38

jr_0f6_743e:
    cp $fe
    ret nz

    rst $38
    cp $fe
    ret nz

    rst $38
    cp $fe
    ld b, b
    rst $38
    cp $fe
    ld b, e
    rst $38
    ld c, $0e
    ld a, h
    db $fc
    ld c, $0e
    ld b, b
    ret nz

    ld b, $06
    jr nz, jr_0f6_743a

    ld b, $06
    jr nz, jr_0f6_743e

    nop
    nop
    ld b, b
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
    rlca
    rlca
    add b
    add b
    ld [$700f], sp
    ldh a, [rNR10]
    rra
    ld [$10f8], sp
    rra
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    inc c
    dec bc
    ld [$0bf8], sp
    rrca
    ld hl, sp-$08
    dec c
    dec bc
    ld a, a
    rst $38
    rrca
    add hl, bc
    rst $38
    ld a, a
    rrca
    add hl, bc
    ld a, a
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    call c, Call_000_037f
    inc bc
    ld c, h
    rst $38
    inc bc
    inc bc
    add [hl]
    rst $38
    inc bc
    inc bc
    add l
    cp $01
    ld bc, $ffc8
    nop
    nop
    ldh a, [rIE]
    inc bc
    inc bc
    ldh a, [$ef]
    dec b
    ld b, $58
    rst $20
    ld b, $05
    ldh a, [rVBK]
    ld b, $05
    rst $28
    ld e, l
    dec b
    ld b, $78
    rst $38
    inc bc
    inc bc
    ret nc

    rst $18
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
    ld [hl+], a
    ccf
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
    ld b, c
    ld a, a
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc e
    rra
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f6_7552:
    nop
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

jr_0f6_755e:
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
    jr nc, jr_0f6_755e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr z, jr_0f6_7552

    nop
    nop
    ld l, b
    sbc b
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld h, h
    sbc h
    nop
    nop
    inc [hl]
    call z, RST_00
    inc [hl]
    call z, RST_00
    ld a, [$00fe]
    nop
    ld c, [hl]
    or $00
    nop
    ld a, [hl]
    ld [$0000], a
    ld a, $fa
    nop
    nop
    inc e
    db $e4
    nop
    nop
    inc b
    db $fc
    nop
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
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, l
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    jr nz, @+$01

    add b
    add b
    ldh [rIE], a
    add b
    add b
    jr nz, jr_0f6_7615

    add b
    add b
    jr nz, jr_0f6_7619

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld de, $801f
    add b
    rrca
    rrca
    add b
    add b
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
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
    nop
    nop
    db $10
    rra
    ldh [$e0], a
    jr nz, jr_0f6_7645

    db $10
    ldh a, [rNR41]
    ccf
    ld [$20f8], sp
    ccf
    ld [$18f8], sp
    rla
    db $10
    ldh a, [rNR22]

jr_0f6_7615:
    rra
    ldh a, [$f0]
    ld a, [de]

jr_0f6_7619:
    rla
    ldh a, [$f0]
    rra
    ld [de], a
    cp $fe
    ld e, $13
    rst $38
    rst $38
    inc de
    rra
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc bc
    inc bc
    or c
    rst $38
    inc bc
    inc bc
    jr nz, @+$01

    ld b, $07
    db $10
    rst $38
    ld b, $07
    jr nz, @+$01

    ld b, $07
    dec sp
    db $fc
    inc bc
    inc bc
    rst $08
    ldh a, [rSB]

jr_0f6_7645:
    ld bc, $e0df
    nop
    nop
    cp $f9
    ld bc, $d801
    rst $38
    ld bc, $ef01
    ld e, a
    inc bc
    inc bc
    ldh a, [$7f]
    ld bc, $f001
    adc a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    sub b
    rst $38
    ld bc, $0801
    rst $38

jr_0f6_7668:
    ld [bc], a
    inc bc
    ld [$04ff], sp
    rlca
    inc b
    rst $38

jr_0f6_7670:
    ld [$0c0f], sp
    rst $38
    rrca
    rrca
    ld [de], a
    di

jr_0f6_7678:
    rrca
    rrca
    pop af
    pop af
    ld [$610f], sp
    pop hl
    ld [$200f], sp
    ldh [$08], a
    rrca
    jr nz, jr_0f6_7668

    ld [$200f], sp
    ldh [$08], a
    rrca
    jr nz, jr_0f6_7670

    ld [$200f], sp
    ldh [$08], a
    rrca
    jr nz, jr_0f6_7678

    inc b
    rlca
    ld b, b
    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
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
    rra
    rra
    add b
    add b
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
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$60], a

jr_0f6_76fe:
    nop
    nop
    ldh [$60], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nc, jr_0f6_76fe

jr_0f6_770e:
    nop
    nop
    ldh a, [$f0]

jr_0f6_7712:
    nop
    nop
    jr jr_0f6_770e

    nop
    nop
    jr jr_0f6_7712

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0f6_7728:
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    ldh a, [rIE]
    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f6_7728

    jr nz, @+$41

    db $10
    ldh a, [rNR10]
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTMA]
    rlca
    ld a, b
    ld hl, sp+$01
    ld bc, $fcfc
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
    ld e, $1e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, b
    ld a, b
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    ldh [$e0], a
    jr nz, jr_0f6_77c9

    db $10
    ldh a, [rNR41]
    ccf
    ld [$20f8], sp
    ccf
    ld [$18f8], sp
    rla
    db $10
    ldh a, [rNR22]
    rra
    ldh a, [$f0]
    ld a, [de]
    rla
    ld hl, sp-$08
    rra
    ld [de], a
    cp $fe
    ld e, $13
    rst $38
    rst $38
    inc de
    rra
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc bc
    inc bc
    add $ff
    ld b, $07
    add d
    rst $38
    inc c
    rrca
    add c
    rst $38
    inc c
    rrca
    ld b, c
    rst $38
    ld b, $07
    rst $30
    adc e
    inc bc
    inc bc
    adc b

jr_0f6_77c7:
    ld [hl], a
    inc bc

jr_0f6_77c9:
    inc bc
    ld hl, sp+$07
    ccf
    inc a
    ldh a, [rIF]
    ld [hl], a
    ld l, h
    rst $20
    rra
    ld [hl], h
    ld l, a
    jr jr_0f6_77c7

    ccf
    ccf
    ret nz

    rst $38
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
    adc b
    rst $38
    nop
    nop
    add h
    rst $38
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
    add d
    rst $38
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $1e01
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
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
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    rrca
    rrca
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    ld bc, $fc01
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
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    ret nc

    or b
    nop
    nop
    ld d, b
    or b
    nop
    nop
    ld d, b
    or b
    nop
    nop
    xor b
    ret c

jr_0f6_7886:
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld l, b
    ret c

jr_0f6_788e:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr z, jr_0f6_788e

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
    jr nz, jr_0f6_7886

    nop
    nop

jr_0f6_78a8:
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
    ld c, $fe
    nop
    nop

jr_0f6_78bc:
    db $fd
    rst $38
    nop
    nop
    ldh a, [rIE]
    ret nz

    ret nz

    add b
    rst $38
    jr nz, jr_0f6_78a8

    ld b, b
    ld a, a
    jr nc, jr_0f6_78bc

    jr nc, jr_0f6_790d

    ld a, h
    db $fc
    inc c
    rrca
    cp $fe
    inc bc
    inc bc
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
    inc a
    inc a
    nop
    nop
    jr c, jr_0f6_7920

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f6_790d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f6_7920:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_0f6_7f7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
