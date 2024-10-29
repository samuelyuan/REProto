SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f0f2]
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
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
    rra
    cp a
    rra
    ld e, a
    rra
    ld a, a
    rla
    ld d, a
    rlca
    cp a
    rlca
    ld d, a
    inc bc
    and a
    ld bc, $80d7
    ld [c], a
    add b
    or $c0
    ld a, [$f4c0]
    ldh a, [$fa]
    ldh a, [$f4]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$fa]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$04
    ld hl, sp-$06
    ld hl, sp-$03
    ld hl, sp-$01
    db $fc
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    ei
    ld sp, hl
    db $f4
    ldh [$f2], a
    ldh [$f3], a
    ret nz

    rst $28
    ret nz

    push bc
    pop bc
    db $eb
    pop bc
    ld b, a
    inc bc
    adc a
    rlca
    rra
    ld b, $8e
    ld c, $1e
    ld c, $1e
    ld c, $1e
    ld e, $3e
    ld a, $3f
    ld a, $bf
    ld a, $3f
    ld e, $bf
    ld e, $ff
    ccf
    cp a
    ccf
    rst $38
    ccf
    cp a
    cp a
    rst $38
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    rst $38
    rst $38
    cp a
    ld a, $75
    ld [hl], b
    ld a, [$f070]
    ldh a, [$ea]
    and b
    scf
    nop
    xor a
    nop
    ld a, a
    rlca
    xor a
    rlca
    rra
    rrca
    xor a
    rrca
    rra
    rrca
    cpl
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    adc a
    rlca
    rst $18
    inc bc
    adc e
    ld bc, $80d7
    ld a, [c]
    add b
    pop de
    ret nc

    ld a, [$ffd0]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    cpl
    cp a
    rra
    ld c, a
    rlca
    xor a
    rlca
    rst $00
    rlca
    xor a
    inc bc
    rst $00
    ld bc, $03a3
    rst $30
    jp $c1e3


    di
    pop bc
    db $eb
    pop bc
    pop af
    pop bc
    db $e3
    pop bc
    pop af
    pop bc
    db $eb
    add c
    push af
    add c
    db $eb
    add c
    rst $00
    add e
    rst $08
    inc bc
    rst $00
    rlca
    adc a
    rlca
    ld e, a
    rrca
    cp a
    rrca
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    ld b, $07
    rlca
    rlca
    dec b
    rlca
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    xor a
    adc a
    adc a
    add e
    adc e
    add c
    add c
    add c
    add e
    add c
    add c
    add c
    adc e
    add c
    add c
    add c
    adc e
    add c
    jp $cb81


    add c
    db $d3
    jp $c3cb


    rst $00
    pop bc
    set 0, c
    push bc
    pop bc
    set 0, c
    push bc
    ret nz

    db $e3
    ret nz

    pop hl
    ret nz

    ld [c], a
    ret nz

    pop hl
    ldh [$e8], a
    ldh [$f8], a
    add sp, -$08
    add sp, -$03
    ld hl, sp-$02
    db $fc
    db $fd
    db $fd
    rst $38
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    pop af
    ret nc

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rlca
    inc b
    ld bc, $0000
    nop
    nop

jr_00d_4199:
    nop
    nop
    nop
    rrca
    nop
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    and b
    rst $08
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $fc
    pop hl
    ldh [$e8], a
    ldh [$f0], a
    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    jp nz, $d1c0

    ret nz

    ret z

    ret nz

    pop de
    ret nz

    set 0, b
    pop de
    ret nz

    db $eb
    pop bc
    push af
    pop bc
    ei
    pop bc
    rst $30
    pop bc
    ei
    pop hl
    rst $30
    jp $83eb


    di
    inc bc
    db $eb
    inc bc
    ld [hl], e
    inc bc
    ld a, e
    inc bc
    ld e, a
    rla
    rst $38
    rra
    rst $38
    dec sp
    ei
    ld [hl], e
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
    ld c, $0c
    ccf
    inc e
    ld a, a
    inc e
    rst $38
    jr @+$01

    ld [$08ff], sp
    ei
    ld [$00f1], sp
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr jr_00d_4199

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
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    inc bc
    rst $38
    ld de, $20ff
    ld a, a
    ld hl, $213f
    ccf
    ld hl, $21ff
    rst $38
    ld hl, $20ff
    rst $38
    ld de, $03ff
    ld hl, sp+$00
    ldh a, [rP1]
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
    db $fc
    db $fd
    ld hl, sp-$08
    ldh a, [$f4]
    ldh [$f0], a
    ldh a, [$f4]
    ldh a, [$f0]
    ldh a, [$f4]
    ldh a, [$fc]
    ldh a, [$f4]
    ldh a, [$f8]
    ldh a, [$f4]
    ldh a, [$fc]
    ld hl, sp-$03
    ld hl, sp-$02
    ld hl, sp-$03
    ld hl, sp-$02
    ld hl, sp-$03
    ld hl, sp-$02
    ld hl, sp-$03
    db $fc
    cp $fc
    db $fd
    db $f4
    db $fc
    db $fc
    db $fd
    ld hl, sp-$08
    ld hl, sp-$03
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld [$f0ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rla
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ldh a, [rIF]
    ld [$0101], sp
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    cp a
    dec d
    dec e
    inc b
    ld c, $00
    dec d
    nop
    ld a, [hl+]
    nop
    ld [hl], h
    nop
    ld l, d
    ld [$287c], sp
    cp $2a
    ld a, a
    ld l, d
    cp $6e
    ld a, a
    ld l, [hl]
    cp $7e
    ld a, a
    ld a, [hl]
    cp $7c
    ld a, l
    ld e, b
    jp hl


    ld b, b
    ld d, l
    ld b, b
    db $eb
    ld bc, $0157
    xor a
    ld c, $5f
    dec c
    rst $28
    ld c, a
    rst $18
    rst $08
    rst $38
    rst $18
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
    ldh a, [rP1]
    db $fc
    nop
    cp $61
    sbc a
    sub c
    ld a, a
    add a
    ld h, [hl]
    ld [c], a
    inc bc
    pop hl
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    db $f4
    ld [hl-], a
    pop af
    ccf
    ld sp, hl
    ccf
    db $fc
    dec de
    rst $38
    ld d, l
    db $fc
    ld d, a
    rst $38
    sub a
    rst $38
    ld d, a
    db $fc
    ld d, h
    ld hl, sp+$18
    ld hl, sp+$38
    ldh a, [$30]
    ldh a, [$30]
    ldh [rP1], a
    ld hl, sp-$08
    sbc a
    ld h, c
    sub c
    ld l, a
    ld b, c
    ccf
    inc hl
    dec e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_437b:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ei
    ld hl, sp-$0f
    ldh a, [$fa]
    ldh a, [$f4]
    ldh a, [$f8]
    ldh a, [$7c]
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    jr c, jr_00d_43cb

    jr jr_00d_43b1

    ld [$08a8], sp
    inc e
    ld [$0888], sp
    ld e, h
    ld [$1878], sp
    ld e, h
    jr @-$06

    jr @+$5e

    ld e, b
    ld a, [$7c58]
    ld a, b
    ld a, [$7d78]
    ld a, b
    cp $7c
    db $fd

jr_00d_43b1:
    db $fc
    cp $fc
    db $fd
    ld a, l
    rst $38
    ld a, l
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

jr_00d_43cb:
    nop
    nop
    nop
    ret nz

    ldh [rLCDC], a
    ldh a, [$c0]
    ld [hl], b
    ret nz

    ldh a, [rP1]
    ldh [rP1], a
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]

jr_00d_43e9:
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_00d_43f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, jr_00d_437b

    ret nz

jr_00d_43fc:
    ldh [$f8], a
    ldh a, [$f8]

