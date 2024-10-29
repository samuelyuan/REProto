SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_403a

    ld a, [hl-]
    ld a, $32
    ld a, $76
    ld a, [hl]
    ld [hl], a
    ld a, a
    rst $08
    rst $38
    rst $08
    cp $5e
    ld a, l
    ccf
    ld a, $06
    rlca
    ld bc, $0001
    nop
    nop
    nop

jr_005_403a:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_405a

    inc a
    inc a
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, l
    db $ed
    sub $c4
    rst $38
    db $ed
    cp $68
    ld a, a
    dec a
    ld a, $02
    inc bc
    nop
    nop

jr_005_405a:
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    add e
    rst $38
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0605
    rrca
    nop
    dec bc
    rla
    inc e
    cpl
    ld [hl], b
    rra
    pop de
    cp a
    ld a, e
    xor [hl]
    rst $38
    scf
    rst $28
    ld a, [hl-]
    ld h, c
    cp a
    db $d3
    cp [hl]
    ld [hl], b
    rra
    inc e
    cpl
    dec bc
    rla
    rrca
    nop
    dec b
    ld b, $33
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld l, c
    ld a, [hl]
    ld b, c
    ld a, a
    ld c, a
    ld [hl], d
    ld l, c
    ld a, a
    ld b, e
    ld a, l
    ld b, a
    ld a, c
    ld h, c
    ld a, a
    ld d, c
    ld a, a
    ld h, e
    ld a, h
    jr c, jr_005_40ff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_40de:
    nop
    nop
    nop
    nop
    nop
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
    and b
    ld h, b
    ldh [$90], a
    ld l, b
    ret c

    sbc [hl]
    ld a, [c]
    rst $10
    ld sp, hl
    dec a
    scf
    rra
    dec de
    ld b, $06
    nop

jr_005_40ff:
    nop
    nop
    nop
    nop
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

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    add b
    ret c

    inc h
    ld l, $d2
    jp nc, $af2d

    db $d3
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld d, $0c
    inc c
    rst $30
    rst $38
    db $f4
    rst $38
    rst $30
    db $fc
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $00
    db $fc
    rst $20
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    jr z, jr_005_40de

    sbc b
    cp b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add b
    add b
    and b
    ld h, b
    ldh a, [rP1]
    ret nc

    add sp, $38
    db $f4
    ld c, $f8
    adc e
    db $fd
    sbc $75

jr_005_414e:
    rst $38
    db $ec
    rst $30
    ld e, h
    add [hl]
    db $fd
    bit 7, l
    ld c, $f8
    jr c, jr_005_414e

    ret nc

    add sp, -$10
    nop
    and b
    ld h, b
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, $c6be

    ld a, [hl]
    ld a, [c]
    ld c, [hl]
    sub $7e
    ld [c], a
    ld e, [hl]
    ld a, [c]
    ld c, [hl]
    add $7e
    jp nz, $a27e

    sbc $0c
    db $fc
    ld bc, $0201
    inc bc
    ld a, [bc]
    dec c
    jr nz, jr_005_41c7

    ld b, c
    ld a, [hl]
    adc a
    ldh a, [$8e]
    pop af
    sub $e9
    ld h, e
    ld a, h
    scf
    inc a
    rla
    jr @+$0a

    rrca
    inc b
    rlca
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    inc a
    inc a
    ld c, b
    ld [hl], h
    cp [hl]
    cp $fe
    cp [hl]
    and $a6
    rst $20
    and a
    cp a
    db $fc
    ld a, e
    ld b, a
    ld a, l
    ld a, l
    inc a
    inc a
    nop
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
    ldh [$e0], a
    inc a
    inc a
    rla

jr_005_41c7:
    rra
    inc hl
    dec a
    ld hl, $2d3f
    ccf
    ld [hl+], a
    ccf
    inc sp
    ld a, $1d
    ld e, $06
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
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    cp [hl]
    cp $4f
    cp a
    ld h, e
    sbc a
    ld [hl], c
    adc a
    ld l, c
    sub a
    ld de, $012f
    rra
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
    dec b
    ld b, $0f
    nop
    dec bc
    rla
    inc e
    cpl
    ld [hl], b
    rra
    call c, Call_005_64b3
    cp e
    jp hl


    ld [hl], $ef
    jr nc, jr_005_4276

    cp h
    sub $b9
    ld [hl], h
    dec de
    inc e
    cpl
    dec bc
    rla
    rrca
    nop
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    rrca
    inc bc
    inc e
    inc bc
    ccf
    inc hl
    dec sp
    rlca
    ld h, b
    ld e, a
    jr nc, jr_005_4285

    ld hl, sp-$79
    ld b, b
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$1e

    db $10
    ldh [rNR23], a
    inc [hl]
    ret z

    ld a, [de]
    and $fd
    inc bc
    call nz, $c03b
    ccf
    db $e3
    inc e
    xor [hl]
    pop de
    inc e
    ld [c], a
    ldh a, [$08]
    ret nz

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
    ld [$1e08], sp
    ld e, $df
    rst $08
    db $fc
    ld a, a
    rst $38
    sbc l
    rst $28
    ei

jr_005_4276:
    ld l, a
    ld [hl], a
    dec e
    dec de
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4285:
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    sbc b
    ld a, b
    ld [hl], $ee
    ld sp, $63ef
    rst $18
    ld h, d
    sbc $c6
    cp $64
    ld a, h
    jr c, jr_005_42d6

    nop
    nop
    nop
    nop
    inc e
    inc e
    ld l, $3e
    ld e, $2e
    inc a
    inc l
    rst $38
    rst $38
    rra
    rst $38
    ld h, c
    sbc a
    push af
    dec bc
    ld a, c
    add a
    db $fd
    inc bc
    ld a, c
    add a
    db $fd
    inc bc
    ld a, c
    add a
    ld sp, $004f
    nop
    and b
    ld h, b
    ldh a, [rP1]
    ret nc

    add sp, $38
    db $f4
    adc $38
    db $eb
    dec e
    add $3d

jr_005_42ce:
    and a
    ld e, h
    rst $00
    inc a
    and $1d
    ld e, e
    xor l

jr_005_42d6:
    ld c, [hl]
    cp b
    jr c, jr_005_42ce

    ret nc

    add sp, -$10
    nop
    and b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    rrca
    sub b
    sbc a
    ld bc, $00ff
    cp $e2
    cp $e0
    db $fc
    db $e4
    db $fc
    nop
    ld hl, sp+$70
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    rlca
    inc de
    rra
    ld c, h
    ld a, a
    adc c
    rst $38
    rst $00
    rst $38
    call z, Call_005_66ff
    ld a, a
    scf
    ccf
    dec de
    rra
    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    jr c, @+$3a

    ld [$6c38], sp
    ld d, h
    inc d
    ld l, b
    jp nz, Jump_005_46fe

    ld a, d
    dec hl
    dec [hl]
    inc e
    rra
    add hl, bc
    add hl, bc
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
    ld bc, $0302
    dec b
    rlca
    add hl, bc
    ld c, $0b
    rrca
    dec bc
    ld c, $0a
    rrca
    dec bc
    ld c, $0a
    rrca
    dec bc
    ld c, $0a
    rrca
    dec bc
    ld c, $0b
    rrca
    add hl, bc
    ld c, $0c
    rrca
    cp $ff
    rst $38
    cp $ff
    ldh a, [$ef]
    ld hl, sp-$39
    ld sp, hl
    adc a
    rst $38
    rst $38
    add a
    cp $8f
    xor $9f
    cp a
    rst $00
    rst $20
    sbc a
    db $d3
    xor $e2
    rst $38
    di
    cp $ff
    rst $38
    rst $38
    rst $38
    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld h, e
    ld a, a
    ld b, a
    ld a, h
    ld c, a
    ld a, c
    ld h, [hl]
    ld a, a
    ld b, e
    ld a, l
    ld b, a
    ld a, d
    ld h, a
    ld a, h
    ld c, a
    ld a, b
    ld h, a
    ld a, a
    jr c, @+$41

    nop
    nop
    nop
    ld bc, $0403
    rrca
    db $10

jr_005_43a8:
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_43e2

    jr nc, @+$19

    jr jr_005_43c2

jr_005_43b7:
    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_005_43c2:
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_43a8

    ret nc

    ldh a, [$e8]
    ld hl, sp+$74
    db $fc
    sbc d
    cp $f9
    rst $38
    xor b
    rst $38
    ld de, $07ff
    db $fc
    rra
    ldh a, [$fe]
    jp nz, Jump_000_08f8

    ldh [$a0], a
    nop
    nop

