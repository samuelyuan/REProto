SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

Call_040_4000:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    inc b
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
    ld bc, $0101
    ld bc, $0102
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
    inc b
    ld bc, $0204
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0001
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0001
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    ld hl, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    inc b
    dec b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    dec b
    dec b
    nop
    ld bc, $2000
    nop
    nop
    ld bc, $0504
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld bc, $0021
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4101
    ld bc, $0101
    ld hl, $2121
    ld hl, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    ld a, a
    rst $38
    ld a, a
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
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
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $28
    rrca
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    ld bc, $03fd
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $e1
    cp $e1
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_040_4316:
    inc bc
    db $fc
    inc bc
    db $fd
    ld bc, $03fd
    ei
    inc b
    db $f4
    inc c
    db $ec
    jr @-$06

    jr nc, jr_040_4316

    ld h, b
    ldh [$f8], a
    ld hl, sp-$07
    ld sp, hl
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rrca
    nop
    rra
    nop
    ld a, $01
    ld a, $01
    ld a, h
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp-$01
    cp $ff
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
    inc bc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld sp, $11ff
    rst $38
    ld sp, $20ff
    rst $38
    add b
    rlca
    inc b
    inc bc
    nop
    inc bc
    jr jr_040_439b

    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop

jr_040_439b:
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
    ld bc, $01fd
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $20
    ld h, a
    ld c, a
    ld c, a
    rst $18
    rst $18
    cp a
    cp a
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
    rra
    rra
    ld e, a
    ld e, a
    ccf
    ccf
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
    ld bc, $03ff
    rst $38
    inc bc
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, HeaderManufacturerCode
    ld a, a
    inc bc
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    db $ed
    rra
    db $fd
    rra
    rst $10
    ccf
    rst $28
    ccf
    xor l
    ld a, a
    sbc c
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38

jr_040_4406:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_040_4410:
    nop
    rst $38

jr_040_4412:
    nop
    rst $38

jr_040_4414:
    ret nz

    rst $38

jr_040_4416:
    ld hl, sp-$01

jr_040_4418:
    rst $38
    rst $38

jr_040_441a:
    rst $38
    rst $38

jr_040_441c:
    rst $38
    rst $38

jr_040_441e:
    rst $38
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, $fe
    jr nz, jr_040_4406

    daa
    rst $00
    ld l, $ce
    ld a, $ce
    jr c, jr_040_4416

    jr nc, jr_040_4410

    jr nc, jr_040_4412

    jr nc, jr_040_4414

    jr nc, jr_040_4416

    jr nc, jr_040_4418

    jr nc, jr_040_441a

    jr nc, jr_040_441c

    jr nc, jr_040_441e

    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or d
    ld b, d
    or d
    ld b, d
    or b
    ld b, b
    or d
    ld b, d
    or c
    ld b, c
    or l
    ld b, l
    or c
    ld b, c
    or c
    ld b, c
    cp a
    ld b, a
    cp a
    ld b, a
    cp a
    ld b, a
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $08
    daa
    rst $08
    daa
    rst $20
    daa
    and a
    daa
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
    db $e3
    db $e3
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
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    ld bc, $0108
    ld [$0003], sp
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld c, $01
    ld e, $01
    inc a
    inc bc
    jr c, @+$09

    ld a, b
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    db $f4
    rra
    db $ec
    ccf
    db $fd
    ccf
    rst $30
    ld a, a
    cp $7f
    or $ff
    db $fd
    rst $38
    cp $ff
    cp l
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    db $e4
    rst $38
    db $ec
    rst $38
    xor $ff
    db $ec
    rst $38
    adc l
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld b, $ff
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
    nop
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$18
    ldh [$e0], a
    inc b
    ld a, [$fae4]
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ld a, e
    ld h, h
    ld a, e
    ld h, h
    ld a, e
    ld h, h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    inc h
    dec sp
    dec h
    dec sp
    daa
    ccf
    daa
    rst $18
    rst $10
    rst $38
    rst $30
    rst $38
    rst $30
    rst $10
    rst $10
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
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
    nop
    ld b, $01
    ld c, $01
    inc e
    ld [bc], a
    jr jr_040_4596

jr_040_4596:
    jr c, jr_040_4598

jr_040_4598:
    jr nc, jr_040_459a

jr_040_459a:
    ld [hl], b
    nop
    ld h, b
    ld [bc], a
    ret nz

    ld bc, $34c0
    add b
    ld h, d
    add b
    ld d, d
    add b
    ld a, h
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld c, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    cp $7f
    cp $7e
    rst $38
    inc a
    ld a, a
    ld a, h
    ccf
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, l
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
    nop
    ld a, a
    ld bc, $037e
    ld a, h
    rlca
    ld a, b
    rrca
    ld [hl], b
    rra
    ld h, b
    ccf
    ld b, b
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc c
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    jr nc, jr_040_46c1

    nop
    ld h, b
    ld [$2cc0], sp
    ret nz

    inc a
    add b
    ld a, h
    nop
    cp $00
    ld hl, sp+$00
    cp h
    rrca
    rrca
    rst $38
    rst $38
    sbc $de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sub $d6
    ld a, [$fffa]
    rst $38
    cp a
    cp a
    cp c
    cp c
    ei
    ei
    ld d, a
    ld d, a
    ld [de], a
    ld [de], a
    ld b, $06
    add hl, bc
    add hl, bc
    ld hl, $0121
    ld bc, $0000
    ld b, $06
    db $10
    stop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    nop
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_040_46ad:
    rst $38
    nop
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$0208], sp
    ld [bc], a
    nop
    nop
    nop

jr_040_46c1:
    nop
    add b
    add b
    nop
    nop
    dec d
    dec d
    inc d
    inc d
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
    rst $38
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
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add e
    add e
    add e
    add e
    sub a
    sub a
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
    ret nz

    jr nz, jr_040_46ad

    ld l, b
    nop
    or b
    rst $10
    rst $10
    db $fd
    db $fd
    cp a
    cp a
    db $e3
    db $e3
    cp $fe
    ld d, d
    ld d, d
    or b
    or b
    and h
    and h
    nop
    nop
    add b
    add b
    ld d, b
    ld d, b
    jr nz, jr_040_4768

    jr nz, jr_040_476a

    ret nz

    ret nz

    db $10
    db $10
    ld b, b
    ld b, b
    db $10
    db $10
    ld d, b
    ld d, b
    dec b
    dec b
    jr nz, jr_040_4778

    nop
    nop
    sbc h
    sbc h
    ld e, d
    ld e, d
    ld bc, $0801
    ld [$8080], sp
    rrca
    rrca
    ld d, $16

jr_040_4768:
    add b
    add b

jr_040_476a:
    ld [bc], a
    ld [bc], a
    or b
    or b
    and h
    and h
    ld b, l
    ld b, l
    dec b
    dec b
    inc h
    inc h
    ld [bc], a
    ld [bc], a

jr_040_4778:
    inc c
    inc c
    cp h
    cp h
    ret c

    ret c

    ld [de], a
    ld [de], a
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    nop
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cp $fe
    jp hl


    jp hl


    ld hl, sp-$08
    ld c, b
    ld c, b
    nop
    nop
    and b
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    adc b
    adc b
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    ld bc, $01ee
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    sbc $01
    cp $01
    cp $01
    cp $03
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
    nop
    rst $38
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
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    reti


    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $1e
    nop
    ld e, $a0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
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
    rst $38
    db $fc
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc

jr_040_48b7:
    rst $38
    inc bc

jr_040_48b9:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38

jr_040_48c5:
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    daa
    rst $18
    ld [hl], a
    sbc a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    sbc a
    add a
    rra
    add a

jr_040_48fb:
    rra
    and a

jr_040_48fd:
    rst $18
    rst $20

jr_040_48ff:
    rst $38
    rst $20

jr_040_4901:
    rst $38
    rst $20

jr_040_4903:
    rst $38
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    call nc, $e4e3
    jp $c7ee


    jp nz, $8281

jr_040_4919:
    ld bc, $80c1
    pop hl

jr_040_491d:
    ret nz

    pop bc

jr_040_491f:
    add b
    add c
    add b
    add c
    ret nz

    add e
    db $fc
    and e
    call c, $dca3
    db $e3
    sbc h
    db $e3
    sbc h
    db $e3
    sbc h
    add b
    inc a
    add b
    inc a
    add b
    jr c, jr_040_48b7

    jr c, jr_040_48b9

    jr c, jr_040_48fb

    jr c, jr_040_48fd

    jr c, jr_040_48ff

    jr c, jr_040_4901

    jr c, jr_040_4903

    jr c, jr_040_48c5

    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    ret nz

    jr nc, @-$3e

    jr nc, @-$3e

    jr nc, jr_040_4919

    jr nc, @-$3e

    jr nz, jr_040_491d

    jr nz, jr_040_491f

    jr nz, @-$1f

    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$fe], a
    pop bc
    cp [hl]
    add c
    cp [hl]
    add c
    cp $c1
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp [hl]
    add c
    cp h
    add e
    cp h
    add e
    cp h
    add e
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh a, [rTAC]
    ld hl, sp-$09
    ld hl, sp-$09
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    and c
    xor a
    pop hl
    rst $28
    and c
    xor a
    jp hl


    rst $28
    xor e
    xor a
    xor e
    xor a
    xor e
    xor a
    xor e
    xor a
    db $eb
    rst $28
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    nop
    ld e, a
    ld bc, $011e
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld a, $03
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rrca
    ld [hl], b
    rrca
    ldh a, [rIF]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
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
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_040_4b0d

    add hl, de
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    dec e
    dec e