Call_00d_4400:
    jr nc, @-$06

    jr nc, jr_00d_43fc

    ldh [$f0], a
    nop
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
    ei
    ld a, b
    ld a, h
    jr c, jr_00d_444f

    jr c, jr_00d_4472

    jr jr_00d_4453

    ld [$081d], sp
    jr c, @+$0a

    ld a, h
    ld [$183a], sp
    ld a, b
    jr jr_00d_4461

    jr c, jr_00d_44a5

    jr c, jr_00d_4465

    jr c, jr_00d_44a9

    jr c, jr_00d_43e9

    jr c, jr_00d_44ad

    jr c, jr_00d_43f1

    jr c, jr_00d_44b1

    inc a
    cp $3c
    ld a, h
    ld [hl], h
    db $fc
    ld [hl], h
    ld a, h
    ld a, b
    ld hl, sp+$78
    ld a, h
    ld a, b
    cp $78
    ld [hl], a
    ld [hl], d
    cp $78
    ld a, h
    ld a, h
    cp $7c
    rst $38
    ld a, [hl]
    rst $38

jr_00d_444f:
    rst $38
    ld a, a
    ld a, a
    rst $38

jr_00d_4453:
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

jr_00d_4461:
    rst $38
    rst $38
    ld a, a
    rst $38

jr_00d_4465:
    ld bc, $00be
    ld d, h
    nop
    ld [bc], a
    nop
    ld e, a
    nop
    ccf
    rrca
    rra
    rra

jr_00d_4472:
    ccf
    rra
    ld e, a
    rrca
    ld [bc], a
    nop
    ld bc, $a000
    nop
    ld a, a
    dec e
    cp a
    rra
    ld a, a
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    ld a, a
    rlca
    xor a
    rlca
    ld b, h
    nop
    and d
    nop
    push af

jr_00d_4491:
    nop
    cp $1c
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld sp, hl
    ld sp, hl

jr_00d_44a5:
    ldh a, [$f1]

jr_00d_44a7:
    jr nc, jr_00d_451a

jr_00d_44a9:
    jr nz, jr_00d_4453

    jr nz, @-$05

jr_00d_44ad:
    jr z, jr_00d_44a7

    ld hl, sp-$08

jr_00d_44b1:
    ld hl, sp-$08

jr_00d_44b3:
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    jr c, jr_00d_44b3

    jr c, @-$01

    ld hl, sp-$02
    ld hl, sp-$03
    db $fc
    cp $fc
    rst $38
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $78
    cp [hl]
    jr c, jr_00d_454f

    jr nc, jr_00d_4491

    jr nc, @-$01

jr_00d_44d5:
    jr nc, jr_00d_44d5

    ld [hl], h
    ld a, a
    ld [hl], h
    cp $f4
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    xor a
    rrca
    ld d, l
    ld bc, $00a9
    ld [hl], l
    nop
    cp b
    nop
    ld a, h
    nop
    inc a
    jr nc, jr_00d_4572

    jr c, @+$01

    ld a, [hl-]
    ld a, a
    ld a, $ff
    ld a, $7f
    ld a, $bf
    ld a, $7d
    inc a
    cp h
    inc a
    ld a, h
    inc a
    inc a
    jr z, jr_00d_457e

    jr nz, jr_00d_4535

    nop
    ld d, a
    nop
    cpl
    ld [bc], a
    ld e, a
    ld c, $bf
    rrca
    rst $18
    ld c, a
    rst $28
    ld c, a
    rst $18
    rst $08

jr_00d_451a:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    rst $38
    ld e, a
    ld e, a
    rra
    ld e, a
    rrca
    ld e, a

jr_00d_4535:
    rrca
    rrca
    rrca
    rra
    rrca
    cp a
    rrca
    ld e, a
    rra
    cp a
    rra
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_00d_454f:
    rst $38
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
    ld [bc], a
    inc bc
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
    ld bc, $0100
    nop
    inc bc
    ld bc, $0103

jr_00d_4572:
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop

jr_00d_457e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add a
    add b
    rst $20
    ldh [rIE], a
    cp h
    rst $38
    ld a, h
    rst $38
    adc $78
    jr jr_00d_45d5

    jr nc, jr_00d_45a7

jr_00d_45a7:
    nop
    nop
    nop
    add b
    add b
    rst $00
    ret nz

    rst $08
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $06
    rst $38
    rrca
    rst $38

jr_00d_45c7:
    ld c, $ff
    inc c
    rst $38
    inc b
    ei
    nop
    pop hl
    nop
    add c
    nop
    nop
    nop
    nop

jr_00d_45d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr jr_00d_45c7

    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    add hl, bc
    rst $38
    ld de, $217f
    ccf
    ld hl, $213f
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $09ff
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    rra
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $11ff
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4659:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    adc b
    ld [hl], b
    ld [bc], a
    cp $e3
    rra
    db $d3
    rst $08
    rst $20
    db $e3
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld [c], a
    db $fd
    rst $20
    db $db
    rst $18
    rst $38
    rst $10
    db $eb
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e1], a
    ldh [$e1], a
    rst $20
    db $e3
    db $d3
    rst $08
    db $e3
    rra
    ld [bc], a
    cp $88
    ld [hl], b
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
    add b
    add b
    ret nz

    ret nz

    and b
    ret nz

    add b
    ldh [rLCDC], a
    jr nz, jr_00d_46dd

    nop
    nop
    nop
    ldh [$c0], a
    or b
    ret nz

    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh [$80], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    jr nz, jr_00d_46d6

jr_00d_46d6:
    ld b, b
    jr nz, jr_00d_4659

    ldh [$a0], a
    ret nz

    ret nz

jr_00d_46dd:
    ret nz

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
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
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
    nop
    nop
    nop
    dec bc
    inc c
    dec c
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
    rrca
    db $10
    ld de, $0012
    nop
    nop
    nop
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
    inc d
    dec d
    ld d, $17
    nop
    nop
    jr jr_00d_4782

    ld a, [de]
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
    inc e
    dec e
    ld e, $00
    nop
    rra
    jr nz, jr_00d_479d

    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_4782:
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, @+$2b

    ld a, [hl+]
    nop
    dec hl

jr_00d_479d:
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_00d_47dd

    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00d_47f6

    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_47dd:
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop

jr_00d_47f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    jr jr_00d_4876

    ld a, [de]
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    nop
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    rra
    jr nz, jr_00d_4891

    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    nop

jr_00d_4876:
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    inc h
    dec h
    ld h, $00
    nop
    ld e, a
    ld h, b
    ld h, c
    nop
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    dec hl

jr_00d_4891:
    inc l
    dec l
    ld l, $00
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    ld l, e
    ld l, h
    ld l, l
    nop
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0000
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    db $10
    ld d, c
    ld [$0428], sp
    nop
    nop
    nop
    nop
    or c
    add hl, hl
    cp a
    ld d, [hl]
    and l
    inc d
    nop
    nop
    nop
    ld d, h
    cp a
    ld d, [hl]
    and l
    inc d
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    nop
    nop
    rst $38
    cp l
    ld a, [hl]
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, e
    inc a
    ld e, h
    ccf
    ld e, e
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    ld e, d
    inc a
    cp l
    ld a, [hl]
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    inc bc
    db $fc
    call c, $2e3f
    rra
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    ld l, $1f
    call c, Call_000_033f
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
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    add c
    nop
    add c
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0305
    dec b
    inc bc
    dec bc
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    dec d
    ld c, $15
    ld c, $6d
    ld e, $40
    ccf
    ld a, a
    nop
    inc bc
    inc bc
    ld b, $06
    dec e
    jr jr_00d_4ca8

    inc sp
    ld c, a
    ld h, a
    cpl
    cpl
    daa
    ld l, $26
    ld [hl], $37
    scf
    inc de
    rla
    inc de
    dec de
    dec de
    dec de
    add hl, bc
    dec bc
    dec c
    add hl, bc
    dec c
    dec c
    inc b
    dec b
    rlca
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_00d_4c9e:
    nop
    nop
    jr jr_00d_4ca2