jr_005_43e2:
    nop
    nop
    nop
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
    call nz, $e64c

jr_005_43f3:
    xor [hl]
    sbc c
    rst $38
    ld c, c
    ld a, a
    dec de
    rla
    ld [de], a
    ld e, $08
    ld c, $07
    rlca
    ret nz

    ld b, b
    ret nz

    ret nz

    and b
    ld h, b
    ld d, b
    ldh a, [$c8]
    jr c, jr_005_43f3

    ld hl, sp-$18
    jr c, jr_005_43b7

    ld a, b
    add sp, $38
    jr z, @-$06

    add sp, $38
    xor b
    ld a, b
    add sp, $38
    add sp, -$08
    ret z

    jr c, jr_005_43b7

    ld a, b
    ccf
    rst $38
    rst $38
    ccf
    rst $08
    ld a, a
    rst $00
    ld a, a
    rst $00
    ei
    db $ed
    di
    db $eb
    push af
    ld [hl], a
    ld sp, hl
    ld a, a
    pop af
    rst $38
    pop hl
    rst $28
    pop af
    rst $08
    ld [hl], e
    ld b, a
    rst $38
    rst $08
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, $e6fe

    ld a, $f2
    sbc [hl]
    db $76
    sbc $f2
    sbc [hl]
    ld a, [c]
    ld l, $e6
    cp $f2
    ld e, $e2
    cp $0c
    db $fc
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    nop
    ld bc, $0401
    rlca
    inc de
    rra
    ld c, h
    ld a, a
    adc c
    rst $38
    rst $00
    rst $38
    call z, Call_005_66ff
    ld a, a
    scf
    ccf
    dec de
    rra
    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    jr jr_005_44ba

    inc a
    inc a
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, l
    db $ed
    sub $c4
    rst $38
    db $ed
    cp $68
    ld a, a
    dec a
    ld a, $02
    inc bc
    nop
    nop

jr_005_44ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld sp, $8c3e
    rst $38
    call z, Call_005_7cf3
    rst $30
    scf
    rst $38
    inc e
    rst $38
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp+$47
    ld a, b
    daa
    jr c, @+$07

    ld a, [bc]
    cp $ff
    rst $38
    cp $ff
    ldh a, [$ef]
    ld hl, sp-$39
    ld sp, hl
    adc a
    rst $38
    rst $38
    add a
    cp $8f
    xor $9f
    cp a
    rst $00
    rst $20
    sbc a
    db $d3
    xor $e2
    rst $38
    di
    cp $ff
    rst $38
    rst $38
    rst $38
    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld h, e
    ld a, a
    ld b, a
    ld a, h
    ld c, a
    ld a, c
    ld h, [hl]
    ld a, a
    ld b, e
    ld a, l
    ld b, a
    ld a, [hl]
    ld l, a
    ld a, c
    ld b, a
    ld a, h
    ld h, e
    ld a, a
    jr c, @+$41

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4528:
    ld c, $0e
    rrca
    inc bc
    inc e
    inc bc
    ccf
    inc hl
    dec sp
    rlca
    ld h, b
    ld e, a
    jr nc, jr_005_4585

    ld hl, sp-$79
    ld b, b
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_4528

    ret nc

    ldh a, [$e8]
    ld hl, sp+$74
    db $fc
    sbc d
    cp $f9
    rst $38
    xor b
    rst $38
    ld de, $07ff
    db $fc
    rra
    ldh a, [$fe]
    jp nz, Jump_000_08f8

    ldh [$a0], a
    nop
    nop
    nop
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

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    add b
    ret c

    inc h
    ld l, $d2
    jp nc, $af2d

    db $d3
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld d, $0c
    inc c
    and b
    ret nc

    ld [hl], h
    adc h
    xor d

jr_005_4585:
    ld d, [hl]
    ld bc, $0eff
    rst $38
    ld [hl], e
    db $fc
    sbc a
    ldh [rIE], a
    nop
    rst $38
    nop
    db $db
    inc a
    rst $38
    ld h, h
    rst $38
    xor b
    cp $41
    db $f4
    ld [$40a0], sp
    nop
    nop
    ccf
    rst $38
    rst $38
    ccf
    rst $08
    ld a, a
    rst $00
    ld a, a
    rst $00
    ei
    db $ed
    di
    db $eb
    push af
    ld [hl], a
    ld sp, hl
    ld a, a
    pop af
    rst $38
    pop hl
    rst $28
    pop af
    rst $08
    ld [hl], e
    ld b, a
    rst $38
    rst $08
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, $e6fe

    ld a, $f2
    sbc [hl]
    or $9e
    ld [c], a
    ld a, $f2
    sbc [hl]
    or $9e
    ld [c], a
    ld a, $e2
    sbc $0c
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    rrca
    sub b
    sbc a
    ld bc, $00ff
    cp $e2
    cp $e0
    db $fc
    db $e4
    db $fc
    nop
    ld hl, sp+$70
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [$210f], sp
    ccf
    ld b, c
    ld a, a
    adc l
    rst $38
    sbc [hl]
    rst $38
    adc $ff
    ld h, d
    ld a, a
    ld sp, $193f
    rra
    dec c
    rrca
    inc b
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $c001
    ret nz

    ldh [$a0], a
    ld d, b
    ld h, b
    ld l, $32
    ld a, $30
    inc de
    inc e
    add hl, bc
    ld c, $04
    rlca
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
    ld [hl], b
    ld [hl], b
    ld hl, sp-$68
    and $1e
    db $eb
    or a
    ld [hl], l
    ld a, e
    ld a, [hl-]
    dec a
    dec c
    ld c, $06
    rlca
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
    cp $ff
    rst $38
    cp $ff
    ldh a, [$ef]
    ld hl, sp-$39
    ld sp, hl
    adc a
    rst $38
    rst $38
    add a
    cp $8f
    xor $9f
    cp a
    rst $00
    rst $20
    sbc a
    db $d3
    xor $e2
    rst $38
    di
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
    nop
    nop
    jr c, jr_005_46c2

    dec [hl]
    scf
    ld e, $1f
    inc l
    dec a
    ld a, [bc]
    dec sp
    ccf
    rra
    inc [hl]
    dec a
    ld [bc], a
    dec sp
    xor b
    ld [$c642], a
    add b
    add h
    nop
    inc b
    push hl
    ld a, [$fdf2]
    ldh a, [rIE]

jr_005_46a6:
    ld hl, sp-$01
    db $ec
    rst $38
    and $ff
    ret c

    rst $38
    db $ec
    rst $38
    ld sp, hl
    cp $ee
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld sp, $043e
    rlca
    add b
    add b

jr_005_46c2:
    ld b, b
    ret nz

    jr nz, jr_005_46a6

    sub b
    ldh a, [$c0]
    ldh a, [$c0]
    ld hl, sp+$24
    db $fc
    ld a, [c]
    cp $59
    rst $38
    add hl, de
    rst $38
    jp nz, $8bff

    db $fc
    ld l, $f1
    cp [hl]
    jp nz, Jump_000_08f8

    ldh [$a0], a
    nop
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

    add b
    and b
    ld h, b
    ld [$f49a], a
    ret z

    db $ec
    db $f4
    ld a, $3e
    rla
    rlca
    daa
    daa
    inc bc
    inc bc

Jump_005_46fe:
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
    ret nz

    ret nz

    ld l, h
    db $ec
    cp d
    db $76
    ld d, a
    cp a
    xor l
    rst $18
    rst $00
    db $fd
    ld a, l
    ld [hl], a
    ld l, a
    ld e, a
    ld a, a
    ld e, a
    ld a, $3e
    inc e
    inc e
    ccf
    rst $38
    rst $38
    ccf
    rst $08
    ld a, a
    rst $00
    ld a, a
    rst $00
    ei
    db $ed
    di
    db $eb
    push af
    ld [hl], a
    ld sp, hl
    ld a, a
    pop af
    rst $38
    pop hl
    rst $28
    pop af
    rst $08
    ld [hl], e
    ld b, a
    rst $38
    rst $08
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, d
    ld h, [hl]
    ld [hl-], a
    ld [hl], $35
    daa
    ld a, [bc]
    rra
    ld e, b
    ld e, b
    cp c
    rst $38
    dec c
    rst $38
    dec a
    db $dd
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$c0]
    ld hl, sp+$24
    inc a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4760:
    and a
    ld e, a
    ld c, a
    cp a
    rrca
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld h, a
    rst $38
    dec de
    rst $38
    scf
    rst $38
    sbc a
    ld a, a
    ld [hl], a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    adc h
    ld a, h
    jr nz, jr_005_4760

    inc bc
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [bc], a
    dec b
    dec bc
    ld bc, $0f0f
    db $10
    ld e, $03
    dec a
    ld [hl+], a
    rra
    jr nz, jr_005_47b6

    jr nz, jr_005_47b5

    inc hl
    ld a, a
    ld b, b
    ld a, a
    nop
    inc c
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    rst $38
    rst $38
    cp a
    ret nz

    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop

