SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    ld a, [hl]
    inc bc
    cpl
    inc bc
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0003
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [hl], l
    adc d
    xor d
    ld d, l
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ret nc

    cpl
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    jr c, jr_028_404d

jr_028_404d:
    ret nz

    inc bc
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    ld a, h
    cp b
    cp b
    ret c

    ret c

    ret c

    ret c

    ld l, b
    ld l, b
    ld a, b
    ld [hl], b
    or h
    or b
    jp nc, $c1d0

    ret nz

    pop af
    ldh [$d0], a
    ret nz

    adc b
    add b
    inc b
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ld b, b

jr_028_40a0:
    ret nz

    ld a, a

jr_028_40a2:
    ldh [$7f], a

jr_028_40a4:
    ld h, b
    ccf

jr_028_40a6:
    or b
    ccf

jr_028_40a8:
    ldh a, [$1f]

jr_028_40aa:
    ldh a, [$1f]

jr_028_40ac:
    ld hl, sp+$1f

jr_028_40ae:
    ld hl, sp+$0f

jr_028_40b0:
    inc bc
    inc c

jr_028_40b2:
    inc bc
    inc c

jr_028_40b4:
    inc bc
    inc b

jr_028_40b6:
    ld bc, $0106
    ld [bc], a

jr_028_40ba:
    ld bc, $0002
    inc bc
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

jr_028_40d0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ldh [rP1], a
    and b
    ld b, b
    jr nz, jr_028_40a0

    jr nz, jr_028_40a2

    jr nz, jr_028_40a4

    jr nz, jr_028_40a6

    jr nz, jr_028_40a8

    jr nz, jr_028_40aa

    jr nz, jr_028_40ac

    jr nz, jr_028_40ae

    jr nz, jr_028_40b0

    jr nz, jr_028_40b2

    jr nz, jr_028_40b4

    jr nz, jr_028_40b6

    jr nz, @-$3e

    jr nz, jr_028_40ba

    and b
    ret nz

    ld h, b
    rst $18
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

    cp a
    ret nz

    cp a
    ret nz

    ld h, b
    rst $18
    jr nz, jr_028_40d0

    and b
    ret nz

    and b
    ret nz

    rst $38
    rst $38
    ret nz

    rst $38
    pop bc
    ld a, a
    rst $38
    ld a, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    db $10
    rra
    rra
    rra
    nop
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $fe
    nop
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
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
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
    ld bc, $00ff
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
    nop
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    scf
    di
    ccf
    pop af
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
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
    inc bc
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
    ldh [rIE], a
    rra
    rra
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    dec bc
    rlca
    ei
    rrca
    ld a, [c]
    rrca
    add sp, $1f
    jp hl


    rra
    ld bc, $00ff
    rst $38
    db $10
    rst $28
    ld [hl-], a
    rst $08
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add d
    db $fd
    ld de, $c8ee
    or a
    and h
    db $db
    sub d
    db $ed
    ld a, a
    nop
    jr nz, jr_028_431b

    nop
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
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    ldh [$80], a
    sub b

jr_028_431b:
    ldh a, [$b0]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rP1], a
    ret nz

    ld b, c
    pop bc
    ld bc, $4d81
    call $a420
    ld [de], a
    sub d
    ld [de], a
    sub [hl]
    ld [de], a
    sub [hl]
    or l
    or c
    add $c8
    and d
    xor b
    and h
    xor b
    ld [c], a
    and $20
    inc h
    add h
    add h
    sub b
    sub b
    nop
    ld [$2c24], sp
    inc d
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    jr nz, jr_028_4398

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr nz, jr_028_439e

    ld b, $06
    db $10
    db $10
    cpl
    cpl
    ld e, h
    ld e, h
    inc bc
    inc hl
    ld c, c
    ld c, c
    dec sp
    dec sp
    rst $38
    rst $38
    ld c, a
    ld c, a
    ld e, c
    ld e, c
    ld [hl], b
    ld [hl], b
    jr nc, jr_028_43c6

    inc de
    inc de

jr_028_4398:
    ld a, $3e
    dec c
    dec c
    ld c, $0e

jr_028_439e:
    daa
    daa
    dec de
    dec de
    inc l
    inc l
    add hl, hl
    add hl, hl
    db $10
    db $10
    jr nz, jr_028_43ca

    inc sp
    inc sp
    jr nc, jr_028_43de

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    dec d
    dec d
    add hl, bc
    add hl, bc
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop

jr_028_43c6:
    nop
    nop
    nop
    nop

jr_028_43ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    db $10
    rra
    ldh [$e0], a
    rra

jr_028_43de:
    nop
    rst $38
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    ret nz

    ldh a, [$f0]
    xor b
    xor b
    ld h, b
    ld h, h
    ldh [$e2], a
    add c
    add c
    pop bc
    pop bc
    jr nc, jr_028_442a

    ld a, l
    ld a, l
    ld b, c
    ld b, c
    or e
    or e
    call z, Call_028_66cc
    ld h, [hl]
    rst $20
    rst $20
    or a
    or a
    or l
    or l
    ld d, h
    ld d, h
    ld l, b
    ld l, b
    jp nz, $50c2

    ld d, b
    ld h, b
    ld h, [hl]
    add b
    sbc a
    add b
    sbc e
    ld h, b
    ld h, [hl]
    jr c, jr_028_4452

    inc e
    inc e
    add [hl]
    add [hl]
    inc bc
    inc bc
    ld bc, $1001
    db $10
    adc b
    adc b
    ld b, h
    ld b, h
    ld h, d
    ld h, d
    jr nz, jr_028_444a

jr_028_442a:
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
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
    nop
    rst $38
    nop

jr_028_444a:
    rst $30
    ld [$43bc], sp
    nop
    rst $38
    nop
    nop

jr_028_4452:
    nop
    nop
    nop
    ld h, b
    jr nz, jr_028_44a8

    or b
    ret z

    ret c

    db $e4
    xor h
    or d
    add $c9
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
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
    nop
    ret nz

    nop
    ld b, d
    add b
    or b
    nop
    ld hl, sp+$02
    xor $00
    ld h, h
    add b
    cp h
    call nz, $40c4
    ld b, b
    jr nz, jr_028_44ae

    jr jr_028_44a0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    jr nz, jr_028_44c0

jr_028_44a0:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_028_44a8:
    rst $18
    jr nz, jr_028_44f7

    or e
    add b
    ld a, a

jr_028_44ae:
    nop
    rst $38
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_028_4517

    sub b
    or b
    ret z

    nop
    jr c, jr_028_44bd

jr_028_44bd:
    nop
    add c
    add c

jr_028_44c0:
    inc bc
    inc bc
    ld b, c
    ld b, c
    nop
    nop
    ret nz

    ret nz

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    nop

jr_028_44e1:
    nop
    nop
    nop

jr_028_44e4:
    ld [$0008], sp
    nop
    ld [$1408], sp
    inc d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp a

jr_028_44f7:
    ld b, b
    jr jr_028_44e1

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld b, b
    jr nz, jr_028_44e4

    ldh [$80], a
    ld a, b
    adc b
    ld a, b
    ld c, b
    jr jr_028_4534

    inc de
    inc de
    rlca
    inc b
    inc bc
    nop
    ld bc, $0702
    rlca
    ld [bc], a

jr_028_4517:
    ld [bc], a
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    inc bc
    inc bc
    adc e
    adc e
    nop
    ld bc, $0101

jr_028_4534:
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $0504
    ld b, $01
    ld bc, $0807
    ld bc, $0101
    ld bc, $0903
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $1110
    ld [de], a
    inc de
    inc d
    ld bc, $1615
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    rrca
    dec e
    ld e, $1f
    jr nz, jr_028_4586

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_4596

    rrca
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_028_45a7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_458d

    rrca
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_028_4586:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_028_458d:
    rrca
    rrca
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_028_4596:
    ld c, [hl]
    ld c, a
    ld d, b
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
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_028_45a7:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rrca
    ld h, [hl]
    rrca
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
    ld [hl], d
    ld [hl], e
    ld [hl], h
    rrca
    rrca
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
    rrca
    rrca
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
    rrca
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
    sbc a
    and b
    rrca
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
    rrca
    rrca
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
    rrca
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
    add l
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
    jr jr_028_4687

    ld a, [de]
    dec de
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld b, $01
    ld bc, $0202
    ld bc, $0101