jr_00d_4ca2:
    inc h
    jr jr_00d_4cc9

    jr jr_00d_4cd1

    inc e

jr_00d_4ca8:
    ld e, d
    inc a
    ld e, l
    ld a, $bd
    ld a, [hl]
    cp l
    ld a, [hl]
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld b, a
    rst $38
    or a
    rst $08
    xor e
    rst $00
    xor e
    rst $00
    ld c, e
    add a
    ld a, e
    add a
    ld bc, $feff
    ld bc, $0182
    ld bc, $0100

jr_00d_4cc9:
    nop
    add [hl]
    ld bc, $0384
    add a
    nop
    nop

jr_00d_4cd1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    ld c, $38
    ld sp, $c7e3
    rra
    sbc a
    inc sp
    ld a, a
    pop hl
    di
    jp $87e3


    rst $00
    inc bc
    add e
    ccf
    rra
    jr nc, jr_00d_4cfc

    add b
    nop
    call z, $f8ce
    db $fc
    ldh a, [$f8]
    pop hl
    pop af
    rst $00
    db $e3

jr_00d_4cfc:
    db $ec
    and $f9
    ld hl, sp-$1f
    di
    and $ce
    jr jr_00d_4c9e

    jr nc, jr_00d_4d38

    pop hl
    ld h, c
    add c
    add c
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $0c
    dec c
    ld a, [bc]
    add hl, bc
    ld [de], a
    ld a, [de]
    inc de
    ld d, $37
    scf
    cpl
    daa
    cpl
    cpl
    ld c, a
    ld l, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    rst $18
    rst $18
    sbc a
    rst $18
    rst $38
    sbc a
    rst $18
    cp a
    sbc a
    cp a
    sbc a
    cp a
    sub l
    or c
    adc [hl]
    cp l
    sbc h
    xor a
    sbc [hl]
    xor a

jr_00d_4d38:
    ret nc

    and b
    rst $38
    sbc a
    sbc a
    rst $18
    ld e, a
    ld e, a
    ld b, [hl]
    ld e, a
    ld l, a
    ld d, a
    ld b, e
    ld l, a
    dec hl
    cpl
    add hl, sp
    inc h
    scf
    scf
    inc de
    rla
    dec de
    dec de
    dec bc
    add hl, bc
    dec c
    dec c
    inc b
    ld b, $03
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ret nc

    ldh [$d0], a
    ldh [$e8], a
    ldh a, [$e8]
    ldh a, [$74]
    ld hl, sp+$74
    ld hl, sp-$05
    db $fc
    ld bc, $fffe
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    ld e, $60
    ld [hl], b
    dec bc
    add e
    ld e, a
    rra
    ld a, [$e0fc]
    ldh [$cb], a
    and $fe
    rst $38
    rst $38
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
    ccf
    ld a, a
    daa
    ccf
    ld l, a
    ld l, [hl]
    ldh a, [$f8]
    push bc
    db $e3
    rrca
    sbc a
    inc sp
    ld [hl], e
    call nz, Call_000_1cc6
    add hl, de
    inc sp
    inc sp
    ld l, [hl]
    ld h, l
    db $dd
    call z, $9dbf
    ld a, [hl]
    dec a
    ld a, [hl]
    ld a, [hl]
    sbc $fe
    ld a, a
    adc [hl]
    cp $6f
    pop hl
    rst $28
    ld b, e
    db $fd
    ld e, $9f
    xor $de
    push hl
    db $f4
    ld sp, hl
    db $fd
    ei
    ld sp, hl
    ei
    di
    db $fc
    di
    rst $30
    di
    rst $30
    rst $30
    rst $30
    rst $20
    rst $38
    rst $20
    rst $28
    rst $20
    rst $20
    rst $28
    rst $20
    rst $28
    rst $30
    rst $28
    rst $38
    rst $20
    add a
    scf
    rst $30
    rst $30
    db $e3
    rst $10
    rst $08
    di
    di
    db $eb
    ld h, c
    ei
    pop hl
    ld l, l
    dec a
    inc e
    ld a, [hl]
    cp $c6
    db $e3
    sbc h
    db $dd
    cp a
    cp [hl]
    ld a, $ff
    cp a
    db $fc
    ei
    cp c
    or e
    ld d, a
    rlca
    ld l, a
    sbc a
    cp a
    adc a
    rst $18
    ld l, a
    ld h, a
    scf
    inc sp
    dec e
    add hl, de
    inc b
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld l, a
    rra
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    rla
    rrca
    dec bc
    rlca
    dec bc
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    ld a, $3f
    ret nz

    ldh [$03], a
    rrca
    ld a, a
    rst $38
    rst $38
    di
    add e
    jp $0f07


    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    rra
    sbc a
    rra
    add hl, de
    sbc l
    dec e
    sbc a
    ld e, h
    cp [hl]
    ldh a, [$f0]
    rla
    rrca
    ld a, h
    cp $e1
    ldh a, [$8d]
    add $3f
    add hl, de
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $30
    rst $30
    rst $38
    di
    add hl, sp
    ld a, e
    db $dd
    sbc h
    rst $28
    add a
    or h
    ld a, [hl]
    ld a, b
    ld sp, hl
    pop hl
    db $e3
    ld b, e
    ld b, l
    sbc a
    sbc b
    ccf
    jr c, jr_00d_4f18

    ld a, b
    rst $30
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$bf]
    ret nz

    cp $01
    cp $01
    sbc h
    db $e3
    db $fc
    db $e3
    ld hl, sp-$19
    ret c

    rst $20
    pop de
    rst $28
    db $d3
    rst $28
    rst $20
    rst $18
    rst $28
    rst $18
    xor a
    rst $18
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    cp [hl]
    ccf
    rst $18
    sbc a
    rst $20
    ld c, a
    rst $20
    di
    ld hl, sp-$07
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    sbc a
    ccf
    adc a
    rst $00
    ld a, b
    ld [hl], c
    dec e
    ld e, $03
    inc bc
    pop hl
    nop
    ld hl, $61c0
    add b
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
    ld b, b
    add b
    ld b, b
    add b

jr_00d_4f18:
    or c
    ret nz

    adc $f1
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
    ld a, a
    ld a, a
    ld b, b
    add b
    inc a
    inc bc
    rst $38
    rst $38
    ld hl, sp-$04
    ld hl, sp-$08
    ld a, [$f3f2]
    ld a, [c]
    ld [c], a
    rst $30
    rst $28
    rst $20
    add sp, -$19
    ret nz

    ret nz

    rst $18
    rst $08
    sbc a
    sbc a
    ccf
    rra
    cp a
    rst $38
    ldh a, [rIE]
    nop
    nop
    ccf
    rst $38
    ret c

    ldh [rNR24], a
    ld b, $ff
    db $fc
    ld a, c
    ei
    rst $30
    dec sp
    ei
    rst $30
    ei
    rst $30
    di
    ei
    rst $18
    reti


    sbc l
    sbc $f6
    jr c, jr_00d_4fb1

    add c
    ld e, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f7
    ld a, b
    call c, $f123
    rrca
    db $e3
    rra
    add e
    ld a, a
    inc bc
    rst $38
    pop bc
    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ld a, [hl]
    add c
    ld c, a
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00d_4f97:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    db $db
    rst $20
    xor $f1
    rst $38
    ldh a, [$f7]
    ld hl, sp-$11
    ldh a, [$b8]
    rst $00
    pop hl
    ld e, $7e
    rst $38
    rst $38