jr_005_47b5:
    nop

jr_005_47b6:
    nop
    nop
    nop
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
    ld sp, $8c3e
    rst $38
    call z, Call_005_7cf3
    rst $30
    scf
    rst $38
    inc e
    rst $38
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp+$47
    ld a, b
    daa
    jr c, jr_005_47e4

    ld a, [bc]
    inc sp
    inc a
    ccf
    ccf

jr_005_47e4:
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld h, e
    ld a, [hl]
    ld b, a
    ld a, l
    ld c, a
    ld [hl], l
    ld h, a
    ld a, l
    ld b, a
    ld a, l
    ld b, a
    ld a, h
    ld h, e
    ld a, a
    ld d, c
    ld a, [hl]
    ld h, e
    ld a, h
    jr c, @+$41

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    dec [hl]
    scf
    ld e, $1f
    inc l
    dec a
    ld a, [bc]
    dec sp
    ccf
    rra
    inc [hl]
    dec a
    ld [bc], a
    dec sp
    xor b
    ld [$c642], a
    add b
    add h
    nop
    inc b
    ldh a, [rIE]
    db $fc
    rst $38
    db $fd
    ld a, [$fcfb]
    rst $08
    rst $38
    rst $20
    rst $38
    jp c, $cdfd

    cp $da
    db $fd
    xor $ff
    ei
    rst $38
    rst $38
    rst $38

jr_005_4838:
    cp $ff
    ld hl, sp-$01
    jr nc, jr_005_487d

    ld b, $07
    rst $18

jr_005_4841:
    jr nz, jr_005_4841

    ld h, c
    db $fd
    inc bc
    rst $38
    ld bc, $f20c
    xor $f2
    ld e, [hl]
    or d
    ld a, [$3806]
    call nz, $04fc
    db $f4
    inc c
    db $f4
    inc c
    inc a
    call z, Call_000_08f8
    ldh a, [$08]
    jr nz, jr_005_4838

    nop
    nop
    dec a
    dec a
    rst $38
    rst $38
    db $fc
    ld [bc], a
    sbc a
    rst $38
    push bc
    rst $38
    rst $38
    rst $30
    ld d, e
    ld e, a
    ld h, e
    ld a, a
    push af
    ei
    add hl, de
    rra
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    rrca

jr_005_487d:
    rrca
    nop
    nop
    and b
    ret nc

    ld [hl], h
    adc h
    xor d
    ld d, [hl]
    ld bc, $0eff
    rst $38
    ld [hl], e
    db $fc
    sbc a
    ldh [rIE], a
    nop
    rst $38
    nop
    db $db
    inc a
    rst $38
    ld h, h
    rst $38
    xor b
    cp $41
    db $f4
    ld [$40a0], sp
    nop
    nop
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, Jump_000_063e

    cp $f2
    ld c, $46
    cp $e2
    cp [hl]
    ld a, [c]
    ld l, $e6
    cp [hl]
    ld [c], a

Call_005_48bb:
    cp [hl]
    ld [c], a
    ld e, [hl]
    inc c
    db $fc
    ld b, d
    ld h, [hl]
    ld [hl-], a
    ld [hl], $35
    daa
    ld a, [bc]
    rra
    ld e, b
    ld e, b
    cp c
    rst $38
    dec c
    rst $38
    dec a
    db $dd
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$c0]
    ld hl, sp+$24
    inc a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    cp a
    ld e, a
    rst $18
    ccf
    di
    rst $38
    rst $20
    rst $38
    ld e, e
    cp a
    or e
    ld a, a
    ld e, e
    cp a
    ld [hl], a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc c
    db $fc
    ld h, b
    ldh [rP1], a
    nop
    inc e
    inc e
    daa
    dec sp
    ld b, l
    ld a, a
    ld e, b
    ld h, a
    pop bc
    cp [hl]
    and b
    rst $18
    call nz, Call_005_48bb
    ld [hl], a
    inc [hl]
    dec hl
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
    ret nc

    ldh a, [$9b]
    ld h, h
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0003
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
    nop
    nop
    nop
    nop
    jr jr_005_4954

    ld b, b
    cp a
    ld a, e
    add h
    cp a
    rst $30
    db $10
    jr jr_005_494d

jr_005_494d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4954:
    nop
    nop
    nop
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
    ld bc, $2739
    add hl, de
    daa
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, h
    ld b, e
    inc a
    ld b, e
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $28
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_005_49c2

    dec [hl]
    scf
    ld e, $1f
    inc l
    dec a
    ld a, [bc]
    dec sp
    ccf
    rra
    inc [hl]
    dec a
    ld [bc], a
    dec sp
    xor b
    ld [$c642], a
    add b
    add h
    nop
    inc b
    inc b
    rlca
    ld [$160f], sp
    dec de
    ld [$4537], sp
    ld a, [hl]
    dec hl
    call nc, $fff8
    ld l, h
    ld a, a
    inc h
    ccf
    inc d
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_005_49c2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_005_49c2

    or b
    ld [hl], b
    xor h
    call c, $ee9e

jr_005_49d8:
    ld l, c
    ld [hl], a
    jr jr_005_49fb

    ld a, [bc]
    dec c
    rlca
    rlca
    nop
    nop
    jr nz, jr_005_4a04

    and b
    ld h, b
    jr nc, jr_005_49d8

    ret nc

    or b
    ld hl, sp-$08
    db $f4
    db $fc
    and h
    db $fc
    and d
    cp $b1
    rst $38
    jp hl


    rst $28
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc

jr_005_49fb:
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4a04:
    add b
    add b
    add b
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
    and c
    ccf
    and b
    ld a, a
    db $10
    rst $38
    rst $38
    rst $38
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec h
    push hl
    ld hl, $25e1
    push hl
    ld a, a
    rst $38
    cp $fe
    ld b, d
    ld h, [hl]
    ld [hl-], a
    ld [hl], $35
    daa
    ld a, [bc]
    rra
    ld e, b
    ld e, b
    cp c
    rst $38
    dec c
    rst $38
    dec a
    db $dd
    ld b, b
    ret nz

jr_005_4a52:
    ld [hl], b
    ldh a, [$c0]
    ld hl, sp+$24
    inc a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_005_4a52

    cp b
    ld a, b
    inc a
    db $fc
    xor [hl]
    ld a, [hl]
    rst $18
    ccf
    add e
    ld a, a
    rra
    rst $38
    rst $18
    ld a, a
    ld l, [hl]
    cp $7c
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    ld hl, sp-$08
    and h
    call c, $bcd4
    add h
    db $fc
    db $e4
    db $fc
    ld [c], a
    cp $7d
    ld a, a
    ld a, [hl-]
    dec sp
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
    ld b, b
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    ld b, b
    inc de
    db $ec
    inc de
    db $ec
    db $fc
    rst $38
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
    ld bc, $0101
    nop
    nop
    ld bc, $2739
    add hl, de
    daa
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, h
    ld b, e
    inc a
    ld b, e
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $28
    sub c
    ld bc, $0101
    nop
    nop
    ld bc, $2739
    add hl, de
    daa
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, h
    ld b, e
    inc a
    ld b, e
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $28
    sub c
    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld l, c
    ld a, [hl]
    ld b, b
    ld a, a
    ld c, a
    ld [hl], b
    ld l, b
    ld a, a
    ld b, e
    ld a, h
    ld b, a
    ld a, b
    ld h, c
    ld a, [hl]
    ld d, c
    ld a, [hl]
    ld h, e
    ld a, h
    jr c, jr_005_4b5f

    nop
    nop
    inc e
    inc e
    daa
    dec sp
    ld b, l
    ld a, a
    ld e, b
    ld h, a
    pop bc
    cp [hl]
    and b
    rst $18
    call nz, Call_005_48bb
    ld [hl], a
    inc [hl]
    dec hl
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
    add b
    add b
    ld c, h
    call z, $ee26
    pop de
    rst $38
    dec h
    ccf
    ld de, $191f
    rra
    dec c
    rrca
    rlca

