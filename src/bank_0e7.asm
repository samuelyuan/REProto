SECTION "ROM Bank $0e7", ROMX[$4000], BANK[$e7]

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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4025

jr_0e7_4025:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    add b
    rst $38
    rrca
    rrca
    ret nz

    rst $38
    dec bc
    inc c
    ret nz

Call_0e7_403f:
    rst $38
    rrca
    ld [$ff42], sp
    inc c
    dec bc
    ld a, a
    rst $38
    ld c, $09
    ld b, b
    rst $38
    dec bc
    inc c
    ld b, b
    rst $38
    rlca
    inc b
    rst $20
    ld a, a
    dec b
    ld b, $ba
    ld a, l
    rlca
    rlca
    rst $00
    rst $38
    ld b, $07
    ldh [$5f], a
    rlca
    ld b, $60
    rst $18
    inc bc
    inc bc
    add sp, -$21
    ld bc, $c701
    ccf
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld b, d
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
    jp Jump_000_00ff


    nop
    rst $38
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
    ld b, b
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
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_40db

jr_0e7_40db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    db $ec
    db $fc
    rlca
    rst $38
    db $fc
    db $fc
    rlca
    rst $38
    ld [hl], h

Call_0e7_40ff:
    adc h
    rlca
    rst $38
    db $fc
    inc b
    rst $38
    rst $38
    ld a, h
    add h
    rlca
    rst $38
    inc e
    db $e4
    rrca
    rst $38
    ld a, h
    add h
    ld c, $ff
    db $f4
    inc c
    db $fd
    cp $e8
    jr jr_0e7_4128

    rst $38
    ret nc

    or b
    dec de
    db $fc
    ldh [$e0], a
    dec a
    db $d3
    ret nz

    ret nz

    cp a
    rst $18
    add b
    add b

jr_0e7_4128:
    rra
    pop hl
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    inc bc
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
    db $fc
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
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
    cp $fe
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
    cp $fe
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    dec bc
    ld c, $00
    nop
    cp $f9
    ld bc, $dc01
    ei
    inc bc
    inc bc
    ld sp, hl
    rst $38
    rlca
    rlca
    ccf
    rst $38
    ld b, $07
    ld d, b
    cp a
    dec b
    ld b, $e0
    rra
    rlca
    inc b
    ret nz

    ccf
    dec b
    ld b, $fe
    ld a, c
    ld [bc], a
    inc bc
    ld [hl], a
    ld hl, sp+$01
    ld bc, $fcfb
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    adc $ff
    nop
    nop
    push af
    ei
    nop
    nop
    adc $ff
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
    sub c
    rst $38
    nop
    nop
    adc [hl]
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
    jp nz, Jump_000_00ff

    nop
    rst $38
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
    add c
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
    add b
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
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
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
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_425b

jr_0e7_425b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    ld [hl], e
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    sbc e
    rst $38
    ret nz

    ret nz

    dec [hl]
    ei
    ret nz

    ret nz

    ld a, e
    rst $38
    ret nz

    ret nz

    rst $18
    ccf
    ret nz

    ret nz

    rst $20
    rra
    ret nz

    ret nz

    ccf
    rst $00
    add b
    add b
    rst $20
    rra
    nop
    nop
    ld c, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    inc e
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
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
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    inc bc
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
    cp $ff
    add b
    add b
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3e
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
    rrca
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4325

jr_0e7_4325:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4201
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $c001
    ld a, a
    ld bc, $c001
    ld a, a
    ld bc, $6701
    rst $38
    ld bc, $fa01
    db $fd
    ld bc, $c701
    rst $38
    ld [bc], a
    inc bc
    ret nz

    rst $38
    inc bc
    ld [bc], a
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ret z

    ccf
    ld bc, $c701
    rst $38
    nop
    nop
    ld b, d
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
    ld bc, $7901
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
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
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rrca
    rrca
    db $fc
    db $fc
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
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_43db

jr_0e7_43db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$06f8], sp
    rst $38
    add sp, $18
    rst $38
    cp $e8
    jr @+$09

    cp $d0
    jr nc, jr_0e7_441a

    cp $d0
    jr nc, jr_0e7_441e

    cp $a0
    ld h, b
    rst $38
    db $fc
    and b
    ld h, b
    inc bc
    rst $38

jr_0e7_441a:
    and b
    ld h, b
    rlca
    rst $38

jr_0e7_441e:
    ret nz

    ret nz

    rrca
    rst $30
    ret nz

    ret nz

    adc a
    rst $30
    ret nz

    ret nz

    rlca
    ld hl, sp-$80
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
    dec b
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ccf
    ccf
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
    add b
    add b
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_44a5

jr_0e7_44a5:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4201
    rst $38
    ld bc, $7f01
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    dec b
    ld b, $e7
    ccf
    rlca
    rlca
    ld a, [$07fd]
    rlca
    rst $00
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rrca
    dec bc
    ret nz

    rst $38
    rlca
    inc b
    ret z

    ld a, a
    inc bc
    inc bc
    add a
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
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld a, h
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
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e7_4563

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
    nop
    nop
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_455b

jr_0e7_455b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b

jr_0e7_4563:
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld l, b
    sbc b
    rlca
    rst $38
    ld l, b
    sbc b
    ld c, $ff
    add sp, $18
    ld c, $ff

jr_0e7_4592:
    ret nc

    jr nc, jr_0e7_4592

    cp $d0
    jr nc, jr_0e7_459c

    rst $38
    ldh a, [$f0]

jr_0e7_459c:
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh [$e0], a
    add a
    ei
    ldh [$e0], a
    inc bc
    db $fc
    ret nz

    ld b, b
    rlca
    rst $38
    add b
    add b
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
    ld hl, sp-$08
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
    db $fc
    nop
    nop
    cp h
    cp h
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4625

jr_0e7_4625:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    inc bc
    ld [bc], a
    jp nz, Jump_000_037f

    ld [bc], a
    rst $38
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    rlca
    inc b
    rst $20
    ld a, a
    rlca
    rlca
    cp d
    ld a, l
    rrca
    rrca
    rst $00
    rst $38
    rra
    rla
    ret nz

    rst $38
    rra
    rla
    ret nz

    rst $38
    rrca
    ld [$ffc8], sp
    rlca
    rlca
    ld b, a
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
    ld [hl+], a
    ccf
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
    rla
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    jr jr_0e7_46af

    nop
    nop
    jr jr_0e7_46b3

    nop
    nop
    jr jr_0e7_46b7

    nop
    nop
    jr jr_0e7_46bb

    nop
    nop
    ld [$000f], sp
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
    rlca

jr_0e7_46af:
    rlca
    nop
    nop
    ccf

jr_0e7_46b3:
    ccf
    nop
    nop
    inc bc

jr_0e7_46b7:
    rra
    nop
    nop
    rrca

jr_0e7_46bb:
    rrca
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
    cp b
    ld a, b
    nop
    nop

jr_0e7_46d4:
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_46db

jr_0e7_46db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld a, b
    adc b
    rlca
    rst $38
    jr c, jr_0e7_46d4

    rrca
    rst $38
    ld hl, sp+$08
    rrca
    rst $38
    ld hl, sp+$08
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld hl, sp-$08
    ld [bc], a
    rst $38
    ld hl, sp-$08
    add e
    cp $e8
    ld hl, sp+$02
    rst $38
    ret nc

    jr nc, jr_0e7_4732

    db $fd
    ldh [$e0], a
    inc b
    db $fc

jr_0e7_4732:
    nop
    nop
    inc b
    db $fc

jr_0e7_4736:
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08

jr_0e7_4742:
    nop
    nop
    jr nc, jr_0e7_4736

jr_0e7_4746:
    nop
    nop
    jr z, jr_0e7_4742

jr_0e7_474a:
    nop
    nop
    jr z, jr_0e7_4746

    nop
    nop
    jr z, jr_0e7_474a

    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_47a5

jr_0e7_47a5:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    ld [bc], a
    ret nz

    ld a, a
    dec b
    ld b, $c2
    ld a, a
    rlca
    inc b
    rst $38
    ld a, a
    dec bc
    inc c
    ret nz

    ld a, a
    rrca
    ld [$7fc0], sp
    rrca
    ld [$ff67], sp
    ld a, [de]
    dec e
    ld a, [$3ffd]
    cpl
    ld b, a
    ld a, a
    ccf
    cpl
    ld b, b
    ld a, a
    ccf
    cpl
    ld b, b
    ld a, a
    rra
    inc de
    ld c, b
    ld a, a
    ld c, $0e
    daa
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
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
    db $10
    rra
    nop
    nop
    jr nz, jr_0e7_484f

    nop
    nop
    jr nz, jr_0e7_4853

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
    jr nz, jr_0e7_4863

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
    ld a, a
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld bc, $000f
    nop
    inc bc
    inc bc
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

jr_0e7_484f:
    nop
    cp b
    ld a, b
    nop

jr_0e7_4853:
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_485b

jr_0e7_485b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b