jr_028_4687:
    ld bc, $0242
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld b, $00
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
    ld b, $00
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
    ld b, $00
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
    ld b, $00
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
    ld b, $06
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
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld b, $02
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
    ld [bc], a
    ld b, $02
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
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld a, e
    add h
    rst $18
    jr nz, @-$04

    dec b
    ld a, [$6005]
    sbc a
    ret nz

    ccf
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
    rst $38
    rst $38
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca
    ld [$050f], sp
    ld a, [bc]
    rrca
    nop
    dec b
    ld b, $01
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
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$1010], sp
    jr nc, jr_028_483a

    jr nz, jr_028_482c

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    rra

jr_028_482c:
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    rra
    ld c, $1f
    rra

jr_028_483a:
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0203
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$0807], sp
    rra
    db $10
    ccf
    jr nz, @+$21

    ld hl, $d2ee
    ld [bc], a
    cp $00
    rst $38
    dec b
    ld a, [$fd02]
    add c
    ld a, [hl]
    db $fc
    inc bc
    ld e, a
    ld h, b
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    rrca
    rrca
    rrca
    rrca
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    db $10
    db $10
    jr nz, jr_028_48a0

    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b

jr_028_48a0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0701
    rlca
    rrca
    rrca
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf

jr_028_48e9:
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
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
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    ld b, $05
    inc bc
    inc b
    ld c, $09
    rra
    db $10
    rrca
    ld de, $233d
    ld a, [hl]
    ld b, d
    jr c, jr_028_4960

    db $fc
    add h
    ldh a, [$08]
    ld hl, sp+$08
    ldh a, [rNR10]
    ret nz

    jr nz, @-$1e

    jr nz, jr_028_48e9

    ld b, b
    ret nz

    ld b, b
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
    ldh [$e0], a
    inc e
    db $fd
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $18
    ldh [$ed], a
    xor $f7
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

jr_028_4960:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$4f

    ld d, b
    rst $20

jr_028_497b:
    jr jr_028_497b

    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp $ff
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $18
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

jr_028_49a9:
    rst $38
    rst $38
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $f4
    rst $38
    rst $38

jr_028_49be:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $1f
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $05
    add hl, bc
    ld c, $05
    ld a, [bc]
    dec de
    dec d
    dec [hl]
    dec hl
    ld c, $32
    ld a, b
    ld b, h
    db $f4
    adc h
    jr c, jr_028_49be

    ret z

    jr c, jr_028_49a9

    ld d, b
    add b
    ld h, b
    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0203
    ld bc, $0702
    inc b
    inc bc
    inc b
    ld b, $09
    rla
    jr jr_028_4a2a

    db $10
    ccf
    jr nz, @+$1d

    inc h
    ld a, a
    ld b, b
    ld a, $41
    db $fd
    add d
    rst $38
    nop
    ei
    inc b

jr_028_4a2a:
    ld a, a
    add b
    inc bc
    db $fc
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ret nc

    cpl
    ld sp, hl
    ld b, $df
    ldh [$fb], a
    db $fc
    adc a
    adc a
    rst $20
    rst $20
    ld [hl+], a
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    rra
    inc [hl]
    ccf
    ld a, d
    ld a, a
    cp $ff
    ld hl, sp-$01
    rst $30
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    cp e
    rst $38
    ld [hl], d
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    adc e
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    pop bc
    pop bc
    ld [c], a
    db $e3
    ld [c], a
    db $e3
    db $f4
    rst $30
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    db $e4
    ld a, [$fee2]
    ret z

    db $f4
    adc h
    db $f4
    adc b
    ld hl, sp+$00
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $05
    ld [$000f], sp
    rrca
    ld [de], a
    dec e
    ld [$3117], sp
    ld l, $4c
    ld [hl], e
    ld h, b
    ld e, a
    ret c

    and a
    ld d, h
    xor e
    sbc c
    ld h, [hl]
    db $e3
    inc e
    or e
    ld c, h
    ld e, e
    and h
    and $19
    ld d, [hl]
    xor c
    cp $01
    xor [hl]
    ld d, c
    cp d
    ld b, l
    ld a, l
    add d
    ld [hl], a
    adc b
    db $fd
    ld [bc], a
    ei
    inc b
    cp $01
    or $09
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $28
    db $10
    ld a, e
    add h
    inc bc
    db $fc
    add b
    ld a, a
    ld [$01f7], sp
    cp $a5
    ld e, d
    ld hl, sp+$07
    cp a
    ret nz

    dec de
    inc e
    db $76
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    cpl
    ret nc

    add e
    ld a, h
    pop de
    ld l, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $30
    db $10
    rst $38
    set 7, a
    ld b, c
    rst $38
    ld b, $ff
    ld c, l
    rst $38
    sub a
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    add sp, -$01
    ldh a, [rIE]
    or b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    inc d
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    sub $ff
    rst $38
    rst $38

jr_028_4b78:
    rst $28
    rst $38

jr_028_4b7a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    jr nz, jr_028_4b78

    jr nz, jr_028_4b7a

    ld b, b
    ret nz

    nop
    add b
    add b
    add b
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    inc d
    rra
    jr nz, jr_028_4bf3

    jr nz, @+$41

    ld b, d
    ld a, a
    nop
    ld a, a
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38

jr_028_4bc6:
    ld [bc], a
    db $fd
    ld [$89f7], sp
    ld [hl], a
    db $10
    rst $28
    ld de, $20ee
    rst $18
    ld c, d
    or l
    ld b, d
    cp l
    call nc, $a42b
    ld e, e
    sub h
    ld l, e
    ld e, c
    and [hl]
    ld d, l
    xor d
    ld [hl], h
    adc e
    or d
    ld c, l
    and [hl]
    ld e, c
    ld l, c
    sub [hl]
    rst $00
    jr c, jr_028_4bc6

    inc h
    sub a
    ld l, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a

jr_028_4bf3:
    add b
    xor $11
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    cp $01
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld a, [bc]
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    inc l
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$a0]
    ld e, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    dec b
    ld a, [$fb04]
    nop
    rst $38
    sub h
    db $eb
    nop
    rst $38
    ld [de], a
    db $ed
    dec l
    jp nc, $fe01

    db $10
    rst $28
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    cp $ff
    pop de
    rst $38
    or b
    rst $38
    and b
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld d, h
    ld a, a
    adc b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    ld b, c
    rst $38
    and c
    rst $38
    and d
    rst $38
    ld b, c
    rst $38
    ld b, h
    rst $38
    add d
    rst $38
    ld b, $ff
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    ld [bc], a
    db $fd
    add h
    ei
    inc d
    db $eb
    inc h
    db $db
    inc e
    db $e3
    ld d, h
    xor e
    cp b
    ld b, a
    sbc b
    ld h, a
    ld [hl], b
    adc a
    jr nc, @-$2f

    db $e4
    dec de
    db $e4
    dec de
    add sp, $17
    pop bc
    ld a, $d2
    dec l
    add e
    ld a, h
    xor d
    ld d, l
    and l
    ld e, d
    ld d, [hl]
    xor c
    ld e, e
    and h
    xor l
    ld d, d
    sub a
    ld l, b
    ld e, l
    and d
    cpl
    ret nc

    ld e, a
    and b
    ld a, a
    add b
    rst $18
    jr nz, jr_028_4d62

    add b
    cp a
    ld b, b
    rra
    ldh [rSB], a
    cp $00
    rst $38
    ld h, $ff
    adc h
    rst $38
    ld l, c
    rst $38
    rlca
    rst $38

jr_028_4cf4:
    sub $ff

jr_028_4cf6:
    db $fc
    rst $38
    rst $28
    rst $28
    ccf
    ccf
    rst $18
    rst $18
    rst $38
    rra
    cp $00
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
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_028_4cf4

    jr nz, jr_028_4cf6

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rlca
    ld hl, sp+$01
    cp $e0
    rra
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rra
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    ld c, a
    or b
    daa
    ret c

    ld c, $f1
    adc [hl]
    ld [hl], c
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld c, d
    rst $38

jr_028_4d62:
    inc b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    cp h
    rst $38
    push de
    rst $38
    cp $07
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_028_4d7b:
    rst $38