jr_005_4b5f:
    rlca
    stop
    nop
    stop
    stop
    db $10
    jr jr_005_4b82

    add b
    ld a, a
    adc d
    ld a, a
    ld a, a
    rst $38
    ld e, a
    rst $38
    pop de
    pop af
    pop de
    pop af
    nop
    jr nc, jr_005_4b79

jr_005_4b79:
    jr nc, jr_005_4b9b

    jr nc, jr_005_4b7d

jr_005_4b7d:
    db $10
    db $10
    db $10
    ldh a, [$f0]

jr_005_4b82:
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec h
    push hl
    ld hl, $25e1

jr_005_4b9b:
    push hl
    ld a, a
    rst $38
    cp $fe
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec h
    push hl
    ld hl, $25e1
    push hl
    ld a, a
    rst $38
    cp $fe
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, Jump_000_063e

    cp $f2
    ld c, $56
    cp [hl]
    ld [c], a
    ld e, $f2
    ld c, $86
    ld a, [hl]
    add d
    ld a, [hl]
    and d
    ld e, [hl]
    inc c
    db $fc
    nop
    nop

jr_005_4be2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_005_4be2

    or b
    ld [hl], b
    xor h
    call c, $ee9e
    ld l, c
    ld [hl], a
    jr jr_005_4c1b

    ld a, [bc]
    dec c
    rlca
    rlca
    jr nc, jr_005_4c32

    ld l, b
    ld e, b
    or b
    add sp, -$08
    or b
    db $fc
    or h
    xor h
    db $f4
    ld a, c
    ld a, a
    ccf
    ld a, $07
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4c1b:
    nop
    nop
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
    nop
    ld a, [de]
    dec h
    cpl
    ld e, a
    sbc [hl]
    ld a, a
    cp c
    ld a, [hl]
    db $e3
    rst $38

jr_005_4c32:
    adc $fe
    ldh a, [$f0]
    ldh [$e0], a
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
    ld [bc], a
    inc bc
    dec b
    ld b, $0a
    inc c
    ld de, $2319
    scf
    daa
    ccf
    ld b, a
    ld a, a
    ld d, a
    ld l, a
    cp e
    rst $00
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld e, h
    ld h, e
    inc hl
    ccf
    rra
    rra
    ld bc, $0101
    nop
    nop
    ld bc, $2739
    add hl, de
    daa
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, h
    ld b, e
    inc a
    ld b, e
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $28
    sub c
    inc de
    inc e
    inc de
    inc e
    rrca
    rrca
    ld a, [bc]
    rrca
    jr nc, jr_005_4cc9

    ld h, d
    ld a, l
    push bc
    ld a, [$ff80]
    rst $18
    ldh [$9f], a
    ldh [$df], a
    ldh [$80], a
    rst $38
    rst $18
    ldh [$e8], a
    rst $38
    push bc
    ld a, [$7f68]
    nop
    nop
    nop
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_4ce2

    jr nc, jr_005_4ccc

    jr jr_005_4cc2

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_005_4cc2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4cc9:
    nop
    nop
    nop

jr_005_4ccc:
    nop
    nop
    add h
    add h
    add h
    inc b
    ld h, [hl]
    and $e7
    add e
    ld a, e
    ld l, l
    rra
    ld de, $1b1d
    ld c, $0c
    ld b, $06
    nop
    nop

jr_005_4ce2:
    nop
    db $10
    ld [hl], b
    adc b
    cp b
    ld b, b
    ld h, h
    call c, $fec0
    ret nz

    rst $38
    ld [hl+], a
    db $fd
    ld hl, sp-$01
    add hl, de
    rra
    ld a, [de]
    rra
    ld [bc], a
    rlca
    rlca
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    adc b
    ld hl, sp+$64
    inc c
    ld [bc], a
    ld [bc], a
    ld c, c
    db $e3
    jp hl


    db $e3
    pop hl

jr_005_4d0b:
    db $e3
    ret


    db $e3
    jp $87c7


    rst $28
    ld b, a
    cp a
    xor $1e
    sbc $3e
    inc a
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf

jr_005_4d35:
    rst $38
    dec h
    push hl
    ld hl, $25e1
    push hl
    ld a, a
    rst $38
    cp $fe
    ret z

    jr c, jr_005_4d0b

    jr c, jr_005_4d35

    ldh a, [$50]
    ldh a, [$ac]
    db $fc
    ld d, $fe
    ld b, e
    cp a
    ld bc, $fbff
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ld bc, $fbff
    rlca
    rla
    rst $38
    and e
    ld e, a
    ld d, $fe
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    ret nz

    ret nz

    ld hl, sp-$08
    ld hl, sp-$2c
    ld a, b
    ld b, h
    ccf
    add hl, hl
    ccf
    add hl, hl
    rra
    dec b
    ld d, $13
    rlca
    rlca
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
    dec b
    ld b, $2e
    ld [hl], c
    ld [hl], a
    adc a
    cp [hl]
    rst $18
    db $fd
    cp $76
    ld a, l
    ld b, l
    ld a, a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    db $76
    halt
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
    inc b
    rrca
    dec bc
    inc e
    inc d
    dec sp
    dec hl
    ld [hl], h
    dec hl
    ld [hl], h
    ld d, [hl]
    jp hl


    ld d, c
    xor $5e
    pop hl
    ld h, c
    rst $38
    cp [hl]
    rst $38
    ld b, c
    ld a, a
    ccf
    ccf
    rra
    rra
    ld [bc], a
    inc bc
    add hl, bc
    ld c, $27
    dec sp
    sbc a
    rst $28
    ld a, [hl]
    cp a
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
    cp a
    ld a, h
    cp a
    sbc a
    rst $28
    daa
    dec sp
    add hl, bc
    ld c, $02
    inc bc
    nop
    nop
    nop
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_4e42

    jr nc, @+$19

    jr jr_005_4e22

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    inc b
    rlca

jr_005_4e22:
    ld [$160f], sp
    dec de
    ld [$4537], sp
    ld a, [hl]
    dec hl
    call nc, $fff8
    ld l, h
    ld a, a
    inc h
    ccf
    inc d
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_005_4e42:
    nop
    nop
    nop
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
    call nz, Call_005_6844
    xor h
    ld a, a
    ld d, h
    add hl, sp
    daa
    dec a
    scf
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    ld b, $00
    nop
    db $10
    db $10
    ret nc

    add sp, $64
    cp h
    db $f4
    db $fc
    db $f4
    db $fc
    cp l
    ld a, a
    db $fd
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    call c, Call_000_06df
    rlca
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    inc b
    db $fc
    ld a, [$0dfe]
    rst $38
    push af
    rrca
    dec d
    rst $28
    push de
    cpl
    xor e
    ld e, a
    xor e
    ld e, a
    ld d, a
    cp a
    xor [hl]
    ld a, [hl]
    ld e, [hl]
    cp $bc
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$80], a
    add b
    ld b, b
    ret nz

    sub b
    ld [hl], b
    db $e4
    call c, $f7f9
    ld a, [hl]
    db $fd
    ld e, [hl]
    cp l
    cp [hl]
    rst $18
    adc $ff
    adc $ff
    xor [hl]
    rst $18
    ld e, $fd
    ld a, $fd
    ld sp, hl
    rst $30
    db $e4
    call c, Call_005_7090
    ld b, b
    ret nz

    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11

jr_005_4ed2:
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    jr nc, jr_005_4ed2

    cp b
    ld a, b
    inc a
    db $fc
    xor [hl]
    ld a, [hl]
    rst $18
    ccf
    add e
    ld a, a
    rra
    rst $38
    rst $18
    ld a, a
    ld l, [hl]
    cp $7c
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    jr jr_005_4f1a

    ld h, $3e
    dec sp
    ccf
    ld c, e
    ld a, a
    ld b, h
    ld a, a
    adc c
    cp $b8
    rst $18
    add sp, -$41
    ld d, h
    ld a, a
    inc h
    dec sp
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_005_4f1a:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_4f3a

    ld h, $3e
    dec sp
    ccf
    ld c, e
    ld a, a
    ld b, h
    ld a, a
    adc c
    cp $b8
    rst $18
    add sp, -$41
    ld d, h
    ld a, a
    inc h
    dec sp
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_005_4f3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_4f5d

    ld bc, $92ff
    rst $28
    pop bc
    cp $df
    ldh [$ef], a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    ld a, a
    ld e, a
    rra
    ccf
    ccf