jr_00d_4fb1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    ld b, [hl]
    add c
    and $f8
    db $ec
    di
    db $fd
    cp $ff
    rst $38
    cp $ff
    db $f4
    ld a, [$fffe]
    rst $38
    cp $ee
    ldh a, [rNR11]
    ld c, $90
    ldh [$3f], a
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
    cp $00
    ld [bc], a
    db $fc
    or [hl]
    ld a, b
    ld c, b
    jr nc, jr_00d_5031

    jr nc, jr_00d_5033

    jr nc, jr_00d_5035

    jr nc, jr_00d_5037

    jr nc, jr_00d_5039

    jr nc, jr_00d_503b

    jr nc, jr_00d_503d

    jr nc, jr_00d_503f

    jr nc, jr_00d_5041

    jr nc, jr_00d_5043

    jr nc, jr_00d_5045

    jr nc, jr_00d_5047

    jr nc, jr_00d_5049

    jr nc, jr_00d_504b

    jr nc, jr_00d_504d

    jr nc, jr_00d_4f97

    ld h, b
    sub b
    ld h, b
    jr nz, @-$3e

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
    rst $38
    rst $38
    ld [bc], a
    ld bc, $f00c
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    rra
    ccf
    ccf

jr_00d_5031:
    rra
    rra

jr_00d_5033:
    rra
    rrca

jr_00d_5035:
    rra
    sbc a

jr_00d_5037:
    adc a
    adc a

jr_00d_5039:
    adc a
    adc e

jr_00d_503b:
    adc c
    ei

jr_00d_503d:
    rst $38
    rra

jr_00d_503f:
    rst $38
    nop

jr_00d_5041:
    nop
    db $fd

jr_00d_5043:
    cp $1b

jr_00d_5045:
    rlca
    adc b

jr_00d_5047:
    ld [hl], b
    cp a

jr_00d_5049:
    ld a, a
    rst $38

jr_00d_504b:
    sbc [hl]
    db $fc

jr_00d_504d:
    ld sp, hl
    ei
    ei
    rst $38
    di
    db $db
    rst $30
    cp e
    sub a
    cp e
    ld a, e
    rst $28
    inc e

jr_00d_505a:
    ld h, d
    add c
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp a
    cp a
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
    rst $38
    rst $18
    ccf
    ei
    add a
    rst $38
    ret nz

    ld a, a
    ldh [$bf], a
    ld [hl], b
    rst $10
    jr c, jr_00d_505a

    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$02
    pop af
    ld hl, sp-$19
    ret nc

    rst $28
    db $e3
    rst $18
    adc a
    rst $38
    rst $20
    rst $38
    rst $18
    rst $20
    ld [hl], a
    adc a
    rst $30
    rrca
    rst $30
    rrca
    ld a, e
    add a
    adc [hl]
    ld [hl], c
    add b
    ld a, a
    rst $08
    ccf
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc $f8
    db $e3
    nop
    ld a, a
    inc bc
    db $fd
    ldh [$7f], a
    ld c, [hl]
    rst $18
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, c
    or $f8
    rst $38
    nop
    ld hl, sp+$13
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
    inc bc
    nop
    inc c
    inc bc
    ld [de], a
    rrca
    dec l
    ld e, $2d
    ld e, $5d
    ld a, $5d
    ld a, $5d
    ld a, $2e
    rra
    cpl
    rra
    rla
    rrca
    add hl, bc
    rlca
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    jr nc, jr_00d_50f2

jr_00d_50f2:
    ld c, b
    jr nc, jr_00d_513d

    jr nc, @+$56

    jr c, jr_00d_5153

    inc a
    ld d, l
    ld a, $48
    scf
    scf
    nop
    ld a, h
    db $fc
    dec bc
    rlca
    ret nz

    ldh a, [$fe]
    rst $38
    ldh a, [$e2]
    ldh [$e0], a
    db $e4
    ld [c], a
    rst $00
    rst $20
    rst $28
    rst $00
    jp $80c7


    ret nz

    call nz, $9c86
    adc [hl]
    ld c, $9e
    ld e, $1e
    cp $fe
    ccf
    ld a, [hl]
    rlca
    inc bc
    add sp, -$10
    ld a, $7f
    rlca
    adc a
    or c
    ld h, e
    db $fc
    sbc b
    rst $28
    sbc $df
    rst $28
    sbc $ef
    ret


    call c, $9bdb
    rst $30
    scf
    rst $30
    rst $30
    scf

jr_00d_513d:
    ld [hl], a
    sub a
    dec de
    ret nz

    ret nz

    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    and $fe
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38

jr_00d_5153:
    add a
    ld a, e
    add a
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    nop
    jp $a03c


    ld e, a
    ld hl, $31df
    rst $08
    add hl, sp
    rst $00
    reti


    rst $20
    db $fc
    db $e3
    db $fc
    di
    cp $f9
    db $fc
    rst $38
    db $fc
    rst $38

jr_00d_5174:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fc
    ld sp, hl
    ld sp, hl
    rst $30
    di
    ldh [$cc], a
    sub e
    ld a, [de]
    ccf
    ld h, a
    cp a
    rst $38
    sbc a
    rst $18
    rst $18
    rst $18
    rst $08
    ld l, a
    ld l, a
    ld l, a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld a, h
    di
    db $e3
    ld e, $8e
    cp b
    ld a, b
    ret nz

    ret nz

    ei
    nop
    inc b
    ei
    ld [c], a
    rra
    ld a, [de]
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_00d_5174

    ret z

    ldh a, [$f6]
    ld hl, sp-$07
    cp $3e
    rst $38
    sbc $3f
    cpl
    rra
    rla
    rrca
    rla
    rrca
    rla
    rrca
    ld d, $0f
    ld d, $0f
    jp hl


    ld e, $06
    ld hl, sp-$08
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_00d_524e

    add a
    rrca
    ret nc

    pop bc
    ld e, $3c
    rrca
    rra
    adc a
    rst $08
    rst $08
    rst $08
    rst $18
    adc a
    rra
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, [hl]
    ld a, $3e
    ccf
    daa
    ccf
    rst $28
    rst $20
    db $fc
    ld a, h
    inc c
    inc e
    and b
    rst $00
    cp b
    or c
    adc $cc
    inc hl
    ld h, e
    sbc b
    sbc b
    ld c, h
    call z, Call_000_26f6
    pop de
    db $db
    db $ed
    reti


    xor $dc
    sbc $de
    cp l
    sbc a
    ld a, b
    add hl, sp
    pop af
    push hl
    adc e
    db $dd
    ei
    cp e
    rst $30
    ld a, e
    ld [hl], h
    db $76
    or e
    ld sp, $b783
    rst $18
    sbc a
    rst $18
    rst $18
    rst $18
    rst $08
    rst $28
    rst $08
    rst $28
    rst $28
    rst $28
    rst $20
    cpl
    rst $20
    rra
    rst $20
    ld [hl], a
    rst $20
    rst $30
    rst $20
    rst $38
    rst $20
    rst $28
    rst $20
    rst $28
    pop hl
    xor $e8
    rst $28
    rst $08
    rst $28
    rst $08
    adc $df
    sbc $9f
    sbc a
    cp a
    xor e
    scf
    dec [hl]
    ld c, c
    sbc h
    ld a, [hl]
    rst $38
    cp [hl]

jr_00d_524e:
    cp a
    cp a
    sbc $bf
    db $dd
    adc $f3
    ld h, c
    ccf
    ld a, [hl]
    cp [hl]
    cp h
    sbc c
    db $dd
    jp $e6fb


    or $ec
    call z, $9898
    jr nz, @+$62

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
    rrca
    nop
    adc b
    rlca
    adc l
    inc bc
    add d
    ld bc, $0182
    add d
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    add d
    ld bc, $0182
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    add d
    ld bc, $0182
    dec c
    inc bc
    ld [$0f07], sp
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

    ld [hl], b
    jr nc, @+$1e

    adc h
    rst $00
    db $e3
    ldh a, [$f9]
    db $fc
    cp $ff
    rst $38
    add c
    add b
    nop
    add b
    ld [$1710], sp
    rrca
    dec hl
    rlca
    db $d3
    rst $20
    di
    di
    ld bc, $0101
    ld bc, $c123
    rst $38
    rst $38
    inc a
    ld a, l
    sbc h
    dec e
    add a
    rst $08
    ld [hl], a
    ld h, e