jr_028_4d7c:
    ld a, [hl+]
    rst $38
    call nz, Call_028_4dff
    rst $38
    ld d, h
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    jr z, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ld bc, $82ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nz, jr_028_4d7b

    ld [bc], a
    rst $38
    ld b, c
    cp a
    inc b
    rst $38
    ldh [$3f], a
    nop
    rst $38
    db $10
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
    ld [bc], a
    db $fd
    nop
    rst $38
    dec d
    ld [$fa05], a

jr_028_4dbc:
    ld a, [hl+]
    push de
    ld c, e
    or h
    ld [hl+], a
    db $dd
    xor [hl]
    ld d, c
    ld [hl], $c9
    ld d, [hl]
    xor c
    ld l, h
    sub e
    ld e, h
    and e
    cp l
    ld b, d
    ld a, c
    add [hl]
    cp e
    ld b, h
    cp e
    ld b, h
    or $09
    ld h, a
    sbc b
    call $cf32
    jr nc, jr_028_4dbc

    jr nz, jr_028_4d7c

    ld h, d
    cp a
    ld b, b
    cp d
    ld b, l
    ld a, [hl]
    add c
    ld a, d
    add l
    ld a, d
    add l
    ld [hl], $c9
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    add c
    rst $38
    inc h
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc

Call_028_4dff:
    db $fc
    pop bc
    rst $38
    inc bc
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, l
    add d
    dec e
    ld [c], a
    nop
    rst $38
    nop
    rst $38
    and d
    ld e, l
    inc l
    db $d3
    nop
    rst $38
    inc b
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
    rst $38
    nop
    rst $38
    add d
    rst $38
    inc d
    rst $38
    add c
    rst $38
    db $10
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    rst $38
    xor d
    rst $38
    db $f4
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $ff
    ld c, l
    rst $38
    ld b, h
    rst $38
    call nc, $88ff
    rst $38
    xor b

jr_028_4e6b:
    rst $38
    sub c
    rst $38
    db $10

jr_028_4e6f:
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
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
    db $10
    rst $28
    nop
    rst $38
    inc d
    rst $28
    jr nz, jr_028_4e6b

    ld b, b
    cp a
    jr nz, jr_028_4e6f

    ld b, b
    cp a
    add b
    ld a, a
    ret nz

    ccf
    add c
    ld a, [hl]
    add hl, bc
    or $80
    ld a, a
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    dec h
    jp c, $fa05

    ld d, l
    xor d
    sub a
    ld l, b
    xor e
    ld d, h
    xor a
    ld d, b
    xor e
    ld d, h
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    rst $38
    nop
    ld e, a
    and b
    cp $01
    cp a
    ld b, b
    ld a, l
    add d
    ld e, a
    and b
    ld a, l
    add d
    ld a, a
    add b
    cp $01
    ld a, [hl]
    add c
    cp $01
    cp $01
    db $fd
    ld [bc], a
    dec a
    jp nz, $fe01

    nop
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
    inc l
    cpl
    db $fc
    inc e
    cp $00
    ld a, a
    add b
    rra
    ldh [$e1], a
    ld e, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fd
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
    nop
    ld l, a
    sub b
    inc b
    ei
    dec d
    ld [$7f80], a
    dec a
    jp nz, $fb04

    add b
    ld a, a
    ld d, $e9
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    and b
    rst $38
    ld de, $08ff
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    and h
    rst $38
    inc d
    rst $38
    jr nc, @+$01

    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld d, $ff
    ld c, $ff
    inc a
    rst $38
    ld l, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, h
    ei
    ld bc, $08fe
    rst $30
    inc b
    ei
    ld [de], a
    db $ed
    db $10
    rst $28
    ld c, d
    or l
    inc [hl]
    bit 6, b
    adc a
    ld d, h
    xor e
    add sp, $17
    ret z

    scf
    xor b
    ld d, a
    ldh [$1f], a
    sub b
    ld l, a
    ret nc

    cpl
    ld d, b
    xor a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    ld c, d
    or l
    ld b, b
    cp a
    ld b, b
    cp a
    pop de
    ld l, $85
    ld a, d
    sub c
    ld l, [hl]
    inc hl
    call c, Call_028_58a7
    dec bc
    db $f4
    rla
    add sp, $4f
    or b
    ld d, a
    xor b
    sbc a
    ld h, b
    xor a
    ld d, b
    cp l
    ld b, d
    sbc l
    ld h, d
    dec sp
    call nz, $906f
    ld d, $e9
    ld bc, $00fe
    rst $38
    ld [$08ff], sp
    rst $38
    ld bc, $8fff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    sbc [hl]
    rst $38
    adc e
    rst $38
    add c
    rst $38
    ld bc, $0007
    nop
    rst $38
    add b
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
    rst $38
    nop
    rst $38
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
    inc bc
    db $fc
    nop
    rst $38
    inc b
    ei
    or b
    ld c, a
    dec b
    ld a, [$7b84]
    and h
    ld e, e
    ld [bc], a
    db $fd
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    pop af
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc b
    ei
    add b
    rst $38
    add d
    db $fd
    ld [$04f7], sp
    ei
    inc b
    ei
    nop
    rst $38
    inc d
    db $eb
    ld a, [bc]
    push af
    ld a, [hl+]
    push de
    db $10
    rst $28
    add hl, hl
    sub $24
    db $db
    ld d, h
    xor e
    ld l, b
    sub a
    ld d, b
    xor a
    jp hl


    ld d, $ac
    ld d, e
    db $e4
    dec de
    or h
    ld c, e
    ldh a, [rIF]
    ld [$b815], a
    ld b, a
    ld l, d
    sub l
    ret nc

    cpl
    db $f4
    dec bc
    or b
    ld c, a
    push de
    ld a, [hl+]
    add sp, $17
    or b
    ld c, a
    add sp, $17
    xor b
    ld d, a
    db $e4
    dec de
    or d
    ld c, l
    db $f4
    dec bc
    ld a, [c]
    dec c
    ld [$40f7], sp
    rst $38
    daa
    rst $38
    adc e
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $7f
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld b, $fb
    inc b
    di
    inc c
    rst $38
    nop
    rst $28
    db $10
    rst $28
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
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    inc b
    ei
    nop
    rst $38
    swap h
    xor c
    ld d, [hl]
    ld a, [bc]
    push af
    db $10
    rst $28
    nop
    rst $38
    ld [de], a
    db $ed
    ld [hl+], a
    db $dd
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or d
    rst $38
    sub h
    rst $38
    ld c, d
    rst $38
    db $e4
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add l
    rst $38
    add e
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld bc, $09ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
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
    ld bc, $00fe
    rst $38
    ld bc, $09fe
    or $01
    cp $03
    db $fc
    add hl, bc
    or $22
    db $dd
    ld [bc], a
    db $fd
    ld d, $e9
    ld [bc], a
    db $fd
    ld l, $d1
    ld h, $d9
    ld c, l
    or d
    dec l
    jp nc, $a857

    dec l
    jp nc, Jump_028_6a95

    xor h
    ld d, e
    sub h
    ld l, e
    call z, $fcf3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld h, e
    ld h, e
    nop
    nop
    rst $38
    rst $38
    ccf
    ld a, a
    ld [bc], a
    rlca
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld h, a
    sbc b
    ld l, a
    sub b
    rst $28
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
    nop
    ei
    inc b
    cp e
    ld b, h
    adc d
    ld [hl], l
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld d, e
    xor h
    add d
    ld a, l
    ld l, b
    sub a
    and b
    ld e, a
    and b
    ld e, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld bc, $5dff
    rst $38
    and l
    rst $38
    ei
    rra
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    xor e
    rst $38
    ld a, [$6aff]
    rst $38
    ld d, a
    rst $38
    ld e, e
    rst $38
    ld c, a
    rst $38
    ld e, l
    rst $38
    add [hl]
    rst $38
    adc b
    rst $38
    xor d
    rst $38
    xor b
    rst $38
    nop
    rst $38
    ld de, $01ff

jr_028_5229:
    rst $38
    ld bc, $21ff

jr_028_522d:
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    ld d, h

jr_028_5233:
    ei
    nop
    rst $38
    add b
    rst $38
    nop

jr_028_5239:
    rst $38
    add b
    rst $38
    nop