jr_040_4b0d:
    dec e
    dec e
    dec e
    ld e, $17
    rra
    rla
    add hl, de
    nop
    jr nz, jr_040_4b18

jr_040_4b18:
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_040_4b21

jr_040_4b21:
    add hl, hl
    rla
    ld a, [hl+]
    dec hl
    nop
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_040_4b5e

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    nop
    nop
    jr c, jr_040_4b38

jr_040_4b38:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_040_4b5e:
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld b, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rla
    rla
    rla
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rla
    rla
    rla
    rla
    rla
    ld a, h
    ld a, l
    nop
    nop
    ld a, [hl]
    nop
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
    nop
    adc c
    adc d
    nop
    nop
    nop
    nop
    nop
    adc e
    adc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld bc, $0404
    inc b
    ld bc, $0404
    inc b
    nop
    nop
    nop
    jr nz, jr_040_4c45

jr_040_4c45:
    nop
    inc b
    inc b
    dec b
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
    jr nz, jr_040_4c56

jr_040_4c56:
    inc b
    ld bc, $0505
    dec b
    dec b
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
    ld bc, $0501
    dec b
    dec b
    inc b
    inc b
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0501
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0501
    dec b
    dec b
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
    ld bc, $0101
    ld [bc], a
    dec b
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
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld bc, $0201
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
    inc b
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp $ff
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
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, $fc
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    jp $e3ff


    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $02ff
    cp $02
    cp $02
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    db $fd
    dec b
    db $fd
    dec c
    db $fd
    add hl, bc
    ld sp, hl
    dec bc
    ei
    dec bc
    ei
    dec bc
    ei
    add hl, bc
    ld sp, hl
    dec c
    db $fd
    rrca
    rst $38
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec e
    db $fd
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $fe
    dec a
    db $fd
    ld a, $fe
    ccf
    rst $38
    cpl
    rst $28
    scf
    rst $30
    ld [hl], a
    rst $30
    ld [hl], a
    rst $30
    ld l, a
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld d, a
    rst $10
    ld l, a
    rst $28
    ld a, e
    ei
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
    adc a
    adc a
    adc a
    adc a
    adc a
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
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp-$71
    ld [hl], b
    adc a
    ld [hl], b
    ld b, a
    jr c, jr_040_4ef0

    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
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
    ccf
    ccf
    ld a, a
    ld a, a
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
    ld bc, $0f02
    nop
    rrca
    nop

jr_040_4ef0:
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    pop bc
    pop bc
    rst $28
    rst $28
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
    rrca
    add c
    ld a, a
    cp [hl]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc $7f
    rst $38
    ld a, a
    rst $38
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $00
    ccf
    pop bc
    ccf
    ret


    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec sp
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [rNR31], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [rIF]
    ldh a, [$0d]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [$0d]
    ld hl, sp+$05
    ld hl, sp+$07
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$06
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
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
    rst $38
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
    ld bc, $ff00
    add $ff
    ld l, a
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
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $dd
    rst $38
    dec a
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    nop
    inc b
    inc b
    ld [$0008], sp
    nop
    nop
    nop
    ld de, $1011
    db $10
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    dec b
    dec b
    inc l
    inc l
    ld l, $2e
    nop
    nop
    nop
    nop
    ld [$0008], sp
    db $eb
    nop
    db $eb
    nop
    rst $20
    nop
    rst $28
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp h
    nop
    db $fd
    ld [$08ff], sp
    ld a, a
    nop
    ld a, a
    nop
    ld a, [$fb00]
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld bc, $0301
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
    ld a, a
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
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
    inc sp
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    or l
    rst $38
    ei
    rst $38
    ld a, [$90ff]
    rst $38
    ld b, c
    rst $38
    ld h, h
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
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
    inc b
    inc b
    add b
    add b
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
    ld b, b
    rst $38
    nop
    rst $38
    nop

Call_040_50ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    rst $30
    nop
    rst $28
    ld b, d
    rst $28
    ld h, b
    ld a, a
    nop
    ld [hl], a
    nop
    ei
    nop
    db $db
    nop
    call z, $fffe
    cp $ff
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
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [$1c30], sp
    ldh [$4e], a
    ldh a, [rTMA]
    ld hl, sp-$49
    ld hl, sp+$2b
    db $fc
    ld l, e
    db $fc
    add hl, bc
    cp $61
    cp $a0
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
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
    rst $28
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    sbc e
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc l
    rst $38
    ld h, a
    rst $38
    inc a
    rst $38
    jr z, @+$01

    ld [$40ff], sp
    rst $38
    inc bc
    rst $38
    ld e, e
    rst $38
    sbc e
    rst $38
    sbc l
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $e0ff
    rra
    jr c, jr_040_51fb

    inc c
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b

jr_040_51fb:
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc

jr_040_5214:
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    add h
    add e
    add h
    add e
    sub h
    sub e
    call nc, $e4d3
    db $e3
    db $fc
    ei
    db $fc
    ei
    call c, $c4db
    jp $fbfc


    db $fc
    ei
    db $fc
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
    rst $38
    rst $38
    rst $38
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    ld a, b
    add b
    jr c, jr_040_5214

    inc a
    ret nz

    inc e
    ld [c], a
    ld e, $e0
    ld c, $f1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    ld h, a
    rst $38
    ld a, [hl+]
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld e, c
    rst $38
    call z, $f8ff
    rst $38
    ld d, b
    rst $38
    inc d
    rst $38
    sub e
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    or h
    rst $38
    or a
    rst $38
    ld h, l
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ld e, a
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    nop
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
    add b
    rst $38
    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    add b
    ld a, b
    add h
    ld a, h
    add b
    ld a, $c0
    ld e, $e0
    rra
    ldh [rVBK], a
    ldh a, [$df]
    ldh a, [rIE]
    ld hl, sp+$6f
    ld hl, sp+$7f
    db $fc
    rst $00
    cp $df
    cp $bf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_040_5353:
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ld hl, sp+$00

jr_040_5365:
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    ret nz

    jr c, @-$3e

    jr c, jr_040_5353

    jr jr_040_5365

    ld [$00f8], sp
    db $fc
    nop
    cp $00
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
    ei
    ei
    rst $38
    rst $38
    rst $30
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$f0], a
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    add b
    cp $80
    cp $c0
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$41
    ld hl, sp-$41
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $ff
    cp $fb
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rTMA]
    ld hl, sp+$01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
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
    add b
    nop
    rst $38
    ret nz

    ld e, a
    ld b, b
    adc a
    add b
    add a
    add b
    rst $00
    call nz, $c0c3
    pop hl
    ldh [$d0], a
    ret nc

    call nc, $c0d4
    ret nz

    push af
    push af
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$08
    nop
    db $fc
    nop
    db $fc
    nop
    cp $80
    cp $80
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    ei
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
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
    rst $38
    nop
    rst $38
    inc bc

jr_040_54a7:
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    ld a, a
    inc a
    ld a, d
    daa
    ld h, d
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld bc, $01c2
    jp nz, $fe01

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
    cp $01
    ld a, h
    add e
    jr c, jr_040_54a7

    ld a, a
    nop
    ld a, $01
    ld a, $21
    sbc [hl]
    sub c
    adc $c9
    or $f5
    ld a, [$fcfb]
    db $fd
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
    nop
    rst $38
    nop
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
    add b
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$39
    call c, $dce3
    db $e3
    call c, $dce3
    db $e3
    ld hl, sp-$19
    cp b
    rst $00
    ld a, b
    add a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
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
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    inc c
    inc c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc c
    inc e
    dec e
    ld e, $1f
    jr nz, jr_040_5656

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_040_5666

    ld a, [hl+]
    inc e
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_040_5677

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_040_5687

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_040_5656:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec sp
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_040_5666:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec sp
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
    ld h, b

jr_040_5677:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec sp
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
    ld l, a

jr_040_5687:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec sp
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
    ld a, a
    add b
    add c
    add d
    dec sp
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
    dec sp
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
    inc c
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
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    and d
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
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
    inc d
    dec d
    ld d, $17
    jr jr_040_574f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_040_575f

    ld [hl+], a
    inc hl
    inc h
    inc c
    dec h
    ld h, $27
    jr z, jr_040_5770

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_040_5780

jr_040_574f:
    ld [hl-], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld b, $06
    ld b, $05
    ld bc, $0701
    nop

jr_040_575f:
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0606
    ld b, $06
    ld bc, $0002
    nop

jr_040_5770:
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0606
    ld b, $05
    dec b
    rlca
    nop
    nop