jr_005_4f5d:
    ccf
    inc e
    inc e
    ld [bc], a
    inc bc
    add hl, bc
    ld c, $27
    dec sp
    sbc a
    rst $28
    ld a, a
    cp a
    ld h, a
    cp [hl]
    ld [hl], b
    rst $38
    ld a, [hl]
    rst $38
    ld l, l
    di
    ld [hl], h
    rst $38
    ld l, [hl]
    or a
    ld a, a
    cp a
    sbc a
    rst $28
    daa
    dec sp
    add hl, bc
    ld c, $02
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $2739
    add hl, de
    daa
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, h
    ld b, e
    inc a
    ld b, e
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    rst $28
    sub c
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    inc de
    db $ec
    inc de
    db $ec
    db $fc
    rst $38
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$bc]
    call c, $ffc7
    ld a, e
    ld [hl], a
    add hl, de
    rra
    inc c
    rrca
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$bc]
    call c, $ffc7
    ld a, e
    ld [hl], a
    add hl, de
    rra
    inc c
    rrca
    rlca
    rlca
    jr nc, jr_005_502e

    ret nz

    cp h
    ret c

    ld h, $e5
    ld a, [$17ef]
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    sub b
    ld [hl], b
    db $e4
    call c, $f7f9
    cp $fd
    and $7d
    ld e, $ef

jr_005_502e:
    ld a, [hl]
    rst $38
    cp $cf
    ld e, $ef
    ld b, [hl]
    db $fd
    cp $fd
    ld sp, hl
    rst $30
    db $e4
    call c, Call_005_7090
    ld b, b
    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec h
    push hl
    ld hl, $25e1
    push hl
    ld a, a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    stop
    nop
    db $10
    jr jr_005_5082

    add b
    ld a, a
    adc d
    ld a, a
    ld a, a
    rst $38
    ld e, a
    rst $38
    pop de
    pop af
    pop de
    pop af
    nop
    jr nc, jr_005_5099

    jr nc, jr_005_508b

    stop
    nop
    nop
    nop
    nop
    nop

jr_005_5082:
    nop
    jr jr_005_509d

    ld a, h
    inc a
    ld h, [hl]
    ld a, h
    or $7c

jr_005_508b:
    cp $7c
    sbc $7c
    adc $b9
    cp $46
    ld a, a
    add hl, sp
    add hl, sp
    nop
    nop
    nop

jr_005_5099:
    nop
    nop
    nop
    nop

jr_005_509d:
    nop
    nop
    nop
    jr z, jr_005_50da

    ld d, h
    ld l, h
    ld [$f5f6], a
    ei
    ld a, [$6dfd]
    ld e, [hl]
    ld [hl], $2f
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
    jr c, jr_005_50fa

    ld [$6c38], sp
    ld d, h
    inc d
    ld l, b
    jp nz, Jump_005_46fe

    ld a, d
    dec hl
    dec [hl]
    inc e
    rra
    add hl, bc
    add hl, bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_005_50da:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld c, $27
    dec sp
    sbc a
    xor $7e
    cp a
    ld a, [hl]
    cp a
    ld a, b
    rst $20
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, c
    cp a
    ld a, a
    cp c

jr_005_50f8:
    sbc a
    rst $28

jr_005_50fa:
    daa
    dec sp
    add hl, bc
    ld c, $02
    inc bc
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    jr nc, jr_005_50f8

    add hl, bc
    ld sp, hl
    add b
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    jr nz, jr_005_5153

    nop
    rra
    inc c
    rrca
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
    add hl, bc
    ld c, $27
    dec sp
    sbc a
    rst $28
    ld a, a
    cp a
    ld a, b
    cp a
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    sbc a
    rst $28
    daa
    dec sp
    add hl, bc
    ld c, $02
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
    sbc [hl]
    ld b, $55

jr_005_5153:
    adc a
    adc c
    rst $38
    ld h, e
    ld a, a
    ld a, [de]
    ld e, $06
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
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld d, b
    or b
    xor b
    ret c

    rst $10
    rst $28
    db $eb
    rst $30
    or $fe
    cp $fe
    ld a, h
    ld a, h
    inc a
    inc a
    jr jr_005_5198

    nop
    nop
    nop
    nop
    nop
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
    call nz, $e64c
    xor [hl]
    sbc c
    rst $38
    ld c, c
    ld a, a

jr_005_5198:
    dec de
    rla
    ld [de], a
    ld e, $08
    ld c, $07
    rlca
    ld b, b
    ret nz

    sub b
    ld [hl], b
    db $e4
    call c, Call_005_77f9
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld c, $f7
    ld e, $ff
    ld a, $ff
    ld a, $ff
    sbc [hl]
    db $fd
    cp $9d
    ld sp, hl
    rst $30
    db $e4
    call c, Call_005_7090
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret nz

    ldh a, [rP1]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $00
    cp $01
    rst $38
    ld [bc], a
    cp $f8
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    sub b
    ld [hl], b
    db $e4
    call c, $f7f9
    cp $fd
    sub [hl]
    db $fd
    cp $ff
    ld l, $ff
    cp $ff
    sbc [hl]
    rst $38
    cp $fd
    cp $fd

jr_005_51f8:
    ld sp, hl
    rst $30
    db $e4
    call c, Call_005_7090
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    jr nc, jr_005_51f8

    add hl, bc
    ld sp, hl
    add b
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    jr nz, jr_005_5253

    nop
    rra
    inc c
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
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_5262

    jr nc, @+$19

    jr @+$0d

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    inc bc
    ld a, [bc]
    dec c
    jr nz, @+$41

    ld b, c
    ld a, [hl]
    adc a
    ldh a, [$8e]
    pop af
    sub $e9
    ld h, e
    ld a, h
    scf

jr_005_5253:
    inc a
    rla
    jr @+$0a

    rrca
    inc b
    rlca
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop

jr_005_5262:
    nop
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, @+$31

    jr nc, @+$19

    jr @+$0d

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0201
    inc bc
    ld a, [bc]
    dec c
    jr nz, jr_005_52c7

    ld b, c
    ld a, [hl]
    adc a
    ldh a, [$8e]
    pop af
    sub $e9
    ld h, e
    ld a, h
    scf
    inc a
    rla
    jr @+$0a

    rrca
    inc b
    rlca
    rlca
    ld b, $03
    inc bc
    ld bc, $1801
    jr jr_005_52df

    inc a
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, l
    db $ed
    sub $c4
    rst $38
    db $ed
    cp $68
    ld a, a
    dec a
    ld a, $02
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
    ld [hl], b

jr_005_52c7:
    ld [hl], b
    ret nz

    ldh a, [rP1]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $00
    cp $01
    rst $38
    ld [bc], a
    cp $f8
    ld hl, sp+$00
    nop
    nop
    nop
    nop

jr_005_52df:
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$1e

    db $10
    ldh [rNR23], a
    inc [hl]
    ret z

    ld a, [de]
    and $fd
    inc bc
    call nz, $c03b
    ccf
    db $e3
    inc e
    xor [hl]
    pop de
    inc e
    ld [c], a
    ldh a, [$08]
    ret nz

    and b
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$1e

    db $10
    ldh [rNR23], a
    inc [hl]
    ret z

    ld a, [de]
    and $fd
    inc bc
    call nz, $c03b
    ccf
    db $e3
    inc e
    xor [hl]
    pop de
    inc e
    ld [c], a
    ldh a, [$08]
    ret nz

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
    ret nz

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    add b
    ret c

    inc h
    ld l, $d2
    jp nc, $af2d

    db $d3
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld d, $0c
    inc c
    jr jr_005_539a

    inc a
    inc a
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, l
    db $ed
    sub $c4
    rst $38
    db $ed
    cp $68
    ld a, a
    dec a
    ld a, $02
    inc bc

jr_005_5398:
    nop
    nop

jr_005_539a:
    nop
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
    ret nz

    jr nc, jr_005_5398

    add hl, bc
    ld sp, hl
    add b
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    jr nz, jr_005_53f3

    nop
    rra
    inc c
    rrca