jr_028_523d:
    rst $38
    ld [$00f7], sp
    rst $38
    ld [$00f7], sp
    rst $38
    jr nz, @-$1f

    jr nz, jr_028_5229

    db $10
    rst $28
    jr nz, jr_028_522d

    and b
    ld e, a
    ld d, b
    xor a
    jr nz, jr_028_5233

    ld c, b
    or a
    ld h, b
    sbc a
    jr nz, jr_028_5239

    inc h
    db $db
    jr nz, jr_028_523d

    ld b, h
    cp e
    ld d, b
    xor a
    and h
    ld e, e
    ld h, b
    sbc a
    ret z

    scf
    ret


    ld [hl], $a9
    ld d, [hl]
    ld c, b
    or a
    jr z, @-$27

    ld l, c
    sub [hl]
    ld a, [hl+]
    push de
    ld [hl+], a
    db $dd
    xor c
    ld d, [hl]
    and b
    ld e, a
    ld l, c
    sub [hl]
    ld d, b
    xor a
    call nz, $fcfb
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
    ccf
    ccf
    cp $ff
    cp a
    rst $38
    rst $38
    rst $38
    rla
    ld a, a
    inc bc
    rrca
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
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld b, d
    dec b
    ld a, [$5fa0]
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    and d
    ld e, l
    nop
    rst $38
    ld bc, $08fe
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    xor b
    rst $38
    inc bc
    rst $38
    add l
    rst $38
    jp c, Jump_028_6fff

    rst $38
    db $fd
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    jp z, $82ff

    rst $38
    push bc
    rst $38
    push bc
    rst $38
    rst $08
    rst $38
    push bc
    rst $38
    adc $ff
    rst $08
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc e
    rst $38
    add d
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    rst $38
    nop

jr_028_5337:
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    db $10
    rst $28
    jr jr_028_5337

    and b
    rst $18
    ret nc

    xor a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ld b, h
    cp e
    ld c, d
    or l
    inc b
    ei
    ld c, d
    or l
    add d
    ld a, l
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld [c], a
    db $fd
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
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    inc bc
    rra
    nop
    ld bc, $00ff
    cp $01
    cp $01
    db $fc
    inc bc
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
    xor d
    ld d, l
    add c
    ld a, [hl]
    ld l, d
    sub l
    nop
    rst $38
    ret z

    scf
    jr nz, @-$1f

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
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    rlca
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    xor d
    rst $38
    di
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    db $ed
    rst $38
    rst $30
    rst $38
    or l
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    xor c
    rst $38
    xor a
    rst $38
    ld h, l
    rst $38
    ld b, l
    rst $38
    xor l
    rst $38
    push hl
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    ld hl, $45ff
    rst $38
    dec h
    rst $38
    ld d, l
    rst $38
    daa
    rst $38
    ld d, h
    rst $38
    dec b
    rst $38
    ld bc, $85ff
    rst $38
    ld bc, $05ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b

jr_028_542d:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    sbc b
    ld l, a
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_028_542d

    add b
    ld a, a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    dec bc
    dec bc
    ld bc, $0001
    nop
    ld b, b
    ld b, b
    add b
    add b
    rrca
    rra
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
    db $fc
    inc bc
    xor b
    ld d, a
    add b
    ld a, a
    nop
    rst $38
    sub b
    ld l, a
    add b
    ld a, a
    inc b
    ei
    xor b
    ld d, a
    ret nz

    ccf
    db $e4
    dec de
    ret nz

    ccf
    and b
    ld e, a
    db $10
    rst $28
    dec b
    ld a, [$b649]
    ld d, h
    xor e
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    inc b
    ei
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    cp $ff
    cp a
    rst $38
    ld b, l
    rst $38
    and b
    rst $38
    ld d, l
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    ret c

    rst $38
    xor $ff
    ld [hl], h
    rst $38
    ld e, [hl]
    rst $38
    ld d, h
    rst $38
    ld d, [hl]
    rst $38
    ld e, h
    rst $38
    call nc, Call_028_74ff
    rst $38
    ld d, h
    rst $38
    cp [hl]
    rst $38
    ld e, h
    rst $38
    and [hl]
    rst $38
    ld e, h
    rst $38
    ld h, h
    rst $38
    call nc, $daff
    rst $38
    call c, Call_000_24ff
    rst $38
    ld d, h
    rst $38
    ld d, [hl]
    rst $38
    ld d, d
    rst $38
    ld b, d
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, $ff
    ld a, [hl+]
    rst $38
    add d
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    jp nc, Jump_000_22ff

    rst $38
    ld [hl+], a
    rst $38
    ld d, d
    rst $38
    ld b, [hl]
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [$02ff], sp
    rst $38
    nop
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

jr_028_5559:
    rst $30
    nop
    nop
    ld [$0008], sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ld l, a
    ld [$22f7], sp
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_028_5559

    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $72ff
    rst $38
    ld e, $ff
    rra
    rst $38
    push bc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ccf
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, [$ffff]
    cp $fe
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    dec c
    rst $38
    ld [$0aff], sp
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    inc h
    rst $18
    nop
    rst $38
    ld b, $ff
    nop

jr_028_5613:
    rst $38
    ld bc, $04ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    ld [$02f7], sp
    rst $38
    jr nz, jr_028_5613

    ld b, b
    cp a
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    ld hl, $ff21
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $3f
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $05ff
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $04ff
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld b, l
    rst $38
    ld bc, $13ff
    rst $38
    ld bc, $83ff
    rst $38
    and e
    rst $38
    pop hl
    rst $38
    dec a
    rst $38
    adc l
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    or l
    rst $38
    cp e
    rst $38
    xor $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    db $ed
    ld a, a
    cp $03
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld a, h
    sbc a
    sbc a
    ld d, b
    ld d, b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, b
    ld a, b
    push bc
    push bc
    add sp, -$18
    add h
    add h
    sub h
    sub h
    add sp, -$18
    jp $ffc3


    rst $38
    sbc a
    sbc a
    dec bc
    rst $38
    ld e, h
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rrca
    nop
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0007], sp
    rlca
    nop
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
    nop
    inc bc
    nop
    rst $38
    db $fc
    cp a
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    ccf
    db $fc
    cp a
    db $fc
    ccf
    cp $9f
    cp $5f
    cp $9f
    cp $7f
    cp $1f
    cp $1f
    cp $5f
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
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
    ld a, a
    ld a, a
    ld a, h
    rst $38
    rst $38
    rst $38
    cp $ff
    db $e3
    db $fc
    inc bc
    ret nz

    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld c, d
    rst $38
    ld d, h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    adc c
    rst $38
    ld b, d
    rst $38
    ldh [rIE], a
    jp nz, Jump_028_62ff

    rst $38
    ret nz

    rst $38
    call nc, $b0ff
    rst $38
    jp nc, $a9ff

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    add sp, -$01
    call c, $feff
    rst $38
    cp $ff
    xor $ff
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
    cp $ff
    ei
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
    rra
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add sp, -$0d
    di
    xor $ee
    ret c

    ret c

    dec e
    dec e
    rst $38
    rst $38
    push af
    push af
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld a, b
    ld a, b
    rrca
    rrca

jr_028_57ec:
    and b
    and b

jr_028_57ee:
    ldh [$e0], a

jr_028_57f0:
    and b
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38

jr_028_57fa:
    nop
    rst $38
    cp $01
    rst $38
    nop
    ld e, a
    ldh [$5f], a
    ldh [$7f], a
    ldh [rIE], a
    ld h, b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    cp a
    ld [hl], b
    rst $38
    jr nc, jr_028_57ec

    jr c, jr_028_57ee

    jr c, jr_028_57f0

    jr c, jr_028_57fa

    jr c, @+$01

    jr @-$03

    inc e
    db $eb
    inc e
    db $eb
    inc e
    db $eb
    inc e
    rst $28
    inc e
    rst $38
    inc c
    push af
    ld c, $f5
    ld c, $f5
    ld c, $f5
    ld c, $ff
    ld b, $fb
    ld b, $fa
    rlca
    ld a, [$fa07]
    rlca
    cp $03
    ld a, a
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, a
    ld bc, $017e
    ld a, [hl]
    ld bc, $413e
    ld a, $41
    ld a, $41
    ccf
    ld b, b
    ld a, $41
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$df]
    ldh [$7f], a
    ldh [$2f], a
    ldh a, [rIF]
    ldh a, [$97]
    ld hl, sp-$59
    ld hl, sp-$6d
    db $fc
    inc bc
    db $fc
    ld b, a
    db $fc
    ld d, c
    cp $23
    cp $38
    rst $38
    ld hl, $19ff
    rst $38
    sbc h
    rst $38
    dec bc
    rst $38
    ld a, [$3dff]
    rst $38
    dec l
    rst $38
    db $76
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    add hl, sp
    rst $38
    adc a
    rst $38
    ld h, a
    rst $38
    cp d