jr_00d_52d4:
    db $10
    add hl, de
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    add c
    add c
    ld b, b
    ld b, b
    ld h, b
    jr nz, @-$5e

    and b
    ret nc

    sub b
    ret nz

    ret nc

    add sp, -$38
    ldh [$28], a
    ld [hl], h
    db $e4
    db $f4
    db $f4
    ld a, [c]
    or $fa
    ld a, [c]
    ld a, [$fafa]
    ld a, [$fbf9]
    rst $38
    ld sp, hl
    ld a, l
    cp c
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    cp a
    ld a, c
    ld c, c
    dec bc
    ld a, [c]
    ld l, d
    ld [hl], d
    ld [$6ad2], a
    or d
    ld d, $f4
    db $f4
    db $f4
    db $e4
    db $ec
    db $ec
    add sp, $48
    ret z

    ld e, b
    ld d, b
    sub b
    jr nc, jr_00d_52d4

    jr nz, jr_00d_5386

    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $28
    ldh a, [$d0]
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$df], a
    ldh [$e0], a
    rst $38
    rst $18
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$ef], a
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b
    cp b
    jr jr_00d_5373

    call z, Call_00d_6672
    ld [hl], b
    ld [hl], h
    db $e4
    db $f4
    db $e4
    db $e4
    ldh [$e8], a
    ret z

jr_00d_5373:
    add sp, -$28
    ret z

    ret nz

    ret nc

    ret nc

    ret nc

    ret nc

    sub b
    sub b
    or b
    and b
    and b
    and b
    jr nz, jr_00d_53a3

    ld h, b
    ld b, b
    ld b, b

jr_00d_5386:
    ld b, b
    ld b, b
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    inc b
    ld hl, sp-$2c
    jr c, jr_00d_53bb

    jr jr_00d_53bd

    jr jr_00d_53b3

    nop
    nop
    nop
    ld h, b
    nop
    sub b
    ld h, b
    sub b

jr_00d_53a3:
    ld h, b
    ld d, b
    ldh [$d0], a
    ldh [$50], a
    ldh [$90], a
    ld h, b
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop

jr_00d_53b3:
    nop
    ld b, $00

jr_00d_53b6:
    add hl, bc
    ld b, $35
    ld c, $ca

jr_00d_53bb:
    inc a
    ld [bc], a

jr_00d_53bd:
    db $fc
    db $fc
    nop
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld d, $0f
    ld l, a
    rra
    ld b, b
    ccf
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    ld [hl], e
    adc a
    adc l
    inc bc
    add d
    ld bc, $0081
    add c
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    add c
    nop
    add d
    ld bc, $038d
    ld [hl], e
    adc a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_00d_53b6

    ret nc

    ldh [$e8], a
    ldh a, [rBCPS]
    ldh a, [$74]
    ld hl, sp-$4c
    ld a, b
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    cp d
    ld a, h
    or h
    ld a, b
    ld [hl], h
    ld hl, sp+$68
    ldh a, [$e8]
    ldh a, [$d0]
    ldh [rNR41], a
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
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $0000
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_00d_54b0

    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_00d_54c7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_00d_54d8

    nop

jr_00d_54b0:
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00d_54ec

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]

jr_00d_54c0:
    ld [hl], $00
    nop
    nop
    scf
    jr c, jr_00d_5500

jr_00d_54c7:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    ld b, [hl]
    ld b, a

jr_00d_54d8:
    ld c, b
    ld c, c
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
    ld d, h
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a

jr_00d_54ec:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    ld e, a
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_00d_5500:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
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
    daa
    jr z, jr_00d_54c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    dec [hl]
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
    add h
    add l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
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
    rst $38
    ld a, a
    inc a
    ld b, $74
    dec b
    nop
    nop
    rst $38
    ld a, a
    ld e, a
    ld l, e
    ld a, [bc]
    nop
    rra
    nop
    rst $38
    ld a, a
    sub $5a
    adc h
    ld sp, $0000
    rst $38
    ld a, a
    sub $5a
    ld [hl], h
    dec b
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, l
    add d
    di
    db $fc
    rst $38
    rra
    ei
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $08
    ldh a, [rIE]
    ldh a, [$3b]
    ld a, h
    rra
    ld e, $07
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    cp $1f
    cp $1f
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rla
    cp a
    rla
    ld a, a
    ld a, [de]
    cp a
    jr jr_00d_5826

    inc e
    cp [hl]
    rra
    ld e, a
    rrca
    or a
    ld c, $5f
    rlca
    xor a
    inc bc
    ld d, a
    ld bc, $00ae
    ld d, a
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
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    rst $38
    rst $08
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    add a
    ld hl, sp-$01
    rst $38
    rst $20
    rst $38
    ld [hl], b
    ld sp, hl

jr_00d_5818:
    db $fc
    ld a, $ee
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop

jr_00d_5826:
    ld a, a
    add b
    rst $38
    ret nz

    rst $30
    ld hl, sp+$3b
    ld a, h
    dec e
    ld e, $07
    rrca
    inc bc
    rlca
    nop
    ld bc, $0000
    ld l, b
    ld a, b
    add h
    or $02
    ld a, [$b311]
    ld d, $f9
    ld a, l
    ld bc, $02a9
    rst $10
    ld [bc], a
    cp [hl]
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc a
    ld a, l
    adc a
    ld a, c
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $fd
    db $fd
    cp $fd
    jr c, jr_00d_5818

    ld bc, $e7bb
    rst $30
    ld e, b
    ld b, l
    nop
    rst $28
    ld bc, $837f
    xor d
    ld d, h
    ld d, a
    nop
    ld hl, sp+$00
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
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
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, l
    nop
    xor d
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
    xor b
    nop
    ld d, h
    nop
    adc b
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld [bc], a
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $05
    ld c, $05
    adc [hl]
    db $ed
    cp $7d
    cp $fb
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
    ld a, l
    add d
    ld sp, hl
    cp $df
    rst $38
    inc bc
    db $d3
    inc bc
    rst $30
    add [hl]
    rst $10
    add $c7
    ld h, a
    cp $fd
    ld a, $ed
    ld e, $ff
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp [hl]
    pop bc
    cp $e1
    ld a, a
    ld a, b
    dec e
    ld e, $0e
    rrca
    inc bc
    inc bc
    ld bc, $ff03
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld l, d
    ret nz

    push af
    ret nz

    ld [$f5e0], a
    ldh [$fa], a
    ldh [$f5], a
    ldh a, [$fa]
    ldh a, [$f7]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$fa], a
    ret nz

    db $fd
    ret nz

    rst $38
    and b
    ld [hl], l
    and b
    ld hl, sp+$60
    db $f4
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh [$c0], a
    ldh [$80], a
    jp nz, $c080

    nop
    add b
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
    add b
    nop
    ld b, b
    nop
    nop
    nop
    stop
    and b
    nop
    nop
    nop
    xor b
    nop
    nop
    nop
    nop
    nop

jr_00d_59a2:
    nop
    nop
    nop
    nop
    ld d, b
    nop
    jr nz, jr_00d_59aa

jr_00d_59aa:
    nop
    nop
    jr nz, jr_00d_59ae