jr_0e7_4863:
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    rst $38
    inc b
    db $fc
    rst $38
    rst $38
    inc b
    db $fc
    rlca
    rst $38
    add h
    db $fc
    rrca
    rst $38
    or h
    call z, $ff0f
    ld [hl], h
    ld c, h
    cp $fe
    ld [hl], h
    ld c, h
    ld [bc], a
    cp $7c
    ld c, h
    ld [bc], a
    cp $7c
    ld a, h
    ld [bc], a
    cp $bc
    db $fc
    add d
    cp $fc
    cp h
    ld [bc], a
    cp $74
    ld c, h
    ld [bc], a
    cp $38
    jr c, jr_0e7_48b3

    cp $00

jr_0e7_48b3:
    nop
    inc c
    db $fc

jr_0e7_48b6:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr jr_0e7_48b6

    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    db $f4
    db $fc
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
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, $3e
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4925

jr_0e7_4925:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    inc bc
    ld [bc], a
    jp nz, Jump_000_037f

    ld [bc], a
    rst $38
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    dec b
    ld b, $c0
    ld a, a
    rlca
    inc b
    rst $20
    ld a, a
    rlca
    rlca
    cp d
    ld a, l
    rrca
    rrca
    rst $00
    rst $38
    rra
    rla
    ret nz

    rst $38
    rra
    rla
    ret nz

    rst $38
    rrca
    ld [$ffc8], sp
    rlca
    rlca
    ld b, a
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
    ld b, d
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
    ld b, d
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
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
    ld bc, $0001
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
    rlca
    rlca
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
    cp b
    ld a, b
    nop
    nop

jr_0e7_49d4:
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_49db

jr_0e7_49db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld a, b
    adc b
    rlca
    rst $38
    jr c, jr_0e7_49d4

    rrca
    rst $38
    ld hl, sp+$08
    rrca
    rst $38
    ld hl, sp+$08
    rst $38
    rst $38
    ld a, b
    adc b
    inc bc
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld hl, sp-$08
    ld [bc], a
    rst $38
    ld hl, sp-$08
    add e
    cp $e8
    ld hl, sp+$02
    rst $38
    ret nc

    jr nc, jr_0e7_4a30

    rst $38
    ldh [$e0], a

jr_0e7_4a30:
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
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4aa5

jr_0e7_4aa5:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4201
    rst $38
    ld bc, $7f01
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    dec b
    ld b, $e7
    ld a, a
    rlca
    rlca
    ld a, [$07fd]
    rlca
    rst $00
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rrca
    dec bc
    ret nz

    rst $38
    rlca
    inc b
    ret z

    ld a, a
    inc bc
    inc bc
    rst $00
    rst $38
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
    add d
    rst $38
    nop
    nop
    add d
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
    add e
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
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    rrca
    rrca
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
    rra
    rra
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
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_4b5b

jr_0e7_4b5b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    ld l, b
    sbc b
    rlca
    rst $38
    ld l, b
    sbc b
    ld c, $ff
    add sp, $18
    ld c, $ff

jr_0e7_4b92:
    ret nc

    jr nc, jr_0e7_4b92

    cp $d0
    jr nc, jr_0e7_4b9c

    rst $38
    ldh a, [$f0]

jr_0e7_4b9c:
    inc bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    ldh [$e0], a
    add a
    ei
    ldh [$e0], a
    inc bc
    db $fc
    ret nz

    ld b, b
    inc bc
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    inc bc
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    ld hl, sp-$01
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
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
    cp $fe
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
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4c25

jr_0e7_4c25:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4201
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $c001
    ld a, a
    ld bc, $c001
    ld a, a
    ld bc, $6701
    rst $38
    ld bc, $fa01
    db $fd
    ld bc, $c701
    rst $38
    ld [bc], a
    inc bc
    ret nz

    rst $38
    inc bc
    ld [bc], a
    ret nz

    rst $38
    ld [bc], a
    inc bc
    ret z

    ccf
    ld bc, $c701
    rst $38
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
    ld b, d
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
    rst $38
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b

jr_0e7_4cb0:
    rlca
    rlca
    ld hl, sp-$08
    nop
    inc bc
    jr c, jr_0e7_4cb0

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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_4cdb

jr_0e7_4cdb:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$06f8], sp
    rst $38
    add sp, $18
    rst $38
    cp $e8
    jr @+$09

    cp $d0
    jr nc, jr_0e7_4d1a

    cp $d0
    jr nc, jr_0e7_4d1e

    cp $a0
    ld h, b
    rst $38
    db $fc
    and b
    ld h, b
    inc bc
    rst $38

jr_0e7_4d1a:
    and b
    ld h, b
    rlca
    rst $38

jr_0e7_4d1e:
    ret nz

    ret nz

    rrca
    rst $30
    ret nz

    ret nz

    adc a
    rst $30
    ret nz

    ret nz

    rlca
    ld hl, sp-$80
    add b
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $ff
    add b
    add b
    db $fc
    rst $38
    add b
    add b
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
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld c, $0e
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
    rrca
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld a, [bc]
    nop
    nop
    ccf
    jr c, jr_0e7_4da5

jr_0e7_4da5:
    nop
    ld a, [$01fd]
    ld bc, $ffb7
    ld bc, $8701
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4001
    rst $38
    ld bc, $4201
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    ld a, d
    ld a, l
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    ret nz

    cp a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld b, a
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
    ld bc, $f901
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fe06
    ld [bc], a
    inc bc
    ld [bc], a
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
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f0f0
    ld bc, $e001
    ldh [rIF], a
    rrca
    ldh [$e0], a
    ld bc, $e00f
    ldh [rTAC], a
    rlca
    ldh [$e0], a
    nop
    ld bc, $e020
    nop
    nop
    ld h, b
    ld h, b
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
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_4e5b

jr_0e7_4e5b:
    nop
    sbc b
    ld a, b
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    ld h, b
    ldh [$dc], a
    rst $38
    ldh a, [$f0]
    add c
    rst $38
    add sp, -$08
    inc bc
    rst $38
    ret c

    add sp, $03
    rst $38
    add sp, -$08
    rlca
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    ld [$07f8], sp
    cp $d0
    jr nc, @-$01

    cp $d0
    jr nc, jr_0e7_4e90

    db $fc
    ldh [rNR41], a
    dec bc
    db $fc
    and b
    ld h, b

jr_0e7_4e90:
    rrca
    ld hl, sp-$40
    ld b, b
    rst $38
    ld hl, sp+$40
    ret nz

    ld a, [bc]
    db $fd
    add b
    add b
    rra
    rst $28
    nop
    nop
    rra
    rst $28
    nop
    nop
    sbc a
    rst $28
    nop
    nop
    rrca
    di
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop

jr_0e7_4ebc:
    ld bc, $00ff
    nop

jr_0e7_4ec0:
    add e
    rst $38
    nop
    nop
    add [hl]
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e7_4f19

    jr nz, jr_0e7_4ebc

    jr nz, jr_0e7_4f1d

    jr nz, jr_0e7_4ec0

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
    rrca
    rrca
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

jr_0e7_4f19:
    nop
    nop
    nop
    nop

jr_0e7_4f1d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    rst $18
    rst $30
    ld e, $1f
    ld a, [hl+]
    rst $10
    dec a
    ccf
    rst $38
    db $e3
    ld a, l
    ld a, a
    ld a, e
    add a
    ld a, l
    ld a, a
    ld [hl], a
    rst $08
    ld a, l
    ld a, a
    adc l
    rst $38
    ld a, h
    ld a, a
    ld hl, sp-$01
    ld a, h
    ld b, e
    nop
    rst $38
    ld a, [hl]
    ld b, e
    nop
    rst $38
    ld a, a
    ld b, e
    jr nz, @+$01

    ld a, [hl]
    ld b, d
    rst $38
    rst $38
    ld e, d
    ld h, [hl]
    ld b, e
    ld a, h
    ld a, [hl]
    ld b, d
    rst $38
    ld hl, sp+$7f
    ld b, e
    rst $38
    db $fc
    ld a, e
    ld b, a
    ld hl, sp-$01
    ld a, l
    ld a, l
    cp $7f
    ld a, h
    ld e, h
    rst $38
    rst $38
    call c, $c1fc
    rst $38
    db $fc
    db $f4
    ld b, b
    ld a, a
    or $fa
    ld b, b
    ld a, a
    call c, Call_000_20ac
    ccf
    ld [hl], b
    ld [hl], b
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    sbc l
    rst $38
    nop
    nop
    or a
    rst $38
    nop
    nop
    db $eb
    rst $30
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    dec a
    jp RST_00


    dec a
    jp RST_00


    dec [hl]
    rlc b
    nop
    swap a
    nop
    nop
    rst $30
    rrca
    nop
    nop
    cp l
    ld a, a
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add [hl]
    cp $00
    nop
    jp c, Jump_000_00fe

    nop
    ld h, d
    cp $00
    nop
    inc hl
    rst $38
    nop
    nop
    jr nz, @+$01

    add b
    add b
    ld [hl+], a
    rst $38
    ld a, b
    ld hl, sp+$42
    rst $38
    ld a, h
    db $fc
    jp nz, Jump_0e7_7cff

    db $fc
    ld [c], a
    rst $38
    ld a, [hl]
    cp $e2
    rst $38
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rra
    rra
    db $fc
    db $fc
    rrca
    rrca
    ldh a, [$f0]
    rlca
    rlca
    inc [hl]
    inc c
    nop
    nop
    ld a, d
    ld b, [hl]
    nop
    nop
    ld e, l
    ld h, e
    ld bc, $2601
    add hl, sp
    add e
    add e
    dec de
    inc d
    ld b, e
    jp Jump_000_1b14


    ld a, e
    ld a, [$171f]
    or $ff
    rrca
    inc c
    ld a, a
    ldh [rTAC], a
    ld b, $be
    ld h, c
    inc bc
    inc bc
    cp $f1
    ld bc, $c101
    cp [hl]
    nop
    nop
    push af
    adc [hl]
    nop
    nop
    ld e, b
    ld l, a
    nop
    nop
    jr z, jr_0e7_50f7

    nop
    nop
    jr jr_0e7_50db

    nop
    nop
    add hl, de
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
    dec bc
    rrca
    nop
    nop
    dec c
    ld c, $00
    nop
    dec bc