jr_005_53b8:
    nop
    nop
    nop
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
    ret nz

    jr nc, jr_005_53b8

    add hl, bc
    ld sp, hl
    add b
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    jr nz, jr_005_5413

    nop
    rra
    inc c
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
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_5422

jr_005_53f3:
    jr nc, jr_005_540c

    jr jr_005_5402

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_005_5402:
    nop
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h

jr_005_540c:
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_5442

jr_005_5413:
    jr nc, jr_005_542c

    jr jr_005_5422

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_005_5422:
    nop
    ld bc, $0403
    rrca
    db $10
    dec a
    ld b, d
    rst $38
    add h

jr_005_542c:
    ei
    add h
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_5462

    jr nc, jr_005_544c

    jr jr_005_5442

    inc c
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_005_5442:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_544c:
    ret nz

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    add b
    ret c

    inc h
    ld l, $d2
    jp nc, $af2d

    db $d3
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld d, $0c
    inc c
    nop
    nop

jr_005_5462:
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret nz

    ldh a, [rP1]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $00
    cp $01
    rst $38
    ld [bc], a
    cp $f8
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
    ld [hl], b
    ld [hl], b
    ret nz

    ldh a, [rP1]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $00
    cp $01
    rst $38
    ld [bc], a
    cp $f8
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
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    nop
    nop
    add b
    ret nz

    nop
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    ld a, h
    add d
    xor $11
    ld e, a
    and b
    cp a
    ld b, b
    db $fd
    inc bc
    ld hl, sp+$04
    db $f4
    inc c
    ldh [rNR10], a
    ldh [$a0], a
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    ld b, $0a
    inc c
    ld de, $2319
    scf
    daa
    ccf
    ld b, a
    ld a, a
    ld d, a
    ld l, a
    cp e
    rst $00
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld e, h
    ld h, e
    inc hl
    ccf
    rra
    rra
    jr jr_005_553a

    inc a
    inc a
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    ld a, l
    db $ed
    sub $c4
    rst $38
    db $ed
    cp $68
    ld a, a
    dec a
    ld a, $02
    inc bc
    nop
    nop

jr_005_553a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_5554

    ld b, b
    cp a
    ld a, e
    add h
    cp a
    rst $30
    db $10
    jr jr_005_554d

jr_005_554d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5554:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld h, e
    ld a, a
    ld b, a
    ld a, h
    ld c, a
    ld a, c
    ld l, a
    ld a, b
    ld c, a
    ld a, c
    ld c, a
    ld a, d
    ld l, a
    ld a, c
    ld d, a
    ld a, h
    ld h, e
    ld a, a
    jr c, @+$41

    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld l, a
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ld [hl], a
    ld h, b
    ld a, a
    ld b, e
    ld a, h
    ld b, a
    ld a, b
    ld h, c
    ld a, a
    ld d, c
    ld a, a
    ld h, e
    ld a, l
    jr c, jr_005_55df

    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld l, c
    ld a, a
    ld e, a
    db $76
    ld e, a
    ld [hl], h
    ld a, a
    ld [hl], a
    ld e, a
    ld [hl], h
    ld e, a
    ld [hl], a
    ld a, a
    ld [hl], h
    ld e, a
    db $76
    ld l, e
    ld a, l
    jr c, jr_005_55ff

    adc b
    ld hl, sp+$64
    inc c
    ld [bc], a
    ld [bc], a
    ld c, c
    db $e3
    jp hl


    db $e3
    pop hl
    db $e3
    ret


    db $e3
    jp $87c7


    rst $28
    ld b, a
    cp a
    xor $1e
    sbc $3e
    inc a
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

jr_005_55df:
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
    ret nz

    ld b, b
    ldh [rNR41], a
    ld [hl], b
    add b
    ret c

    inc h
    ld l, $d2
    jp nc, $af2d

    db $d3
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld d, $0c

jr_005_55ff:
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    add b
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
    and c
    ccf
    and b
    ld a, a
    db $10
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    jp nz, $e6fe

    ld a, $f2
    adc $f6
    ld a, $f2
    sbc [hl]
    ld a, [c]
    ld e, [hl]
    or $9e
    ld [c], a
    ld a, $e2
    sbc $0c
    db $fc
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    ld [c], a
    cp $f6
    ld e, $f2
    sbc $76
    sbc $e2
    cp [hl]
    ld a, [c]
    xor [hl]
    add $7e
    jp nz, $a27e

    sbc $0c
    db $fc
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    ld [c], a
    cp $f6
    ld e, $fa
    adc $7e
    adc $f2
    sbc [hl]
    ld a, [$fe4e]
    adc $f2
    ld e, $e2
    cp $0c
    db $fc
    inc sp
    inc a
    ccf
    ccf
    dec d
    ld e, $1f
    rra
    ld a, [hl-]
    ccf
    ld [hl], a
    ld a, b
    ld l, a
    ld a, [hl]
    ld c, [hl]
    ld a, e
    ld c, a
    ld a, d
    ld l, a
    ld a, c
    ld b, a
    ld a, l
    ld b, a
    ld a, h
    ld h, e
    ld a, [hl]
    ld d, e
    ld a, [hl]
    ld h, e
    ld a, l
    jr c, jr_005_56df

    jr jr_005_56ba

    ld h, $3e
    dec sp
    ccf
    ld c, e
    ld a, a
    ld b, h
    ld a, a
    adc c
    cp $b8
    rst $18
    add sp, -$41
    ld d, h
    ld a, a
    inc h
    dec sp
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_005_56ba:
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

jr_005_56df:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    db $fc
    db $fc
    db $fc
    xor b
    ld a, b
    ld hl, sp-$08
    inc l
    db $fc
    and $1e
    ld a, [c]
    ld a, [hl]
    db $76
    sbc $f2
    ld e, [hl]
    or $9e
    ld [c], a
    cp [hl]
    ld a, [c]
    ld l, $c6
    ld a, [hl]
    jp nz, $a27e

    sbc $0c
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$bc]
    call c, $ffc7
    ld a, e
    ld [hl], a
    add hl, de
    rra
    inc c
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    jr nz, jr_005_5b44

    ld b, b
    ld b, b
    ld h, b
    ld b, b
    add b
    ld b, b
    and b
    ld b, b
    add b
    ld b, c
    and b
    ld b, c
    ret nz

    ld b, c
    ldh [rSTAT], a
    nop
    ld b, d
    jr nz, jr_005_5b5a

    nop
    ld b, e
    jr nz, @+$45

    ld b, b
    ld b, e
    ld h, b
    ld b, e
    add b
    ld b, e
    and b
    ld b, e
    add b
    ld b, h
    and b
    ld b, h
    ret nz

    ld b, h
    ldh [rLY], a
    nop
    ld b, l
    jr nz, jr_005_5b75

    nop
    ld b, [hl]
    jr nz, jr_005_5b7a

    ld b, b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    add b
    ld b, [hl]
    and b
    ld b, [hl]
    add b
    ld b, a
    and b
    ld b, a
    ret nz

    ld b, a
    ldh [rBGP], a

jr_005_5b44:
    nop
    ld c, b
    jr nz, jr_005_5b90

    nop
    ld c, c
    jr nz, jr_005_5b95

    ld b, b
    ld c, c
    ld h, b
    ld c, c
    add b
    ld c, c
    and b
    ld c, c
    add b
    ld c, d
    and b
    ld c, d
    ret nz

    ld c, d

jr_005_5b5a:
    ldh [rWY], a
    nop
    ld c, e
    jr nz, @+$4d

    nop
    ld c, h
    jr nz, jr_005_5bb0

    ld b, b
    ld c, h
    ld h, b
    ld c, h
    add b
    ld c, h
    and b
    ld c, h
    add b
    ld c, l
    and b
    ld c, l
    ret nz

    ld c, l
    ldh [rKEY1], a
    nop

jr_005_5b75:
    ld c, [hl]
    jr nz, jr_005_5bc6

    nop
    ld c, a

jr_005_5b7a:
    jr nz, jr_005_5bcb

    ld b, b
    ld c, a
    ld h, b
    ld c, a
    add b
    ld c, a
    and b
    ld c, a
    add b
    ld d, b
    and b
    ld d, b
    ret nz

    ld d, b
    ldh [$50], a
    nop
    ld d, c
    jr nz, jr_005_5be1