jr_040_5780:
    rlca
    ld [bc], a
    nop
    rlca
    rlca
    inc b
    rlca
    ld bc, $0606
    ld b, $06
    ld b, $02
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0601
    nop
    nop
    rlca
    ld [bc], a
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
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
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
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0002
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0002
    nop
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0207
    nop
    nop
    inc bc
    nop
    inc bc
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0002
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    nop
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
    rlca
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    pop af
    pop af
    ei
    ei
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $30
    rst $30
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $18
    rst $18
    rst $38

jr_040_58c3:
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    db $fd
    call z, $d9cc
    reti


    ld d, b
    ld d, b
    ld a, [$f8fb]
    ld sp, hl
    ld hl, sp-$07
    cp [hl]
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
    ld hl, sp-$01
    ld a, [c]
    ei
    db $e4
    rst $38
    nop
    nop
    inc a
    nop
    db $76
    inc h
    ld e, d
    rst $38
    ld bc, $07af
    rst $38
    rst $38
    rst $18
    daa
    rst $38
    rlca
    ccf
    add a
    cpl
    add a
    add h
    inc l
    sub d
    jr z, jr_040_58c3

    ld [bc], a
    rrca
    rrca
    rst $38
    rst $38
    dec a
    cp h
    sub d
    ld b, l
    ld [hl], c
    adc d
    ld sp, $758a
    adc d
    pop af
    ld e, $fc
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $20
    ld [bc], a
    rst $38
    sbc [hl]
    rst $38
    sbc $ef
    cp $ef
    cp $e7
    db $fc
    ld [hl], a
    jr @+$01

    nop
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, b
    nop
    nop
    nop
    ld d, a
    nop
    add b
    nop
    rrca
    nop
    ldh [$1f], a
    add b
    ld a, a
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
    rst $30
    ld [$04fb], sp
    ld e, l
    ld e, a
    ld e, $1f
    ld a, $3e
    ccf
    ccf
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, [$f2fb]
    di
    pop af
    pop af
    pop af
    pop af
    ld sp, hl
    ei
    ld a, [c]

jr_040_5997:
    ei
    rst $38
    rst $38
    sbc $df
    adc a
    adc a
    adc l
    adc a
    sbc [hl]
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    db $fd
    db $fd
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jr nz, jr_040_5997

    sbc a
    pop bc
    ld a, $d5
    ld a, [hl+]
    pop de
    xor [hl]
    rst $38
    add b
    rst $38
    add b
    call nc, $ffeb
    ld b, b
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, [$f0e5]
    ld a, a
    ld hl, sp+$77
    rst $38
    ld [hl], b
    rst $28
    ld [hl], b
    ret nz

    ld a, a
    ei
    inc b
    rst $38
    ld bc, $fafd
    db $f4
    ld a, e
    pop af
    ld l, $7f
    ldh a, [$38]
    ldh a, [$3a]
    ldh a, [$32]
    ldh a, [rNR14]
    db $eb
    dec bc
    rst $38
    dec sp
    db $fc
    ccf
    ld hl, sp-$08
    ld hl, sp-$04
    ld a, [$fafc]
    ld hl, sp-$08
    db $fd
    db $fd
    rst $38
    rst $38
    cp $fd
    db $fd
    ld a, [hl]
    ld a, e
    ld a, b
    inc a
    ld a, $3f
    inc a
    ccf
    inc a
    inc a
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ei
    ld hl, sp-$01
    ld hl, sp-$04
    ld a, [$fcfa]
    ld a, [$f8f9]
    ld a, [$ffff]
    rst $38
    rst $38
    db $fc
    db $fc
    cp $f9
    ld hl, sp-$08
    ld a, [$fcfa]
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    rst $38
    db $fc
    cp $fe
    cp $fe
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    nop
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    cpl
    ld c, b
    ld l, e
    ld bc, $003f
    ld e, $00
    ld a, $80
    cp a
    nop
    ccf
    ld b, c
    ld e, a
    add b
    or $00
    pop af
    nop
    pop af
    add d
    ei
    nop
    ei
    adc b
    ld sp, hl
    db $10
    or a
    nop
    adc a
    nop
    sbc a
    sub b
    sbc a
    ld b, b
    rst $18
    sub b
    cp a
    ld b, b
    db $fd
    add b
    ld hl, sp-$80
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, [hl+]
    push de
    ld c, d
    or l
    ld e, d
    and l
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    xor e
    ld d, h
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    cp $ff
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
    ret nz

    rst $38
    nop
    rst $38
    dec e
    di
    rst $28
    ld l, l
    di
    push af
    ld a, [hl+]
    ld b, b
    inc d
    ld c, [hl]
    db $10
    ld c, $60
    add $31
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    cp h
    ld b, e
    nop
    ld [$34e2], sp
    nop
    cp $de
    rst $38
    dec de
    rst $38
    rst $38
    ld a, b
    ld a, [hl]
    ret nz

    ld b, $c0
    inc sp
    ld h, b
    ld d, $63
    sub b
    ld l, d
    add b
    rra
    ld c, e
    rst $38
    rst $38
    rst $38
    db $d3
    ld sp, hl
    push af
    ret nc

    inc d
    ld b, b
    and b
    ld b, b
    add h
    jp nz, $c004

    inc b
    scf
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $2bff

    ld a, [$2dff]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld c, e
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    di
    rst $38
    rst $38
    rst $38
    dec e
    cp $09
    or $fe
    nop
    add b
    nop
    rrca
    nop
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    scf
    rst $28
    rst $38
    db $10
    rst $30
    nop
    rra
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ccf
    nop
    ccf
    nop
    sub $1e
    ld e, $1c
    inc e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, d
    ld d, d
    ld h, b
    ld h, b
    ldh [$e0], a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld l, e
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld sp, hl
    rlca
    rst $20
    ld bc, $00fb
    ld [bc], a
    nop
    ld bc, $7b00
    ld sp, hl
    ld a, l
    db $fd
    ld a, l
    db $fd
    ld a, l
    db $fd
    ld a, l
    db $fd
    rst $38
    ld [bc], a
    ld a, a
    add d
    rst $38
    ld [bc], a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    cp l
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fd
    db $fd
    cp h
    db $fc
    ld e, $3e
    call c, Call_000_1d3c
    db $fd
    jp $c31f


    rra
    rst $20
    rra
    daa
    rst $18
    daa
    rst $38
    rst $28
    rst $38
    rst $20
    rra
    rst $20
    rra
    ccf
    rra
    ld e, a
    ccf
    rra
    rra
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld e, a
    ccf
    rrca
    cpl
    rra
    rrca
    ccf
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $18
    xor a
    cp a
    rrca
    rra
    cpl
    sbc a
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    add a
    rla
    rst $20
    add a
    rlca
    rst $10
    rst $10
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    xor a
    xor a
    rlca
    rlca
    rlca
    rlca
    daa
    rlca
    inc de
    inc de
    rlca
    rlca
    inc de
    inc bc
    inc bc
    inc bc
    rrca
    inc de
    rrca
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    add b
    add b
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
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
    cp d
    nop
    rst $38
    ei
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, b
    rst $38
    jr @+$1a

    and b
    and b
    pop bc
    pop bc
    jp $c3c3


    jp $8181


    add c
    add c
    ld b, d
    ld b, d
    jr jr_040_5c8a

    inc e
    inc e
    inc e
    inc e
    jr jr_040_5c90

    ld [$1408], sp
    inc d
    ld [c], a
    ld [c], a
    pop hl
    pop hl
    pop hl
    pop hl
    ld b, b
    ld b, b
    ret nz

    ret nz

    pop hl
    pop hl
    ld c, $0e

jr_040_5c8a:
    inc c
    inc c
    ld c, $0e
    inc c
    inc c

jr_040_5c90:
    inc c
    inc c
    ld c, $0e
    ld [hl], b
    ld [hl], b
    db $f4
    db $f4
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
    cp $fe
    cp $fe
    or $f6
    add sp, -$18
    ldh a, [$f0]
    or b
    or b
    ld [hl], b
    rst $38
    jr nc, jr_040_5d33

    ld [hl], b
    ld a, a
    ld b, a
    ld a, a
    rlca
    ccf
    ld h, $3f
    inc hl
    ccf
    ld a, [hl-]
    rst $38
    add c
    ld a, a
    inc bc
    db $fc
    add e
    ld a, l
    add e
    ld a, h
    ld bc, $037f
    ld a, h
    ld [bc], a
    ld a, l
    ld [hl], d
    dec c
    ccf
    ld b, b
    ld c, b
    scf
    ld c, d
    inc [hl]
    ld b, h
    ld a, [hl-]
    ld c, e
    inc [hl]
    ld b, l
    ld a, [hl-]
    ld c, e
    inc [hl]
    dec hl
    inc d
    add hl, bc
    ld [hl], $05
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec h
    ld a, [de]
    dec a
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    ld h, b
    rra
    rst $30
    ret nz

    rst $00
    ret nz

    rst $18
    ret nz

    xor $c0
    ld [c], a
    ldh [$f1], a
    ret nz

    db $fd
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

jr_040_5d1e:
    ld a, $c0
    db $fc
    add e
    db $fc
    add e
    ld a, h
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rlca
    ld hl, sp+$0f