jr_0e7_50db:
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]

jr_0e7_50f7:
    rrca
    nop
    nop
    ld a, [bc]
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
    dec bc
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
    dec b
    rlca
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
    rlca
    rlca
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
    sbc b
    ld hl, sp+$00
    nop
    ld l, h
    call c, RST_00
    db $fc
    inc c
    nop
    nop
    ld [hl], h
    adc h
    nop
    nop
    db $e4
    inc e
    nop
    nop
    ld c, $fe
    nop
    nop
    rst $18
    ccf
    nop
    nop
    rst $28
    rra
    add b
    add b
    xor $1f
    ret nz

    ret nz

    db $dd
    ld a, $40
    ret nz

    ld a, [hl]
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    add b
    add b
    rra
    rst $38
    add b
    add b
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
    ld a, a
    rst $38
    nop
    nop
    add c
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
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld a, a
    ld a, a
    add d
    add e
    ld l, b
    ld d, a
    add a
    add a
    ld l, a
    ld d, b
    rst $38
    rst $38
    ld b, b
    ld a, a
    db $fd
    ld c, a
    scf
    jr z, jr_0e7_5278

    cp $16
    rra
    rst $30
    ld hl, sp+$0e
    rrca
    ld l, a
    ldh a, [rTAC]
    rlca
    db $ed
    ld a, [c]
    ld bc, $f001
    rst $38
    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    rra
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
    inc de
    rra
    nop
    nop
    dec e
    ld e, $00
    nop
    dec bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca

jr_0e7_5278:
    nop
    nop
    ld a, [bc]
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
    dec bc
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
    dec b
    rlca
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
    rlca
    rlca
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
    inc a
    db $fc
    nop
    nop

jr_0e7_52d0:
    call c, Call_000_007c
    nop

jr_0e7_52d4:
    db $f4
    inc e
    nop
    nop

jr_0e7_52d8:
    ld [hl], h
    adc h
    nop
    nop

jr_0e7_52dc:
    add a
    ld a, a
    nop
    nop

jr_0e7_52e0:
    dec bc
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    add b
    add b
    cp $ff
    ret nz

    ret nz

    db $db
    ccf
    jr nz, jr_0e7_52d0

    push af
    dec de
    jr nz, jr_0e7_52d4

    ei
    rra
    jr nz, jr_0e7_52d8

    rst $18
    ccf
    jr nz, jr_0e7_52dc

    ld a, $ff
    jr nz, jr_0e7_52e0

    nop
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
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
    ld a, a
    rst $38
    nop
    nop
    add c
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
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    ld c, $0f
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    dec c
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    jr z, jr_0e7_53ef

    nop
    nop
    ld b, b
    ld a, a
    inc bc
    inc bc
    cp b
    rst $00
    dec b
    ld b, $78
    rst $20
    ld a, [de]
    dec e
    ld sp, hl
    cp $2d
    inc sp
    xor $f1
    ld e, c
    ld h, a
    cp a
    ld h, b
    ld [hl], e
    ld c, l
    rst $28
    ldh a, [rDMA]
    ld a, [hl]
    dec de
    inc e
    jr c, jr_0e7_540a

    dec bc
    rrca
    nop
    nop
    dec c
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    add hl, bc
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld a, [bc]

jr_0e7_53ef:
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
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

jr_0e7_540a:
    dec bc
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
    dec b
    rlca
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
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
    ldh a, [$f0]
    nop
    nop

jr_0e7_5450:
    ld d, b
    ldh a, [rP1]
    nop

jr_0e7_5454:
    xor b
    ret c

    nop
    nop

jr_0e7_5458:
    ld hl, sp+$08
    nop
    nop

jr_0e7_545c:
    xor $1e
    nop
    nop

jr_0e7_5460:
    cp a
    ld a, a
    nop
    nop
    ld a, c
    rst $38
    add b
    add b
    call c, Call_0e7_40ff
    ret nz

    ld a, $ff
    jr nz, jr_0e7_5450

    scf
    rst $38
    jr nz, jr_0e7_5454

    ld l, e
    rst $30
    jr nz, jr_0e7_5458

    rst $10
    ccf
    jr nz, jr_0e7_545c

    xor $1f
    jr nz, jr_0e7_5460

    call z, Call_0e7_403f
    ret nz

    ld [$80ff], sp
    add b
    ret nc

    ccf
    add b
    add b
    ld h, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    add c
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
    ld b, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
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
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    ei
    add a
    nop
    nop
    rst $38
    ld a, [$0c0c]
    db $fd
    add d
    ld e, $12
    ld sp, hl
    and a
    ccf
    dec l
    di
    adc a
    ccf
    dec a
    xor a
    rst $18
    ld a, $3e
    ld a, a
    ld a, a
    dec [hl]
    dec sp
    ld a, e
    ld a, a
    dec a
    inc sp
    push af
    ei
    ld e, $11
    ld e, e
    cp a
    ld d, $19
    rst $28
    rra
    rrca
    ld [$0ff7], sp
    dec bc
    inc c
    ldh [$1f], a
    dec b
    ld b, $b0
    ld a, a
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    jr c, @+$41

    nop
    nop
    jr jr_0e7_557b

    nop
    nop
    rra
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
    inc bc

jr_0e7_557b:
    rst $38
    inc b
    rlca
    ld b, $ff
    ld [$0e0f], sp
    rst $38
    rrca
    rrca
    db $db
    ei
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    cp $ff
    rlca
    rlca
    add d
    rst $38
    ld [bc], a
    inc bc
    ld bc, $01ff
    ld bc, $ff00
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
    inc hl
    ccf
    nop
    nop
    rra
    rra
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
    ldh a, [$f0]
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    inc a
    db $fc
    nop
    nop
    xor $fe
    nop
    nop
    and a
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    adc $ff
    add b
    add b
    call nz, $80ff
    add b
    add a
    db $fc
    ld b, b
    ret nz

    inc bc
    db $fc
    ld b, b
    ret nz

    rlca
    db $fc
    ld b, b
    ret nz

    ld a, $fd
    add b
    add b
    add $fd
    add b
    add b
    ld b, $ff
    add b
    add b
    rra
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
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
    db $f4
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
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
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
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
    db $fc
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
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    ei
    add a
    nop
    nop
    rst $38
    ld a, [$0c0c]
    db $fd
    add d
    ld e, $12
    ld sp, hl
    and a
    ccf
    dec l
    di
    adc a
    ccf
    dec a
    xor a
    rst $18
    ld a, $3e
    ld a, a
    ld a, a
    dec [hl]
    dec sp
    ld a, e
    ld a, a
    dec a
    inc sp
    push af
    ei
    ld e, $11
    ld e, e
    cp a
    ld d, $19
    rst $28
    rra
    rrca
    ld [$0ff7], sp
    dec bc
    inc c
    ldh [$1f], a
    dec b
    ld b, $b0
    ld a, a
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    jr c, jr_0e7_570f

    nop
    nop
    jr @+$21

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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e7_572f

    nop
    nop
    jr nz, jr_0e7_5733

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
    ld sp, hl
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
    ld sp, hl
    rst $38
    nop
    nop
    add c

jr_0e7_570f:
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
    jr nz, jr_0e7_575b

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
    nop

jr_0e7_572f:
    nop
    nop
    nop
    nop

jr_0e7_5733:
    nop
    nop
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop

jr_0e7_575b:
    nop
    cp b
    ld hl, sp+$00
    nop
    inc a
    db $fc
    nop
    nop
    xor $fe
    nop
    nop
    and a
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    adc $ff
    add b
    add b
    call nz, $80ff
    add b
    add a
    db $fc
    ld b, b
    ret nz

    inc bc
    db $fc
    ld b, b
    ret nz

    rlca
    db $fc
    ld b, b
    ret nz

    ld a, $fd
    add b
    add b
    add $fd
    add b
    add b
    ld b, $ff
    add b
    add b
    rra
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [de], a
    cp $00
    nop
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
    ld a, [c]
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [c]
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld h, h
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret c

    cp b
    nop
    nop
    or [hl]
    adc $00
    nop
    ld l, l
    ld [hl], e
    add b
    add b
    dec de
    inc e
    ld h, b
    ldh [rTMA], a
    dec b
    ld a, [hl]
    cp [hl]
    inc bc
    inc bc
    pop af
    rst $38
    inc bc
    inc bc
    ei
    inc a
    ld bc, $ef01
    ldh a, [rP1]
    nop
    rla
    jr jr_0e7_584d

jr_0e7_584d:
    nop
    dec c
    ld c, $00
    nop
    ld b, $07
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
    inc bc
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
    rra
    rra
    nop
    nop
    rra
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
    rlca
    rlca
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
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ld hl, sp-$08
    dec b
    ld b, $ec
    inc e
    rlca
    rlca
    db $fc
    ld l, h
    dec bc
    inc c
    db $e4
    inc e
    ld a, [bc]
    dec c
    db $ec
    inc e

jr_0e7_58e8:
    dec bc
    inc c
    call z, Call_000_1c3c
    rra
    jr c, jr_0e7_58e8

    ccf
    ccf
    cp $fe
    ld a, b
    ld a, a
    di
    rst $38
    add c
    rst $38
    reti


    rst $38
    inc bc
    rst $38
    xor l
    rst $18
    ld b, $f9
    db $dd
    rst $38
    rst $20
    jr jr_0e7_5986

    rst $38

jr_0e7_5908:
    ld sp, hl
    ld b, $fe
    ld a, [hl]

jr_0e7_590c:
    rst $38
    nop
    ld l, h
    db $fc
    ld a, l
    add e
    ld hl, sp-$08

jr_0e7_5914:
    nop
    rst $38
    jr nc, jr_0e7_5908

    nop
    rst $38
    jr nc, jr_0e7_590c

    ret nz

    rst $38
    ld h, b
    ldh [$bf], a
    ld a, a
    ldh [$e0], a
    ret nz

    rst $38
    jr nz, jr_0e7_5908

    nop
    rst $38
    jr nz, jr_0e7_590c

    nop
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    jr nz, jr_0e7_5914

    inc b
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

jr_0e7_593c:
    sub b
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b

jr_0e7_5944:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $18
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0e7_593c

    ld [$20ff], sp
    ldh [rNR10], a
    rst $38
    jr nz, jr_0e7_5944

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $30
    rst $30
    add b
    add b
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

    nop
    nop
    nop
    nop
    nop
    nop

jr_0e7_5986:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rrca
    add b
    add b
    inc e
    rra
    add b
    add b
    inc e
    rra
    add b
    add b
    inc e
    rra
    ccf
    ccf
    db $fc
    rst $38
    ld a, a
    ld b, b
    call nz, $407f
    ld a, a
    ld a, a
    add a
    ccf
    ccf
    sbc a
    rst $20
    nop
    nop
    and $dd
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    inc bc
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
    rra
    rra
    nop
    nop
    rra
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
    rlca
    rlca
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
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, l
    ld b, e
    ret nz

    ret nz

    ld a, a
    ld a, l
    ret nz

    ld b, b
    ld a, [hl]
    ld b, c
    ret nz

    ld b, b
    ld a, h
    ld d, e
    ret nz

    ret nz

    ld sp, hl
    rst $00
    ld hl, sp-$08
    db $d3
    rst $28
    sbc h
    db $fc
    cp [hl]
    rst $38
    db $76
    cp $3c
    rst $38
    ld a, [$00fe]
    rst $38
    sbc $fe
    ld bc, $aeff
    sbc $03
    db $fc
    ld e, [hl]
    cp $07
    ld hl, sp-$44
    ld a, h
    db $db
    db $f4
    inc a
    db $fc
    cp h
    jp $f838


jr_0e7_5a94:
    rst $38
    add b
    ld [hl], b
    ldh a, [$bd]
    jp $f0f0


jr_0e7_5a9c:
    ld [$70ff], sp
    ldh a, [$d7]
    rst $28
    ldh a, [$f0]
    jr c, @+$01

    jr nc, @-$0e

    nop
    rst $38
    jr nc, jr_0e7_5a9c

    nop
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    jr nz, jr_0e7_5a94

    inc b
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

jr_0e7_5abc:
    sub b
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b

jr_0e7_5ac4:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $18
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0e7_5abc

    ld [$20ff], sp
    ldh [rNR10], a
    rst $38
    jr nz, jr_0e7_5ac4

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $30
    rst $30
    add b
    add b
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec b
    ld b, $00
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    nop
    nop
    ld a, $3f
    nop
    nop
    dec a
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld e, $1f
    nop
    nop
    ld c, $0b
    nop
    nop
    ld c, $0b
    nop
    nop
    dec c
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld l, a
    ld e, a
    nop
    nop
    sbc $bf
    ld bc, $be01
    ld a, a
    inc bc
    ld [bc], a
    ld d, e
    rst $18
    ld b, $05
    adc [hl]
    adc a
    dec c
    rrca
    inc b
    rlca
    ld c, $0e
    inc b
    rlca
    inc b
    inc b
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
    rra
    rra
    nop
    nop
    rra
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
    rlca
    rlca
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
    call z, Call_000_00fc
    nop
    db $f4
    inc c
    nop
    nop
    rst $30
    ld l, e
    nop
    nop

jr_0e7_5be8:
    cp d
    ld b, a
    add b
    add b
    xor a
    rst $18
    ret nz

    ret nz

    ld e, e
    cp a
    ldh [$e0], a
    cp $ff
    jr nc, jr_0e7_5be8

    scf
    rst $38
    or b
    ldh a, [rIF]
    rst $38
    ret z

    ld hl, sp+$1e
    rst $38
    ret z

    ld hl, sp+$5d
    cp $48
    ld hl, sp-$22
    rst $38
    ret z

    ld hl, sp+$6b
    rst $30
    ret z

    ld hl, sp+$1c
    db $e3
    sub b
    ldh a, [rNR44]
    call c, Call_0e7_7090
    ld a, a
    add b
    db $10
    ldh a, [$ee]
    ld de, $f010
    rst $28
    rra
    ldh a, [$f0]
    ldh a, [rIE]
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    jr nz, @-$1e

    inc b
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

jr_0e7_5c3c:
    sub b
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b

jr_0e7_5c44:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $18
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    ld [$40ff], sp
    ret nz

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0e7_5c3c

    ld [$20ff], sp
    ldh [rNR10], a
    rst $38
    jr nz, jr_0e7_5c44

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $30
    rst $30
    add b
    add b
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    stop
    nop
    rra
    rra
    nop
    nop
    rra
    stop
    nop
    rra
    inc d
    nop
    nop
    ld a, [hl]
    ld [hl], c
    ld bc, $f401
    ei
    inc bc
    inc bc
    ld l, a
    rst $38
    rlca
    rlca
    rrca
    rst $38
    rlca
    rlca
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    rlca
    rlca
    add b
    rst $38
    dec b
    ld b, $80
    rst $38
    dec b
    ld b, $84
    rst $38
    dec b
    ld b, $ff
    rst $38
    inc b
    rlca
    add b
    rst $38
    rlca
    inc b
    add b
    rst $38
    rlca
    inc b
    adc $7f
    dec b
    ld b, $f5
    ld a, e
    rlca
    rlca
    adc [hl]
    rst $38
    rlca
    rlca
    add b
    rst $38
    rlca
    rlca
    add b
    rst $38
    rlca
    dec b
    adc b
    rst $38
    inc bc
    ld [bc], a
    add a
    ld a, a
    ld bc, $8201
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
    jp nz, Jump_000_00ff

    nop
    rst $38
    rst $38
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]

jr_0e7_5d86:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$50]
    nop
    nop
    or b
    ld d, b
    nop
    nop
    jr nc, jr_0e7_5d86

    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    db $fc
    rst $38
    ret nz

    ret nz

    cp c
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ret nc

    ldh a, [rTAC]
    rst $38
    or b
    ret nc

    rlca
    rst $38
    ret nc

    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    ld c, $ff
    db $10
    ldh a, [$0e]
    rst $38
    ret nc