jr_00d_59ae:
    nop
    nop
    rla
    jr c, jr_00d_59ca

    jr c, jr_00d_59ec

    jr c, jr_00d_59f5

    ld sp, $313e
    ld a, $31
    ld a, $71
    ld a, $71
    ld l, $71
    cpl
    ld [hl], b
    ld l, h
    ld [hl], e
    ld l, l
    ld [hl], d
    ld a, l
    ld h, d

jr_00d_59ca:
    ld a, l
    ld h, d
    ld a, l
    ld h, d
    ld e, l
    ld [c], a
    ld e, l
    ld [c], a
    ld e, [hl]
    pop hl
    ret c

    rst $20
    ld a, [$fbc5]
    push bc
    ei
    push bc
    ei
    push bc
    cp e
    push bc

jr_00d_59e0:
    cp a
    pop bc
    or e
    call $cfb1
    rst $30
    adc e
    or $8b
    or $8b

jr_00d_59ec:
    or $8b
    db $76
    adc e
    db $76
    adc d
    ld [hl], d
    adc [hl]
    ld h, d

jr_00d_59f5:
    sbc a
    db $eb
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    cp $07
    rst $00
    ld a, $d5
    ld l, $d7
    inc l
    rst $18
    inc l
    rst $18
    inc l
    rst $18
    jr z, jr_00d_59e0

    jr c, jr_00d_59a2

    ld a, b
    adc a
    ld a, b
    cp [hl]
    ld e, c
    cp [hl]
    ld e, c
    cp a
    ld e, b
    cp h
    ld e, e
    cp l
    ld d, e
    rst $38
    ld de, $7799
    reti


    scf
    rst $38
    di
    di
    rst $38
    or $0f
    and $1f
    and $1f
    db $ec
    rra
    call c, $cc2f
    ccf
    call c, $983f
    ld a, [hl]
    sub b
    ld a, [hl]

jr_00d_5a3c:
    ld [hl], b
    cp h
    jr nc, jr_00d_5a3c

    ld h, b
    ld hl, sp-$20
    ld [hl], b
    ld h, b
    ldh a, [rLCDC]
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    ld a, [$d500]
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
    ld d, a
    nop
    cp [hl]
    nop
    ld a, l
    nop
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
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
    ld bc, $0000
    ld bc, $0102
    ld bc, $0602
    ld bc, $0503
    dec b
    rlca
    dec c
    rlca
    dec bc
    rlca
    dec bc
    rrca
    ld e, a
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    rra
    rra
    rra
    ccf
    rra
    rra
    rra
    ccf
    rra
    rra
    rra
    ccf
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
    ld c, $0e
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld l, a
    cp a
    rst $20
    cp a
    ld h, l
    cp a
    jr nz, @+$01

    and b
    ld a, a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, b
    cp $c0
    db $fd
    add b
    db $fd
    pop bc
    db $fd
    pop bc
    rst $38
    add e
    ei
    add e
    db $db
    add e
    rst $38
    add [hl]
    rst $30
    add [hl]
    rst $20
    rlca
    and $0d
    adc [hl]
    rrca
    xor h
    rrca
    sbc h
    dec de
    ld e, h
    dec de
    inc a
    scf
    jr c, jr_00d_5b36

    jr nc, @+$40

    ld [hl], c
    ld l, $71
    ld a, [hl]
    ld h, c
    ld a, h
    ld h, e
    call c, $ffe3
    pop bc
    ei
    push bc
    cp c
    rst $00
    rst $38
    add e
    di
    adc a
    ld [hl], a
    adc a
    rst $38
    rlca
    rst $28
    rla
    rst $20
    rra
    rst $38
    rrca
    rst $18
    cpl
    rst $08
    ccf
    cp a
    ld e, a
    sbc a
    ld a, a
    rst $18
    ccf
    ccf
    rst $38
    ccf
    rst $38
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
    sbc a
    rst $38
    adc d
    rst $38

jr_00d_5b36:
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, [$d500]
    nop
    cp d
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, l
    nop
    and d
    nop
    ld b, l
    nop
    add d
    nop
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0101
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec c
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ld l, a
    rst $38
    ld [hl], a
    rst $28
    rst $18
    rst $20
    db $db
    rst $20
    ld sp, hl
    rst $00
    cp e
    rst $00
    cp e
    rst $00
    rst $30
    adc e
    ld [hl], e
    adc a
    ld a, a
    add a
    rst $20
    rra
    rst $20
    rra
    rst $38
    rrca
    rst $08
    ccf
    rst $18
    ccf
    rst $38
    rra
    sbc a
    ld a, a
    rst $18
    ccf
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    db $fd
    di
    rrca
    ldh a, [rIF]
    ldh a, [$9f]
    ld h, b
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    xor [hl]
    ld bc, $01d6
    xor e
    dec b
    ld d, e
    dec b
    xor l
    inc bc
    ld e, e
    rlca
    and a
    rrca
    ld e, a
    rrca
    xor a
    rra
    ld a, a
    rra
    sbc a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    pop af
    add sp, -$20
    push hl
    ret nz

    set 4, c
    rst $30
    rst $28
    rst $38
    rst $28
    rst $20
    ei
    ei
    pop hl
    pop bc
    ret nz

    ret nz

    add c
    pop bc
    add c
    rst $28
    jp nz, $ceff

    rst $28
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp a
    ld a, a
    cpl
    rra
    rlca
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    cp $df
    rst $28
    rst $38
    add a
    db $dd
    add b
    cp $80
    cp e
    call nz, $efdf
    cp $ff
    rst $38
    db $fc
    call $bff2
    ret nz

    rst $38
    add b
    rst $38
    nop
    ldh a, [rIF]
    rst $18
    ccf
    rst $38
    rst $38
    rst $18
    rst $28
    ei
    rst $38
    push af
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    call $fff3
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    add b
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rra
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f1fd]
    ldh a, [$e0]
    ldh [$f5], a
    ldh [$fb], a
    rst $30
    rst $28
    rst $30
    rst $38
    rst $20
    di
    rst $00
    add d
    add e
    sub [hl]
    add b
    adc d
    add h
    call c, $fe8c
    sbc h
    rst $18
    cp h
    sbc $bd
    cp $9d
    xor $85
    rlca
    inc b
    nop
    nop
    nop
    nop
    adc b
    nop
    call nc, $bb38
    ld a, b
    ld a, a
    ld sp, hl
    ei
    db $fd
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rra
    ldh [$1f], a
    ldh [$87], a
    ld hl, sp-$3d
    db $fc
    pop af
    cp $fc
    rst $38
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
    rra
    rrca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fc
    cp $fe
    db $fc
    cp $fc
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
    ld hl, sp-$04
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    cp $7c
    cp $7c
    cp a
    ld a, [hl]
    xor l
    ld d, d
    db $ed
    ld d, d
    push bc
    ld a, d
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ldh [rIE], a
    and $f9
    rst $08
    ldh a, [$cf]
    ldh a, [$ee]
    ldh a, [$ed]
    ldh a, [$ee]
    ldh a, [$ed]
    ldh a, [$f6]
    ld hl, sp-$0b
    ld hl, sp-$0d
    db $fc
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    add a
    add c
    inc b
    adc d
    nop
    db $fc
    sbc b
    cp a
    ld hl, sp+$3d
    ei
    cp a
    ei
    cp a
    res 1, e
    rlca
    inc c
    nop
    and b
    ld [$18f8], sp
    cp a
    ld a, b
    cp a
    ld a, c
    rst $38
    add hl, sp
    rra
    add hl, de
    sbc b
    db $10
    jr nc, jr_00d_5e40