jr_040_5d33:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rNR34]
    pop hl
    inc e
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_040_5d1e

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00c5
    rst $08
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    ld d, h
    ld d, h
    jr c, jr_040_5d9c

    jr c, jr_040_5d9e

    db $10
    db $10
    db $10
    db $10
    jr c, jr_040_5da4

    push bc
    push bc
    jp $c3c3


    jp $8383


    add c
    add c
    ld b, e
    ld b, e
    inc e
    inc e
    inc e
    inc e
    jr jr_040_5d96

    ld [$1808], sp
    jr jr_040_5d97

    inc d
    pop bc
    pop bc
    db $e3
    db $e3
    pop hl
    pop hl
    pop bc
    pop bc
    ld b, c
    ld b, c
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    ld e, $1e
    inc c
    inc c

jr_040_5d96:
    inc c

jr_040_5d97:
    inc c
    inc c
    inc c
    ld d, d
    ld d, d

jr_040_5d9c:
    pop hl
    pop hl

jr_040_5d9e:
    pop hl
    pop hl
    ld b, b
    ld b, b
    ld h, b
    ld h, b

jr_040_5da4:
    dec b
    dec b
    adc [hl]
    adc [hl]
    ld c, $0e
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    rst $08
    inc bc
    adc a
    dec bc
    adc a
    rst $08
    rst $18
    rst $18
    rst $18
    ld a, [$f9fa]
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
    nop
    nop
    cp a
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
    ldh [$e0], a
    rlca
    rlca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $10
    rst $38
    add b
    rst $38
    add c
    rst $38
    cp a
    rst $38
    add c
    rst $38
    nop
    rst $38
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

jr_040_5df8:
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rra
    ldh [rIE], a
    nop
    db $fd
    ld [bc], a
    ret


    ld [hl], $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    call nz, $cf3b
    jr nc, jr_040_5df8

    jr nz, @+$01

    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
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
    ldh [rP1], a
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, b
    sub b
    sub b
    rrca
    rrca
    adc [hl]
    adc [hl]
    ld b, $06
    inc b
    inc b
    ld b, $06
    xor d
    xor d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nz, jr_040_5e7a

    jr nc, @+$32

    ld d, d
    ld d, d
    add a
    add a
    add a
    add a
    add [hl]
    add [hl]
    add d
    add d
    ld b, $06
    cp c
    cp c
    jr nc, jr_040_5e9c

    jr nc, jr_040_5e9e

    jr nc, jr_040_5ea0

    jr nc, jr_040_5ea2

    jr nc, jr_040_5ea4

    ld b, d
    ld b, d
    rst $00
    rst $00
    add a
    add a

jr_040_5e7a:
    add d
    add d
    add e
    add e
    ld b, l
    ld b, l
    jr c, jr_040_5eba

    jr c, jr_040_5ebc

    jr nc, jr_040_5eb6

    jr jr_040_5ea0

    jr nc, jr_040_5eba

    jp $c3c3


    jp $c3c3


    nop
    ld a, h
    nop
    inc a
    nop
    rst $38
    nop
    rst $20
    nop
    rst $00
    nop
    rst $28

jr_040_5e9c:
    ld [de], a
    rst $30

jr_040_5e9e:
    dec bc
    rst $28

jr_040_5ea0:
    ld a, $7e

jr_040_5ea2:
    inc l
    inc a

jr_040_5ea4:
    ld a, $3e
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $20
    rst $30
    rst $30
    nop
    rst $38
    inc bc
    db $fc
    dec sp
    nop

jr_040_5eb6:
    rst $38
    nop
    rst $38
    nop

jr_040_5eba:
    rst $38
    nop

jr_040_5ebc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld e, a
    nop
    rst $38
    nop
    dec a
    rst $38
    ld [$b8ff], a

jr_040_5ed5:
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld c, c
    rst $38
    inc bc

jr_040_5edd:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    sub b
    ld l, a
    sbc b
    ld h, a
    ret nc

    cpl
    nop

jr_040_5ef3:
    rst $38
    jr jr_040_5edd

    ld [$08f7], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr jr_040_5ef3

    jr c, jr_040_5ed5

    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    ld [bc], a
    rst $38
    nop
    or b
    ld c, a
    ld hl, $00de
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
    ldh a, [$80]
    ld a, a
    ei
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    set 1, e
    add c
    add c
    ld a, [bc]
    ld a, [bc]
    inc e
    inc e
    inc e
    inc e
    ld [$0808], sp
    ld [$1414], sp
    pop hl
    pop hl
    db $e3
    db $e3
    pop hl
    pop hl
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, b
    ld d, b
    pop hl
    pop hl
    pop hl
    pop hl
    ld b, c
    ld b, c
    ld h, c
    ld h, c
    and b
    and b
    add h
    add h
    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    jr z, jr_040_5f98

    ld [hl], c
    ld [hl], c
    ld h, c
    ld h, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    inc b
    inc b
    adc [hl]
    adc [hl]
    inc c
    inc c
    nop
    ei
    nop
    ei
    nop
    rst $18
    ld [bc], a
    sbc [hl]
    ld [bc], a
    adc a
    rlca
    rst $18
    sbc a
    rst $18
    rst $28
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, c
    ld sp, hl
    ei
    ei
    ld sp, hl
    ld sp, hl

jr_040_5f98:
    rst $38
    rst $38
    rst $08
    rst $08
    rst $08
    rst $08
    rst $18
    rst $18
    ld a, a
    add b
    ld l, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIE]
    db $ec
    rst $38
    ld h, [hl]
    rst $38
    inc [hl]
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [rIF], a
    ldh a, [$c7]
    jr c, jr_040_5fe0

    ld a, [$ff00]
    nop
    rst $38

jr_040_5fe0:
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
    ret z

    scf
    sub b
    ld l, a
    or b
    ld c, a
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    pop bc
    ld a, $00
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
    xor $00
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    rlca
    cp a
    cp a
    nop
    ld a, c
    nop
    ei
    nop
    rst $08
    nop
    rst $00
    nop
    rst $08
    nop
    rst $08
    jr nc, @+$32

    ld c, d
    ld c, d
    add [hl]
    add [hl]
    add a
    add a
    add [hl]
    add [hl]
    add d
    add d
    add [hl]
    add [hl]
    db $10
    db $10
    jr nc, jr_040_6072

    jr c, jr_040_607c

    db $10
    db $10
    jr nc, jr_040_6078

    and d
    and d
    rst $00
    rst $00
    add a
    add a
    add [hl]
    add [hl]
    nop
    ld a, l
    nop
    ld a, e
    ld bc, $00eb
    rst $00
    nop
    rst $00
    nop
    rst $28
    nop
    rst $28
    nop
    rst $10
    nop
    jr c, jr_040_6063

jr_040_6063:
    jr c, jr_040_6065

jr_040_6065:
    ld a, l
    nop
    ld a, l
    nop
    cp $01
    rst $28
    dec b
    rst $00
    rlca
    rst $20
    rlca
    rst $28

jr_040_6072:
    ld [hl], a
    rst $30
    ld e, l
    ld a, l
    inc a
    ld a, h

jr_040_6078:
    inc a
    inc a
    ld a, l
    ld a, l

jr_040_607c:
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $20
    rst $20
    rst $28
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    dec a
    dec a
    inc a
    inc a
    rst $38
    rst $38
    ld bc, $7bff
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    ld a, l
    nop
    db $fc
    nop
    xor $00
    add hl, de
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    dec bc
    rst $38
    nop
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
    ret nc

    cpl
    ldh [$1f], a
    sbc $21
    ld c, e
    or b
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rNR10]
    add sp, $04
    db $fc
    sbc b
    ld h, h
    cp $02
    or [hl]
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
    ld [bc], a
    rst $38
    nop
    rst $38