jr_0e7_5dbb:
    jr nc, jr_0e7_5dbb

    rst $38
    ldh a, [rNR10]
    ld c, $ff
    ld [hl], b
    sub b
    rra
    cp $f0
    db $10
    rra
    cp $f0
    db $10
    cp $ff
    ldh a, [rNR10]
    rlca
    rst $38
    ldh a, [$f0]
    dec b
    rst $38
    ldh a, [$f0]
    dec b
    rst $38
    ldh a, [$f0]
    add a
    db $fd
    ret nc

    ldh a, [rTAC]
    cp $a0
    ld h, b
    rrca
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    ret nz

    ret nz

    ei
    rst $38
    ret nz

    ret nz

    di
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
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $f301
    rst $38
    ld bc, $7d01
    add e
    nop
    nop
    db $fd
    jp c, $0303

    xor [hl]
    pop de
    rlca
    rlca
    xor e
    rst $30
    rlca
    rlca
    ld d, a
    rst $28
    rlca
    rlca
    ld a, $ff
    rlca
    rlca
    inc c
    rst $38
    rlca
    rlca
    ld bc, $03ff
    inc bc
    ld bc, $03ff
    inc bc
    ld bc, $02ff
    inc bc
    and c
    cp $03
    ld [bc], a
    ld a, a
    db $fc
    inc bc
    ld [bc], a
    jp Jump_000_0f7c


    ld c, $8b
    ld [hl], h
    rla
    rra
    ld a, h
    add e
    dec l
    dec sp
    ld a, a
    add b
    ccf
    cpl
    ld a, l
    add e
    ld a, $2d
    add $ff
    dec l
    inc sp
    add b
    rst $38
    rra
    rra
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    rlca
    rlca
    db $e4
    rst $38
    rlca
    rlca
    db $fc
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $30
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b
    rlca
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0401
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    dec a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    xor $fe
    nop
    nop
    sub $ee
    nop
    nop
    ld l, [hl]
    cp $00
    nop
    cp h
    ld a, h
    nop
    nop
    call nc, Call_000_003c
    nop
    ld d, h
    cp h
    nop
    nop
    and h
    ld a, h
    nop
    nop
    ld b, h
    db $fc

jr_0e7_5f1e:
    nop
    nop
    db $fc
    db $fc

jr_0e7_5f22:
    nop
    nop
    inc b
    db $fc

jr_0e7_5f26:
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr c, jr_0e7_5f26

    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e7_5f1e

    nop
    nop
    jr nz, jr_0e7_5f22

    nop
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
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ld [$0000], sp
    rrca
    rrca
    inc bc
    inc bc
    adc a
    adc b
    rlca
    inc b
    rst $08
    ld c, d
    rrca
    dec bc
    rst $38
    ld hl, sp+$0f
    ld a, [bc]
    ld a, [$0f7d]
    ld a, [bc]
    rst $28
    rst $38
    rlca
    rlca
    rst $30
    rst $38
    inc bc
    inc bc
    xor b
    rst $18
    ld bc, $b601
    rst $08
    ld bc, $dc01
    ld h, e
    ld bc, $ee01
    ld sp, $0101
    rst $30
    jr c, @+$03

    ld bc, $fffc
    inc bc
    inc bc
    and e
    ld a, a
    inc bc
    inc bc
    and b
    ld a, a
    inc bc
    inc bc
    and a
    ld a, a
    ld bc, $fa01
    db $fd
    nop
    nop
    add a
    rst $38
    nop
    nop
    or b
    rst $38
    ld bc, $c001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    inc bc
    rst $38
    rlca
    rlca
    db $e4
    rst $38
    rlca
    rlca
    db $fc
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $30
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b
    rlca
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0401
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    dec a
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_6067

jr_0e7_6067:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    ld h, c
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp e
    rst $38
    ld b, b
    ret nz

    ld [hl], l
    ei
    ld b, b
    ret nz

    ei
    rst $38
    ld b, b
    ret nz

    rst $38
    rra
    ld b, b
    ret nz

    xor $1f
    ld b, b
    ret nz

    inc c
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    cp $fe

jr_0e7_60a2:
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
    jr c, @-$06

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e7_60a2

    nop
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
    ldh a, [$f0]
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
    rrca
    rrca
    inc bc
    inc bc
    adc a
    adc b
    rlca
    inc b
    rst $08
    ld c, d
    rrca
    dec bc
    rst $38
    ld hl, sp+$0f
    ld a, [bc]
    ld a, [$0f7d]
    ld a, [bc]
    rst $28
    rst $38
    rlca
    rlca
    rst $30
    rst $38
    inc bc
    inc bc
    xor b
    rst $18
    ld bc, $b601
    rst $08
    ld bc, $dc01
    ld h, e
    ld bc, $ee01
    ld sp, $0101
    rst $30
    jr c, @+$03

    ld bc, $fffc
    inc bc
    inc bc
    and e
    ld a, a
    inc bc
    inc bc
    and b
    ld a, a
    inc bc
    inc bc
    and a
    ld a, a
    ld bc, $fa01
    db $fd
    nop
    nop
    rst $30
    rst $38
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
    ld [de], a
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    ld e, $1f
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
    rla
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld b, $07
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp b
    ld a, b
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ret c

    jr z, jr_0e7_61db

jr_0e7_61db:
    nop
    sbc b
    ld a, b
    nop
    nop
    ld a, $fe
    nop
    nop
    ld h, c
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp e
    rst $38
    ld b, b
    ret nz

    ld [hl], l
    ei
    ld b, b
    ret nz

    ei
    rst $38
    ld b, b
    ret nz

    rst $38
    rra
    ld b, b
    ret nz

    xor $1f
    ret nz

    ret nz

    dec c
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rlca
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    cp $fe
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
    db $fc
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
    inc b
    db $fc
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
    jr jr_0e7_629a

    nop
    nop
    inc [hl]
    inc l
    nop
    nop
    inc [hl]
    inc l
    ld bc, $5401
    ld l, h
    inc bc
    inc bc
    ld c, h
    ld [hl], h
    inc bc
    ld [bc], a
    ld l, [hl]
    db $76
    rlca
    dec b
    ld l, [hl]
    ld a, [hl]

jr_0e7_629a:
    dec c
    ld c, $7b
    ld h, a
    db $fd
    cp $3d
    ccf
    db $ed
    cp $2c
    inc sp
    sbc $ff
    inc d
    dec de
    add a
    rst $38
    ld [$800f], sp
    rst $38
    dec b
    rlca
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    adc a
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
    ld b, b
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    ld [hl], l
    ld a, e
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    jr nz, jr_0e7_631f

    nop
    nop
    jr nz, jr_0e7_6323

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
    jr z, @+$41

    nop
    nop
    jr z, @+$41

    nop
    nop
    jr z, jr_0e7_6337

    nop
    nop
    jr z, jr_0e7_633b

    nop
    nop
    inc a
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
    cpl
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc c

jr_0e7_631f:
    rrca
    nop
    nop
    inc b

jr_0e7_6323:
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
    ld bc, $0001
    nop
    inc bc

jr_0e7_6337:
    inc bc
    nop
    nop
    rrca

jr_0e7_633b:
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
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $ec
    inc e
    nop
    nop
    ld l, h
    db $f4
    nop
    nop
    db $f4
    inc c
    nop
    nop
    ld l, h
    sbc h
    nop
    nop
    rst $18
    ccf
    nop
    nop
    ccf
    rst $38
    ldh [$e0], a
    db $ec
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    db $f4
    db $fc
    nop
    rst $38
    db $ec
    db $f4
    nop
    rst $38
    db $f4
    db $fc
    nop
    rst $38
    call nc, Call_000_01ec
    rst $38
    or h
    call z, $ffe2
    or h
    call z, $ff1c
    adc d
    or $01
    rst $38
    ld e, d
    ld h, [hl]
    ld bc, $5aff
    ld h, [hl]
    ld [bc], a
    cp $5a
    ld h, [hl]
    cp $fe
    ld e, [hl]
    ld h, d
    ld [bc], a
    cp $22
    ld a, $02
    cp $3e
    ld a, $02
    cp $7a
    ld e, [hl]
    ld [bc], a
    cp $7a
    ld e, [hl]
    inc b
    db $fc
    ld e, [hl]
    ld a, [hl]
    inc b
    db $fc
    inc [hl]
    inc l
    inc b
    db $fc
    jr jr_0e7_63cc

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
    ld hl, sp-$08
    nop
    nop
    inc e
    db $fc
    nop
    nop

jr_0e7_63cc:
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
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $ff01
    rst $38
    ld bc, $f701
    db $fd
    nop
    nop
    adc d
    push af
    nop
    nop
    ld a, a
    ld a, b
    ld bc, $de01
    pop hl
    rrca
    rrca
    db $dd
    di
    rra
    rra
    db $e3
    rst $38
    dec a
    ccf
    cp a
    rst $38
    inc l
    ccf
    ld e, $ff
    ld a, $3f
    nop
    rst $38
    ld a, [hl+]
    scf
    nop
    rst $38
    dec l
    inc sp
    ld [bc], a
    rst $38
    ld e, l
    ld h, e
    rrca
    rst $38
    ld d, c
    ld l, a
    ldh a, [rIE]
    ld e, c
    ld h, a
    ld [hl], b
    ld a, a
    ld a, d
    db $76
    rra
    rra
    call nc, Call_000_38fc
    ccf
    db $fc
    cp h
    ld b, b
    ld a, a
    ld hl, sp-$08
    add b
    rst $38
    xor b
    ret c

    db $fc
    rst $38
    xor b
    ret c

    rst $38
    rst $38
    xor b
    ret c

    rst $38
    rst $38
    ret nc

    or b
    cp $ff
    ret nc

    or b
    add b
    rst $38
    ldh [$a0], a
    add b
    rst $38
    ld b, b
    ld b, b
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
    jr nz, jr_0e7_64e3

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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
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