Call_028_58a7:
    rst $38
    dec d
    rst $38
    sub d
    rst $38
    ld c, l
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    xor $3f
    rst $38
    nop
    rst $38
    inc b
    rst $38
    pop hl
    rst $18
    rst $18
    inc h
    inc h
    ld h, b
    ld h, b
    db $ec
    db $ec
    ldh [$e0], a
    rst $38
    rst $38
    sub $d6

jr_028_58e2:
    db $eb
    db $eb

jr_028_58e4:
    dec d
    dec d
    nop
    nop
    ld a, h
    ld a, h
    ldh a, [$f0]
    inc b
    inc b
    ld bc, $0801
    cp $e2
    db $fc
    ldh a, [$fc]
    ld a, h
    db $fc
    ld e, $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [$171c], a
    ld hl, sp-$29
    jr c, jr_028_58e4

    jr c, jr_028_58e2

    inc a
    db $eb
    inc e
    db $eb
    inc e
    rst $28
    inc e
    db $ed
    ld e, $f5
    ld c, $f5
    ld c, $f4
    rrca
    ld a, [c]
    rrca
    cp $07
    ld a, [$fa07]
    rlca
    ld a, [$fd07]
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_028_5936:
    rst $38
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ldh [$1f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$1f], a
    ldh [$af], a
    ld [hl], b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $38
    jr nc, jr_028_5936

    jr c, jr_028_5971

jr_028_5971:
    nop
    nop
    nop
    nop
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
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
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
    dec d
    ld d, $17
    jr jr_028_59d7

    nop
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
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop

jr_028_59d7:
    rra
    jr nz, jr_028_59fb

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_028_5a1a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_59fb:
    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    dec l
    nop
    ld l, $2f
    jr nc, jr_028_5a37

    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    ld [hl], $37
    jr c, jr_028_5a50

    ld a, [hl-]
    dec sp
    inc a

jr_028_5a1a:
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_028_5a37:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_028_5a50:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    nop
    nop
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
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
    rlca
    inc bc
    inc bc
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
    rlca
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_028_5bc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop

jr_028_5c23:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    inc bc
    inc b
    db $10
    rra
    nop
    rra
    dec e
    dec e
    ld bc, $0701
    rlca
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    rst $38
    jr nc, jr_028_5c23

    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    rlca
    dec bc
    dec bc
    dec b
    dec b
    add hl, bc
    add hl, bc
    jr nc, jr_028_5cb8

    ld [hl], b
    ldh a, [$78]
    ld hl, sp-$54
    ld l, h
    xor a
    ld l, a
    ld d, a
    rst $10
    adc [hl]
    adc [hl]
    call c, $bfdc
    cp a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    ld hl, $9221
    sub d
    add c
    add c
    rst $00
    rst $00
    rst $08
    rst $08
    jp hl


    jp hl


    jp nc, $a0d2

    and b
    dec h
    dec h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a

jr_028_5cb8:
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    nop
    nop
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
    dec b
    ld b, $0c
    dec bc
    dec d
    dec de
    dec h
    dec sp
    inc bc
    ld a, a
    nop
    db $fc
    ldh a, [$08]
    pop hl
    ld de, $e202
    ld b, [hl]
    add $8f
    adc a
    add c
    add c
    pop af
    pop af
    ldh a, [$f0]
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    cp [hl]
    cp [hl]
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
    ldh [$e0], a
    db $fc
    db $fc
    jr nz, jr_028_5d42

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    db $10
    db $10
    ld b, b
    ld b, b
    nop
    nop
    db $10
    db $10
    inc h
    inc h
    nop
    nop
    add b
    add b
    ld [$4008], sp
    ld b, b
    db $10
    db $10
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    rlca
    rlca

jr_028_5d42:
    inc b
    rlca
    inc d
    rla
    dec h
    scf
    ld [bc], a
    ld h, d
    ld sp, $71f1
    pop af
    pop af
    pop af
    ldh a, [$f0]
    add b
    add b

jr_028_5d54:
    add c
    add c
    nop
    nop
    db $10
    db $10
    ld e, b
    ld e, b
    ld hl, sp-$08
    nop
    nop
    ld h, b
    ld h, b
    jr z, jr_028_5d8c

    adc b
    adc b
    add b
    add b
    add b
    add b
    sub b
    sub b
    add b
    add b
    inc b
    inc b
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

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

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop

jr_028_5d8c:
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_5d92:
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    add hl, bc
    rrca
    ld a, [hl-]
    ld a, $14
    ld [hl], h
    inc bc
    ld [hl], e
    ld d, $76
    jr nc, jr_028_5d92

    jr nc, jr_028_5d54

    and b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld a, a
    ld a, a
    ld h, l
    ld a, a
    xor e
    cp a
    cp a
    cp a
    ld [hl], $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    add hl, de
    add hl, de
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    cpl
    cpl
    rrca
    rrca
    ld c, [hl]
    ld c, [hl]
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_028_5e0c

    nop
    ld h, b
    ld bc, $ebe1
    db $eb
    db $e3
    db $e3
    pop bc
    pop bc
    jp Jump_028_5bc3


    ld e, e
    rrca
    rrca
    ld bc, $0001
    nop
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    nop
    nop

jr_028_5e0c:
    nop
    nop
    rrca
    rrca
    adc [hl]
    adc [hl]
    ld e, $1e
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
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
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
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
    rlca
    rlca
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
    rla
    rla
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc

Jump_028_5eff:
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
    ld bc, $01ff
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
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $ed
    rst $38
    call nz, $c4ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jp nz, $e2ff

    rst $38
    db $e3
    rst $38
    di
    rst $38
    or $ff
    cp $ff
    cp $ff

jr_028_5f70:
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
    nop
    rst $38
    nop
    ld hl, sp+$1f
    add sp, $1f
    ld hl, sp+$3f
    cp $3f
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $00
    jr c, jr_028_5f70

    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
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
    db $e4
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    adc [hl]
    pop af
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    add d
    ld a, a
    add [hl]
    cp a
    ret nz

    dec a
    jp nz, $f0cf

    ldh [rIE], a
    ld hl, sp-$01
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
    ldh a, [rIE]
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
    and c
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
    rrca
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    jp $c13f


    ccf
    pop hl
    rra
    rst $20
    rra
    rst $30
    rrca
    di
    rrca
    di
    rrca
    db $e3
    rra
    rst $20
    rra
    add a
    ld a, a
    add a
    ld a, a
    rla
    rst $38
    rra
    rst $38
    rra
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
    nop
    rst $38
    nop
    rrca
    cp $0b
    cp $2f
    cp $bf
    cp $ff
    cp $ff
    cp $03
    rst $38
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    db $e3
    inc e
    db $e3
    cp $e3
    cp $e3
    cp $e3
    cp $e3
    cp $e7
    cp $e7
    cp $e7
    cp $e7
    cp $e7
    cp $e7
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$01
    nop
    inc bc
    ld bc, $0103
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
    rra
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $01ff
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
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

    ld a, [bc]
    ld a, [de]
    inc bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_028_61e8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0a
    daa
    jr z, jr_028_61f9

    ld a, [hl+]
    dec hl
    inc l
    ld a, [bc]
    dec l
    ld l, $0a
    cpl
    jr nc, jr_028_620b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_61e5

    inc bc
    add hl, sp
    ld a, [hl-]

jr_028_61e5:
    dec sp
    inc a
    dec a