jr_040_6110:
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $30
    ld d, a
    rst $30
    ld a, $be
    ld c, $1e
    inc b
    ld a, $06
    cp [hl]
    ld c, $be
    dec c
    ld a, l
    inc bc
    rst $20
    inc bc
    db $e3
    inc bc
    rst $30
    inc bc
    rst $30
    inc bc
    rst $30
    ld bc, $04bf
    inc e
    ld b, $1e
    ld [bc], a
    cp [hl]
    ld [bc], a
    sbc [hl]
    dec b
    ld a, a
    inc bc
    rst $30
    ld bc, $13e3
    rst $30
    rst $30
    jr z, @-$5b

    ld e, h
    ld bc, $3ffe
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    xor a
    ld b, b
    jr c, jr_040_6110

    sbc e
    ld h, b
    xor e
    ld b, b
    cp e
    ld b, b
    xor e
    ld b, b
    cp d
    ld b, b
    xor d
    ld b, b
    xor b
    ld b, b
    xor b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    add b
    ld h, b
    sub b
    ld l, b
    and c
    ld e, [hl]
    ldh [$0b], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $00
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rra
    rst $38
    call Call_040_50ff
    rst $38
    and [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    cp b
    nop
    ldh [rSB], a
    add b
    rra
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
    rlca
    nop
    inc bc
    nop
    inc bc
    nop

jr_040_61d2:
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
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$0e
    cp $07
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $18
    rst $18
    xor a
    xor a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    ei
    ei
    ld a, e
    ld a, e
    ld sp, hl
    ld sp, hl
    ei
    ei
    rst $38
    rst $38
    rst $18
    rst $18
    sbc a
    sbc a
    sbc $de
    rst $18
    jr nz, jr_040_61d2

    ld h, b
    ld d, a
    xor b
    db $eb
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr nz, @+$42

    nop
    ld h, b
    jr nz, jr_040_6284

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    jr nz, jr_040_628c

    nop
    ld b, b
    nop
    ld b, b
    jr nz, @+$42

    nop
    ld b, b
    jr nz, jr_040_6296

    nop
    ld b, b
    jr nz, jr_040_629a

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or $f6
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $00
    pop bc
    nop
    jp nc, $ee00

    rst $38
    ld a, e
    rst $38

jr_040_6284:
    call nz, $ecff
    rst $38
    jr c, @+$01

    dec e
    rst $38

jr_040_628c:
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_040_6296:
    nop
    rst $38
    nop
    rst $38

jr_040_629a:
    nop
    rst $38
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
    add b
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_040_62c2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc e
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld bc, $02ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, l
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
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, a
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ld e, a
    add b
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    add b
    ld e, a
    add b
    rra
    ret nz

    ld e, a
    add b
    ld e, a
    add b
    rra
    add b
    rra
    add b
    sbc a
    nop
    rra
    jr nz, @+$21

    jr nz, jr_040_63b1

    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jp nz, $e7ff

    rst $38
    jr nc, jr_040_6362

jr_040_6362:
    sbc d
    nop
    dec [hl]
    nop
    dec de
    nop
    add hl, de
    nop
    dec e
    jr nz, jr_040_638a

    jr nz, jr_040_63a7

    nop
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop
    ld [$a400], sp
    nop
    ld d, b
    nop
    ld e, [hl]
    nop
    ld b, a
    nop
    sbc $ff
    rst $28
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    xor [hl]
    rst $38

jr_040_638a:
    ld de, $15ff
    rst $38
    rst $30
    rst $38
    or a
    rst $38
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

jr_040_63a7:
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_040_63b1:
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
    cp $fe
    cp $fe
    cp $fe
    or $f6
    sbc $de
    sbc $de
    cp $ff
    cp $ff
    ld hl, sp-$05
    ld a, [$ecfb]
    rst $28
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    cp $f4
    or $f2
    or $d4
    rst $10
    db $fc
    cp $fc
    rst $38
    cp $ff
    ld hl, sp-$05
    ld hl, sp-$05
    ld a, [$f8fb]
    ei
    ld a, [$fefb]
    rst $38
    db $fd
    db $fd
    db $e4
    db $e4
    db $fc
    db $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, [$f6fb]
    or $ff
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    db $ed
    db $ed
    db $ed
    db $ed
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
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
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
    ld a, $01
    ld e, $01
    add a
    nop
    pop hl
    nop
    ld hl, sp+$00
    cp $00
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
    cp a
    rra
    ld a, a
    rrca
    rst $28
    inc bc
    ld l, e
    ld bc, $ff8e
    rlca
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
    xor [hl]
    rst $38
    cp c
    rst $38
    jr c, @+$01

    cp h
    rst $38
    rst $28
    rst $38
    and l
    rst $38
    ld h, d
    rst $38
    ld hl, $19ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $001f
    ld bc, $00f0
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
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
    rra
    rra
    rst $38
    rst $38
    ld a, a
    nop
    rst $38
    ld bc, $07ff
    ld a, [$fa0f]
    rra
    cp d
    ld a, a
    call z, $eeff
    rst $38
    add hl, de
    add hl, de
    inc de
    inc de
    add e
    add e
    inc de
    inc de
    ld c, $0e
    cpl
    cpl
    rst $08
    rst $08
    rst $08
    rst $08
    rst $00
    rst $00
    set 1, e
    rst $08
    rst $08
    ld b, e
    ld b, e
    scf
    scf
    inc sp
    inc sp
    inc sp
    inc sp
    inc de
    inc de
    inc hl
    inc hl
    rla
    rla
    dec de
    dec de
    call $c9cd
    ret


    set 1, e
    adc c
    adc c
    adc c
    adc c
    ld c, c
    ld c, c
    ld h, $26
    daa
    daa
    ld h, $26
    inc h
    inc h
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    adc d
    adc d
    nop
    ld h, $00
    ld h, [hl]
    nop
    ld l, [hl]
    nop
    ld l, a
    add b
    rst $28
    add b
    rst $30
    add b
    or e
    nop
    sbc d
    and b
    or d
    add b
    db $db
    ret nz

    ei
    ret nz

    ei
    ld h, b
    ld l, a
    ld h, b
    ld l, l
    ld b, b
    ld l, l
    ldh [$ed], a
    ldh [$ef], a
    add sp, -$11
    cp b
    cp a

jr_040_6546:
    or b
    cp a
    or b
    or e
    or [hl]
    or [hl]
    ld a, [$fffe]
    rst $38
    cp $01
    cp $01
    rst $18
    jr nz, jr_040_6546

    db $10
    db $fd
    ld [bc], a
    ccf
    nop
    sub a
    nop
    db $e3
    nop
    dec b
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    ld e, a
    rlca
    add a
    inc bc
    rst $00
    ld bc, $0039
    ld [de], a
    nop
    add hl, de
    rst $38
    dec b
    rst $38
    rst $00
    rst $38
    ld b, e
    rst $38
    ld a, b
    rst $38
    sub a
    rst $38
    ld l, a
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ld l, l
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rrca
    ld a, a
    dec bc
    rra
    ld bc, $0007
    ld bc, $0000
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
    cp $00
    rst $38
    nop
    db $fc
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
    inc bc
    inc bc
    ld c, $0f
    inc a
    ccf
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    add b
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$8000], sp
    nop
    nop
    nop
    nop
    nop
    db $10
    cp $fe
    rst $18
    rst $18
    db $ed
    db $ed
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
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

Jump_040_65ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp a
    cp a
    rst $38
    rst $38
    cp $fe
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ee
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
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    cpl
    cpl
    sub a
    sub a
    rst $08
    rst $08
    adc a
    adc a
    adc l
    adc l
    adc h
    adc h
    adc b
    adc b
    adc h
    adc h
    ld [$2508], sp
    dec h
    ld h, e
    ld h, e
    inc sp
    inc sp
    ld h, e
    ld h, e
    inc hl
    inc hl
    inc hl
    inc hl
    add e
    add e
    adc c
    adc c
    sbc b
    sbc b
    sbc h
    sbc h
    nop
    rst $30
    add b
    rst $28
    ret nz

    rst $30
    ret nz

    rst $28
    and b
    cp a
    sub b
    sbc h
    sbc b
    sbc b
    ld hl, sp-$08
    ld hl, sp+$07
    ld a, l
    ld [bc], a
    sbc a
    nop
    rst $20
    nop
    ld sp, hl
    nop
    cp $00
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
    db $fc
    cp $fc
    ld a, l
    jr c, jr_040_66fd

    jr @+$06

    nop
    ld b, l
    ld bc, $01c5
    db $e4
    nop
    db $fd
    nop
    inc [hl]
    nop
    sbc l
    nop
    ld b, d
    rst $38
    ld [de], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [hl], $ff
    ld hl, sp-$01
    ld h, b
    rst $38
    ld [hl], l
    rst $38
    ld h, h
    rst $38
    ld b, c
    ld a, a
    rrca
    ccf
    jr jr_040_66c7

    ld bc, $090f
    rrca
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_040_66ff

    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop

jr_040_66c7:
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
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
    rst $38
    rst $28
    rst $28
    rst $30
    rst $30
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $28
    rst $28
    rst $38
    rst $38
    cp $fe
    push af
    push af
    rst $38

jr_040_66fd:
    rst $38
    rst $38

jr_040_66ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    scf
    scf
    ld d, c
    ld d, c
    sub c
    sub c
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    adc h
    adc h
    ld d, h
    ld d, h
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    ld h, e
    ld h, e
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $0321
    inc bc
    db $e4
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    ccf
    rst $38
    rlca
    ld a, a
    nop
    cpl
    nop
    rst $28
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    nop
    add b
    nop
    nop
    nop
    add a
    nop
    rst $30
    nop
    ccf
    nop
    sbc a
    add b
    ret nz

    ret nz

    ld hl, sp+$70
    ld c, d
    nop
    sbc b
    nop
    ld l, d
    nop
    ld l, h
    rst $38
    inc [hl]
    rst $38
    inc b
    rst $38
    ld b, $ff
    dec b
    rst $38
    inc h
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    sbc a
    rst $38
    jp c, $0fff

    rst $38
    add a
    rst $38
    rlca
    rst $38
    add b
    rst $38
    and c
    rst $38
    jp Jump_040_65ff


    rst $38
    ld [de], a
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    jr @+$01

    ld e, a
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    or h
    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $28
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
    cp $fe
    rst $10
    rst $10
    cp $fe
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    cp a
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
    db $fd
    db $fd
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
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    add [hl]
    ld b, [hl]
    ld b, [hl]
    add hl, hl
    add hl, hl
    ld sp, $3031
    jr nc, jr_040_6879

    jr nc, jr_040_684b