jr_0e7_64e3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    nop
    nop
    rst $38
    rst $38
    ldh a, [$f0]
    rst $30
    rst $38
    ld c, $fe
    di
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    cp a
    push de
    or c
    rst $38
    or a
    db $dd
    add c
    rst $38
    ei
    db $fd
    ld bc, $8fff
    pop af
    ld bc, $7eff
    ld a, [hl]
    inc bc
    rst $38
    nop
    nop
    dec c
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    ldh a, [rIE]
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    ld a, [de]
    cp $00
    nop
    ld h, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    add d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    cp h
    cp h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    inc bc
    di
    dec c
    db $fd
    add $ff
    add c
    dec a
    ld a, $fe
    add c
    rlca
    rlca
    inc l
    di
    inc bc
    inc bc
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
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
    ld bc, $0001
    nop
    nop
    nop
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, l
    ld b, e
    ret nz

    ret nz

    ld a, a
    ld a, l
    ret nz

    ld b, b
    ld a, [hl]
    ld b, c
    ret nz

    ld b, b
    ld a, h
    ld d, e
    ret nz

    ret nz

    ld sp, hl
    rst $00
    ldh a, [$f0]
    db $d3
    rst $28
    add sp, -$08
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    dec e
    rst $38
    nop
    rst $38
    dec de
    db $fd
    nop
    rst $38
    dec e
    rst $38
    nop
    rst $38
    dec d
    ei
    db $10
    rst $38
    dec c
    di
    cp $ff
    dec l
    di
    ld bc, $e2ff
    db $fd
    nop
    rst $38
    ld d, $f9
    nop
    rst $38
    ld d, $f9
    jr nc, @+$01

    ld d, $f9
    rst $18
    rst $28
    rst $30
    ld hl, sp+$30
    rst $38
    jr z, @-$0f

    nop
    rst $38
    cpl
    rst $28
    nop
    rst $38
    ld a, $f7
    ld b, b
    rst $38
    ld a, $f7
    ld b, b
    rst $38
    ld d, a
    rst $18
    add b
    rst $38
    ld c, l
    res 0, b
    rst $38
    ld b, [hl]
    add $80
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ret nz

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
    ldh a, [rIE]
    ret nz

    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ccf
    ccf
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
    rra
    rra
    nop
    nop
    ccf
    ccf
    add b
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
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
    ld a, h
    ld a, a
    nop
    nop
    ld e, a
    ld h, b
    nop
    nop
    ccf
    ld [hl], $00
    nop
    dec hl
    inc [hl]
    nop
    nop
    ld [$01fd], a
    ld bc, $7bd5
    ld bc, $cf01
    ccf
    ld bc, $bb01
    ld [hl], a
    ld bc, $d801
    ld l, a
    ld bc, $ec01
    ld e, a
    ld bc, $fe01
    ld a, a
    ld bc, $f701
    jr c, @+$03

    ld bc, $fcfb
    inc bc
    inc bc
    push de
    ld a, $03
    inc bc
    sub d
    ld a, a
    ld bc, $b101
    ld a, a
    nop
    nop
    di
    rst $38
    nop
    nop
    ld a, l
    ld a, [hl]
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0e7_692b

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
    ld bc, $0001
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $fd01
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
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
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra

jr_0e7_692b:
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
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    xor b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, e
    rst $38
    add b
    add b
    ld [hl], l
    ei
    add b
    add b
    ld e, e
    cp a
    add b
    add b
    ld l, a
    sbc a
    nop
    nop
    sub c
    ld l, a
    nop
    nop
    pop hl
    rra
    nop
    nop
    ld b, c
    cp a
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld c, $fe
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $fc
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
    add h
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
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0e7_69f0:
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec c
    dec bc
    add c
    add c
    ld a, [bc]
    rrca
    jp Jump_000_0f43


    rrca
    add e
    add d
    rrca
    rrca
    add e
    add e
    ld c, $0f
    add a
    add h
    ld [$850f], sp
    add [hl]
    ld d, $19
    db $fd
    cp $16
    add hl, de
    cp $ff
    rla
    jr jr_0e7_6a4c

    rst $38
    rla
    jr jr_0e7_69f0

    ld a, a
    dec bc
    inc c
    and e
    ld a, a
    rlca
    ld b, $47
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    ld h, b
    ld a, a

jr_0e7_6a4c:
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0e7_6a97

    nop
    nop
    jr nz, jr_0e7_6a9b

    nop
    nop
    ld a, $3f
    nop
    nop
    dec [hl]
    dec sp
    nop
    nop
    ld l, $3f
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
    add a
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $0401
    rst $38
    nop
    nop
    add h

jr_0e7_6a97:
    rst $38
    nop
    nop
    add h

jr_0e7_6a9b:
    rst $38
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
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0e7_6b02

    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    db $ec
    call c, RST_00
    sub $fa
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $f4
    inc a
    nop
    nop
    ld b, h
    cp h
    nop
    nop
    db $f4
    inc c
    nop
    nop
    scf
    rst $08
    add b
    add b
    cp c
    rst $00
    ret nz

    ret nz

    cp [hl]
    pop bc
    ldh [$e0], a
    rst $18
    ldh [rSVBK], a
    ldh a, [$ee]
    pop af
    ld [hl], b
    ldh a, [rNR23]
    rst $30

jr_0e7_6b02:
    ld d, b
    ldh a, [$08]
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ldh [$e0], a
    ld [$c0ff], sp
    ret nz

    pop af
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    rst $38
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
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ret z

    ld hl, sp+$00
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
    db $fc
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $f701
    rrca
    ld bc, $ff01
    push af
    inc bc
    inc bc
    ei
    dec b
    rlca
    rlca
    di
    ld c, a
    ld c, $0f
    and $1f
    ld c, $0f
    ld c, b
    cp a
    ld c, $0f
    ldh a, [rIE]
    ld c, $0f
    ld h, b
    rst $38
    rlca
    rlca
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    inc bc
    rst $38
    inc bc
    inc bc
    daa
    rst $38
    ld bc, $fe01
    db $fd
    ld bc, $8e01
    db $fd
    nop
    nop
    rst $08
    rst $38
    nop
    nop
    adc $ff
    nop
    nop
    ld a, e
    ld [hl], a
    nop
    nop
    ld c, [hl]
    ld a, a
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
    ld b, a
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    jr nz, jr_0e7_6dbf

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
    ccf
    ccf
    nop
    nop
    ld a, a

jr_0e7_6dbf:
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
    ldh [$e0], a
    nop
    nop
    cp $fe
    nop
    nop
    ld [hl], a
    rst $38
    nop
    nop
    rst $28
    rst $38
    add b
    add b
    ld e, $ff
    ret nz

    ret nz

    dec a
    cp $40
    ret nz

    ld a, $ff
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    ld l, a
    ldh a, [rLCDC]
    ret nz

    rst $28
    ldh a, [rLCDC]
    ret nz

    and [hl]
    ld sp, hl
    ld b, b
    ret nz

    ldh a, [$8f]
    add b
    add b
    cp $81
    add b
    add b
    ld c, l
    di
    nop
    nop
    and d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop
    rra
    rst $38
    add b
    add b
    cp b
    rst $38
    ld a, h
    db $fc
    ldh a, [rIE]

jr_0e7_6e42:
    ld a, h
    db $fc
    ldh [rIE], a
    ld a, h
    db $fc
    ld b, b
    rst $38
    inc a
    db $fc
    jr nz, @+$01

    ld a, h
    db $fc
    rra
    rst $38
    cp h
    cp h
    db $10
    ldh a, [rNR32]
    inc e
    db $10
    ldh a, [rNR32]
    inc e
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0e7_6e42

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
    nop
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
    ei
    add a
    nop
    nop
    rst $38
    ld a, [$0303]
    db $fd
    add d
    rlca
    rlca
    ld a, c
    and a
    rrca
    rrca
    ld [hl], e
    adc a
    ld c, $0f
    and [hl]
    rst $18
    ld c, $0f
    db $fc
    rst $38
    ld c, $0f
    jr nc, @+$01

    ld c, $0f
    nop
    rst $38
    dec bc
    dec c
    nop
    rst $38
    dec b
    rlca
    jr nz, @+$01

    dec b
    rlca
    rst $38
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8101
    rst $38
    ld bc, $9f01
    rst $38
    nop
    nop
    ei
    rst $30
    ld bc, $ef01
    cp a
    ld bc, $a001
    rst $38
    nop
    nop
    add sp, -$01
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr z, jr_0e7_6f33

    nop
    nop
    jr jr_0e7_6f17

    nop
    nop
    ld a, $3f
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0e7_6f43

    nop
    nop
    jr jr_0e7_6f27

    nop
    nop
    jr jr_0e7_6f2b

    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, [bc]

