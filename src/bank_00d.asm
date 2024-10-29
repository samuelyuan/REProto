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
    db $10

    INCBIN "gfx/image_00d_4bb0.2bpp"

    INCBIN "gfx/image_00d_53b0.2bpp"

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $00, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $03, $04, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $06, $07, $08, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $09, $0a, $0b, $00, $00, $00, $00, $00, $0c, $0d
    db $0e, $00, $00, $00, $00, $00, $00, $00, $0f, $10, $11, $00, $00, $00, $00, $12
    db $13, $14, $15, $16, $17, $18, $19, $1a, $00, $00, $00, $1b, $1c, $00, $00, $00
    db $00, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $00, $27, $28, $29, $00
    db $00, $00, $00, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $00, $34, $35
    db $36, $00, $00, $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42
    db $43, $44, $45, $00, $00, $00, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $00, $00, $00, $00, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $00, $5f, $60, $61, $00, $00, $00, $00, $62, $63, $64, $65, $66
    db $67, $68, $69, $6a, $6b, $00, $6c, $6d, $6e, $00, $00, $00, $00, $6f, $70, $71
    db $72, $73, $74, $75, $76, $77, $00, $00, $78, $79, $7a, $00, $00, $00, $00, $00
    db $7b, $7c, $7d, $00, $00, $00, $00, $00, $00, $00, $7e, $7f, $80, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $27, $28, $81, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $82, $35
    db $83, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $84, $85, $86, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $01, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $01, $01, $00, $00, $00, $00, $02, $02, $02, $02, $02, $03, $02
    db $02, $02, $02, $00, $01, $01, $01, $00, $00, $00, $00, $02, $02, $02, $02, $00
    db $00, $00, $03, $02, $02, $00, $01, $01, $01, $00, $00, $00, $00, $02, $02, $02
    db $02, $00, $00, $00, $00, $02, $02, $00, $01, $01, $01, $00, $00, $00, $00, $02
    db $02, $02, $02, $00, $00, $00, $00, $03, $02, $00, $01, $01, $01, $00, $00, $00
    db $00, $02, $02, $02, $02, $00, $00, $00, $03, $02, $02, $00, $01, $01, $01, $00
    db $00, $00, $00, $02, $02, $02, $02, $02, $03, $03, $02, $02, $02, $00, $01, $01
    db $01, $00, $00, $00, $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00
    db $01, $01, $01, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00, $00, $00, $00
    db $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $7f, $3c, $06, $74, $05, $00, $00, $ff, $7f, $5f, $6b, $0a, $00, $1f, $00
    db $ff, $7f, $d6, $5a, $8c, $31, $00, $00, $ff, $7f, $d6, $5a, $74, $05, $00, $00
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c
    db $00, $00, $9c, $31, $50, $25, $21, $04, $00, $00, $9c, $31, $40, $41, $84, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f8, $7f, $ff
    db $f9, $07, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $7f, $80, $7d, $82, $f3, $fc

    INCBIN "gfx/image_00d_5770.2bpp"

    INCBIN "gfx/image_00d_6b70.2bpp"

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
    ds $1372, $00