jr_040_684b:
    nop
    nop
    nop
    jr nz, jr_040_6870

    nop
    nop
    ld h, b
    ld h, b
    add h
    add h
    add b
    add a
    add b
    adc a
    ld c, $1f
    dec c
    ccf
    add hl, de
    ccf
    daa
    rst $00
    ld l, h
    add h
    ld c, e
    add e
    ld e, c
    add c
    ld l, d
    add d
    xor h
    inc b
    xor b
    nop
    xor h
    inc b

jr_040_6870:
    db $d3
    inc bc
    ret nc

    nop
    call c, $d004
    nop
    ld [hl], h

jr_040_6879:
    inc b
    dec a
    dec b
    stop
    ldh a, [rP1]
    or b
    nop
    ld [hl], b
    nop
    ret z

    ld [$3030], sp
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_040_68be

    ld a, b
    ld [$68e8], sp
    ldh a, [$f0]
    ldh a, [rSVBK]
    or b
    jr nc, jr_040_68c9

    db $10
    ld b, b
    nop
    jp nz, $a202

    ld [bc], a
    jp nc, $f812

jr_040_68a3:
    jr jr_040_68a3

    ld e, $ff
    rra
    ccf
    rra
    ccf
    rra
    rst $00
    rlca
    ld [hl], e
    inc bc
    add hl, sp
    ld bc, $01c9
    add d
    nop
    ld d, e
    nop
    ld sp, $f000
    nop
    or b
    nop

jr_040_68be:
    jr z, jr_040_68c0

jr_040_68c0:
    inc sp
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    db $76
    rst $38
    rst $08

jr_040_68c9:
    rst $38
    ld a, e
    rst $38
    db $f4
    rst $38
    or [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    db $fd
    db $fd
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
    cp a
    cp a
    rst $38
    rst $38
    cp $fe
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
    rst $18
    rst $18
    rst $30
    rst $30
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    cp a

jr_040_692d:
    cp a
    rst $38
    rst $38
    db $dd
    db $dd
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, d
    ld c, d
    pop af
    pop af
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    ld a, b
    add a
    xor a
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, a
    db $d3
    db $d3
    add hl, sp
    add hl, sp
    adc $ce
    add hl, sp
    add hl, sp
    rlca
    rlca
    add c
    ld a, [hl]
    ldh a, [rIF]
    inc c
    jp $8c73


    ld b, c
    sbc [hl]
    nop
    rst $18
    ret nz

    rra
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld b, d
    sbc l
    inc l
    sub e
    ld b, a
    sbc b
    ld hl, $609e
    sbc a
    jr nz, jr_040_692d

    add b
    ccf
    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    pop bc
    push bc
    call nz, $c4c5
    jp nc, $dbd2

    db $db
    adc $ce
    jp $c1c3


    pop bc
    db $f4
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ei
    ld hl, sp-$43
    cp h
    sbc $de
    rst $28
    rst $28
    rst $38
    rst $38
    cp l
    dec a
    sbc [hl]
    ld e, $ff
    rra
    rla
    rlca
    dec sp
    inc bc
    rra
    ld bc, $0007
    add e
    nop
    ld bc, $0100
    nop
    ld [hl], h
    nop
    call c, $eb00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $28
    rst $28
    ld [hl], l
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ei
    ei
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $18
    rst $18
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
    cp a
    cp a
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
    cp a
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
    db $fd
    db $fd
    ldh a, [$f0]
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
    jr nz, jr_040_6a68

    ld a, c
    ld a, c
    ld a, [$fcfa]
    db $fc
    db $fc
    db $fc
    nop
    rlca
    nop
    add a
    nop
    xor a
    nop
    adc a
    nop
    rlca
    nop
    add e
    nop
    ret nz

    ret nz

    ldh [$c0], a
    ld [c], a
    ret nz

    rst $00
    ret nz

    rst $00
    add b
    add d

jr_040_6a68:
    ldh [$f0], a
    ld a, $3e
    rst $00
    rst $00
    jr c, jr_040_6aa8

    adc $ce
    or l
    or l
    ld e, $1e
    inc bc
    inc bc
    jp nz, Jump_000_30c2

    jr nc, jr_040_6a8b

    ld c, $03
    inc bc
    ldh [$e0], a
    ret c

    jr jr_040_6af9

    inc b
    cp d
    add d
    ldh [$e0], a
    ld [hl], h

jr_040_6a8b:
    ld [hl], h
    ld a, [hl-]
    ld a, [hl-]
    ld c, $0e
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld b, b
    ld b, b
    sub b
    db $10
    jp nz, $3402

    inc b
    ld l, h
    ld l, h
    db $10
    db $10
    ret nz

    ret nz

    ld [$3fea], a
    ccf

jr_040_6aa8:
    rst $08
    rst $08
    rst $20
    rst $20
    ld [hl], c
    ld [hl], l
    cp h
    inc a
    sbc $1e
    cp a
    sbc a
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    rst $30
    rst $30
    ld a, e
    ld a, e
    cp a
    ccf
    rst $18
    rra
    rst $38
    rrca
    ld a, a
    rlca
    xor a
    inc bc
    xor h
    nop
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38

jr_040_6af9:
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    pop hl
    pop hl
    jp nz, Jump_040_62c2

    ld h, d
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_040_6b5a

    db $10
    db $10
    ld [de], a
    ld [de], a
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
    rlca
    rlca
    inc b
    inc b
    sub $d6
    cp $fe
    nop
    dec c
    ld bc, $0013
    rlca
    inc bc
    rlca
    inc bc
    rrca

jr_040_6b5a:
    inc bc
    rra
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $00
    rst $00
    ld [hl], h
    ld [hl], h
    adc [hl]
    xor [hl]
    ld [hl], c
    ld [hl], c
    ld e, [hl]
    ld e, [hl]
    rla
    rla
    add a
    add a
    ldh [$1f], a
    inc e
    db $e3
    rlca
    ld hl, sp+$02
    db $fd
    ld c, $f9
    ld a, [bc]
    pop af
    ld bc, $13f0
    ldh [$91], a
    ld h, b
    ld a, [c]
    ld bc, $8172
    ld e, $e1
    ld b, $f9
    ld [$10f7], sp
    rst $20
    inc h
    jp $c324


    ld h, $c1
    rst $20
    nop
    rst $00
    nop
    rst $00
    nop
    rst $08
    nop
    rst $00
    nop
    rst $08
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $08
    nop
    adc e
    inc b
    adc b
    rlca
    adc [hl]
    ld bc, $009f
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    nop
    ccf
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$0f

    db $10
    ei
    inc b
    nop
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc bc
    ld b, $07
    ld [$0101], sp
    ld bc, $0901
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    inc bc
    inc bc
    dec bc
    inc c
    dec c
    ld c, $01
    ld bc, $100f
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld de, $0312
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_040_6c0e

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [de]
    dec de
    inc bc
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $03
    inc bc
    daa
    inc bc
    inc bc

jr_040_6c0e:
    jr z, jr_040_6c39

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_040_6c49

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_040_6c59

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
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $4a49
    ld c, e
    ld c, h
    inc bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_040_6c39:
    inc bc
    ld d, c
    ld d, d
    inc bc
    ld d, e
    ld d, h
    ld bc, $0303
    inc bc
    inc bc
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_040_6c49:
    inc bc
    ld e, d
    ld e, e
    inc bc
    ld e, h
    ld bc, $035d
    ld e, [hl]
    inc bc
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_040_6c59:
    inc bc
    ld h, l
    ld h, [hl]
    inc bc
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    dec bc
    inc bc
    ld [hl], d
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
    ld a, a
    add b
    inc bc
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
    ld bc, $8d01
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
    sbc b
    sbc c
    sbc d
    ld bc, $9c9b
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
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    inc bc
    call $cfce
    inc bc
    ret nc

    db $10
    pop de
    jp nc, $03d3

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$03], a
    inc bc
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld bc, $0101
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $01
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0107
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0107
    rlca
    ld bc, $0101
    rlca
    ld b, $01
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    ld b, $06
    rlca
    ld bc, $0101
    ld [bc], a
    rlca
    ld bc, $0707
    rlca
    ld [bc], a
    ld [bc], a
    nop
    inc b
    rlca
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0207
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
    rlca
    ld bc, $0207
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0207
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
    ld b, c
    ld bc, $0207
    ld [bc], a
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
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0207
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
    ld bc, $0107
    rlca
    rlca
    ld [bc], a
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
    ld bc, $0205
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0701
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0101
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
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0005
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
    ld bc, $0101
    ld bc, $ff20
    nop
    rst $38
    db $dd
    ld [hl+], a
    nop
    nop
    sbc $00
    or [hl]
    ld c, c
    adc l
    nop
    and h
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
    nop
    rst $38
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$47ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    add b
    ld b, b
    add b
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    nop
    xor l
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, Jump_000_2fff

    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    pop af
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
    ld bc, $10ff
    rst $38
    xor d
    rst $38
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    ld [$0000], sp
    nop
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    scf
    rst $38
    db $fd
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    dec l
    nop
    nop
    nop
    call nc, Call_040_4000
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    ld c, d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
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
    dec d
    nop
    rst $18
    jr nz, jr_040_704f

    nop
    push af
    rst $38
    ld a, a
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ld [hl], b
    rrca
    jr c, jr_040_7033

    inc a
    inc bc
    ld a, a
    ld bc, $ffc0
    ret nz