jr_00d_5e40:
    and b
    ld h, b
    db $f4
    pop hl
    db $eb
    rst $30
    rst $10
    rst $20
    db $db
    rst $20
    ld a, [de]
    ld h, a
    ld c, $31
    ld sp, $2000
    nop
    ld bc, $e340
    ret nz

    rst $10
    ld [c], a
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rra
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$c7], a
    ld hl, sp-$08
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    rrca
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
    add b
    nop
    ret nc

    nop
    cp a
    ld b, b
    scf
    ret z

    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    rst $18
    and b
    cp a
    ldh [$fe], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    cp $fe
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld hl, sp+$7d
    db $fc
    cp l
    ld a, [hl]
    rst $18
    ccf
    rst $28
    rra
    ld l, a
    rra
    rst $20
    rra
    ld a, e
    rlca
    cp h
    inc bc
    ld d, a
    nop
    xor e
    nop
    db $f4
    nop
    ld a, $c0
    db $e3
    db $fc

jr_00d_5ee8:
    ld sp, hl
    cp $ff
    rst $38
    cp $fe
    rst $38
    ld a, [hl]
    ld e, a
    inc hl
    ld b, d
    ld bc, $8240
    ret nc

    add $fe
    sbc $ff
    sbc $ff
    sbc $1f
    ld a, [hl]
    ld l, e
    ld [bc], a
    ld d, d
    ld bc, $c082
    ld a, [c]

jr_00d_5f07:
    call nz, $cefe
    adc $df
    db $ed
    sbc $d9
    ld b, $00
    add d
    add h
    nop

jr_00d_5f14:
    inc c
    add b
    ld hl, sp-$74
    ld a, [hl]
    sbc h
    ld l, a
    sbc h
    xor a
    jr jr_00d_5f14

    ld [$008f], sp
    rlca
    nop
    ld b, $00
    inc c
    nop
    xor b
    jr jr_00d_5f07

    jr c, jr_00d_5ee8

    inc a
    ld a, h
    cp l
    cp e
    db $fd
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    cp e
    rlca
    push de
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    ccf
    ret nz

    add a
    ld hl, sp-$08
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
    rst $38
    rst $38
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
    rra
    rra
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
    ret nz

    nop
    rst $38
    nop
    cp e
    ld b, b
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    xor [hl]
    ld bc, $80f5
    rst $30
    ld hl, sp-$01
    ld hl, sp-$0d
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    daa
    rst $30
    inc bc
    ei
    ld bc, $00fd
    cp [hl]
    nop
    db $fd
    nop
    cp $00
    rst $18
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
    ldh [$f7], a
    ld hl, sp-$02
    rst $38
    ccf
    rst $38
    db $e3
    rra
    inc e
    inc bc
    inc c
    nop
    nop
    nop
    ld a, [bc]
    nop
    inc c
    nop
    inc c
    ld [$08dc], sp
    ldh a, [$98]
    sbc $3e
    and h
    ld a, [de]
    dec d
    nop
    or b
    nop
    dec [hl]
    ldh a, [rIE]
    di
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    rla
    rra
    ld [$1000], sp
    or b
    db $10
    pop af
    ld [hl], b
    db $76

jr_00d_5fed:
    ld sp, hl
    cpl
    di
    ret


    scf
    dec l
    inc de
    ld a, [hl+]
    ld de, $0030
    ldh [rNR41], a
    pop af
    ldh [$6d], a
    di
    db $d3
    ld h, a
    db $dd
    ld h, e
    ld a, l
    inc bc
    dec a
    inc bc
    dec d
    nop
    jr nz, jr_00d_600a

jr_00d_600a:
    ld b, b
    jr nz, jr_00d_5fed

    ld h, b
    pop af
    ldh [$fd], a
    di
    db $e3
    rst $30
    db $eb
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_00d_6028:
    rst $28
    rra

jr_00d_602a:
    ld e, l
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$c0]

jr_00d_6037:
    rst $38
    cp $ff
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
    ld b, b
    nop
    nop
    ld a, [$d200]
    nop
    cp $01
    rst $38
    nop
    rst $38
    sub e
    ld l, h
    ld d, a
    xor b
    rrca
    ldh a, [$60]
    add b
    ret nz

    nop
    xor d
    nop
    jr jr_00d_6028

    jr z, jr_00d_602a

    ld hl, sp-$20
    add sp, -$20
    ld hl, sp-$20
    ld [$fde0], a
    ldh [$ea], a
    ldh [$fd], a
    ldh [$ea], a
    ld h, b
    ld a, l
    jr nz, jr_00d_6037

    nop
    rst $18
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ldh [$fe], a
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rla
    rrca
    dec bc
    ld b, $00
    inc b
    add e
    rlca
    sub a
    ld b, $b6
    ld b, $87
    inc b
    cp $0c
    rst $28
    rst $18
    adc l
    ld b, $85
    nop
    adc b
    add b
    call c, $ffb8
    cp h
    db $fd
    cp l
    rst $38
    cp l
    push de
    ld l, l
    rst $20
    ld bc, $8283
    add d
    add b
    sbc $c4
    cp [hl]
    sbc $5f
    sbc [hl]
    ld l, [hl]
    sbc [hl]
    ld e, l
    add [hl]
    add [hl]
    nop
    rla
    nop
    add [hl]
    nop
    call nc, $ec84
    sbc [hl]
    rst $38
    ld c, $bc
    ld c, $dd
    ld l, $f6
    ld [$00c7], sp
    add d
    ld bc, $0083
    ld [bc], a
    add b
    add $80
    xor $c6
    rst $08
    sbc $ff
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $30
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    add b
    nop
    sub l
    nop
    or l
    nop
    db $ed
    db $10
    ld e, a
    cp h
    cp l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, $1f
    ld a, $1f
    rra
    xor a
    rrca
    ld e, a
    rlca
    dec hl
    rlca
    ld e, a
    ccf
    jr c, jr_00d_616d

    ld a, h
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    cp a
    ld a, [hl]
    ld a, e
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    ld l, l
    sub d
    xor $11
    ld h, a
    sbc a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    rla
    and e
    inc bc
    dec de
    ld bc, $013b
    ld e, e
    ld bc, $095b
    ld b, e
    inc bc
    rst $38
    rla
    ccf
    ld a, a
    dec a

jr_00d_616d:
    inc hl
    ld [hl], h
    ld bc, $e148
    rst $30
    pop hl
    rst $20
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    ld a, a
    rrca
    ld [de], a
    add hl, de
    nop
    db $10
    and b
    db $10
    or b
    ld [hl], b
    di
    ld hl, sp-$01
    di
    cp e
    ld [hl], a
    inc sp
    rla
    adc e
    db $10
    stop
    jr nc, jr_00d_6192

jr_00d_6192:
    ldh a, [$30]
    ld a, [$be70]
    ld a, c
    dec sp
    di
    inc a
    di
    xor h
    inc de
    db $10
    rrca
    ld c, $00
    inc c
    nop
    ld [$5000], sp
    ld [$18fa], sp
    ld a, b
    ld a, h
    rst $38
    ld a, h
    ld a, l
    db $fd
    rst $38
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
    rst $18
    ccf
    di
    rrca
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, [hl+]

jr_00d_61d5:
    nop
    ld [$c202], sp
    jr z, jr_00d_61d5

    dec b
    rst $38
    nop
    cp a
    nop
    and c
    nop
    push af
    nop
    rst $30
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    add e
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    rlca
    sub a
    ld l, a
    xor a
    ld [hl], a
    inc de
    rst $38
    ld e, b
    cp a
    inc e
    rst $38
    rra
    rst $38
    cp h
    ld a, a
    ldh a, [rIE]
    ldh a, [$cf]
    ld b, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    adc a
    xor a
    inc b
    ld b, h
    nop
    xor [hl]
    add b
    call Call_000_3fbc
    cp h
    rst $38
    dec a
    rst $38
    dec a
    ld a, a
    db $fd
    xor l
    ld b, e
    db $d3
    inc bc
    jp $c782


    jp nz, $c7fe

    rst $08
    rst $18
    rst $38
    rst $18
    rst $08
    ld e, a
    ld l, a
    ld b, e
    ld b, c
    ld b, c
    add c