jr_005_5b90:
    nop
    ld d, d
    jr nz, jr_005_5be6

    ld b, b

jr_005_5b95:
    ld d, d
    ld h, b
    ld d, d
    add b
    ld d, d
    and b
    ld d, d
    add b
    ld d, e
    and b
    ld d, e
    ret nz

    ld d, e
    ldh [rHDMA3], a
    nop
    ld d, h
    jr nz, jr_005_5bfc

    nop
    ld d, l
    jr nz, jr_005_5c01

    ld b, b
    ld d, l
    ld h, b
    ld d, l

jr_005_5bb0:
    add b
    ld d, l
    and b
    ld d, l
    add b
    ld d, [hl]
    and b
    ld d, [hl]
    ret nz

    ld d, [hl]
    ldh [rRP], a
    nop
    ld d, a
    jr nz, jr_005_5c17

    nop
    nop
    nop
    nop
    inc b
    inc bc

jr_005_5bc6:
    nop
    nop
    nop
    dec b
    inc bc

jr_005_5bcb:
    inc b
    inc bc
    nop
    nop
    dec b
    ld bc, $0100
    nop
    nop
    dec b
    ld b, $03
    ld bc, $0300
    dec b
    ld bc, $0004
    nop
    nop

jr_005_5be1:
    ld [bc], a
    inc bc
    inc b
    nop
    nop

jr_005_5be6:
    inc b
    ld bc, $0102
    inc b
    nop
    inc bc
    nop
    nop
    inc bc
    dec b
    dec b
    inc b
    inc b
    ld bc, $0004
    dec b
    nop
    dec b
    nop
    inc bc

jr_005_5bfc:
    inc b
    inc b
    inc b
    dec b
    ld [bc], a

jr_005_5c01:
    nop
    nop
    nop
    ld bc, $0305
    dec b
    inc bc
    nop
    dec b
    nop
    nop
    inc bc
    ld bc, $0303
    inc b
    inc b
    nop
    inc b
    nop
    inc b

jr_005_5c17:
    dec b
    ld b, $03
    ld bc, $2106
    rst $20
    pop bc
    ld e, $08
    ld b, $00

jr_005_5c23:
    ld c, $02

jr_005_5c25:
    ld a, [hl]
    push hl
    ld hl, $5bc0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    push de
    ld hl, $c908
    call Call_000_3d85
    ld a, b
    add a
    ld d, a
    ld a, $02
    sub c
    add d
    add a
    add a
    add a
    add l
    ld l, a
    pop de
    ld a, b
    cp $03
    jr c, jr_005_5c50

    ld a, [$c11b]
    or a
    jr z, jr_005_5c53

jr_005_5c50:
    call Call_005_5c91

jr_005_5c53:
    pop hl
    inc hl
    dec c
    jr nz, jr_005_5c25

    inc b
    ld a, b
    cp $04
    jr c, jr_005_5c23

    ld de, $cb80
    ld hl, $c1e7
    ld b, $08

jr_005_5c66:
    push bc
    push hl
    push de
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld de, $5b00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld b, $02

jr_005_5c77:
    ld c, $20

jr_005_5c79:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_5c79

    ld a, l
    add $a0
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_005_5c77

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_005_5c66

    ret


Call_005_5c91:
    push de
    ld a, b
    add a
    add a
    add a
    add a
    add $40
    pop de
    ld [hl], a
    ld a, [$c11b]
    or a
    jr nz, jr_005_5ca5

    ld a, [hl]
    add $10
    ld [hl], a

jr_005_5ca5:
    inc l
    push de
    ld a, $02
    sub c
    inc a
    add a
    add a
    add a
    ld e, a
    add a
    add e
    add $58
    pop de
    ld [hl+], a
    ld [hl], e
    inc e
    inc e
    inc l
    ld [hl], d
    inc l
    push de
    ld a, b
    add a
    add a
    add a
    add a
    add $40
    pop de
    ld [hl], a
    ld a, [$c11b]
    or a
    jr nz, jr_005_5ccf

    ld a, [hl]
    add $10
    ld [hl], a

jr_005_5ccf:
    inc l
    push de
    ld a, $02
    sub c
    inc a
    add a
    add a
    add a
    ld e, a
    add a
    add e
    add $60
    pop de
    ld [hl+], a
    ld [hl], e
    inc e
    inc e
    inc l
    ld [hl], d
    inc l
    ret


    ld a, $01
    ldh [rVBK], a
    ld hl, $9000
    ld b, $b0

jr_005_5cef:
    ldh a, [rSTAT]
    and $03
    jr z, jr_005_5cef

jr_005_5cf5:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_005_5cf5

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_005_5cef

    ld a, [$c1f4]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5b00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9220
    ld b, $04

jr_005_5d1a:
    ld c, $10

jr_005_5d1c:
    push bc
    ld a, b
    and $01
    jr z, jr_005_5d2e

    ld a, [hl+]
    call Call_005_5dcd
    ld c, a
    ld a, [hl+]
    call Call_005_5dcd
    ld b, a
    jr jr_005_5d38

jr_005_5d2e:
    ld a, [hl+]
    call Call_005_5dae
    ld c, a
    ld a, [hl+]
    call Call_005_5dae
    ld b, a

jr_005_5d38:
    call Call_000_328a
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    pop bc
    dec c
    jr nz, jr_005_5d1c

    ld a, b
    and $01
    jr z, jr_005_5d5a

    ld a, l
    add $a0
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_005_5d62

jr_005_5d5a:
    ld a, l
    sub $20
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_005_5d62:
    ld a, e
    add $40
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_005_5d1a

    xor a
    ldh [rVBK], a
    ld hl, $5bc0
    ld a, [$c1f4]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5e00
    add hl, de
    ld c, $38
    ld b, $04