jr_040_7033:
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28

jr_040_704f:
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld a, [bc]
    nop
    rrca
    nop
    add hl, bc
    ld b, $f8
    cp $f8
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, [$faf8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$06
    db $fc
    ei
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fc
    cp $fd
    cp $fe
    rst $38
    cp $ff
    cp $ff
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    cp $ff
    ld d, d
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    ld b, $ff
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $007f
    ld a, a
    nop
    rst $18
    rst $18
    rst $38
    rst $18
    rst $08
    rst $28
    rst $00
    rst $30
    add $f6
    sub $c6
    rst $30
    rst $00
    rst $00
    rst $10
    sub $ce
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
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
    nop
    cpl
    db $10
    daa
    ld [$000f], sp
    cpl
    nop
    cp a
    nop
    rst $10
    nop
    dec hl
    inc b
    add sp, -$09
    db $ec
    di
    db $f4
    db $e3
    db $ec
    di
    db $ec
    di
    ld l, b
    rst $30
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh [$7f], a
    inc e
    di
    ld a, $f3
    db $fc
    di
    cp $f3
    db $fc
    di
    db $f4
    ld a, e
    db $f4
    ld a, e
    ldh a, [$7f]
    or [hl]
    ld a, l
    cp c
    ld a, l
    inc [hl]
    ld a, c
    ld b, $f9
    dec e
    ld sp, hl
    ld a, h
    ld sp, hl
    ld a, $f9
    ccf
    ccf
    cp a
    ccf
    cp a
    cp a
    cp [hl]
    ld a, $fc
    cp h
    ld hl, sp+$38
    cp b
    cp b
    ld a, h
    ld a, h
    db $e4
    inc bc
    jp $8300


    nop
    inc bc
    jr nz, @+$05

    ldh [$03], a
    ldh [rSB], a
    ldh [$81], a
    ld h, b
    inc a
    sbc a
    ld b, c
    cp a
    jp $87bf


    rst $38
    adc a
    rst $38
    add e
    rst $38
    adc a
    rst $38
    rst $10
    rst $38
    jr nz, jr_040_7192

jr_040_7192:
    ld d, b
    ld [$1840], sp
    nop
    jr jr_040_7199

jr_040_7199:
    jr jr_040_719b

jr_040_719b:
    jr c, jr_040_71a1

    jr z, jr_040_71a3

    jr jr_040_71a5

jr_040_71a1:
    jr jr_040_71a7

jr_040_71a3:
    jr jr_040_71a5

jr_040_71a5:
    inc e
    nop

jr_040_71a7:
    inc a
    jr nz, jr_040_71c6

    jr nz, jr_040_71c8

    jr nz, jr_040_71ca

    ld de, $061c
    jr jr_040_71b9

    jr jr_040_71bb

    jr jr_040_71c3

    db $10
    dec b

jr_040_71b9:
    db $10
    inc e

jr_040_71bb:
    ld bc, $010c
    ld a, [bc]
    ld bc, $fcfc
    db $fc

jr_040_71c3:
    db $fc
    db $fc
    db $fc

jr_040_71c6:
    db $fc
    db $fc

jr_040_71c8:
    ld hl, sp-$08

jr_040_71ca:
    ld hl, sp-$08
    ei
    ld hl, sp-$09
    ldh a, [$cf]
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
    rst $38
    ld a, a
    ld a, a
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    ei
    ei
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
    add b
    add b
    ccf
    inc b
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    db $e3
    ccf
    ld [c], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    and b
    rra
    and b
    rra
    ld h, b
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh a, [rIF]
    or b
    rrca
    ldh a, [rIF]
    or b
    rrca
    ldh a, [rIF]
    or b
    ld c, a
    or b
    ld c, a
    cp b
    ld b, a
    or b
    rrca
    ret nc

    rrca
    ret nc

    rrca
    cp b
    rlca
    ldh a, [rIF]
    cp b
    ld b, a
    jp c, $f225

    dec c
    db $eb
    inc b
    rst $28
    inc b
    rst $18
    inc b
    sbc a
    nop
    rst $18
    nop
    ld [hl], a
    nop
    rst $30
    nop
    db $fd
    ld [bc], a
    or b
    nop
    jr nc, jr_040_726a

jr_040_726a:
    stop
    stop
    ld [$e800], sp
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [$0810], sp
    db $10
    jr jr_040_7282

jr_040_7282:
    jr jr_040_7284

jr_040_7284:
    ld [$1010], sp
    ld [$0811], sp
    ld [bc], a
    ld de, $0112
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    rlca
    nop
    rlca
    ld c, b
    rlca
    ld [$a007], sp
    rrca
    sub b
    rrca
    ld d, b
    rrca
    nop
    rra
    ld b, b
    rra
    jr nz, @+$21

    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    di
    di
    di
    di
    pop af
    pop af
    ldh a, [$f0]
    pop hl
    pop hl
    pop hl
    pop hl
    ldh [$e0], a
    pop hl
    pop hl
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    inc b
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
    add h
    add h
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld de, $1311
    inc de
    ei
    ei
    push af
    push af
    and $ee
    rst $38
    rst $38
    cp a
    cp a
    sbc a
    sbc a
    cp a
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0005]
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
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0b0b
    ld [bc], a
    rlca
    ld b, $0f
    inc bc
    rrca
    dec bc
    rrca
    dec bc
    rra
    rla
    ccf
    rrca
    rra
    sbc a
    cp a
    ld l, a
    ld l, a
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    rst $18
    rst $18
    sbc a
    sbc a
    adc a
    adc a
    adc a
    adc a
    sbc a
    ld h, b
    rst $18
    jr nz, jr_040_73d5

jr_040_73d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld e, a
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
    ld bc, $0001
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    push bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    ld [$0108], sp
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
    ld bc, $0100
    jr z, jr_040_7467

    inc hl
    inc hl
    ld de, $0a13
    ld a, [bc]
    ld bc, $0501
    dec b
    daa
    daa
    daa
    daa
    cpl
    cpl
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    push hl
    push hl
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop hl
    pop hl
    rst $30
    rst $30
    pop hl
    pop hl
    rst $30
    rst $30
    rst $38

jr_040_7467:
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38