jr_028_61e8:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    inc bc
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_028_61f9:
    ld c, [hl]
    ld c, a
    ld d, b
    dec l
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
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_028_620b:
    ld e, a
    ld a, [bc]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc bc
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
    ld l, a
    ld [hl], b
    ld [hl], c
    inc bc
    inc bc
    inc bc
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, [bc]
    ld a, e
    ld a, h
    inc bc
    ld a, l
    ld a, [hl]
    inc b
    ld a, a
    inc bc
    inc bc
    inc bc
    add b
    add c
    add d
    add e
    add h
    ld a, [bc]
    add l
    add [hl]
    inc bc
    add a
    inc bc
    inc bc
    adc b
    inc bc
    inc bc
    inc bc
    adc c
    adc d
    adc e
    adc h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    inc bc
    adc [hl]
    adc a
    sub b
    sub c
    inc bc
    inc bc
    inc bc
    inc bc
    sub d
    sub e
    sub h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    sub l
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    add d
    add d
    and h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    add d
    add d
    xor e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    add d
    add d
    or c
    or d
    ld a, [bc]
    ld a, [bc]
    or e
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    inc d
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    add $c7
    ret z

    ret


    jp z, Jump_000_03cb

    inc bc
    inc bc
    inc bc
    call z, $cecd
    rst $08
    push bc
    ret nc

    pop de
    jp nc, $d4d3

    push de
    inc b
    sub $d7
    ret c

    reti


    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec b

Jump_028_62ff:
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
    ld [bc], a
    nop
    dec b
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    dec b
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
    inc bc
    ld b, $03
    ld [bc], a
    nop
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
    nop
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    dec b
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
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    nop
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
    nop
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    nop
    nop
    dec b
    dec b
    dec h
    dec b
    nop
    nop
    nop
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    dec b
    dec b
    dec b
    dec b
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
    dec b
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    rra
    nop
    rra
    nop
    inc a
    inc bc
    ld sp, $470f
    ccf
    ld e, $ff
    ei
    rst $38
    jp hl


    rst $38
    rst $28
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
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, c
    rst $38
    inc bc
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, h
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp-$01
    pop af
    cp $c3
    db $fc
    add a
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
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
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    db $fc
    sbc b
    add b
    cp h
    add b
    ld [$fc80], a
    ret nz

    sbc $c0
    ret


    ret nz

    ld sp, hl
    ret nz

    xor $c0
    rst $30
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ld l, a
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], b
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
    rrca
    nop
    ld c, $01
    ld [$0807], sp
    rlca
    inc c
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    ld e, $01
    ld e, $01
    ld e, $01
    ld a, $01
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    inc bc
    di
    rrca
    rst $08
    ccf
    ccf
    rst $38
    cp e
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    jp z, Jump_028_5eff

    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    cp $ff
    ld hl, sp-$01
    pop af
    rst $38
    rst $00
    rst $38
    sbc a
    cp $3f
    db $fc
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$18
    ld a, b
    sbc h
    sbc a
    inc c
    ld e, a
    inc c
    ld e, a
    inc c
    cpl
    inc c
    ccf
    inc c
    cp a
    inc c
    ccf
    ld b, $07
    ld b, $cf
    ld c, $ff
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    nop
    ei
    nop
    jp $0108


    call nc, $c601
    add hl, bc
    ld e, d
    dec h
    ld hl, $0b5c
    or b
    ld a, h
    add e
    ld [hl], b
    adc a
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop

jr_028_6638:
    rst $38
    nop
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

    jr @+$01

    jr jr_028_6638

    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    ld d, $ee
    rla
    xor $17
    xor $1f
    sbc [hl]
    ld a, a
    ld a, a
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
    rst $38
    sbc $ff
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$e1ff]
    cp $cb
    db $fc
    ld [c], a
    db $e4
    add c
    add [hl]
    inc e
    ld [bc], a
    ld a, $00
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    cp $c3
    db $fc
    adc a
    ldh a, [$1f]
    ldh [$3f], a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]

Call_028_66cc:
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
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
    rst $38
    nop
    rst $38
    nop
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    ret nz

    ret nc

    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    rra
    nop
    rrca
    jr nc, jr_028_6777

    ld a, $3e
    rrca
    rrca
    sub c
    ld bc, $0884
    inc b
    ld [$8009], sp
    pop hl
    inc b
    ld bc, $71fe
    adc h
    ld a, c
    add b
    inc sp
    ret z

    rlca
    ld d, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    jp $87fc


    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38

jr_028_6777:
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
    rlca
    nop
    rrca
    nop
    rra
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
    nop
    rst $38
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
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$0f
    cp $ce
    ld sp, $31ca
    ld a, [bc]
    ld sp, $31ce
    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    nop
    db $fd
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, e
    ld a, e
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld hl, sp-$05
    ld hl, sp-$08
    ccf
    ccf
    rst $00
    rlca
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
    add e
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
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
    inc e
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
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rTAC], a
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
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
    ld a, a
    ccf
    ld b, b
    jr nz, jr_028_6901

    jr nz, @+$52

    jr nz, @+$52

    jr nz, jr_028_68f8

    jr nz, jr_028_68fa

    jr nz, @+$52

    nop
    jr nc, jr_028_68bf

    jr z, jr_028_68c1

    jr z, jr_028_68c3

    jr z, jr_028_68c5

    jr z, jr_028_68c9

    jr z, @+$17

    jr z, jr_028_68d0

    jr z, jr_028_68d4

    jr z, @+$19

jr_028_68bf:
    jr z, jr_028_68d7

jr_028_68c1:
    jr z, jr_028_68da

jr_028_68c3:
    jr z, jr_028_68dc

jr_028_68c5:
    jr z, jr_028_68de

    jr z, jr_028_68e4

jr_028_68c9:
    inc h
    add hl, bc
    ld d, $09
    ld d, $08
    rla

jr_028_68d0:
    ld [$0817], sp
    rla

jr_028_68d4:
    ld [$0e17], sp

jr_028_68d7:
    ld de, $1c03

jr_028_68da:
    nop
    inc bc

jr_028_68dc:
    nop
    nop

jr_028_68de:
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_028_68e4:
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$c1], a
    ld a, $c0
    ccf
    ld bc, $fffe
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$b1], a
    add b

jr_028_68f8:
    rst $30
    nop

jr_028_68fa:
    rst $38
    jr @+$01

    ccf
    ccf
    rst $00
    rst $38

jr_028_6901:
    ld hl, sp-$01
    rst $38
    ccf
    ccf
    rlca
    rst $00
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
    nop
    rst $38
    nop
    rra
    ldh [$e1], a
    ld bc, $f0ff
    rst $38
    cp $0f
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    rst $38
    rlca
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
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
    rst $00
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    jr c, jr_028_69aa

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
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

jr_028_69aa:
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    or b
    nop
    add sp, $00
    add sp, $00
    cp $00
    ei
    nop
    ld a, l
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld l, b
    sub a
    ld h, b
    sbc a
    nop
    rst $38
    ld hl, sp+$07
    rra
    ldh [rP1], a
    rra
    nop
    nop

jr_028_69d0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$c1], a
    ld a, $fc
    inc bc
    inc e
    inc bc
    and e
    nop
    ld hl, sp+$00
    cp $00
    sbc a
    nop
    pop bc
    nop
    jr jr_028_69d0

    add c
    ld a, [hl]
    ldh a, [$8f]
    cp $f1
    rst $38
    cp $ff
    rst $38
    rrca
    rrca
    inc bc
    db $e3
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    dec sp
    jp $fbc3


    ei
    ccf
    ccf
    rst $00
    rlca
    ld hl, sp+$00
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
    ccf
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    nop
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
    rra
    nop
    rlca
    nop
    rlca
    ld hl, sp-$08
    ldh [$e0], a
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
    ld hl, sp-$08
    rlca
    rra
    ldh [rP1], a
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
    ld a, [bc]
    nop
    ld [$1b00], sp
    inc b
    ld de, $210e

Jump_028_6a95:
    ld e, $40
    rra
    ld h, b
    rra
    ldh [$1f], a
    ld h, b
    rra
    add b
    ld a, a
    ld bc, $20fe
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, h
    db $fc
    inc bc
    rrca
    ldh a, [rP1]
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
    ccf
    ret nz

    inc bc
    db $fc
    call z, $ff33
    nop
    rlca
    nop
    rst $08
    nop
    cp $01
    jr nc, jr_028_6ad9

    add $39
    ld b, $f9
    nop
    rst $38
    ldh [$1f], a
    db $fc