jr_005_5d8a:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c105]
    and $1f
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, e
    ldh [rBCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, d
    ldh [rBCPD], a
    inc c
    dec b
    jr nz, jr_005_5d8a

    ret


Call_005_5dae:
    push de
    ld e, a
    ld d, $00
    ld a, e
    and $80
    call nz, Call_005_5dec
    ld a, e
    and $40
    call nz, Call_005_5df1
    ld a, e
    and $20
    call nz, Call_005_5df6
    ld a, e
    and $10
    call nz, Call_005_5dfb
    ld a, d
    pop de
    ret


Call_005_5dcd:
    push de
    ld e, a
    ld d, $00
    ld a, e
    and $08
    call nz, Call_005_5dec
    ld a, e
    and $04
    call nz, Call_005_5df1
    ld a, e
    and $02
    call nz, Call_005_5df6
    ld a, e
    and $01
    call nz, Call_005_5dfb
    ld a, d
    pop de
    ret


Call_005_5dec:
    ld a, d
    or $c0
    ld d, a
    ret


Call_005_5df1:
    ld a, d
    or $30
    ld d, a
    ret


Call_005_5df6:
    ld a, d
    or $0c
    ld d, a
    ret


Call_005_5dfb:
    ld a, d
    or $03
    ld d, a
    ret


    ldh [rP1], a
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    ldh [rP1], a
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    ldh [rP1], a
    ret nz

    inc bc
    add b
    ld [bc], a
    ld b, b
    ld bc, $00e0
    ret nz

    ld a, e
    add b
    ld d, d
    ld b, b
    add hl, hl
    ldh [rP1], a
    sbc $03
    sub h
    ld [bc], a
    ld c, d
    ld bc, $00e0
    cp $01
    ld d, h
    ld bc, $00aa
    ldh [rP1], a
    ld e, $78
    inc d
    ld d, b
    ld a, [bc]
    jr z, @-$1e

    nop
    ld e, a
    ld e, e
    ld [hl], $36
    ld h, e
    inc c
    ld a, [$c1ef]
    ld hl, $5bc0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    ld hl, $c948
    call Call_000_3d85
    ld [hl], $68
    inc l
    ld [hl], $50
    inc l
    ld [hl], $30
    inc l
    ld [hl], d
    inc l
    ld [hl], $68
    inc l
    ld [hl], $58
    inc l
    ld [hl], $32
    inc l
    ld [hl], d
    inc l
    ld a, [$c1ef]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5b00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ce00
    ld b, $02

jr_005_5e7c:
    ld c, $20

jr_005_5e7e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_5e7e

    ld a, l
    add $a0
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_005_5e7c

    ret


    ld a, [$c185]
    ld e, a
    ld d, $00
    ld hl, $c280
    add hl, de
    ld a, [hl]
    push af
    ld hl, $5bc0
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, [hl]
    ld hl, $c958
    call Call_000_3d85
    ld [hl], $40
    inc l
    ld [hl], $30
    inc l
    ld [hl], $34
    inc l
    ld [hl], d
    inc l
    ld [hl], $40
    inc l
    ld [hl], $38
    inc l
    ld [hl], $36
    inc l
    ld [hl], d
    inc l
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5b00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ce40
    ld b, $02

jr_005_5ed3:
    ld c, $20

jr_005_5ed5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_5ed5

    ld a, l
    add $a0
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_005_5ed3

    ret


    inc hl
    inc h
    db $10
    rrca
    nop
    nop
    ld [de], a
    daa
    db $10
    rlca
    ld bc, $0f00
    add hl, de
    inc bc
    inc bc
    ld [bc], a
    nop
    ld d, $16
    dec b
    ld [bc], a
    inc bc
    nop
    dec de
    rla
    dec b
    ld bc, $0003
    rra
    rla
    ld bc, $0303
    nop
    ld d, $18
    ld bc, $030b
    nop
    inc [hl]
    dec hl
    rlca
    dec b
    inc b
    nop
    add hl, sp
    add hl, hl
    inc b
    ld bc, $0004
    dec a
    add hl, hl
    ld [bc], a
    inc bc
    inc b
    nop
    dec sp
    dec hl
    ld [bc], a
    ld bc, $0004
    rrca
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    rrca
    inc h
    rrca
    ld [bc], a
    dec b
    nop
    inc e
    add hl, de
    ld [bc], a
    ld [bc], a
    ld b, $00
    inc e
    dec de
    inc b
    ld bc, $0006
    jr jr_005_5f60

    dec b
    ld b, $07
    nop
    dec e
    dec e
    inc bc
    ld bc, $0007
    dec e
    ld [hl+], a
    ld bc, $0701
    nop
    inc c
    ld d, $09
    ld [bc], a
    ld [$0c00], sp
    jr @+$04

    dec b
    ld [$0c00], sp

jr_005_5f60:
    dec e
    ld b, $04
    ld [$1300], sp
    add hl, de
    ld [bc], a
    inc bc
    add hl, bc
    nop
    inc a
    inc e
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop
    dec a
    dec de
    ld bc, $0a01
    nop
    dec a
    ld a, [de]
    ld b, $01
    ld a, [bc]
    nop
    ld b, d
    dec de
    ld bc, $0a02
    nop
    ld b, d
    dec e
    inc b
    ld bc, $000a
    ld b, [hl]
    dec e
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    inc [hl]
    jr jr_005_5f93

    inc b

jr_005_5f93:
    dec bc
    nop
    inc [hl]
    inc e
    rlca
    ld [bc], a
    dec bc
    nop
    inc a
    ld l, $0a
    ld [bc], a
    inc c
    nop
    ld b, [hl]
    ld [hl+], a
    ld [bc], a
    inc c
    inc c
    nop
    jr c, @+$16

    inc b
    inc bc
    dec c
    nop
    jr c, @+$19

    ld [bc], a
    inc b
    dec c
    nop
    inc de
    dec e
    ld [bc], a
    dec b
    ld c, $00
    ld [de], a
    ld [hl+], a
    ld bc, $0e01
    nop
    ld e, $1f
    inc b
    ld [bc], a
    rrca
    nop
    ld hl, $0121
    inc bc
    rrca
    nop
    rra
    inc h
    inc bc
    ld [bc], a
    rrca
    nop
    inc [hl]
    inc h
    dec bc
    ld bc, $0010
    scf
    dec h
    ld bc, $1001
    nop
    inc [hl]
    ld h, $04
    inc b
    stop
    ld b, h
    ld a, [de]
    inc b
    ld [bc], a
    ld de, $4300
    jr @+$09

    ld bc, $0012
    ld c, c
    add hl, de
    ld bc, $1206
    nop
    ld a, a
    nop
    nop
    cp a
    nop
    nop
    rst $18
    nop
    nop
    rst $28
    nop
    nop
    rst $30
    nop
    nop
    ei
    nop

jr_005_6006:
    nop
    db $fd
    nop
    nop
    cp $00
    nop
    ld a, a
    nop
    add b
    cp a
    nop
    ld b, b
    rst $18
    nop
    jr nz, jr_005_6006

    nop
    db $10
    rst $30
    nop
    ld [$00fb], sp
    inc b
    db $fd
    nop
    ld [bc], a
    cp $00
    ld bc, $807f
    nop
    cp a
    ld b, b
    nop
    rst $18
    jr nz, jr_005_602e

jr_005_602e:
    rst $28
    stop
    rst $30
    ld [$fb00], sp
    inc b
    nop
    db $fd
    ld [bc], a
    nop
    cp $01
    nop
    ld a, [hl+]
    ld [$c1cb], a
    ld a, [hl+]
    ld [$c1cc], a
    ld a, [hl+]
    ld [$c1cd], a
    ld a, [hl+]
    ld [$c1ce], a
    ld a, [hl+]
    ld [$c1cf], a
    ld a, [hl+]
    ld [$c1d0], a
    push hl

jr_005_6056:
    ld a, [$c1ce]
    ld [$c1d1], a
    call Call_005_6071
    ld a, [$c1cb]
    inc a
    ld [$c1cb], a
    ld a, [$c1cd]
    dec a
    ld [$c1cd], a
    jr nz, jr_005_6056

    pop hl
    ret


Call_005_6071:
    ld a, [$c1cb]
    srl a
    srl a
    srl a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9000
    add hl, de
    ld a, [$c1cc]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $6025
    ld a, [$c1cf]
    ld c, a
    ld a, [$c1d0]
    ld b, a
    ld a, [$c17c]
    cp c
    jr nz, jr_005_60ac

    ld a, [$c17d]
    cp b
    jr nz, jr_005_60ac

    ld de, $5ff5

jr_005_60ac:
    ld bc, $c200
    ld a, [$c1cf]
    add c
    ld c, a
    ld a, [$c1d0]
    adc b
    ld b, a
    ld a, [bc]
    or a
    jr nz, jr_005_60c0

    ld de, $600d

jr_005_60c0:
    ld a, [$c1cb]
    and $07
    ld b, a
    add a
    add b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_005_60ce:
    ld a, $01
    ldh [rVBK], a
    ld a, [de]
    ld c, a
    inc de
    call Call_000_328a
    ld a, [hl]
    and c
    ld b, a
    ld a, [de]
    or b
    ld [hl+], a
    inc de
    ld a, [hl]
    and c
    ld b, a
    ld a, [de]
    or b
    ld [hl+], a
    dec de
    dec de
    xor a
    ldh [rVBK], a
    ld a, [$c1d1]
    dec a
    ld [$c1d1], a
    jr nz, jr_005_60ce

    ret


    ld a, $01
    ldh [rVBK], a
    ld hl, $99e0
    ld de, $0200
    ld a, [$c10e]
    or a
    jr z, jr_005_6107

    ld de, $0002

jr_005_6107:
    ld b, $20

jr_005_6109:
    call Call_000_328a
    ld a, [hl]
    and $f8
    or d
    ld [hl+], a
    dec b
    jr nz, jr_005_6109

    ld b, $20

jr_005_6116:
    call Call_000_328a
    ld a, [hl]
    and $f8
    or e
    ld [hl+], a
    dec b
    jr nz, jr_005_6116

    xor a
    ldh [rVBK], a
    ld a, [$c100]
    and $40
    jr z, jr_005_6135

    ld a, [$c10e]
    or a
    jr z, jr_005_6135

    xor a
    ld [$c10e], a

jr_005_6135:
    ld a, [$c100]
    and $80
    jr z, jr_005_6148

    ld a, [$c10e]
    cp $01
    jr z, jr_005_6148

    ld a, $01
    ld [$c10e], a

jr_005_6148:
    ret


    ld hl, $9a00
    ld de, $9a20
    ld b, $04

jr_005_6151:
    ld c, $14

jr_005_6153:
    call Call_000_328a
    ld a, [de]
    ld [hl+], a
    inc e
    dec c
    jr nz, jr_005_6153

    ld a, e
    add $0c
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, l
    add $0c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_005_6151

    ld hl, $c1f7
    dec [hl]
    ld hl, $c1f6
    ld [hl], $00
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_64b3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_66ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_6844:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_7090:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_77f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_7cf3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