jr_0e7_6f17:
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld b, $06
    nop
    nop
    ld bc, $0001
    nop
    rlca

jr_0e7_6f27:
    rlca
    nop
    nop
    rrca

jr_0e7_6f2b:
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e7_6f33:
    nop
    nop
    nop
    ld bc, $0001
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop

jr_0e7_6f43:
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
    ld hl, sp-$08
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    dec a
    rst $38
    ret nz

    ret nz

    ld a, e
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    or b
    ldh a, [rIF]
    rst $38
    ld d, b
    or b
    rrca
    rst $38
    or b
    ldh a, [rIE]
    rst $38

jr_0e7_6f7e:
    ldh a, [$f0]
    dec de
    db $fc
    ret nc

    jr nc, jr_0e7_6fa0

    db $fc
    ld d, b
    or b
    ld [$d0ff], sp
    jr nc, jr_0e7_6f7e

    cp $a0
    ld h, b
    or a
    ld a, b
    and b
    ld h, b
    or a
    ld a, b
    ld b, b
    ret nz

    ldh a, [rIE]
    add b
    add b
    inc bc
    rst $38
    nop
    nop

jr_0e7_6fa0:
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
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

jr_0e7_6fba:
    nop
    nop
    ld hl, sp-$08

jr_0e7_6fbe:
    nop
    nop
    jr z, jr_0e7_6fba

    nop
    nop
    jr jr_0e7_6fbe

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
    db $ec
    db $fc
    nop
    nop
    db $f4
    db $fc
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
    db $fc
    db $fc
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh [$e0], a
    nop
    nop
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
    ld a, l
    ld b, e
    nop
    nop
    ld a, a
    ld a, l
    nop
    nop
    ld a, [hl]
    ld b, c
    nop
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld sp, hl
    rst $00
    inc bc
    inc bc
    db $d3
    rst $28
    dec b
    rlca
    cp [hl]
    rst $38
    inc c
    rrca
    jr nc, @+$01

    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    dec bc
    dec c
    db $10
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    rlca
    inc b
    add b
    rst $38
    dec b
    ld b, $80
    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    rlca
    ld b, $ce
    ld a, a
    rrca
    inc c
    ld [hl], l
    cp e
    rrca
    inc c
    ld l, [hl]
    cp a
    ld b, $07
    ld h, b
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    jr z, @+$41

    nop
    nop
    rla
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    jr jr_0e7_7093

    nop
    nop
    ld e, $1f
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc hl
    ccf
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

Call_0e7_7090:
    nop
    nop
    ld b, b

jr_0e7_7093:
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
    ld l, $3f
    nop
    nop
    ld e, $1f
    inc bc
    inc bc
    db $fd
    db $fd
    inc b
    rlca
    ld a, [hl]
    cp $03
    inc bc
    ld e, $fe
    nop
    nop
    call nz, Call_000_00fc
    nop
    jr c, @+$3a

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

jr_0e7_70c7:
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

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    rst $38
    add b
    add b
    scf
    rst $38
    ret nz

    ret nz

    ld [hl], a
    rst $38
    ld h, b
    ldh [$0e], a
    rst $38
    and b
    ld h, b
    rrca
    rst $38
    ld [hl], b
    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ret nc

    jr nc, jr_0e7_7134

    db $fc
    ret nc

    jr nc, jr_0e7_70c7

    db $fd
    db $10
    ldh a, [$03]
    db $fc
    ret nc

    jr nc, jr_0e7_710c

    ld hl, sp-$30
    jr nc, jr_0e7_7128

    db $fc
    and b
    ld h, b

jr_0e7_710c:
    dec sp
    or $40
    ret nz

    ld a, [$80d7]
    add b
    ccf
    rst $18
    nop
    nop
    add hl, de
    rst $20
    nop
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop

jr_0e7_7124:
    ld bc, $00ff
    nop

jr_0e7_7128:
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop

jr_0e7_7134:
    rrca
    rst $38
    nop
    nop
    sbc b
    rst $38
    add b
    add b
    ldh a, [rIE]
    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0e7_7124

    jr nz, @+$01

    db $10
    ldh a, [rNR41]
    rst $38
    ld [$30f8], sp
    rst $38
    ld [$28f8], sp
    rst $28
    ldh a, [$f0]
    daa
    rst $20
    ldh [$e0], a
    ld hl, $f0e1
    ldh a, [rLCDC]
    ret nz

    ld hl, sp-$08
    ld b, b
    ret nz

    ld hl, sp-$08
    add c
    add c
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
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
    ld a, a
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
    ei
    add a
    nop
    nop
    rst $38
    ld a, [$0000]
    db $fd
    add d
    nop
    nop
    ld sp, hl
    and a
    inc bc
    inc bc
    di
    adc a
    rlca
    rlca
    and [hl]
    rst $18
    ld c, $0f
    ld a, h
    rst $38
    inc e
    rra
    ld h, b
    rst $38
    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    ld e, $1f
    db $10
    rst $38
    rrca
    dec bc
    rst $38
    rst $38
    rrca
    add hl, bc
    nop
    rst $38
    ld a, c
    ld [hl], a
    nop
    rst $38
    di
    call z, $ff80
    db $eb
    sub h
    sbc h
    rst $38
    db $eb
    sub l
    db $eb
    rst $30
    jp z, $5cfe

    ld a, a
    ld a, h
    ld a, h
    ld b, b
    ld a, a
    nop
    nop
    ld d, c
    ld a, a
    nop
    nop
    ld c, [hl]
    ld a, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr @+$21

    nop
    nop
    jr @+$21

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
    jr nz, jr_0e7_7247

    nop
    nop
    jr nz, jr_0e7_724b

    nop
    nop
    jr nz, jr_0e7_724f

    nop
    nop
    jr nz, jr_0e7_7253

    nop
    nop
    jr nz, jr_0e7_7257

    nop
    nop
    jr nz, jr_0e7_725b

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
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    ld bc, $1f01
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld sp, $003f
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e7_7247:
    nop
    nop
    nop
    nop

jr_0e7_724b:
    nop
    add b
    add b
    nop

jr_0e7_724f:
    nop
    add b
    add b
    nop

jr_0e7_7253:
    nop
    add b
    add b
    nop

jr_0e7_7257:
    nop
    add b
    add b
    nop

jr_0e7_725b:
    nop
    db $fc
    db $fc
    nop
    nop
    and $fe
    nop
    nop

jr_0e7_7264:
    rst $18
    rst $38
    nop
    nop
    db $db
    rst $38
    add b
    add b
    dec [hl]
    ei
    add b
    add b
    dec sp
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rra
    ld hl, sp+$40
    ret nz

    rst $30
    ld hl, sp+$40
    ret nz

    inc de
    db $fc
    jr nz, jr_0e7_7264

    ld [$a0ff], sp
    ld h, b
    dec de
    db $fc
    and b
    ld h, b
    dec de
    db $fc
    and b
    ld h, b
    inc a
    rst $38
    and b
    ld h, b
    adc $ff
    and b
    ldh [rTAC], a
    ld a, [$e060]
    rlca
    ei
    ldh [$e0], a

jr_0e7_72a0:
    rlca
    db $fc
    ret nz

    ld b, b
    inc bc
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld [$c0ff], sp
    ret nz

    ret nc

    rst $38
    jr nz, jr_0e7_72a0

    ldh [rIE], a
    db $10
    ldh a, [rNR41]
    rst $38
    ld [$20f8], sp
    rst $38
    db $10
    ldh a, [$38]
    rst $38
    inc a
    db $fc
    ld h, $e7
    ld a, [hl]
    cp $21
    pop hl
    cp [hl]
    cp [hl]
    jr nz, @-$1e

    inc a
    inc a
    ret nz

    ret nz

    inc a
    inc a
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
    ld a, l
    ld b, e
    nop
    nop
    ld a, a
    ld a, l
    nop
    nop
    ld a, [hl]
    ld b, c
    nop
    nop
    db $fc
    db $d3
    ld bc, $7901
    rst $00
    inc bc
    inc bc
    ld d, e
    rst $28
    rlca
    rlca
    ld a, $ff
    rlca
    rlca
    inc a
    rst $38
    rrca
    rrca
    nop
    rst $38
    rrca
    rrca
    add b
    rst $38
    dec e
    ld e, $80
    rst $38
    dec a
    ld [hl-], a
    add h
    rst $38
    ld a, d
    ld h, l
    rst $38
    rst $38
    ld a, e
    ld h, h
    add b
    rst $38
    inc sp
    ld a, $c0
    ld a, a
    ld e, $1f
    ld c, [hl]
    rst $38
    ld bc, $f501
    ei
    nop
    nop
    ld c, [hl]
    ld a, a
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
    inc hl
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    inc de
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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