jr_028_6ad9:
    db $e3
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c0c3


    call c, $dfc0
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$e3], a
    db $fc
    db $fc
    rra
    rra
    pop hl
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    ldh [rTAC], a
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
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
    ldh a, [$e0]
    db $10
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ldh [rNR10], a
    ld h, b
    sub b
    nop
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
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    jp $f03c


    rrca
    and $1f
    rrca
    rst $38
    rra
    ld sp, hl
    rra
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp-$79
    cp $f9
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld e, $9e
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $de
    ld e, $5e
    sbc [hl]
    sbc [hl]
    cp $fe
    pop bc
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
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
    ld hl, sp+$00
    cp $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
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
    ret nz

    inc bc
    db $fc
    ldh [rIE], a
    ldh a, [$9f]
    ldh a, [$1f]
    ldh a, [$fc]
    ldh [$f8], a
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp-$40
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    inc bc
    add b
    rst $38
    rst $38
    rst $28
    rst $38
    set 7, a
    rst $30
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $fc
    rst $38
    rst $38
    rst $08
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
    ccf
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
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
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
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
    rst $18
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    pop hl
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    pop bc
    ccf
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
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0107
    rlca
    ld bc, $0307
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0307
    rlca
    inc bc
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
    rst $00
    rst $08
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or a
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
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $f800
    ld h, b
    rst $38
    ld d, [hl]
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    db $e4
    rst $38
    and $ff
    and $ff
    and $ff
    rst $20
    rst $38
    and $ff
    and $ff
    db $f4
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    call c, $ffff
    rst $38
    cp e
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    cp $ff
    sbc a
    rst $38
    ld b, h
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    ld [$19ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld hl, $21ff
    rst $38
    ld h, c
    rst $38
    reti


    rst $38
    add hl, sp
    rst $38
    db $10
    rst $38
    ld sp, $c2ff
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld d, b
    rst $38
    ld [hl], c
    rst $38
    ld bc, $39ff
    rst $38
    ld bc, $04ff
    rst $38
    ld c, h
    rst $38
    rst $20
    rst $38
    ld b, e
    rst $38
    rst $20
    rst $38
    ld [hl+], a
    rst $38
    ld e, d
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    daa
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sub l
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    cp l
    rst $38
    sbc a
    rst $38
    db $db
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    cp a
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
    ld a, a
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    adc h
    rst $38
    or [hl]
    rst $38
    ld d, h
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    ld [hl], d
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$e2ff]
    rst $38
    jp nc, $f4ff

    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    db $fd
    cp $f9
    cp $fc
    cp $f0
    cp $f8
    cp $f8
    db $fc
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$f8]
    ldh [$f8], a
    or b
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$80], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ret nz

    add b
    ldh a, [$b0]
    cp $bc
    cp $bc
    cp $78
    cp $78
    db $fc
    ld a, b
    db $fc
    ld a, b
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ld h, b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

Jump_028_6fff:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $00
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    pop af
    nop
    pop af
    nop
    di
    nop
    di
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $00
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fa
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    or $01
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    add a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    nop
    nop
    nop
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
    rst $38
    and a
    rst $38
    adc a
    rst $38
    adc $ff
    adc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc h
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIF]
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $031f
    rra
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rlca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    ld bc, $0300
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    ld bc, $0a01
    dec bc
    inc c
    dec c
    ld c, $0f
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1211
    inc de
    inc d
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec d
    ld d, $17
    jr @+$15

    inc de
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $1901
    ld a, [de]
    dec de
    inc e
    dec e
    inc de
    inc de
    add hl, bc
    ld e, $1f
    ld bc, $2120
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_7231

    inc de
    inc de
    add hl, bc
    add hl, hl
    ld a, [hl+]
    ld bc, $2c2b
    dec l
    ld l, $2f
    jr nc, jr_028_725c

    ld [hl-], a
    inc sp
    inc de
    inc [hl]
    dec [hl]
    add hl, bc

jr_028_7231:
    add hl, hl
    ld [hl], $37
    jr c, jr_028_726f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc de
    inc de
    ld b, b
    ld b, c
    add hl, bc
    add hl, hl
    add hl, hl
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
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add hl, hl
    add hl, hl
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_028_725c:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
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
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_028_726f:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
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
    inc de
    inc de
    inc de
    inc de
    scf
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    adc l
    inc de
    sbc b
    sbc c
    sbc d
    sbc e
    inc hl
    inc h
    sbc h
    sbc l
    sbc [hl]
    inc de
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    ld bc, $0101
    ld bc, $11a6
    and a
    inc de
    inc de
    inc de
    xor b
    xor c
    xor d
    ld e, l
    ld bc, $01ab
    ld bc, $adac
    xor [hl]
    ld de, $b0af
    or c
    or d
    inc de
    or e
    inc de
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
    jp nz, $8dc3

    call nz, $c6c5
    rst $00
    ret z

    ld bc, $0101
    ld bc, $cac9
    set 1, h
    call $cfce
    ret nc

    ld bc, $0101
    ld bc, $0101
    ld bc, $d2d1
    db $d3
    call nc, $d6d5
    rst $10
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    dec b
    inc bc
    nop
    nop
    ld b, b
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $04
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld b, b
    dec b
    ld b, $06
    rlca
    rlca
    ld b, $06
    inc b
    ld [bc], a
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
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
    jr nz, jr_028_73d9

jr_028_73d9:
    nop
    nop
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
    nop
    jr nz, jr_028_7408

    nop
    nop
    nop
    nop
    dec b
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
    nop
    nop
    nop
    nop
    nop
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

jr_028_7408:
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
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_028_7470

jr_028_7470:
    jr nz, jr_028_7472

jr_028_7472:
    jr nz, jr_028_7474

jr_028_7474:
    jr nz, jr_028_7476

jr_028_7476:
    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0400], sp
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $017f
    ccf
    ld bc, HeaderManufacturerCode
    rra
    nop
    rra
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
    add a
    nop
    add a
    nop
    add e
    nop
    jp $c300


    nop
    pop hl
    nop
    pop hl
    nop
    db $eb
    nop
    pop af
    nop
    pop af
    nop
    ld sp, hl
    nop
    db $fc
    nop
    ld a, [$fd00]
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
    nop
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
    inc bc
    rlca
    rra
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
    ld a, a

Call_028_74ff:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    daa
    rra
    daa
    inc e
    cpl
    db $10
    rla
    ld [$0817], sp
    rla
    ld [$040b], sp
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
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
    ld bc, $0c07
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
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ldh a, [$df]
    ldh [$df], a
    ldh [$9f], a
    and b
    ld e, e
    ld h, h
    ld l, d
    ld [hl], l
    jr z, jr_028_75db

    ld l, b
    ld [hl], a
    inc h
    dec sp
    inc [hl]
    dec sp
    inc [hl]
    dec sp
    inc [hl]
    dec sp
    ld [hl-], a
    dec a
    dec de
    inc e
    jr jr_028_75d3

    jr jr_028_75d4

    jr jr_028_75d0

    ld [$0808], sp
    add hl, bc
    ld [$0c0b], sp
    rrca
    ei
    cp h
    ld sp, hl
    ld e, $fd
    ld e, $fc
    rra
    cp $0f
    cp $07
    rst $38
    inc bc
    rst $38

jr_028_75cf:
    nop

jr_028_75d0:
    nop
    nop
    nop

jr_028_75d3:
    nop

jr_028_75d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_028_75db:
    nop
    nop
    inc bc
    nop
    inc e
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    ld a, h
    add e
    jr z, jr_028_75cf

    nop
    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ldh [rNR34], a
    nop
    ld hl, sp+$00
    ret nz

    ld bc, $0f00
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
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
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rra
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    cp $7e
    db $f4
    adc h
    db $f4
    inc c
    db $f4
    inc c
    or $0e
    ld a, [$fa06]
    ld b, $fa
    ld b, $ea
    ld d, $ea
    ld d, $ea
    ld d, $f7
    dec bc
    push af
    dec bc
    push bc
    dec sp
    dec c
    di
    ld [hl], c
    adc a
    add c
    ld a, c
    ld bc, $01c1
    ld bc, $e3fe
    rst $38
    add e
    rst $38
    ld bc, $01ff