jr_040_7471:
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
    db $d3
    db $d3
    pop hl
    pop hl
    pop hl
    ld e, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_040_7471

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
    ld b, b
    ld b, b
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
    add sp, -$01
    ret nz

    rst $38
    add d
    rst $38
    ldh [rIE], a
    adc b
    rst $38
    rra
    rst $38
    dec b
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld [hl], a
    rst $38
    ld [hl], c
    rst $38
    dec e
    rst $38
    ld h, a
    rst $38
    or $ff
    ld c, $ff
    rlca
    rst $38
    ld a, [bc]
    rst $38
    ld e, $ff
    rst $08
    rst $38
    rst $00
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld c, $ff
    dec b
    rrca
    add hl, bc
    rrca
    daa
    cpl
    add c
    add a
    ld [$020b], sp
    ld [bc], a
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $16
    ld d, $1f
    rra
    dec c
    dec e
    ld b, a
    ld c, a
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    adc a
    rst $08
    sub a
    or a
    rra
    ld a, a
    db $fc
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    cp [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    xor a
    xor a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $28
    rst $28
    cp a
    cp a
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    xor a

jr_040_754b:
    xor a
    sbc a
    sbc a
    rst $08
    rst $08
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ei
    ei
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    nop
    nop
    rst $38
    jr nz, jr_040_754b

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
    inc b
    inc b
    ld bc, $0001
    nop
    ld b, b
    ld b, b
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
    add h
    add b
    jr nc, jr_040_7590

jr_040_7590:
    ld b, e
    rst $38
    add hl, hl
    rst $38
    ld a, $ff
    dec b
    rst $38
    rlca
    rst $38
    ld de, $e1ff
    rst $38
    ld e, e
    rst $38
    add b
    rst $38
    adc b
    rst $38
    add hl, hl
    rst $38
    db $e3
    rst $38
    sub a
    rst $38
    ld [c], a
    rst $38
    or [hl]
    rst $38
    ld sp, $fbff
    rst $38
    inc e
    rst $38
    sbc c
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    rst $30
    rst $30
    ld [hl], a
    rst $30
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    db $db
    db $db
    di
    di
    pop hl
    pop hl
    pop hl
    pop hl
    di
    di
    di
    di
    rst $30
    rst $30
    di
    di
    di
    di
    db $ed
    db $ed
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $30
    db $e3
    db $e3
    rst $20
    rst $20
    db $e3
    db $e3
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $28
    rst $28
    rst $30
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
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    nop
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    ld b, $00
    rst $38
    add d
    ld a, l
    inc b
    ei
    nop
    rst $38
    nop
    nop
    inc bc
    inc bc
    ld bc, $8001
    add b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ldh [$e0], a
    inc b
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    db $fd
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $30
    rst $38
    jp c, $a7ff

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    rra
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc l
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    di
    di
    pop af
    pop af
    pop af
    pop af
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    cp a
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
    rst $30
    rst $30
    rst $38
    rst $38
    rst $28
    rst $28
    di
    di
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    rst $38
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

jr_040_771d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld bc, $0100
    nop
    inc bc
    nop
    ld c, [hl]
    or c
    inc bc
    db $fc
    nop
    rst $38
    jr nz, jr_040_771d

    ldh a, [rIF]
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld bc, $0100
    nop
    dec bc
    nop
    rra
    nop
    ld e, a
    ld b, b
    ldh [rIE], a
    db $10
    rst $38
    cp [hl]
    rst $38
    adc a
    rst $38
    rla
    rst $38
    ld e, $ff
    rrca
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld a, d
    rst $38
    inc d
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    dec sp
    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    rst $00
    rst $38
    jp $e8ff


    rst $38
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld b, $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $08
    rst $08
    rst $18
    rst $18
    rst $00
    rst $00
    rst $10
    rst $10
    rst $28
    rst $28
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
    rst $38
    rst $38
    db $fd
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
    cp a
    cp a
    xor a
    xor a
    cp a
    cp a
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
    cp a
    cp a
    rst $38
    rst $38
    ld e, a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    sbc h
    inc bc
    inc c
    inc bc
    ld e, $01
    ccf
    nop
    ld h, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    xor a
    nop
    ccf
    nop
    cpl
    nop
    xor a
    nop
    xor a
    nop
    or a
    nop
    sbc [hl]
    ld bc, $01ae
    cp [hl]
    ld bc, $0176
    ld a, d
    ld bc, $01be
    ld a, $01
    ld a, [$6e01]
    add c
    ld l, $c1
    ld a, $3e
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    and e
    inc bc
    pop de
    ld bc, $00f8
    db $ec
    nop
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    cp $ff
    adc $ff
    ld b, a
    rst $38
    jr z, @+$01

    ld l, h
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    jp c, $0fff

    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jr nc, @+$01

    cp h
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
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
    cp $fe
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
    rst $38
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
    rst $38
    ei
    ei
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $08
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    cp a
    ldh a, [rIE]
    ld hl, sp-$09
    db $fc
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld h, a
    cp a
    rst $38
    sbc a
    rst $30
    rst $18
    rst $38
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    sub b
    sub b
    ld d, b
    ld d, b
    sub b
    sub b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld e, b
    ld e, b
    jr z, jr_040_796c

    nop
    nop
    inc b
    inc b
    add h
    inc b
    add d
    ld [bc], a
    ret nz

    nop
    ret nz

    nop
    pop hl
    ld bc, $0030
    ld hl, sp+$00
    sbc b
    nop
    db $fc
    nop
    add $00
    xor [hl]
    nop
    ld a, $00
    db $ec
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38

jr_040_796c:
    add b
    rst $38
    dec h
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    cp $fe
    rst $28
    rst $28
    xor $ee
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    cp $fe
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    di
    di

jr_040_799e:
    rst $30
    rst $30
    rst $30
    rst $30
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    cp l
    cp l
    ld a, b
    ld a, b
    jr c, jr_040_79ef

    ld a, l
    ld a, l
    ld a, c
    ld a, c
    rst $38
    rst $38
    ei
    ei
    ld a, e
    ld a, e
    ei
    ei
    db $fd
    db $fd
    rst $38
    rst $38
    cp $ff
    xor $ee
    adc $ce
    sbc $de
    sbc $de
    nop
    rst $38
    ld hl, $00ff
    rst $38
    rra
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_040_799e

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
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
    ret nz

jr_040_79ef:
    nop
    ccf
    ret nz

    ld [bc], a
    rst $38
    cp $ff
    cp $83
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [$df]
    rst $38
    db $ec
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rNR32]
    ldh [rP1], a
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$01
    ld hl, sp+$0c
    ldh a, [$0d]
    ldh a, [$0c]
    ldh a, [$09]
    ldh a, [$0d]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$0b]
    ldh a, [$8b]
    ld [hl], b
    dec de
    ldh [rNR13], a
    ldh [rNR31], a
    ldh [rNR30], a
    ldh [rNR12], a

jr_040_7a5b:
    ldh [$0b], a
    ldh a, [rNR12]
    ldh [rIF], a
    ccf
    ld b, a
    rra
    add a
    rrca
    rst $38
    ccf
    ret nc

    jr z, jr_040_7a5b

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add e
    rst $38
    inc hl
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    inc a
    jr nz, @+$3e

    nop
    ld a, $40
    ld a, [hl]
    ld h, b
    ld a, h
    ld d, b
    ld a, h
    ld c, b
    ld a, h
    ld h, h
    ld a, a
    ld h, b
    ld a, e
    ldh [rIE], a
    ret z

    rst $28
    add b
    rst $08
    ret nz

    rst $00
    add b
    rst $08
    add b
    adc a
    ret nz

    rst $08
    ret nz

    sbc $c0
    call c, $dc80
    ret nz

    reti


    and b
    cp b
    ldh [$f0], a
    nop
    ld h, b
    ld b, b
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $e4
    add b
    ld hl, sp+$00
    ld e, d
    nop
    inc a
    add b
    cp h
    nop
    inc a
    nop
    inc a
    nop
    ld a, h
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rst $38
    ld bc, $ff7f
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld bc, $7eff
    add a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    ld a, a
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
    or h
    ld c, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    add c
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    sbc b
    sbc b
    cp e
    cp e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    cp a
    cp a
    rst $38
    rst $38
    ld a, l
    ld a, l
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    nop
    cp a
    nop
    sub a
    nop
    inc hl
    nop
    and c
    nop
    ret nz

    nop
    ret nz

    ret nz

    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    pop hl
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    ld bc, $0003
    inc bc
    nop
    ld [bc], a
    ld bc, $0300
    inc b
    inc bc
    ld b, $01
    ld b, $01
    ld b, $01
    ld [bc], a
    ld bc, $0003
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [$df]
    ld hl, sp+$1f
    ld hl, sp-$39
    db $fc
    rst $00
    cp $e1
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ld b, [hl]
    ld b, [hl]
    daa
    daa
    cpl
    cpl
    ccf
    ccf
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
    db $fd
    db $fd
    ei
    ei
    ei
    ei
    di
    di
    db $f4
    db $f4
    db $e4
    db $e4
    ret c

    ret c

    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    inc c
    inc c
    inc a
    inc a
    dec e
    dec e
    ld a, $3e
    ld [hl], $36
    ld a, $3e
    inc a
    inc a
    inc a
    inc a
    jr c, jr_040_7cce

    db $10
    db $10
    jr nc, jr_040_7cca

    jr c, jr_040_7cd4

    or b
    or b
    ret nz

    ret nz

    ccf
    rst $38
    rla
    rst $38
    rra
    rst $38
    ld l, e
    ccf
    rst $38
    ccf
    cp $7f
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    db $fc

jr_040_7cb2:
    ld b, b
    db $fc
    jr z, jr_040_7cb2

    db $e4
    db $fc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld a, d
    ld a, d
    cpl
    cpl
    ccf
    ccf
    rra
    rra
    ccf
    ccf

jr_040_7cca:
    ccf
    ccf
    ld a, a
    ld a, a

jr_040_7cce:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_040_7cd4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp-$61
    db $fc
    rst $10
    ld hl, $4021
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh a, [$f0]
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
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    ei
    ei
    db $fc
    db $fc
    ld l, h
    ld l, h
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, [hl]
    ld b, [hl]
    ld l, $2e
    rrca
    rrca
    ld e, $1e
    ccf
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, $3e
    inc e
    inc e
    inc e
    inc e
    jr z, jr_040_7d76

    inc e
    inc e
    jr jr_040_7d6a

    jr z, jr_040_7d7c

    ld [$c008], sp
    ret nz

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc

jr_040_7d6a:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    nop
    nop

jr_040_7d76:
    inc bc
    inc bc
    jp nz, $8cc2

    adc h

jr_040_7d7c:
    ldh a, [$f0]
    ldh [$e0], a
    nop
    sbc a
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    jr jr_040_7e09

    ld a, [de]
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld [hl], a
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    db $e3
    rst $20
    jp $d3c3


    db $d3
    push bc
    push bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    db $eb
    db $eb
    rst $20
    rst $20
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
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_040_7de6

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_040_7e15

    ld [hl-], a
    inc sp

jr_040_7de6:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_040_7e25

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $4241
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
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
    ld d, l

jr_040_7e09:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    dec bc
    dec bc
    dec bc
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_040_7e15:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, [hl]
    ld h, a
    ld [bc], a
    ld l, b
    ld l, c

jr_040_7e25:
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    dec bc
    add a
    adc b
    dec bc
    dec bc
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
    dec bc
    dec bc
    sub a
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
    dec bc
    dec bc
    and l
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
    dec bc
    or c
    or d
    dec bc
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    dec bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    dec bc
    call Call_000_0bce
    dec bc
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    dec bc
    jp c, Jump_000_0bdb

    dec bc
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    ld sp, $3131
    ld sp, $f4f3
    ld sp, $f531
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
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
    ld [bc], a
    rlca
    ld bc, $0207
    nop
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
    rlca
    ld bc, $0201
    nop
    nop
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
    rlca
    ld bc, $0202
    nop
    nop
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
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $02
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
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    db $01
    db $01