jr_0e7_73dc:
    ret nz

    ld b, b
    nop
    nop
    db $fc
    ld a, h
    nop
    nop
    or $fe
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    ld e, $ff
    add b
    add b
    dec e
    cp $40
    ret nz

    ld e, $ff
    ret nz

    ret nz

    rra
    rst $38
    ldh [$e0], a
    rrca
    db $fc
    sub b
    ld [hl], b
    inc bc
    db $fc
    sub b
    ld [hl], b
    inc [hl]
    rst $38
    add sp, $18
    add $ff
    ld l, b
    sbc b
    rlca
    rst $38
    ld l, b
    sbc b
    dec c
    db $fd
    jr c, jr_0e7_73dc

    dec e
    db $fd
    ld a, b
    ld hl, sp-$1b
    db $fd
    sbc h
    db $ec
    dec b
    db $fd
    db $fc
    call nc, $fe02
    db $fc
    db $f4
    ld b, d
    cp $78
    ld c, b
    add d
    cp $30
    jr nc, jr_0e7_742f

    cp $00

jr_0e7_742f:
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
    inc bc
    rst $38
    ldh a, [$f0]
    db $fd
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    add e
    rst $38
    ldh a, [$f0]
    add e
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh [$e0], a
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, c
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $f701
    rrca
    ld bc, $ff01
    push af
    ld bc, $fb01
    dec b
    ld bc, $f301
    ld c, a
    rlca
    rlca
    rst $20
    rra
    rrca
    rrca
    ld c, l
    cp a
    inc e
    rra
    ld hl, sp-$01
    jr c, jr_0e7_74f1

    ret nz

    rst $38
    jr c, jr_0e7_74f5

    nop
    rst $38
    jr c, jr_0e7_74f9

    nop
    rst $38
    inc a
    ccf
    ld hl, $1fff
    rla
    cp $ff
    ld a, [hl]
    ld [hl], e
    nop
    rst $38
    ld a, [c]
    rst $08
    nop
    rst $38
    rst $20
    sbc c
    nop
    rst $38
    rst $20
    sbc c
    jr c, @+$01

    rst $00
    ei
    rst $10
    rst $28
    ld a, h
    ld a, h
    cp b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    and d
    rst $38
    ld bc, $1c01
    rst $38
    ld bc, $0801
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a

jr_0e7_74f1:
    inc bc
    inc b
    rst $38
    inc b

jr_0e7_74f5:
    rlca
    inc b
    rst $38
    rlca

jr_0e7_74f9:
    rlca
    and $ff
    rlca
    rlca
    cp $ff
    ld [bc], a
    inc bc
    rlca
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
    cp a
    rst $38
    nop
    nop
    ld e, a
    ld e, a
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
    ld a, h
    ld a, h
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
    ld hl, sp-$08
    nop
    nop
    call z, Call_000_00fc
    nop
    cp [hl]
    cp $00
    nop
    or a
    rst $38
    nop
    nop
    ld l, e
    rst $30
    nop
    nop
    ld [hl], a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, $f1
    add b
    add b
    xor $f1
    add b
    add b
    ld h, $f9
    ld b, b
    ret nz

    ld de, $40fe
    ret nz

    scf
    ld hl, sp+$40
    ret nz

    scf
    ld hl, sp+$40
    ret nz

    ld a, c
    cp $40
    ret nz

    sbc l
    rst $38
    ld b, b
    ret nz

    ld c, $f5
    ret nz

    ret nz

    rrca
    rst $30
    ret nz

    ret nz

    rrca
    ld hl, sp-$80
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
    ld [bc], a
    cp $00
    nop
    ld e, $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ld bc, $00ff
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
    nop
    rst $38
    add b
    add b
    rst $08
    rst $38
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
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
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    db $fc
    db $fc
    nop
    nop
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
    ld a, l
    ld b, e
    nop
    nop
    ld a, a
    ld a, l
    nop
    nop
    ld a, [hl]
    ld b, c
    nop
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld sp, hl
    rst $00
    inc bc
    inc bc
    db $d3
    rst $28
    dec b
    rlca
    cp [hl]
    rst $38
    inc c
    rrca
    jr nc, @+$01

    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    inc e
    rra
    nop
    rst $38
    dec bc
    dec c
    db $10
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    rlca
    inc b
    add b
    rst $38
    dec b
    ld b, $80
    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    rlca
    ld b, $ce
    ld a, a
    rrca
    inc c
    ld [hl], l
    cp e
    rrca
    inc c
    ld l, [hl]
    cp a
    ld b, $07
    ld h, b
    rst $38
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    add e
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0001
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ld hl, sp-$01
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$040f], sp
    db $fc
    ld [$040f], sp
    db $fc
    dec b
    rlca
    ret z

    ld hl, sp+$03
    inc bc
    ret z

    ld hl, sp+$7f
    ld a, a
    or b
    or b
    sbc a
    rst $38
    ret nz

    ret nz

    ld h, a
    ld a, a
    ret nz

    ret nz

    add hl, de
    rra
    add b
    add b
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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop

jr_0e7_76c7:
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

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ei
    rst $38
    add b
    add b
    scf
    rst $38
    ret nz

    ret nz

    ld [hl], a
    rst $38
    ld h, b
    ldh [$0e], a
    rst $38
    and b
    ld h, b
    rrca
    rst $38
    ld [hl], b
    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ret nc

    jr nc, jr_0e7_7734

    db $fc
    ret nc

    jr nc, jr_0e7_76c7

    db $fd
    db $10
    ldh a, [$03]
    db $fc
    ret nc

    jr nc, jr_0e7_770c

    ld hl, sp-$30
    jr nc, jr_0e7_7728

    db $fc
    and b
    ld h, b

jr_0e7_770c:
    dec sp
    or $40
    ret nz

    ld a, [$80d7]
    add b
    ccf
    rst $18
    nop
    nop
    add hl, de
    rst $20
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop

jr_0e7_7724:
    add c
    rst $38
    nop
    nop

jr_0e7_7728:
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b

jr_0e7_7734:
    add b
    rst $38
    add b
    add b
    ei
    rst $38
    ret nz

    ret nz

    cp $ff
    ld b, b
    ret nz

    ld [hl], b
    ld a, a
    jr nz, jr_0e7_7724

    jr nz, jr_0e7_7785

    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [rNR10]
    rra
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    inc b
    rlca
    ld a, b
    ld hl, sp+$03
    inc bc
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
    db $fc
    db $fc
    ld bc, $f801
    ld hl, sp+$03
    inc bc
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

jr_0e7_7785:
    nop
    nop
    nop
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    rlca
    rlca
    db $fc
    db $fc
    rlca
    inc b
    call c, $073c
    rlca
    db $fc
    call nc, Call_000_1c1f
    db $ec
    inc d
    dec sp
    dec a
    rst $08
    ccf
    ld a, e
    ld a, h
    sbc a
    ld a, a
    ld [hl], l
    ld a, [hl]
    ld sp, $77ff
    ld a, a
    db $e3
    rst $38
    ld [hl], c
    ld a, a
    add b
    rst $38
    ld [hl], b
    ld a, a
    nop
    rst $38
    ld e, b
    ld l, a
    nop
    rst $38
    add hl, hl
    ccf
    rlca
    rst $38
    cpl
    ccf
    ld hl, sp-$01
    inc d
    rra
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    rrca
    rst $38
    inc c
    rrca
    db $fd
    ei
    rlca
    rlca
    db $dd
    cp e
    rrca
    dec c
    ld a, a
    rst $38
    dec c
    rrca
    nop
    rst $38
    rlca
    rlca
    ld b, h
    rst $38
    ld [bc], a
    inc bc
    jr c, @+$01

    ld [bc], a
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    db $10
    rst $38
    inc b
    rlca
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    inc c
    rst $38
    rlca
    rlca
    call z, $0fff
    rrca
    rst $38
    rst $38
    ld [$3f0f], sp
    rst $38
    ld [$090f], sp
    ld sp, hl
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    and b
    ldh [$03], a
    inc bc
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld c, a
    ld a, a
    ret nz

    ret nz

    daa
    ccf
    ret nz

    ret nz

    inc de
    rra
    ret nz

    ret nz

    inc c
    rrca
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    xor $fe
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    dec a
    rst $38
    add b
    add b
    ld a, d
    db $fd
    add b
    add b
    ld a, l
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc $e1
    add b
    add b
    jp c, $80e5

    add b
    ld b, [hl]
    ld sp, hl
    add b
    add b
    adc l
    di
    nop
    nop
    cp l
    jp RST_00


    cp d
    add $00
    nop
    add h
    db $fc
    nop
    nop
    jr @-$06

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0e7_78a8:
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
    ld [hl-], a
    cp $00
    nop
    pop hl
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    jr nz, jr_0e7_78a8

    add b
    rst $38
    ret nz

    ret nz

    pop bc
    rst $38
    ldh [$e0], a
    inc sp
    ccf
    ldh a, [$f0]
    dec c
    dec c
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $c0c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Jump_0e7_7cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