jr_00d_6255:
    ld b, c
    pop bc
    pop bc
    set 4, c
    db $db
    rst $28
    rst $28
    rst $08
    rst $38
    rst $08
    adc a
    ld a, a
    ld l, a
    ccf
    dec de
    ld hl, $0031
    jr nz, jr_00d_626a

jr_00d_626a:
    ld b, b
    jr nz, jr_00d_6255

    ld h, b
    push af
    ldh [rIE], a
    pop af
    rst $30
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ccf
    ld a, a
    cp a
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
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    and b
    nop
    push de
    nop
    add d
    ld a, l
    ld b, b
    cp a
    jr z, jr_00d_62f9

    ld d, l
    nop
    ret nz

    nop
    or $f8
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    scf
    dec hl
    ld hl, $2055
    cp e
    ld h, b
    push af
    pop af
    rst $38
    rst $30
    rst $30
    rst $30
    rst $28
    rst $30
    rst $08
    scf
    sbc d
    dec c
    inc e
    nop
    adc d
    nop
    call c, $be08
    ld a, h
    ld a, l
    ld a, h
    rst $38
    ld a, h
    ld sp, hl
    dec e
    adc a
    ld bc, $0507
    adc a

jr_00d_62f9:
    inc bc
    rst $00
    inc bc
    rst $28
    add a
    sbc a
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    cp a
    rst $18
    db $db
    rst $20
    dec hl
    pop bc
    ld b, c
    add b
    ld c, b
    add b
    ret nz

    add b
    ldh [$c0], a
    db $fd
    ret nz

    rst $38
    pop af
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $4101
    ld bc, $5500
    sub l
    ld b, b
    inc bc
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    xor c
    inc bc
    xor a
    rrca
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $20
    rst $38
    di
    ccf
    ld hl, sp+$07
    db $fc
    jp nz, $f0ff

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    di
    rst $38
    rst $38
    ld hl, sp-$03
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    cp a
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
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
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
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    ld d, a
    ld d, l
    nop
    ld d, l
    nop
    and [hl]
    ld sp, hl
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fd
    rst $38
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    pop hl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $30
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$f7], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    ldh [$e0], a
    add b
    ret nz

    add b
    add b
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$e0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$ee]
    ldh a, [$fe]
    ldh [$fe], a
    ldh [$fe], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld [$f7c0], a
    ret nz

    db $fd
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
    or $f9
    ld a, a
    db $fc
    sbc $3f
    xor a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $ff
    ld hl, sp-$11
    ldh a, [$df]
    ldh [rIE], a
    add b
    cp a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp b
    nop
    sbc h
    nop
    adc h
    nop
    call nz, Call_00d_4400
    ret nz

    call nz, $e0c0
    ret nz

    ldh [$e0], a
    ld [c], a
    add b
    ld b, e
    ld [bc], a
    rrca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0107
    ld [bc], a
    ld bc, $0003
    inc bc
    ld bc, $0101
    ld bc, $0100
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
    cp a
    rst $38
    rst $38
    rra
    or a
    rra
    ld e, a
    rla
    cp a
    rla
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add e
    ld a, a
    ret c

    daa
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $18
    ldh [$f3], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    ei
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$e0], a

jr_00d_65e2:
    ldh a, [rNR41]
    jr nc, jr_00d_6626

    ld [hl], c
    jr nc, jr_00d_65e2

    or b
    ld hl, sp+$38
    ld a, h
    ld e, b
    ld a, h
    inc e
    ld a, $2c
    ccf
    inc l
    ld [hl], $2e
    rra
    ld d, $1f
    rla
    rra
    dec bc
    rrca
    dec bc
    rrca
    inc bc
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00d_6626:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
    rst $28
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    ld b, b
    adc $dc

Call_00d_6672:
    rst $18
    rrca
    rst $08
    add b
    sbc h
    adc h
    cp [hl]
    sbc h
    ccf
    ld e, $0f
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
    add b
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ld l, b
    ldh [$f0], a
    ld h, b
    ld hl, sp-$70
    ld hl, sp+$30
    ld hl, sp+$70
    ld a, b
    ld a, b
    ld a, h
    jr c, jr_00d_66df

    inc a
    inc e
    inc e
    inc e
    inc c
    inc c
    inc c
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_00d_66df:
    nop
    nop
    nop
    ret nz

    add b
    db $fc
    ldh a, [$3f]
    inc e
    rlca
    inc bc
    ret nz

    nop
    ld hl, sp-$20
    rst $38
    ld a, $03
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
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    ld sp, hl
    ld sp, hl
    db $e3
    db $e3
    rst $08
    rst $08
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    di
    di
    di
    di
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    or e
    or e
    or e
    or e
    add c
    add c
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add e
    add e
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $9fc3


    sbc a
    add e
    add e
    cp c
    cp c
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    ld sp, hl
    ld sp, hl
    ei
    ei
    di
    di
    rst $30
    rst $30
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    jp $99c3


    sbc c
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    sbc c
    sbc c
    pop bc
    pop bc
    ld sp, hl
    ld sp, hl
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp a
    cp a
    cp a
    cp a
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    cp l
    cp l
    cp c
    cp c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp a
    cp a
    or c
    or c
    sbc l
    sbc l
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    sbc c
    sbc c
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    sbc l
    adc l
    adc l
    and l
    and l
    or c
    or c
    cp c
    cp c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    or e
    or e
    sub c
    sub c
    ret


    ret


    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    jp $9fc3


    sbc a
    jp $f9c3


    ld sp, hl
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    db $db
    db $db
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    sbc c
    sbc c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    sbc c
    sbc c
    jp $c3c3


    jp $9999


    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $e7c3


    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
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
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    jr jr_00d_6971

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_00d_6981

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_00d_6992

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_00d_69a2

jr_00d_6971:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_00d_69b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_00d_6981:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld b, [hl]
    ld c, h
    ld c, l
    ld c, [hl]

jr_00d_6992:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld b, [hl]
    ld d, [hl]
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_00d_69a2:
    ld e, d
    ld e, e
    ld e, h
    ld b, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld b, [hl]
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_00d_69b3:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld b, [hl]
    ld [hl], h
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
    add c
    add d
    nop
    nop
    nop
    nop
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
    ld b, [hl]
    nop
    nop
    nop
    nop
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
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
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
    or h
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    or l
    or [hl]
    or a
    cp b
    ld b, [hl]
    ld b, [hl]
    cp c
    cp d
    cp e
    cp h
    cp l
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    cp a
    ret nz

    pop bc
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    jp nz, $c346

    ld b, [hl]
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $00
    jp hl


    ld [$eceb], a
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    db $ed
    xor $ef
    ld b, [hl]
    ldh a, [$f1]
    nop
    ld a, [c]
    di
    db $f4
    push af
    or $00
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    rst $30
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld hl, sp-$07
    nop
    nop
    ld a, [$00fb]
    nop
    nop
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    db $fc
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
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
    ld bc, $0401
    inc b
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
    ld bc, $0101
    inc b
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
    ld bc, $0401
    inc b
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
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld a, [bc]
    or $29
    ld c, l
    ld hl, $10a6
    nop
    nop
    ld h, b
    ld bc, $016e
    ld [$0000], sp
    nop
    rst $38
    ld a, a
    ld d, d
    ld c, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    ld c, l
    ld hl, $10a6
    nop
    nop
    ld d, d
    ld c, d
    ld l, [hl]
    ld bc, $0008
    nop
    nop
    rst $38
    ld a, a
    ld c, l
    ld hl, $10a6
    nop
    nop
    rst $38
    ld a, a
    or $29
    ld c, l
    ld hl, $10a6
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    ldh [$7f], a
    add b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