jr_028_76c8:
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
    rst $38
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
    rst $38
    nop
    ret nz

    ccf
    rra
    ldh [$df], a
    jr nz, jr_028_76c8

    ccf
    pop hl
    cp $ee
    pop af
    ld [$eaf0], a
    ldh a, [$ea]
    ldh a, [$e0]
    ld hl, sp-$1c
    ld hl, sp-$1e
    ld hl, sp-$1c
    ld hl, sp-$0c
    ld hl, sp-$0b
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$0c
    db $fc
    db $f4
    db $fc
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    ld a, [$fafc]
    cp $fa
    cp $fa
    db $fc
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIF]
    ldh a, [$0d]
    ldh [rSB], a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    ld bc, $fa06
    db $fd
    cp $f9
    cp $fd
    cp $fc
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
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh [rIE], a
    add c
    cp $07
    ld hl, sp-$71
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp-$3d
    db $fc
    db $e3
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add c
    ld a, [hl]
    ld a, a
    add b
    rst $38
    rlca
    db $fd
    ld a, b
    db $dd
    ret z

    inc e
    ld [$ec3d], sp
    nop
    ccf
    inc e
    ld [$0c1c], sp
    inc e
    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    ld [$0c1c], sp
    inc e
    ld [$041c], sp
    inc e
    inc c
    ld e, $04
    ld e, $04
    ld e, $04
    ld e, $04
    ld e, $06
    ld e, $06
    ld e, $06
    ld c, $06
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, a
    inc b
    ld c, a
    ld [bc], a
    ld c, a
    ld [bc], a
    ld c, a
    ld [bc], a
    ld c, a
    ld b, $ef
    ld [bc], a
    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    add a
    rst $20
    add c
    rst $30
    pop bc
    rst $30
    add b
    di
    add b
    di
    ret nz

    ei
    ret nz

    rst $38
    ret nz

    rst $18
    pop bc
    add b
    rst $08
    add b
    rst $08
    nop
    rst $20
    nop
    rst $30
    nop
    ld a, $80
    ld e, $c1
    adc [hl]
    ldh a, [$e0]
    cp $f8
    rst $38
    db $fc
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add e
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$7f], a
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
    db $fc
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $3fff
    rst $38
    ret z

    sbc $88
    call c, $dc80
    nop
    ret nz

    rst $18
    inc d
    ldh [$d8], a
    nop
    ld e, b
    nop
    ld e, h
    nop
    call nc, $cc00
    nop
    ld c, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    ld b, b
    ld c, h
    ld b, b
    ld c, b
    nop
    ld b, h
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld l, h
    jr nz, jr_028_7919

    jr nz, jr_028_791b

    jr nz, jr_028_792d

    jr z, jr_028_792f

    inc l
    cp $20
    rst $38

jr_028_78b5:
    jr z, jr_028_78b5

jr_028_78b7:
    jr nz, jr_028_78b7

jr_028_78b9:
    jr nz, jr_028_78b9

    jr nz, @-$01

    db $10
    db $fd
    db $10
    ei
    add b
    cp e
    add b
    ld sp, hl
    add b
    db $db
    ret


    rst $18
    adc c
    rst $38
    ld b, [hl]
    rst $38
    push hl
    rst $38
    db $f4
    rla
    add sp, $19
    ldh [$37], a
    ret nz

    cpl
    ld bc, $02bf
    rst $38
    dec d
    cp $28
    ldh [rP1], a
    inc bc
    nop
    ld a, b
    add a
    rst $38
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    rst $38
    rra
    rst $38
    rlca
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
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    rst $38

jr_028_7919:
    nop
    rst $38

jr_028_791b:
    nop
    rst $38
    nop
    rst $38
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_028_792d:
    rst $38
    nop

jr_028_792f:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ldh a, [rP1]
    rrca
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
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    nop
    jr nz, @-$3e

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc bc
    pop bc
    ld a, a
    cp $80
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

    db $10
    ret nz

    nop
    ret nz

    db $10
    ret nz

    db $10
    ret nz

    nop
    ccf
    ld b, b
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld c, c
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld c, b
    ccf
    ld e, d
    ccf
    ld a, c
    ccf
    ld a, d
    ccf
    ei
    ccf
    db $fd
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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

    inc a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rSB]
    or b
    inc b
    ldh a, [$0b]
    ldh a, [rNR22]
    ldh [$3f], a
    ret nz

    ld [hl], a
    add b
    ld a, a
    nop
    cp $01
    add sp, $17
    and d
    ld e, h
    adc b
    ld [hl], b
    ld h, c
    add b
    add h
    inc bc
    inc de
    rrca
    ld c, h
    ccf
    nop
    rst $08
    nop
    dec a
    nop
    ld hl, sp+$00
    pop af
    nop
    and $01
    adc b
    rlca
    and b
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add e
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rra
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
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $01
    cpl
    nop
    rlca
    nop
    ld b, e
    nop
    inc bc
    nop
    nop
    rrca
    inc b
    di
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
    ld b, h
    inc bc
    ld c, h
    inc bc
    ld c, h
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    ld c, h
    inc bc
    ld c, h
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    ld c, h
    inc bc
    inc a
    inc bc
    cp h
    inc bc
    ld a, h
    inc bc
    call c, $bc03
    inc bc
    call c, $dc03
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $c1
    ld b, $01
    ld b, $09
    ld b, $21
    ld b, $51
    ld b, $69
    ld b, $f9
    ld b, $f9
    ld b, $e1
    ld e, $81
    ld a, [hl]
    ld bc, $01fe
    cp $00
    ldh a, [rDMA]
    add c
    dec de
    rlca
    ld c, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    ld [bc], a
    ld bc, $0708
    jr nz, jr_028_7ae6

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    pop bc
    cp $07
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

jr_028_7ae6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
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
    rst $38
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $e1
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld hl, sp+$07
    cp $01
    add c
    ld a, [hl]
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
    ld b, b
    add b
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
    add b
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    add b
    nop
    add h
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    add b
    nop
    add c
    nop
    add c
    nop
    adc b
    nop
    add l
    nop
    sub e
    nop
    sub e
    nop
    adc l
    nop
    adc a
    nop
    sub a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $38
    nop
    xor [hl]
    ld bc, $03fc
    db $fc
    inc bc
    ld sp, hl
    ld b, $f7
    ld [$00ef], sp
    cp b
    inc bc
    db $e3
    rrca
    adc a
    ccf
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    sbc b
    rst $38
    jr @+$01

    nop
    rst $38
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
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add e
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    nop
    nop
    nop
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
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
    ld bc, $0300
    nop
    rrca
    nop
    ccf
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
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld a, b
    rrca
    ld a, b
    rrca
    ld a, b
    rrca
    ld a, b
    rrca
    jr c, jr_028_7c71

    jr c, jr_028_7c83

    jr c, jr_028_7c85

    jr nc, jr_028_7c87

    jr nc, jr_028_7c89

    ld [hl], b
    rra
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b

jr_028_7c71:
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    rra
    ldh [$1f], a

jr_028_7c83:
    ret nz

    rra

jr_028_7c85:
    ret nz

    rra

jr_028_7c87:
    ret nz

    rra

jr_028_7c89:
    ret nz

    rra
    ret c

    rlca
    add $01
    pop bc
    nop
    ret nz

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

    cp a
    ccf
    sbc a
    rra
    rra
    rra
    daa
    rra
    ei
    ccf
    db $fc
    rst $28
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    rst $38
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
    ld [bc], a
    db $fd
    rrca
    ldh a, [$3f]
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
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    jp Boot


    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
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
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
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
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
    cp $fe
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
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
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ei
    ccf
    rst $38
    rrca
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
    ldh [rIF], a
    rst $38
    add a
    ld a, a
    db $e3
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    add b
    rlca
    inc bc
    rra
    rra
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
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
    add b
    nop
    add b
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
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
    ld bc, $0f00
    rlca
    ccf
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    jp $e13f


    rra
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    pop hl
    rra
    jp $873f


    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_028_7f46

    cp $7f
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
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_028_7f46:
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, [$fb07]
    rlca
    rst $38
    rlca
    db $e3
    rra
    ld sp, hl
    rra
    cp $1f
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    rst $38
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$80]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
