SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    add c
    ld a, a
    cp $01
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    add hl, bc
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld h, h
    rst $38
    or d
    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    jp $c43c


    dec sp
    add sp, $17
    ld hl, sp+$07
    ld hl, sp+$07
    db $f4
    rrca
    rst $30
    rrca
    ld a, [c]
    rrca
    db $fd
    inc bc
    push af
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$fc05]
    inc bc
    nop
    rst $38
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    pop af
    rst $38
    ld sp, hl
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
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    ld hl, sp+$07
    rst $38
    nop
    adc a
    ld [hl], b
    ld sp, $b1ce
    ld c, [hl]
    adc h
    ld a, a
    xor $1f
    adc a
    ld a, a
    or [hl]
    ld a, a
    ld [hl], d
    cp a
    ld hl, sp-$41
    cp b
    rst $38
    cp c
    rst $38
    cp a
    rst $38

jr_066_4096:
    adc a
    rst $38
    add b
    rst $38
    ld e, a
    and b
    rrca
    ldh a, [$71]
    cp $78
    rst $38
    db $f4
    ei
    ldh a, [rIE]
    ld hl, sp-$09
    ld a, [c]
    rst $38
    ld [$f4ff], a
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $10
    jr z, jr_066_4096

    inc l
    jp $c13c


    ld a, $02
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    adc [hl]
    pop af
    ld c, d
    push af
    and a
    ld a, b
    add d
    ld a, l
    add d
    ld a, l
    ld c, d
    cp l
    res 7, h
    adc b
    rst $38
    xor b
    rst $18
    ld l, b
    sbc a
    adc b
    ld a, a
    inc d
    rst $28
    inc d
    rst $28
    ld b, l
    cp $e4
    rst $38
    ret c

    rst $20
    ret c

    rst $20
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$a3], a
    call c, $bc43
    ld b, e
    cp h
    jp $913c


    ld a, [hl]
    ld sp, $73fe
    cp $22
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld [$a0ff], sp
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc c
    di
    ld a, h
    add e
    ld [hl], b
    adc a
    db $10
    rst $28
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add c
    cp $00
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    rlca
    ld hl, sp+$1e
    rst $20

jr_066_4150:
    adc d
    ld [hl], a
    xor e
    ld [hl], a
    sbc c
    ld h, a
    add hl, de
    rst $20
    add hl, de
    rst $20
    reti


    daa
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, l
    add e
    call nz, $f8fb
    rst $38
    jp hl


    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    db $fc
    di
    rrca
    ldh a, [$bf]
    ret nz

    xor a
    ret nc

    xor a
    ret nc

    rst $28
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_066_4150

    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    ldh [$d7], a
    add sp, -$21
    ldh [$37], a
    ret z

    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    xor [hl]
    ld e, a
    ld l, [hl]
    sbc a
    ld l, [hl]
    sbc a
    ld l, $df
    ld c, $ff
    add [hl]
    rst $38
    ld [de], a
    rst $38
    inc bc
    cp $61
    rst $38
    ld h, c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    sbc $ff
    call z, $c2ff
    dec a
    pop bc
    ld a, $80
    ld a, a
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ld b, c
    cp a
    ld h, c
    sbc a
    inc [hl]
    rr h
    db $e3
    ld c, $f1
    ld c, $f1
    ld b, [hl]
    ld sp, hl
    ld [hl], h
    ei
    inc [hl]
    ei
    ld d, $f9
    inc d
    ei
    dec [hl]
    ei
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add hl, hl
    rst $30
    ld [$00f7], sp
    rst $38
    jr nz, @+$01

    ld e, a
    ldh [$1f], a
    ldh [$3d], a
    jp nz, $847b

    ld sp, hl
    ld b, $f8
    rlca
    db $f4
    rrca
    db $f4
    rrca
    cp $07
    di
    rrca
    push af
    rrca
    db $f4
    rrca
    or $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    add e
    inc a
    jp Jump_000_23dc


    ld e, h
    and e
    xor b
    rst $10
    adc c
    rst $30
    adc l
    di
    ret


    rst $30
    pop bc
    rst $38
    sub c
    rst $28
    inc e
    db $e3
    ld e, $e1
    inc c
    di
    dec c
    di
    ld de, $bfff
    ld a, a
    ld bc, $5fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    ldh a, [rIE]
    sub b
    rst $28
    or b
    rst $08
    add b
    rst $38
    add d
    db $fd
    xor [hl]
    pop de
    sbc h
    db $e3
    inc l
    db $d3
    inc a
    jp $a35c


    inc c
    di
    inc b
    ei
    adc h
    di
    adc l
    di
    and a
    ei
    and c
    rst $38
    ld hl, $24ff
    ei
    add [hl]
    ld a, c
    add d
    ld a, l
    add d
    ld a, l
    jp $cf3c


    jr nc, @+$01

    nop
    ei
    inc b
    ld sp, hl
    ld b, $f1
    ld c, $fc
    rlca
    or $0f
    rst $30
    ld c, $f8
    rlca
    or $0f
    db $f4
    rrca
    or $0f
    db $f4
    rrca
    call nz, $e43f
    rra
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld b, c
    cp [hl]
    ret nz

    ccf
    ret z

    ccf
    ret c

    cpl
    add b
    ld a, a
    adc b
    ld [hl], a
    ret nz

    ld a, a
    add e
    ld a, h
    add a
    ld a, b
    ld de, $03ee
    cp $31
    adc $7b
    add h
    dec de
    db $e4
    ld e, c
    and $5a
    push hl
    ld l, e
    db $f4
    ld l, l
    ld a, [c]
    ret


    or $cd
    ld a, [c]
    dec c
    ld a, [c]
    rst $08

jr_066_42cd:
    ldh a, [$cf]
    ldh a, [$4e]
    pop af
    inc l
    di
    ld [$2cf7], sp

jr_066_42d7:
    di
    jr nc, @+$01

    jr nc, @+$01

    ld [de], a
    db $fd
    add a
    ld hl, sp-$71
    ldh a, [$bf]
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $38
    ld a, a
    add b
    ld a, $c1
    jr c, jr_066_42cd

    jr nc, jr_066_42d7

    jr nc, @-$2f

    ld sp, $3bcf
    rst $00
    ld e, $e7
    ld [$08f7], sp
    rst $30
    ld [$2cf7], sp
    db $d3
    ld [$07f7], sp
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    ld [hl], h
    ei
    ld hl, sp-$09
    and b
    rst $38
    ld h, c
    rst $38
    add sp, -$01
    pop af
    rst $38
    ret nc

    rst $38
    adc [hl]

jr_066_4333:
    rst $38
    inc a
    rst $38
    ld [hl], e
    rst $38
    push hl
    ei
    add h
    ei
    inc [hl]
    ei
    adc l
    ld a, [c]

jr_066_4340:
    ld hl, sp+$07
    pop hl
    rra
    ld [c], a
    rra
    or b
    ld c, a
    ldh [$1f], a
    pop hl
    ld e, $fd
    ld [bc], a
    ld a, b
    add a
    ld bc, $5dff
    and e
    ld a, $c1
    inc sp
    call z, Call_000_0df2
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, b
    sbc a
    jr nz, jr_066_4340

    jr nc, jr_066_4333

    ld sp, $23ce
    call c, $ff80
    add h
    ei
    inc b
    ei
    inc b
    ld hl, sp+$20
    sbc $04
    ld a, [$fa84]
    adc h
    ld a, [c]
    inc c
    di
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $f0
    rrca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rTIMA]
    ld hl, sp+$0c
    db $fd
    dec c
    push hl
    dec d
    jp hl


    add hl, de
    ldh [rIE], a
    pop af
    rst $38
    db $fd
    rst $38
    ld [hl], c
    rst $38
    ld l, h
    di
    db $ec
    di
    ld hl, sp-$19
    ld sp, hl
    and $e9
    or $e9
    or $eb
    db $f4
    ld a, e
    db $e4
    rst $18
    ldh [$dc], a
    db $e3
    call $d7f3
    jp hl


    set 7, l
    db $e3
    db $fd
    add e
    db $fd
    rst $20
    ld sp, hl
    push hl
    ei
    rst $20
    ld sp, hl
    and $f9
    or $f9
    ldh a, [$0c]
    ld hl, sp+$04
    db $fc
    ld bc, $03fc
    ld hl, sp+$04
    ld hl, sp+$04
    add b
    ld a, h
    ld b, b
    db $fc
    add h
    ld a, [$fa84]
    nop
    cp $00
    cp $0c
    ld a, [c]
    inc e
    ld [c], a
    ld e, $e1
    ld a, [hl-]
    push bc
    xor $11
    and $18
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR34], a
    ld h, b
    sbc a
    db $10
    rst $28
    ld a, [hl+]
    db $dd
    rlca
    ld hl, sp+$01
    cp $13
    xor $b0
    ld c, a
    ld hl, sp+$07
    ld sp, hl
    rlca
    db $f4
    dec bc
    ret nz

Jump_066_43ff:
    ccf
    ld b, c
    cp a
    ld b, e
    cp a
    ld b, c
    cp a
    nop
    rst $38
    add c
    cp $a3
    call c, $c1be
    ld a, $c1
    dec a
    jp $cf37


    rra
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    ld a, b
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    jr nc, @+$01

    jr @+$01

    daa
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    ld b, $f9
    xor $11
    nop
    rst $38
    xor h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld [c], a
    rra
    ld hl, sp+$07
    ld a, h
    add e
    cp h
    jp $cc40


    nop
    add b
    add b
    ld c, b
    nop
    rst $18
    nop
    jp $e000


    pop hl
    cp $e9
    or $e0
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp $80ff


    rst $38
    and c
    sbc $23
    call c, $fc03
    ld b, $fc
    inc a
    cp $dc
    rst $38
    db $ec
    rst $18
    rst $30
    adc $87
    xor $ee
    add $cb
    and $da
    rst $20
    ld e, a
    db $e3
    sbc $23
    adc h
    inc sp
    ld bc, $44bf
    cp e
    adc d
    push af
    add d
    db $fd
    add b
    rst $38
    ld b, b
    cp a
    inc d
    db $eb
    ld a, [bc]
    di
    ld c, $f3
    ld [$63b7], a
    cp a
    ld h, b
    cp a
    ld a, c
    and [hl]
    add hl, de
    and $14
    rst $28
    ld c, $ff
    rst $38
    rst $38
    sbc h
    rst $38
    call c, $dcbf
    cp a
    db $dd
    cp [hl]
    ld e, h
    cp a
    rra
    rst $38
    rra
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    ld b, l
    rst $38
    ld h, a
    sbc b
    rst $18
    nop
    inc de
    call z, $be4d
    inc e
    cp $3a
    sbc l
    inc e
    cp e
    ld d, d
    rst $38
    db $d3
    call z, $88f7
    ld l, $d1
    ld h, c
    cp a
    ld d, h
    db $e3
    ld b, $e3
    ld hl, $f6c6
    db $ec
    rst $28
    cp $fc
    rst $38
    ld sp, hl
    cp $f6
    ld sp, hl
    add a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add [hl]
    ld sp, hl
    add b
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp-$80
    ldh a, [$80]
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    nop
    ret nz

    cp $ff
    ld a, [hl]
    rst $38
    jr c, @+$01

    call c, $f7ff
    rst $38
    call z, $09ff
    cp $1b
    db $fc
    ld a, [hl-]
    db $fd
    inc a
    rst $38
    ld a, l
    cp $c9
    cp $c1
    cp $dd
    ld [c], a
    ccf
    ret nz

    rst $08
    jr nc, jr_066_453c

    ldh a, [rNR31]
    db $e4
    inc b
    rst $38
    cp $c1
    or b
    rst $08
    rrca
    rst $38
    rst $38
    rst $38
    rst $38

Call_066_453b:
    rst $38

jr_066_453c:
    rst $38
    rst $38
    inc b
    add h
    rra
    ldh [$83], a
    db $fc
    and b
    rst $38
    ld b, b
    rst $38
    nop
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
    rst $18
    nop
    rrca
    rlca
    ld l, b
    ld [bc], a
    push bc
    ld bc, $01c2
    jp nz, Jump_000_1c00

    call c, $c43f
    jr c, jr_066_4565

jr_066_4565:
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp l
    add d
    db $fd

jr_066_456c:
    ld a, [bc]
    push af
    db $ec
    ld de, $19e6
    and $19
    ld b, h
    sbc e
    ld a, d
    sbc a
    ld c, $ff
    rra
    xor $3c
    adc $b4
    ld c, [hl]
    adc h
    ld h, [hl]
    inc b
    ld h, [hl]
    jr jr_066_456c

    db $10
    xor $11
    ld h, $c4
    inc hl
    add l
    ld [hl-], a
    add c
    ld [hl-], a
    ld hl, $3112
    add d
    ldh a, [$83]
    inc a
    jp $c788


    and $cf
    adc $e7
    adc $e7
    call c, $06e7
    rst $38
    ld d, b
    cpl
    call z, $ea20
    inc b
    adc h
    ld h, b
    ld b, d
    db $ec
    inc c
    rst $20
    sbc b
    ld h, a
    dec de
    db $e4
    ld a, e
    add h
    ld c, a
    or b
    dec c
    ldh a, [rLCDC]
    cp a
    ld b, d
    cp l
    ld b, c
    cp h
    ld e, b
    and l
    reti


    inc h
    add hl, bc
    db $f4
    ldh [$fc], a
    scf
    rst $38
    nop
    rst $38
    ld sp, hl
    ld b, $8b
    inc b
    rla
    ld [$f906], sp
    jr c, @-$37

    ld b, b
    rst $38
    ld a, [c]
    ld a, c
    ld h, c
    di
    xor e
    rst $00
    rst $30
    adc a
    db $76
    adc a
    db $e4
    rra
    xor $10
    rst $00
    inc sp
    rla
    ld l, a
    add c
    ld a, a
    and b
    rra
    ldh a, [rIF]
    ret z

    rlca
    ld a, [$0005]
    rst $38
    rra
    rst $38
    dec c
    rst $38
    inc b
    rst $38
    ld [$84ff], sp
    rst $38
    dec c
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    add b
    rst $38
    ld l, a
    ld l, a
    ld hl, sp-$01
    ld [$80ff], sp
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ldh [rIE], a
    rst $38
    rst $38
    ld a, c
    rst $38
    nop
    rst $38
    add b

jr_066_4625:
    ld a, a
    jp nz, $ff3d

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cpl
    ret nc

    ld [$46f7], sp
    cp c
    ld [hl], h
    adc a
    ld c, e
    or a
    nop
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add hl, sp
    cp $08

jr_066_464b:
    rst $38
    nop
    rst $38
    inc c
    rst $38
    sub c
    rst $38
    ld a, [c]
    rst $38
    sbc [hl]
    rst $38
    nop
    rst $38
    db $fd
    ld bc, $08f0
    jr c, jr_066_4625

    nop
    add e
    sbc b
    rlca
    ret nz

    jr nz, @-$70

    ld [hl], c
    ld h, c
    sbc a
    xor a
    rst $18
    jr nz, jr_066_464b

    inc h
    ret c

    ld h, a
    sbc b
    or d
    ld [$3c43], sp
    ld de, $183c
    rst $38
    ld a, b
    rst $38
    ld a, c
    cp $3b
    ld a, h
    dec sp
    ld a, h
    ld [hl], c
    inc a
    ld d, b
    inc a
    ld b, b
    ccf
    ld b, b
    ccf
    ld sp, $3202
    nop
    ld [c], a
    db $10
    db $e3
    db $10
    ld b, c
    ld [de], a
    ld e, b
    inc bc
    ld a, a
    add c
    ld d, c
    cpl
    jr @+$67

    ld a, a
    add b
    ld c, a
    add b
    ld c, a
    add b
    rrca
    ret nz

    inc bc
    call z, $cc11
    ld l, c
    inc b
    ld l, c
    inc b
    sub a
    ld h, b
    and l
    ld [hl], d
    inc [hl]
    ei
    cp e
    rst $38
    dec a
    rst $38
    ld a, [$ba3d]
    dec a
    cp d
    ld a, l
    dec sp
    db $fc
    ei
    db $fc
    ld [$10ff], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    ret nz

    rst $38
    and b
    rst $18
    ret nz

    ccf
    ld c, b
    ld h, $d0
    rrca
    sbc c
    ld a, $38
    rst $38
    or $f9
    ld sp, hl
    ldh [$8b], a
    ldh a, [$c0]
    rst $38
    ldh a, [rIE]
    cp $fc
    ld b, l
    ld a, $60
    rra
    inc bc
    db $fc
    nop
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ld l, d
    push af
    ld de, $00ee
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    daa
    rst $18
    ld bc, $01ff
    rst $38
    ld hl, $fedf
    ld bc, $03fd
    cp a
    ld b, e
    rst $20
    rra
    ccf
    rst $38
    rst $28
    rra
    ld hl, sp+$07
    rst $38
    inc b
    inc bc
    rst $38
    db $e3
    rra
    pop af
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    add b
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ret nz

    ccf
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
    add a
    ld a, b
    dec c
    ld a, [c]
    cp $01
    cp a
    ret nz

    db $dd
    ld [c], a
    inc e
    db $e3
    add b
    ld a, a
    db $fc
    inc bc
    cp $01
    cp $01
    jp $053e


    cp $e5
    ld e, $c6
    rst $38
    ld [hl], h
    ei
    inc a
    rst $38
    ccf
    rst $38
    ld c, $fe
    add d

jr_066_4759:
    ei
    inc a
    ld b, e
    dec sp
    call nz, Call_000_1708
    rrca
    rst $38
    ld [hl], l
    dec bc
    add hl, de
    db $e3
    add l
    di
    sbc $f3
    rlca
    ei
    cp h
    ld e, a
    cp h
    ld e, a
    xor b
    ld e, a
    or b
    ld c, a
    jr nc, @-$2f

    ld b, b
    rst $38
    jr nz, jr_066_4759

    add c
    ld a, [hl]
    sub c
    ld l, [hl]
    ld sp, $338e
    inc c
    ld sp, $b10e
    ld c, [hl]
    add h
    ccf
    and d
    dec e
    dec de
    inc b
    rra
    nop
    dec bc
    inc b
    rra
    nop
    dec bc
    db $f4
    db $e3
    db $fc
    rrca
    ldh a, [$ce]
    ld sp, $31ce
    and [hl]
    ld e, c
    ld l, [hl]
    sub c
    ld c, h
    or e
    ld c, [hl]
    or c
    ld h, h
    sbc e
    ld b, a
    cp a
    ret nz

    ccf
    db $d3
    inc l
    sbc $21
    sub b
    ld l, a
    add sp, -$09
    rst $00
    ld hl, sp-$3f
    cp $d0
    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    ld b, b
    rst $38
    ld h, [hl]
    db $fd
    ld b, h
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld d, h
    rst $28
    inc d
    rst $28
    ld h, b
    rst $38
    nop
    rst $38
    ret z

    scf
    db $d3
    inc l
    rst $20
    jr jr_066_4842

    sub h
    ld d, b
    cp a
    ccf
    nop
    ld [bc], a
    db $fd
    ld h, b
    sbc a
    ld a, [$ff05]
    nop
    ld [$3ff7], sp
    rst $38
    ld a, b
    rst $38
    jr nz, @+$01

    inc c
    rst $38
    ld a, [hl]
    rst $38
    adc e
    ld [hl], h
    ld c, a
    ldh a, [rIF]
    ldh a, [$bf]
    ret nz

    jp Jump_000_1ffc


    rst $38
    rst $28
    rra
    ld l, a
    sbc a
    rrca
    ret nc

    add c
    ld e, $fc
    ld a, a
    sbc a
    ld a, a
    rst $00
    ccf
    ldh a, [rIF]
    rst $38
    nop
    rst $18
    ldh [$fb], a
    db $fc
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    cp b
    ld a, a
    ld a, [c]
    dec c
    cp $01
    ld a, a
    add b
    inc bc
    db $fc
    ld h, [hl]
    rst $38
    jp $f7ff


    rst $38
    ld b, $ff
    ld b, c
    cp a
    ldh [$1f], a
    ldh [$1f], a
    call nz, $d13b
    ld l, $84
    ld a, e
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    ret nz

    dec a
    ld a, a
    add b

jr_066_4842:
    ccf
    ret nz

    ld b, h
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    inc de
    rst $28
    adc l

jr_066_484f:
    ld [hl], e
    rlca
    ld hl, sp+$40
    rst $38
    ld l, l
    cp $00
    rst $30
    ei
    rlca
    ld h, $df
    ret nz

    jr nc, jr_066_484f

    ld [$ff3b], sp
    pop af
    adc a
    add l
    jp $d926


    add hl, bc
    ldh a, [$ad]
    ldh a, [$f0]
    ld sp, hl
    jr c, @-$0d

    ret nc

    ld sp, $31c4
    ld l, d
    or c
    ld [c], a
    ld sp, $6390
    adc [hl]
    ld [hl], e
    or c
    ld a, [hl]
    ld c, h
    ccf
    ld e, e
    inc h
    ld sp, hl
    ld b, $ff
    nop
    db $ec
    inc de
    dec e
    db $e3
    ld bc, $cdff
    ccf
    sbc c
    ld a, a
    ld sp, hl
    rlca
    db $db
    daa
    db $d3
    cpl
    di
    rrca
    sub a
    ld l, a
    or d
    ld c, a
    ld a, $cf
    or $0f
    db $e3
    rra
    db $d3
    ccf
    adc e
    ld a, a
    rst $18
    ccf
    jp c, $fa3f

    rra
    sbc d
    ld a, a
    sbc e
    ld a, a
    rst $08
    ccf
    rst $10
    cpl
    sbc a
    ld h, e
    call z, $5f73
    ldh [$df], a
    ldh [$7e], a
    pop hl
    cp e
    ld h, h
    sub a
    ld a, b
    adc a
    ld [hl], b
    ld hl, $80fe
    ld a, a
    adc a
    ld [hl], b
    cp a
    ld b, b
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    jp Jump_066_7f3f


    rst $38
    add b
    ld a, a
    dec bc
    rst $30
    ei
    rst $38
    rra
    rst $38
    rla
    rst $28
    ld b, b
    cp a
    add b
    rst $38
    sbc [hl]
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
    cp l
    jp $ff79


    cp $ff
    ei
    inc b
    rst $38
    nop
    inc bc
    db $fc
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    db $e4
    rra
    cp h
    jp $e0ff


    pop hl
    cp $00
    rst $38
    inc hl
    rst $18
    inc sp
    rst $08
    ei
    rlca
    db $fc
    inc bc
    ld e, $e1
    xor a
    ldh a, [rSC]
    db $fd
    ld bc, $26ff
    rst $38
    ld [hl-], a
    rst $38
    nop
    rst $38
    add h
    ei
    add e

Call_066_4933:
    ld a, h
    db $db
    inc h
    ld [hl], e
    adc h
    adc c
    cp $fe
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ldh a, [$37]
    ld hl, sp+$69
    cp $bc
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    add c
    ld a, a
    ld a, l
    rst $38
    rst $28
    rst $38
    cp e
    ld a, a
    ld b, b
    jr c, jr_066_495f

jr_066_495f:
    nop
    inc c
    ldh a, [$2c]
    ret nc

    inc l
    ret nc

    inc d
    ldh [rNR14], a
    ldh [$0c], a
    ldh a, [rSC]
    db $fc
    ld bc, $21fe
    cp $90
    rst $28
    ld e, b
    add a
    ld e, b
    add a
    and b
    rrca
    and c
    rrca
    or c
    rrca
    add c
    rra
    db $fc
    inc bc
    push af
    rrca
    rst $28
    rra
    rst $18
    ccf
    ld h, e
    rst $38
    ld [hl], c
    rst $38
    ld h, l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld h, l
    rst $38
    ld h, a
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    ld [hl], a
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    jp $efff


    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    jp nz, Jump_000_06ff

    rst $38
    ld hl, $30de
    rst $18
    call z, Call_066_7033
    cp a
    inc d
    ei
    ld d, h
    cp e
    dec hl
    sub $11
    xor $10
    cpl
    add hl, bc
    scf
    dec d
    cpl
    ld [hl-], a
    ld c, a
    ld b, $39
    rlca
    jr z, jr_066_49e0

    inc l
    db $76
    adc [hl]
    inc a
    jp nz, Jump_000_1c13

    inc bc
    inc bc
    sbc b
    ld a, b
    pop af
    ld bc, $0f00
    inc bc
    inc bc
    db $e3
    dec de

jr_066_49e0:
    pop af
    cp $13
    db $fc
    db $d3
    inc a
    rst $20
    ld e, $e0
    rra
    rst $38
    nop
    rst $38
    nop
    db $d3
    inc l
    nop
    jr z, jr_066_49f3

jr_066_49f3:
    ld a, h
    nop
    nop
    nop
    nop
    ld l, b
    add sp, -$7c
    ld a, h
    and [hl]
    ld a, [hl]
    add e
    ld a, a
    ld [hl], c
    adc [hl]
    db $d3
    inc sp
    and h
    ld h, h
    ld a, a
    rst $38
    add b
    rst $38
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    add [hl]

jr_066_4a15:
    ld a, a
    pop bc
    ld a, $5f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    dec d
    ei
    ld hl, sp-$01
    db $f4
    rst $38
    ld c, h
    rst $38
    jr jr_066_4a15

    ld l, b
    sub a
    rst $00
    ccf
    pop de
    cpl
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, [hl]
    add c
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    sbc a
    ld h, b
    add h
    ld a, e
    add b
    ld a, a
    ld b, d
    cp a
    rst $08
    rst $38
    jr jr_066_4a70

    inc l
    ld l, $40
    ld b, e
    jr nz, @+$23

    ld b, b
    ld e, l
    ld [$0a17], sp
    or $c2
    ccf
    jp $ea07


    rlca
    jp z, $e627

    rrca
    add $0f
    inc c
    rra
    ld [$e01f], sp
    rra

jr_066_4a70:
    add b
    ld a, a
    sub b
    ld a, [hl]
    ld h, b
    db $fc
    ldh [$f8], a
    ldh a, [$f0]
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    cp e
    rst $38
    ld sp, $67ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    inc sp
    rst $38
    di
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    inc l
    rst $38
    jr c, @+$01

    ccf
    rst $38
    rla
    rst $38
    jp $f0fc


    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    daa
    rst $38
    ret z

    scf
    db $fc
    inc bc
    dec c
    di
    db $e3
    rst $38
    add a
    rlca
    rrca
    rst $28
    ld c, b
    ld d, h
    adc h
    db $ec
    inc h
    call nc, Call_066_7f60
    ld e, [hl]
    ld e, [hl]
    ld bc, $0fab
    ccf
    ret nz

    ld sp, $f100
    nop
    rlca
    nop
    ld a, [c]
    ld b, $f7

jr_066_4aee:
    rlca
    rst $30
    jr nz, jr_066_4b19

    inc l
    inc l
    rlca
    ld a, a
    dec b
    ld [hl], l
    ld c, a
    ld e, a
    rlca
    rrca
    daa
    jr z, jr_066_4aee

    ldh a, [$66]
    ld h, [hl]
    rst $00
    rst $00
    and c

jr_066_4b05:
    and c
    di
    db $fc
    add a
    ld hl, sp-$71
    ld [hl], b
    rst $38
    nop
    ld c, e
    or h
    cp [hl]
    pop bc
    add hl, hl
    rst $10
    ld a, e
    add a
    add c
    ld a, a
    ld a, [hl]

jr_066_4b19:
    cp a
    rst $18
    rst $38
    rst $28
    rst $38
    ret nc

    rst $28
    nop
    rst $38
    ccf
    rst $38
    jr nz, jr_066_4b05

    ld l, [hl]
    rst $38
    dec sp
    rst $38
    jr z, @+$01

    ld [bc], a
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    db $f4

Call_066_4b33:
    rst $38
    add h
    ld a, a
    db $fc
    inc bc
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, l
    cp a
    sub e
    ld l, a
    add hl, de
    rst $20
    inc e
    db $e3
    ld c, $f1
    jp $c2fc


    rst $38
    push af
    rst $38
    inc bc
    db $fc
    or e
    call z, $e0df
    rst $08
    ldh a, [$74]
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    pop hl
    pop hl
    inc c
    inc c
    ld a, c
    ld a, c
    ld a, e
    ld a, e
    ei
    ei
    inc sp
    inc sp
    add a
    add a
    cp a
    cp a
    sbc a
    sbc a
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    ld d, e
    or e
    ld l, c
    sbc c
    ld [hl], b
    adc a
    or e
    rst $38
    or e

Call_066_4b83:
    rst $38
    or e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop bc
    rst $38
    db $10
    rst $38
    ld sp, hl
    rst $38
    rst $18
    rst $38
    add e
    rst $38

jr_066_4baa:
    ld [bc], a
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, $f9
    nop
    rst $38
    add a
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    rst $38
    ld [hl], b
    rst $30
    rlca
    jr c, jr_066_4baa

    add sp, $25
    dec sp
    rlca
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    nop
    rst $38
    ld l, a
    sub b
    ld a, $c1
    ccf
    ccf
    rlca
    rlca
    ld l, a
    ld l, a
    rst $18
    jr nz, jr_066_4c48

    ld e, b
    dec de
    db $fc
    nop
    ld a, a
    add b
    cp a
    xor c
    or a
    add sp, -$09
    db $fc
    inc bc
    ld a, a
    add c
    rlca
    ld a, b
    cp $ff
    rst $18
    rst $18
    ld [$f0ff], sp
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    adc c
    db $76
    ldh [rIE], a
    add $f9
    inc bc
    db $fc
    ld d, b
    cp a
    ld bc, $2ffe
    ret nc

    ccf
    ret nz

    db $10
    rst $28
    inc bc
    rst $38
    db $10
    rst $38
    rra
    ldh [$c1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, a
    or b
    ld e, a
    and b
    nop
    rst $38
    ld c, $f1
    db $fd
    inc bc
    ld a, e
    add a

jr_066_4c3c:
    ld hl, sp+$07
    rst $20

Call_066_4c3f:
    jr jr_066_4c3c

    inc b
    ret nc

    ccf
    jr nc, @+$01

    ld a, b
    rst $38

jr_066_4c48:
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld [hl+], a
    rst $38
    ld a, b
    add a
    ccf
    ret nz

    ldh [$1f], a
    jp z, $f33d

    inc c
    ret z

    ccf
    ret c

    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    db $db
    rst $20
    rst $10
    rst $28
    push de
    xor $d7
    add sp, -$22
    pop hl
    ld e, $e1
    cp l
    rst $38
    ld [hl], $ff
    scf
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    adc h
    rst $38
    add h
    rst $38
    add h
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec de
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or $ff
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    inc bc
    db $fc
    inc bc
    db $fc
    jr c, @-$37

    ld b, $f9
    ld b, c
    cp [hl]
    ldh [$1f], a
    jp nz, Jump_066_66fd

    ld sp, hl
    rst $38
    nop
    sbc a
    ld h, b
    add b
    rst $38
    ld h, b
    rst $38
    ld [hl], $cf
    db $fc
    rst $38
    push hl
    ld a, [$ffc0]
    adc a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld sp, $80ff
    rst $38
    db $fc
    di
    rst $18
    ldh [$3f], a
    ret nz

    ld [c], a
    rra
    ld a, a
    rst $38
    ld a, e
    add a
    inc de
    rst $28
    ld d, $e9
    ret z

    rst $30
    nop
    rst $38
    adc h

Call_066_4cff:
    rst $38
    jr @+$01

    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    rst $38
    nop
    add c
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jp c, Jump_000_00ff

    rst $38
    cp $01
    cp $01
    inc a
    jp $c738


    add h
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    ldh [rIE], a
    jr c, @+$01

    ld bc, $c0ff
    ccf
    pop hl
    ld e, $00
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [de], a
    db $ed
    inc sp
    call z, $df20
    or [hl]
    ld c, c
    ld e, [hl]

jr_066_4d55:
    pop hl
    cp h
    ld b, e
    rst $38
    nop
    db $fc
    inc bc
    or $0f
    ld [bc], a
    rst $38

jr_066_4d60:
    jp nz, Jump_066_43ff

    rst $38
    jp nz, $81ff

    rst $38
    add h
    rst $38
    add c
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    jr nz, jr_066_4d55

    jr nz, @+$01

    pop bc
    ccf
    ld a, [$5c07]
    and e
    rst $18
    jr nz, jr_066_4d60

    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $28
    rst $38
    call Call_066_65ff
    rst $38
    dec l
    rst $38
    inc [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $deff
    rst $38
    adc $ff
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    xor [hl]
    rst $38
    xor $ff
    ld d, [hl]
    rst $38
    and $ff
    cp $ff
    db $fc
    rst $38
    ld [hl-], a
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    adc h
    ld [hl], e
    ld b, [hl]
    ld sp, hl
    ld h, b
    rst $38
    ld bc, $04fe
    ei
    inc c
    di
    nop
    rst $38
    jp nz, $f43d

    dec bc
    inc c
    di
    ld b, h
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ldh [rSB], a
    cp $00
    rst $38
    ld c, [hl]
    pop af
    pop hl
    cp $30
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rlca
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    ret nz

    rst $38
    add hl, hl
    cp $0a
    push af
    ld [$00f7], sp
    rst $38
    and b
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, h
    add $39
    ld [c], a
    dec e
    ld hl, sp+$07
    ld a, h
    add e
    rlca
    ld hl, sp-$79
    ld hl, sp+$03

jr_066_4e1b:
    db $fc
    nop
    rst $38
    nop
    rst $38
    add l
    ld a, [hl]
    jr nz, @+$01

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
    inc c
    rst $38
    ld [bc], a
    rst $38
    jr jr_066_4e1b

    rra
    ldh [$1f], a
    ldh [$62], a
    sbc l
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add a
    rst $38
    ld l, [hl]
    rst $38
    inc e
    rst $38
    ld c, $ff
    inc bc
    rst $38
    cp a
    rst $38
    ldh [rIE], a
    and b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ld c, [hl]
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    ld [hl], $ff
    ld [hl+], a
    rst $38
    inc hl

jr_066_4e5f:
    rst $38
    dec bc
    db $f4
    ld hl, $91de
    xor $d5
    ld [$e2fd], a
    jp hl


    or $c0

jr_066_4e6d:
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    rst $38
    jr z, jr_066_4e6d

    jr jr_066_4e5f

    ld a, a
    add b
    adc a
    ldh a, [$8d]
    ld a, [c]
    ld e, c
    and [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fb
    ld b, $7c
    add e
    reti


    daa
    or d
    ld l, l
    ld d, h
    rst $28
    call nc, $f4ef
    rst $08
    db $f4
    rst $08
    ldh a, [$cf]
    or c
    adc $91
    xor $3f
    ret nz

    inc sp
    call z, $ff02
    ld [hl+], a
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    inc sp
    rst $38
    inc [hl]
    rst $38
    inc d
    rst $38
    inc sp
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    or e
    rst $38
    ld de, $11ff
    rst $38
    jr @+$01

    jr @+$01

    ld a, $ff
    ld e, $ff
    ld d, $ff
    ld d, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    and b
    rst $38
    ld c, c
    rst $38
    ret c

    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    ld e, e
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    pop bc
    rst $38
    ld hl, $e0ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    and c
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    jp $c0ff


    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    rrca
    rst $38
    db $d3
    rst $38
    pop af
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    jr nc, @+$01

    ret nz

    ccf
    db $10
    rst $38
    jp nz, $ff3f

    nop
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$08]

jr_066_4f2f:
    rst $30
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
    ld hl, sp-$01
    db $10
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ld bc, $30fe
    rst $18
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_066_4f2f

    inc hl
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ldh a, [rIF]
    add c
    ld a, [hl]
    add hl, bc
    or $02
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, a
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    or c
    rst $38
    or c
    rst $38
    ld hl, $20ff
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    cp b
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
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
    ld l, l
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    ld [$48ff], sp
    rst $38
    jp z, $d8ff

    rst $38
    jp nc, $deff

    rst $38
    cp $ff
    cp $ff
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, d
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $ec
    rst $38
    cp h
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    inc sp
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]

jr_066_5027:
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    inc e
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    xor h
    rst $38
    xor $ff
    adc $ff
    ld b, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld c, c
    rst $38
    dec sp
    rst $18
    add hl, hl
    rst $18
    jr z, jr_066_5027

    inc c
    rst $38
    inc e
    rst $38
    jr @+$01

    ccf
    ld hl, sp+$3a
    db $fd
    ld a, $f9
    inc d
    ei
    dec e
    di
    inc c
    di
    and d
    ld e, a
    jp $0b3f


    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a

jr_066_5068:
    ccf
    rst $38

jr_066_506a:
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    or a
    ld c, e
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    and $19
    rst $00
    jr c, jr_066_506a

    jr c, jr_066_5068

    inc a
    ld e, e
    cp h
    dec e
    cp $1d
    cp $1d
    cp $1f
    db $fc
    ld e, a
    cp h
    ld e, l
    cp [hl]
    cp l
    ld e, [hl]
    db $fd
    ld e, $6d
    sbc [hl]
    ld l, l
    sbc [hl]
    ld [hl], l
    adc [hl]
    dec [hl]
    adc $35
    adc $5d
    and [hl]
    add hl, de
    and $08
    rst $30
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ld sp, hl
    rst $38
    inc sp
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    or d
    rst $38
    or a
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    pop hl
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld [hl], e
    adc [hl]
    ld a, d
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    jp Jump_000_07ff


    rst $38
    rla
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec hl
    db $f4

jr_066_5102:
    ld hl, $01fe
    cp $c3
    inc a
    rst $00
    jr c, jr_066_5102

    ld [$0cf3], sp
    rst $30
    ld c, $f2
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nc

    cpl
    jp hl


    ld e, $a1
    ld e, [hl]
    ld h, c
    sbc [hl]
    ld h, e
    sbc h
    ld [hl], b
    adc a
    ld [hl], c
    adc a
    dec d
    db $eb
    dec e
    db $e3
    rra
    db $e3
    dec de
    rst $20
    dec de
    rst $20
    dec d
    rst $28
    scf
    rst $08
    ld a, a
    adc a
    ld l, $df
    ld l, $df
    xor [hl]
    rst $18
    adc [hl]
    rst $38
    cp $f7
    di
    rst $38
    di
    rst $38
    db $fd
    ei
    rst $38
    ei
    db $fd
    ei
    cp c
    ld a, a
    reti


    ccf
    add l
    ld a, e
    and a
    ld e, c
    ld bc, $f3ff
    rst $38
    inc sp
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_066_5162:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38

jr_066_516a:
    db $fd
    rst $38

jr_066_516c:
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38

jr_066_5178:
    ei
    rst $38
    ei
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    sbc $bd
    sbc [hl]
    db $fd
    sbc e
    db $fc
    rst $18
    cp b
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp-$71
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_066_5178

    jr nc, jr_066_516a

    jr nc, jr_066_516c

    jr nc, @+$01

    jr nc, @+$01

    jr nc, jr_066_5162

    ld [hl], b
    sub a
    ld a, b
    rst $30
    ld a, b
    cp a

jr_066_51a9:
    ld a, b
    cp a
    ld a, b
    cp e
    ld a, h
    cp a
    ld a, h
    cp a
    ld a, [hl]
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    rst $08
    ccf
    jp $f13f


    ccf
    cp c
    ld a, a
    sub l
    ld a, e
    sbc c
    ld a, [hl]
    sbc c
    ld a, [hl]
    jr c, jr_066_51a9

    ld a, $df
    rra
    rst $38
    ld e, e
    cp a
    rra
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld a, d
    db $fd
    cp [hl]
    ld a, l
    cp a
    ld a, h
    cp [hl]
    ld a, l
    sbc l
    ld a, [hl]
    sbc l
    ld a, [hl]
    ld sp, hl
    ld e, $e8
    rra
    add sp, $1f
    db $ec
    rra
    db $f4
    rrca
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    rrca
    or a
    ld c, a
    or a
    ld c, a
    ld a, $c7
    ld [hl], $cf
    or $0f
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
    cp $0f
    xor $1f
    rst $28
    ld e, $ef
    ld e, $ff
    ld e, $6f
    sbc [hl]
    dec [hl]
    sbc $25
    sbc $4f
    cp h
    dec hl
    call c, $d83f
    rla
    ld hl, sp-$41
    ret nc

    xor a
    ret nc

    sbc a
    ldh [$5f], a
    ldh [$df], a
    ldh [$5f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$97]

Jump_066_5231:
    ld hl, sp-$79
    ld hl, sp+$0b
    db $fc
    rlca
    db $fc
    adc l
    ld a, [hl]
    rrca
    cp $16
    rst $38
    rlca
    rst $38
    pop af
    cp $f3
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    cp $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    db $fc
    rst $38
    db $fc
    db $fd
    cp $f9
    cp $fd
    cp $ff
    db $fc
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    ei
    rst $30
    ei
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $eb
    rst $30
    db $eb
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld h, d
    rst $38
    ret z

    scf
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $f5
    ld c, $e0
    rra
    db $ed
    rra
    rst $20
    rra
    rst $28
    rra
    rst $18
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $28
    rra
    and a
    ld e, a
    rst $28
    rra
    ld l, a
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    cp a
    rst $08
    cp a
    rst $08
    cp a

jr_066_52c3:
    rst $08
    ccf
    rst $08
    cp a
    ld c, a
    rst $38
    rrca
    ld a, a
    adc a
    or a
    ld c, a
    scf
    rst $08
    or a
    rst $08
    rst $38
    rst $00
    rst $18
    rst $20
    sbc a
    rst $20
    xor e
    rst $30
    adc e
    rst $30
    call $c5f3
    ei
    db $db
    db $ed
    and $fd
    ld l, b
    rst $30
    ld l, b
    rst $30
    ld [hl], b
    rst $38
    di
    db $fd
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    cp [hl]
    rst $38
    rst $38
    cp $f8
    rst $38
    ld a, b
    rst $38

jr_066_52fa:
    ld a, [hl-]
    db $fd
    reti


    ccf
    add hl, bc
    rst $38
    db $e3
    rst $38
    rst $30
    ei
    rst $38
    ei
    cp c
    ld a, a
    ei
    dec e
    ld a, [c]
    dec c
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
    cp $01

jr_066_5318:
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    rst $38
    inc bc
    di
    rrca
    ldh [$1f], a
    pop hl
    ld e, $e1
    ld e, $e3
    inc e
    rst $20
    jr jr_066_5318

    jr jr_066_52fa

    jr c, jr_066_52c3

    ld [hl], c
    adc a
    ld [hl], c
    adc a
    ld [hl], c
    adc a
    ld [hl], c
    adc l
    ld [hl], e
    call Call_000_0033
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
    jr jr_066_5373

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_066_5383

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_066_5393

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_066_53a3

    ld [hl-], a

jr_066_5373:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_066_53b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_066_5383:
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

jr_066_5393:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_066_53a3:
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
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_066_53b3:
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_066_5483

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $26
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_066_54a5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld bc, $0101

jr_066_5483:
    ld bc, $0101
    ld bc, $0101
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

jr_066_54a5:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0105
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0505
    ld bc, $0505
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0505
    ld bc, $0501
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    dec b
    ld b, $01
    ld bc, $0100
    ld bc, $0501
    dec b
    dec b
    ld bc, $0501
    dec b
    ld b, $05
    ld bc, $0101
    nop
    ld bc, $0101
    dec b
    ld bc, $0605
    ld bc, $0505
    ld b, $06
    nop
    ld bc, $0101
    ld bc, $0100
    dec b
    ld bc, $0605
    ld bc, $0505
    ld b, $06
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    dec b
    ld bc, $0501
    ld bc, $0605
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0501
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    ld bc, $0606
    ld bc, $0501
    dec b
    dec b
    ld bc, $0505
    dec b
    dec b
    ld bc, $0105
    ld bc, $0606
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0105
    ld bc, $0d0e
    dec c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld c, $0d
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld c, $0e
    add hl, bc
    ld e, [hl]
    add c
    ld a, $01
    ei
    nop
    daa
    ret c

    add b
    ld a, a
    db $f4
    ld sp, hl
    db $e4
    ld hl, sp-$19
    ld hl, sp-$07
    cp $de
    rst $38
    cp b
    rst $00
    ld e, a
    ldh [$80], a
    ld a, a
    rlca
    rst $38
    di
    rst $38
    add b
    rst $38
    jr nz, @+$01

    pop de
    cp a
    xor h
    rst $18
    pop bc
    rst $38
    pop af
    rst $08
    add sp, -$29
    ld l, [hl]
    reti


    sbc h

jr_066_55ef:
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    xor a
    ld e, a
    adc a
    ld a, a
    xor l
    ld e, a
    and c
    rst $18
    ld d, b
    rst $38
    call c, $937f
    ld a, a
    xor [hl]
    ld [hl], c
    ld e, a
    and b
    rst $30
    ld [$0877], sp
    rst $30
    ld [$d22d], sp
    jr nc, jr_066_55ef

    ld l, h
    sbc e
    ld b, [hl]
    cp c
    add b
    ccf
    ld a, [hl-]
    rlca
    inc h
    inc bc
    inc e
    inc bc
    inc l
    inc bc
    adc [hl]
    ld hl, $afd0
    rst $10
    add sp, -$55
    call c, $e91e
    inc d
    ld hl, sp-$80
    ld a, h
    rlca
    jr c, jr_066_565e

    db $10
    inc e
    nop
    ld a, $00
    jp z, Jump_000_0e3c

    ld [$0807], sp
    inc bc
    inc c
    add [hl]
    inc e
    sub l
    ld e, $b4
    rra
    ld a, [$791d]
    inc e
    db $dd
    jr c, @-$3a

    jr c, jr_066_5687

    nop
    add hl, de
    nop
    inc e
    inc bc
    ld [$6c1f], a
    sbc a
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld l, l
    sbc [hl]
    inc e
    rst $38

jr_066_565e:
    dec c
    rst $38
    ei
    inc b
    ld a, [hl-]
    inc b
    cp a
    nop
    ld h, a
    nop
    cp a
    ld b, b
    dec bc
    db $fc
    cp e
    db $fc
    db $d3
    db $ec
    db $db
    and h
    ld c, a
    add b
    rlca
    add b
    adc a
    nop
    adc a
    nop
    adc c
    ld b, $95
    ld c, $61
    sbc [hl]
    inc b
    jp Jump_000_0383


    inc b
    inc bc
    ld [bc], a

jr_066_5687:
    rlca
    rrca
    ld b, $e7
    ld c, $ad
    ld b, [hl]
    ld [hl], l
    adc [hl]
    ld a, [c]
    adc h
    rst $20
    sbc b
    and [hl]
    reti


    xor h
    ld b, e
    ld c, h
    add e
    call z, Call_066_4b83
    add h
    dec de
    call z, $dfe0
    jp nc, $88ff

    rst $30
    db $10
    rst $28
    inc [hl]
    set 7, h
    inc bc
    rst $38
    nop
    rst $38
    nop
    jr z, @+$05

    ld a, $03
    ld [hl], $0f
    ld l, $1f
    ld c, b
    ccf
    and [hl]
    ld e, c
    ld l, [hl]
    pop de
    db $d3
    ldh [$8f], a
    ldh a, [rPCM34]
    adc b
    ei
    inc b
    rst $38
    nop
    jr nc, @-$3e

    rst $08
    ldh a, [$7f]
    ccf
    db $10
    rrca
    pop bc
    nop
    rst $20
    nop
    inc de
    db $ec
    ldh [$1f], a
    rla
    rst $28
    add hl, bc
    rst $38
    ld [$00f7], sp
    rst $38
    jr @+$01

    jp $68ff


    rst $38
    sbc h
    rst $38
    adc $ff
    ld h, b
    rst $38
    ld [hl+], a
    rst $38
    ld a, [de]
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    jp $a3ff


    rst $18
    inc hl
    rst $18
    inc hl
    rst $18

jr_066_5700:
    ld d, e
    rst $28
    pop bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $e3
    rra
    ei
    rlca
    ei
    rlca
    dec de
    rst $20
    ld bc, $6dff
    di
    dec [hl]
    ei
    pop hl
    rra
    pop af
    rrca
    ld a, c
    add a
    dec e
    db $e3
    ld b, c
    rst $38
    ld bc, $70ff
    adc a
    ld hl, sp+$07
    nop
    rst $38
    db $e3
    rra
    pop hl
    rra
    and $19
    rst $00
    jr c, jr_066_5700

    jr nc, jr_066_5780

    or d
    ld b, d
    cp a
    ld b, b
    cp a
    nop
    rst $38
    xor b
    ld e, a
    add d
    ld a, l
    ld [hl-], a
    call $8976
    db $76
    adc c
    ld l, h
    sub e
    add hl, sp
    add $b9
    ld b, [hl]
    ld c, b
    rst $30
    ccf
    rst $38
    cp l
    ld a, a
    ld a, [hl]
    db $fd
    ei
    ld a, h
    or e
    ld a, h
    db $db
    inc a

jr_066_5758:
    inc sp
    inc e
    rra
    jr c, jr_066_5758

    inc a
    ld [hl], $f9
    di
    inc a
    ld b, a
    jr c, jr_066_57c7

    dec a
    dec h
    ld a, d
    ld a, [hl+]
    ld [hl], l

jr_066_576a:
    jr z, jr_066_57e3

    ld c, h
    inc sp
    ld c, d
    dec [hl]
    ld d, [hl]
    add hl, sp
    ld [hl], d
    add hl, sp
    xor d
    ld [hl], c
    ld d, b
    cpl
    ld b, b
    ccf
    ld d, h
    cpl
    adc c
    db $76
    adc l
    ld [hl-], a

jr_066_5780:
    ei
    inc h
    ld a, [de]
    push hl
    ld [hl], $c9
    sub h
    ld l, e
    sbc [hl]
    ld h, c
    adc l
    ld [hl], e
    ld e, a
    ccf
    ld a, [hl]
    ccf
    sbc [hl]
    ld a, a
    ld e, $ff
    ld e, h
    cp a
    rst $18
    ld a, $ed
    ld e, $fd
    ld c, $fe
    rrca
    db $ed
    ld e, $cd
    ld a, $9d
    ld a, [hl]
    jr z, @-$1f

    db $ec
    rra
    ld [$fb1d], a
    inc e
    rst $18
    jr c, jr_066_581e

    sbc b
    ld sp, hl
    ld c, $ef
    inc e
    rst $28
    inc e
    ld l, d
    sbc l
    ret nc

    ccf
    ld e, b
    cp a
    pop de
    ld a, $47
    ld hl, sp-$3f
    nop
    add b
    nop
    nop
    nop
    ld b, b

jr_066_57c7:
    add b
    nop
    nop
    rst $18
    jr nz, jr_066_576a

    rst $38
    ld c, $ff
    rst $38
    nop
    cp a
    nop
    rst $28
    db $10
    ld bc, $efff
    ldh a, [rIE]
    ldh a, [$f0]
    rst $38
    add hl, sp
    cp $07
    ld hl, sp+$01

jr_066_57e3:
    cp $78
    rst $38
    jr c, @+$01

    inc e
    rst $38
    add hl, de
    cp $18
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
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
    cp a
    rst $38
    rrca
    rst $38

jr_066_581e:
    add a
    rst $38
    jp $e7ff


    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld b, $ff
    add b
    rst $38
    ld b, c
    cp a
    ld c, h
    cp a
    sbc $3f
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld [hl], $ff
    ld d, e
    cp a
    ld e, e
    cp a
    ld bc, $03ff
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    and d
    ld a, a
    and b
    ld a, a
    add b
    ld a, a
    ld b, d
    rst $38
    rlca
    rst $38
    cpl
    rst $18
    rst $28
    rra
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    adc b
    ld a, a
    add c
    ld a, a
    sbc c
    ld a, a
    sbc c
    ld a, a
    sbc c
    ld a, a
    adc h
    ld a, a
    inc c
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    daa
    rst $38
    cpl
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    ld h, $ff
    ret nz

    ccf
    ld a, a
    nop
    nop
    nop
    nop

jr_066_58c9:
    nop
    ld hl, sp+$00
    ld hl, sp-$01
    inc sp
    call z, Call_000_00ff
    scf
    ret nz

    add h
    ld a, e
    pop hl
    cp $e3
    inc e
    sbc a
    nop
    inc a
    jp Jump_000_01fe


    db $10
    jr c, jr_066_5902

Call_066_58e3:
    ld a, a
    ld [$18bf], sp
    rst $38
    jr z, jr_066_58c9

    rlca
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
    rst $38
    rst $38

jr_066_5902:
    rst $38
    rst $38
    ldh a, [rIE]
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
    ld a, [c]
    rst $38
    or $ff
    adc $ff
    ret nz

    rst $38
    sub $e9
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    jp $e0fc


    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $e0
    rst $38
    ldh [rIE], a
    jp $cffc


    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    sbc $e1
    jp hl


    or $e6
    rst $38
    ldh [rIE], a
    and $f9
    ldh [rIE], a
    ldh [rIE], a
    or b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], e
    db $fc
    rst $20
    ld hl, sp-$1d
    db $fc
    or b
    rst $38
    and b
    rst $38
    inc sp
    rst $38
    ld a, [hl]
    rst $38
    add hl, sp
    cp $e0
    rst $38
    ldh a, [rIE]
    db $e3
    db $fc
    di
    db $fc
    rst $28
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], c
    rst $38
    ld [hl], e
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    cp a
    rst $38
    ld a, b
    rst $38
    call nc, $f0fb
    rst $38
    jp Jump_000_1aff


    rst $38
    ei
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp [hl]
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    cpl
    or b
    rrca
    and h
    dec de
    inc h
    dec de
    jr nc, jr_066_59e9

    ldh [$1f], a
    ret nc

    rst $28
    db $ec
    inc bc
    call z, Call_066_7c03
    add e
    ld a, [$f005]
    rrca
    ld bc, $d3fe
    inc l
    nop
    rst $38
    add [hl]
    ld a, a
    ld a, a
    cp $ff
    rst $38
    db $fc
    rst $38
    jr nc, @+$01

    nop

jr_066_59e9:
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
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

jr_066_5a02:
    ld a, [c]
    rst $38
    jp $87ff


    rst $38
    add [hl]
    rst $38
    sub $af
    ld b, c
    cp a
    ld b, a
    cp a
    cpl
    rst $18
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cpl
    rst $18
    cpl
    rst $18
    ld b, $ff
    inc e
    db $e3
    cp a
    ret nz

    add h
    ei
    add b
    rst $38
    cpl
    ret nc

    cp $00
    inc c
    ldh a, [rTMA]
    ld hl, sp-$7e
    db $fd
    ld bc, $8cfe
    ld [hl], e
    ld sp, hl
    rlca
    rlca
    rst $38
    ld bc, $12fe
    ldh [$93], a
    ld h, b
    jr nc, jr_066_5a02

    or a
    ret nz

    adc b
    rst $30
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$08], a
    rst $30
    nop
    rst $38
    dec b
    ei
    dec bc
    rst $30
    add a
    ld a, a
    jp nz, $e33f

    ld e, $60
    sbc a
    ld h, l
    sbc e
    ld b, $f9
    inc bc
    db $fc
    ld a, a
    add b
    add a
    ld a, b
    sub b
    ld a, a
    inc d
    ei
    ld h, h
    sbc e
    call c, $f823
    rlca
    ld bc, $00ff
    rst $38
    sbc e
    db $fc
    adc c
    or $b3
    call z, $b8c7
    ld b, b
    cp a
    add c
    ld a, [hl]
    db $10
    rst $28
    nop
    rst $38
    ld b, $ff
    add a
    rst $38
    jp $cbff


    rst $38
    ldh a, [rIE]
    add hl, bc
    or $00
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [hl], h
    rst $38
    ld [$1ff7], sp
    ldh [$3f], a
    ret nz

    adc a
    ldh a, [rTIMA]
    ld a, [$ff00]
    inc bc
    rst $38
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld e, a
    rst $38
    adc c
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    ld b, $ff
    adc [hl]
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    di
    rst $08
    ld h, a
    rst $18
    db $e3
    ld e, a
    add e
    ld a, a
    ld b, e
    cp a
    rlca
    rst $38
    ld h, [hl]
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    ld bc, $e0ff
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    daa
    ret c

    jr nz, @-$1f

    nop
    rst $38
    sub b
    rst $28
    add c
    cp $3f
    ret nz

    inc de
    db $ec
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    cp a
    ldh [$1f], a
    ld d, b
    cp a
    ld d, b
    cp a
    ld a, a
    and b
    rla
    ldh [$2f], a
    ldh a, [$b0]
    ld a, a
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $f7fe
    ld [$08d7], sp
    dec d
    ld [$0c01], sp
    add a
    jr jr_066_5b4a

    ld a, [$ff7f]
    ccf
    rst $38

jr_066_5b4a:
    rst $18
    ccf
    ld a, $ff
    db $fc
    rst $38
    db $fc
    rst $38
    jp hl


    cp $01
    db $fc
    cp h
    nop
    ld a, a
    nop
    nop
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld h, e
    db $fc
    nop
    rst $38
    ld [hl-], a
    rst $38
    cp h
    ld [hl], e
    ld c, [hl]
    or c
    ld e, [hl]
    and c
    ld e, c
    and b
    ld e, a
    and b
    and [hl]
    ld a, c
    jr nz, @+$01

    ld [hl], b
    rst $38
    ld hl, sp-$01
    cp $ff
    nop
    rst $38
    ld a, [c]
    dec c
    ret nz

    ccf
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    db $10
    rst $28
    add hl, bc
    rst $38
    cp $ff
    sub b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    db $ec
    inc de
    ld hl, sp+$07
    pop af
    rrca
    nop
    rst $38
    inc b
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    inc c
    di
    jr nz, @+$01

    ret nc

    rst $38
    cp a
    rst $38
    push hl
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
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rst $38
    rst $30
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    db $10
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    di
    rst $38
    or $ff
    ldh a, [rIE]
    or $f9
    push af
    ld hl, sp-$0f
    cp $fd
    cp $e0
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rrca
    ldh a, [$db]
    jr nz, jr_066_5c38

    ld a, [c]
    add sp, $77
    ld [hl], b
    rst $38
    ld [hl], e
    db $fc
    db $d3
    inc a
    rst $00
    ccf
    rst $38
    rst $38
    ld e, $ff
    add e
    cp $fc
    cp $fc
    cp $70
    rst $38

jr_066_5c22:
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$c1], a
    rst $38
    ldh a, [rIE]
    pop af
    rst $38

jr_066_5c38:
    rst $18
    jr nz, jr_066_5c22

    nop
    xor $01
    jr nz, jr_066_5c4f

    ldh a, [rIF]
    sub b
    rrca
    ld c, $ff
    sbc h
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    rra
    ldh [$3f], a

jr_066_5c4f:
    ret nz

    ld a, a
    add b
    rst $18
    nop
    rrca
    nop
    ei
    inc b
    adc e
    ld [hl], h
    ld [bc], a
    db $fd
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    db $fc
    db $fc
    cp $fd
    cp $c0
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld [$77ff], sp
    rrca
    db $db
    rlca
    ld a, [de]
    rst $20
    ld [$38f7], sp
    add $c0
    inc a
    inc l
    ret nc

    inc de
    call z, $c73a
    dec d
    xor $39
    db $fc
    scf
    ld hl, sp+$0c
    di
    ld b, $f9
    db $10
    rst $38
    ccf
    rst $38
    cp $ff
    db $fc
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
    rrca
    rst $38
    ld b, h
    cp a
    ld h, c
    sbc [hl]
    rst $38
    nop
    ld a, a
    add b
    adc e
    ld [hl], h
    ld b, $f9
    ld a, [bc]
    pop af
    sbc a
    ldh [rOBP0], a
    rst $30
    ret nz

    rst $38
    ld a, h
    jp $c33c


    add e
    db $fc
    nop
    rst $38
    nop
    rst $38
    sbc b

jr_066_5cbf:
    rst $38
    ld [c], a
    rst $38
    db $10
    rst $38
    ld b, $ff
    add e
    rst $38
    rst $00
    rst $38
    cp a
    rst $38
    add b
    rst $38
    ld d, c
    rst $38
    add [hl]
    rst $38
    ret nz

    rst $38
    add b
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
    rra
    rst $38
    rra
    rst $38
    jr @+$01

    jr nz, @+$01

    ld l, a
    ldh a, [rSVBK]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    swap h
    ld bc, $59fe
    and [hl]
    ld l, a
    sub b
    cp $00
    cp h
    ld b, e
    ld bc, $7fff
    rst $38
    ld a, e
    rst $38
    and b
    ld c, a
    add b
    ld b, d
    add b
    add $00
    adc h
    nop
    ld e, $00
    ccf
    nop
    jr nz, jr_066_5d1f

jr_066_5d1f:
    inc bc
    inc bc
    rst $38
    ld [$38ff], sp
    ret nz

    ldh a, [rP1]
    or b
    ld b, b
    rst $18
    jr nz, @-$35

    ld [hl], $80
    ld a, a
    add e
    ld a, h
    rlca
    ld hl, sp+$37
    ld hl, sp+$71
    ld hl, sp-$60
    ld [hl], b
    ldh a, [rNR41]
    ret nz

    jr nz, jr_066_5cbf

    jr nc, jr_066_5d9a

    cp [hl]
    ld [hl], h
    adc b
    ld [$08f0], sp
    ldh a, [rP1]
    ldh a, [$f0]
    nop
    ld a, [$ff01]
    nop
    rst $38
    nop
    cp $01
    or $0f
    ld a, [c]
    rrca
    cp $01
    add d
    ld a, l
    ld bc, $4cfe
    or b
    ldh [rP1], a
    rlca
    nop
    add hl, bc
    ld b, $3f
    rlca
    pop af
    ld c, $5e
    and c
    rlca
    ld hl, sp+$3d
    jp nz, $c080

    nop
    ret nz

    nop

jr_066_5d75:
    nop
    nop
    nop
    nop
    ld de, $3f99
    rst $18
    ccf
    ld l, a
    rra
    ret nz

    ccf
    ld a, [de]
    db $e4
    or d
    ld b, l
    ld bc, $78ce
    add a
    ld e, c
    add [hl]
    inc bc
    db $fc
    ld [hl], b
    adc a
    sbc l
    ld [bc], a
    db $ec
    inc bc
    ret nz

    ccf
    and d
    ld e, a
    inc c
    rst $38

jr_066_5d9a:
    ld sp, hl
    cp $4e
    rst $38
    ret nz

    rst $38
    jr nc, @-$2f

    ldh a, [rIF]
    jr nc, jr_066_5d75

    ret nz

    ccf
    nop
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    inc c
    rst $38
    db $10
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    rra
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jr nc, @+$01

    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp a
    ld b, b
    ld [$e0f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, $f837

    rlca
    ld sp, hl
    ld b, $fb
    inc b
    add b
    rst $38
    add hl, bc
    or $3d
    jp nz, $816e

    ccf
    ret nz

    sbc e
    ld h, b
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    di
    rst $08
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $20
    ld bc, $8fff
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    cp a
    ld a, a
    ld a, a
    ccf
    ld [$203f], sp
    rra
    or $0f
    ret


    ld a, $e7
    ld e, $e7
    ld e, $e2
    inc e
    add h
    ld a, b
    ld a, h

jr_066_5e37:
    add b
    ld [bc], a

jr_066_5e39:
    nop
    ld [bc], a
    nop
    ld b, $00
    sbc h
    ld h, b
    ld b, b
    rst $38
    jr nz, @+$01

    sub a
    ld l, b
    add a
    ld a, b
    add [hl]
    ld a, c
    add hl, bc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rra
    ldh [$f1], a
    ret nz

    and b
    ret nz

    ld bc, $87fe
    rst $38
    add b
    rst $38
    dec sp
    rst $38
    rst $18
    ccf
    ld a, a
    ccf
    cp a
    ld a, a
    db $10
    rst $38
    jr nc, jr_066_5e37

    jr nc, jr_066_5e39

    db $ec
    inc de
    rrca
    ldh a, [$f9]
    nop
    ldh a, [rP1]
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    cp h
    jp Jump_066_793c


    add [hl]
    rst $38
    nop
    rst $38
    nop
    ld a, $c0
    ld c, e
    nop
    adc a
    ld [hl], b
    ld e, e
    add b
    scf
    ret z

    scf
    ret z

    ret nz

    ccf
    pop af
    rrca
    cp $01
    rst $28
    rst $38
    rlca
    rst $38
    dec sp
    rst $00
    rrca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld [$07ff], sp

jr_066_5ead:
    ld hl, sp+$07
    ld hl, sp+$0b
    db $fc
    inc c
    rst $38
    ld a, [bc]
    db $fd
    add a
    ld hl, sp+$20
    ret nz

    ld b, b
    add b
    inc bc
    add b
    sub a

jr_066_5ebf:
    ld a, b
    rla
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld de, $faff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    ld [$f0ff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nc, jr_066_5ead

    jr nz, jr_066_5ebf

    rlca
    rst $38
    ld a, h
    rst $38
    ld b, $f9
    ld a, a
    add b
    scf
    ret nz

    ld d, b
    xor a
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    di
    cp $f1
    ldh [$5f], a
    ret nz

    ld bc, $40fe
    rst $38
    cp $ff
    ld a, a
    ret z

    rlca
    add e
    ccf
    rlca
    rst $38
    ld b, b

jr_066_5f07:
    jp $c0c0


    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ld [c], a
    ld l, b
    rst $30
    and $19
    add hl, bc
    ld b, $3b
    ld b, $b3
    ld c, [hl]
    ld h, b
    sbc a
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp b
    rst $38
    jr z, jr_066_5f07

    add b
    rst $38
    ld [hl], c
    add b
    ld e, $01
    ld h, c
    rra
    ld a, c
    rlca
    db $fd
    ld [bc], a
    push hl
    ld [bc], a
    ld h, h
    inc bc
    ld hl, $051e
    ld e, $65
    ld e, $0f
    nop
    rrca
    ldh a, [rNR22]
    rst $28
    rst $28
    rra
    add e
    ld a, a
    add hl, sp
    rst $00
    ld b, e
    cp [hl]
    dec b
    cp $1f
    db $fc
    adc $38
    jp nz, Jump_000_1b3c

    inc b
    ld b, b
    cp a
    ld a, [$dffd]
    ld hl, sp-$24
    ld hl, sp-$0f
    ld hl, sp-$0c
    ei
    ldh [rIE], a
    ldh [rIE], a
    ld e, a
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    ld b, b
    rst $38
    ld a, [hl]
    ld bc, $0103
    call $fb03
    rlca
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
    jp z, Jump_066_5231

    add hl, sp
    ld c, $71
    and d
    ld b, b
    ld a, h
    add e
    sub a
    ccf
    inc sp
    rst $38
    ld d, e
    rst $38
    ld h, e

jr_066_5f91:
    rst $38
    ld h, e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    pop de
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [de], a
    rst $38
    jr jr_066_5f91

    ld bc, $f0fe
    rrca
    rst $20
    nop
    add b
    ld a, d
    and d
    ld d, b
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fe]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    cp h
    ld a, a
    dec hl
    db $fc
    dec sp
    db $fc
    ld a, [hl-]
    db $fd
    rst $38
    pop af
    rst $38
    ldh a, [$9e]
    ld h, c
    ld a, a
    add [hl]
    rst $18
    ld hl, $2917
    inc bc
    sbc [hl]
    add $fb
    rst $38
    rst $28
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld e, $ff
    sub c
    rst $38
    nop
    rst $38
    nop
    sbc b
    ld a, $c1
    ld c, b
    rst $30
    inc de
    rst $38
    rlca
    rst $38
    ld c, h
    or e
    ld a, c
    add [hl]
    sub a
    rst $28

jr_066_601e:
    db $e3
    rst $38
    sub d
    ldh [$c3], a
    ldh a, [rTIMA]
    ld a, [$fca3]
    ld a, l
    add d
    ld b, l
    ld a, $2f
    ldh a, [$d1]
    ldh [rSB], a
    jp Jump_000_0300


    nop
    ld bc, $00cc
    cp d
    inc b
    rlca
    nop
    dec d
    nop
    jr nz, jr_066_601e

    ld e, h
    add d
    rst $38
    add b
    ld [hl], a
    add b
    jp $8080


    nop
    ld bc, $2200
    ld bc, $0205
    rla
    ld [$0a55], sp
    jr jr_066_6065

    ld d, d
    xor l
    xor $11
    db $dd
    nop
    ld a, b
    nop
    ld hl, sp+$00
    db $eb
    db $f4
    ld b, b
    rst $38
    or a

jr_066_6065:
    rst $08
    rst $30
    rrca
    ld b, $ff
    ld de, $08ee
    rst $30
    ld [bc], a
    rst $38
    ld a, [hl]
    add b
    inc b
    ld hl, sp-$01
    ldh [$fd], a
    ld [c], a
    db $fc
    db $e3
    rst $38
    ldh [$1f], a
    ldh [rIE], a
    ldh [rNR41], a
    rst $38
    ld de, $b5ef
    dec bc
    nop
    rra
    inc e
    rst $38
    rst $38
    rst $38
    sbc $ff
    ei
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    jr nz, @+$01

    ld d, $f9
    ld de, $10fe
    rst $38
    jr @+$01

    ld [$321f], a
    rst $08
    ld [hl], a
    rrca
    rra
    rrca
    ccf
    rrca
    ccf
    cp a
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    dec d
    ldh a, [$f1]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c7ff


    rst $38
    di
    rst $38
    add hl, de
    rst $38
    rst $00
    ccf

jr_066_60d8:
    rrca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ret nz

    rst $38
    or b
    ld c, a
    adc a
    ld a, a
    rrca
    rst $38
    jr nz, @-$1f

    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [$e0]
    ret


    rst $38
    ldh [rWX], a
    add h
    call nz, $c080
    ret nz

    ret nz

    add d
    rlca
    ret nz

    ld bc, $c0de
    rst $38
    pop bc
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    pop af
    nop
    pop hl
    nop
    cp [hl]
    ld b, b
    jr c, jr_066_60d8

    dec c
    ld a, [c]
    sub c
    ld a, a
    ldh [$1f], a
    add e
    nop
    rra
    nop
    pop af
    nop
    db $fc
    nop
    rst $38
    nop
    rrca
    nop
    ret z

    rlca
    ld [hl], b
    rrca
    cpl
    rra
    rst $18
    cp a
    call z, $dfff
    ldh [$be], a
    ld b, c
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    sbc h
    ld a, a
    inc bc
    ld a, h
    add b
    ld a, a
    rlca
    ld hl, sp-$3d
    inc a
    adc e
    ld a, h
    inc bc

jr_066_614b:
    db $fc
    db $d3
    inc l
    ei
    inc b
    ei
    inc b
    jp nz, $8c3c

    ld a, [hl]
    db $fc
    nop
    ld sp, hl
    add b
    and c
    ld b, b
    ret nz

    nop
    ret nz

    ld bc, $619f
    jr jr_066_614b

    ld e, h
    and e
    ld sp, hl
    ld b, $f8
    rlca
    ret nz

    ccf
    ld e, h
    and a
    dec de
    rst $38
    cp $f9
    dec b
    ld a, [$00ff]
    add e
    ld a, h
    ld hl, $20fe
    rst $38
    rst $20
    ld a, b
    ei
    ld a, h
    ld h, h
    rst $38
    ld a, h
    rst $38
    dec a
    cp $30
    rst $38
    rst $20
    rst $38
    cp $ff
    ld [c], a
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    push bc
    rst $38
    nop
    rst $38
    ld h, d
    db $fd
    ld h, b
    rst $38
    inc [hl]
    cp $38
    db $fc
    ld b, b
    ld hl, sp-$80
    ld sp, hl
    nop
    add c
    nop
    pop bc
    ei
    db $fc
    ld a, b
    rst $38
    db $dd
    ld a, $33
    rst $38
    rrca
    ccf
    rrca
    ccf
    dec [hl]
    rra
    ld hl, $fede
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    pop de
    cp $d0
    rst $38
    sbc b
    rst $38
    cp a
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $00
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld hl, $7bff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    rst $38
    add d
    ld a, a
    adc a
    db $10
    ld e, $ad
    rlca
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    dec a
    ld a, [$f0fd]
    rst $38
    ld hl, sp-$01
    rst $38
    cp b
    ld a, a
    ld e, h
    ccf
    scf
    rrca
    cpl
    rra
    rst $18
    ccf
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $20

jr_066_6221:
    jr jr_066_6221

jr_066_6223:
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    nop
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    dec bc
    add h
    cp l
    ld [bc], a
    add b
    nop
    add b
    nop
    ld hl, sp+$00
    ld c, a
    jr nc, jr_066_6223

    dec de
    sub e
    ld l, a
    dec e
    db $e3
    sub $01
    db $fd
    inc bc
    rst $30
    rrca
    rst $28
    rra
    sbc $3f
    ld [hl], $f9
    add hl, bc
    ldh a, [rOCPD]
    sub b
    and d
    ld e, l
    or b
    ld c, a
    inc a
    rst $00
    inc hl
    rst $00
    add hl, bc
    rlca
    add hl, sp
    rst $00
    inc sp
    rst $08
    or a
    ld c, a
    ld l, a
    rlca
    sub l
    rrca
    pop de
    cpl
    ld b, b
    cp a
    inc c
    di
    cp $01
    cp $01
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld bc, $21df
    pop af
    ccf
    sbc $3f
    and c
    ld e, a
    adc d
    ld a, h
    dec c
    ldh a, [$87]
    rst $38
    rst $28
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld [$8ff7], sp
    ldh a, [$c3]
    db $fc
    ld c, $ff
    rra
    ccf
    rrca
    ccf
    rra
    ccf
    ld c, $bf
    inc c
    cp a
    nop
    rlca
    push hl
    ld [bc], a
    inc hl
    ret nz

    rst $38
    nop
    inc c
    rst $38
    cp $80
    add b
    add b
    add b
    add b
    add e
    nop
    ld c, $ff
    ld [hl], c
    cp $38
    ret nz

    ld b, d
    add b
    ld c, a
    add b
    db $76
    adc c
    ld [bc], a
    rst $38
    ld a, l
    cp $05
    cp $30
    rst $38
    ld h, b

jr_066_62d5:
    rst $38
    rra
    ldh [$31], a
    adc $0a
    db $fd
    ld a, [bc]
    db $fd
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld hl, sp-$01
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
    adc a
    rst $38
    inc hl
    rst $18
    db $76
    rrca
    ld h, c
    rra
    sbc b
    ld h, a
    jr nc, jr_066_62d5

    ld [bc], a
    rst $38
    ld b, $ff
    ld [c], a
    rra
    sbc b
    rlca
    cp $ff
    cp $ff
    ld a, a
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    jr c, @+$01

jr_066_631c:
    ld [hl], $f9
    dec d
    ld a, [$1fe8]
    rra
    nop
    ld [de], a
    ld bc, $03fd
    jp $3f3f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    daa
    jr jr_066_631c

    jr jr_066_63b4

    add b
    or a
    ld c, b
    cp [hl]
    ld b, b
    pop hl
    nop
    ld a, l
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    rst $20
    ld hl, sp+$1f
    ldh [$71], a
    add b
    rst $08
    nop
    ld hl, sp+$07
    nop
    rst $38
    inc de
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
    ldh a, [rIE]
    pop bc
    rst $38
    rst $38
    rst $38
    rst $08
    ldh a, [rNR31]
    ld h, b
    sub c
    cp $88
    rst $18
    db $10
    adc a
    ld [bc], a
    dec c
    ld c, d
    dec b
    inc bc
    inc b
    add hl, bc
    add [hl]
    sbc b
    rst $00
    add c
    rst $18
    pop bc
    rst $38
    ld hl, sp-$01
    add sp, $17
    ld bc, $ffff
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    jp $9fff


    rst $38
    rlca
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    inc d
    rst $28

Jump_066_639c:
    ld a, c
    add a
    and d
    rra
    ld a, a
    ccf
    ld h, a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    dec a
    rst $38
    rlca
    rst $00
    ld [bc], a
    rst $20
    jp Jump_066_7a3c


    pop af

jr_066_63b4:
    cp a
    ld a, a
    cp h
    inc bc
    ld bc, $0a06
    inc b
    inc d
    ld [$087c], sp
    rst $38
    db $fd
    nop
    ldh a, [rP1]
    nop
    nop
    call nc, $916f
    db $fd
    ld [hl], d
    nop
    ret nz

    ld bc, $ffbe
    ret nz

    ld a, [$ff01]
    ld bc, $39fe
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    rst $20
    nop
    rst $38
    inc d
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld e, l
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
    rst $28
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and c
    rst $18
    ld b, c
    cp a
    add e
    ld a, l
    ld [hl], c
    adc a
    rst $20
    rra
    rlca
    rst $38
    ld bc, $c1ff
    ccf
    ld b, d
    dec a
    add [hl]
    ld a, c
    ld d, b
    rst $38
    add hl, de
    rst $20
    ld a, l
    add e
    ld a, e
    add a
    cp c
    ld b, a

jr_066_6420:
    dec c
    di
    add c
    rst $38
    add c
    rst $38
    di
    db $fd
    jp hl


    rst $30
    pop hl
    rst $38
    jp hl


    rst $30
    rst $28
    pop af
    ld [hl], c
    rst $38
    ld bc, $78ff
    add a
    sbc d
    dec b
    ld e, $01
    ld a, [hl]
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add c
    cp $30
    rrca
    jr c, jr_066_6451

    jr z, jr_066_6463

    inc l
    inc de
    jr nz, jr_066_64af

    and [hl]

jr_066_6451:
    ld e, c
    ld [$07f7], sp
    rst $38
    rlca
    rst $38
    jr nc, @+$01

    sbc a
    ldh [$ef], a
    ret nz

    rst $08
    ldh [rIE], a
    ldh [$a8], a

jr_066_6463:
    rst $30
    di
    rst $38
    ret nc

    rst $38
    ld a, [$7afd]
    db $fd
    and c
    ld a, [hl]
    rst $28
    jr nc, jr_066_6420

    ld [hl], b
    add hl, de
    and $3f
    rst $00
    dec a
    jp Jump_066_7ba5


    and h
    ld a, a
    ret c

    rst $20
    or d
    call $ff00
    adc e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $fc
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    dec b
    ei
    add c
    ld a, a
    add c
    ld a, a
    inc a
    db $e3
    sbc $21
    cp $81
    rst $18
    add b
    ld hl, sp-$39
    call z, Call_000_0ef3
    pop af
    rst $20

jr_066_64af:
    jr jr_066_6510

    ldh [rNR41], a
    ret nz

    sbc b
    ldh [$b9], a
    cp $b9
    rlca
    rra
    nop
    rra
    nop
    or e
    nop
    add b
    ld h, b
    nop
    ld h, e
    nop
    ret nc

    scf
    ret


    db $fd
    ld a, [c]
    nop
    dec e
    ccf
    rrca
    cp a
    rst $20
    rlca
    rst $00
    ld b, $af
    db $fd
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $38
    ld l, b
    rst $38
    add sp, -$01
    set 7, a
    rst $18
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ld [hl], e
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $30
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
    rst $30
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop de
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_066_6510:
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    db $fc
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
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    cp $ff
    db $dd
    rst $38
    cp $ff
    sbc $ff
    cp $ff
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
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
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
    rst $20
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rst $08
    ld a, a
    and c
    ld a, a
    ld hl, sp+$3f
    call z, $c83f
    ccf
    ld d, b
    cp a
    add sp, -$01
    ldh [rIE], a
    or $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    reti


    rst $20
    ret nc

    rst $28
    ldh [rIE], a
    ldh [rIE], a
    inc b
    rst $38
    ld bc, $60ff
    sbc a
    rst $18
    rst $38
    ld c, h
    rst $38
    ld e, a
    ldh [$61], a
    cp a
    db $d3
    cpl
    ld d, e
    cpl
    inc hl
    ld e, $20
    rra
    dec d
    ld a, [$30ce]
    jp z, $bd07

    ld b, e
    inc bc
    rlca
    ld bc, $03f0
    ld sp, $b7c7
    cp a
    ld c, a
    ld a, a
    cp a
    rst $38
    ld hl, sp+$11
    add sp, -$3d
    ld bc, $030f
    sub e
    rrca
    pop af
    ld c, $c3
    inc a
    add l
    ld a, d
    jr nz, @+$01

    or c
    cp $2b
    db $fc
    ld b, d
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    pop bc
    ld a, $00
    rst $38
    ld [$10ff], sp
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add [hl]
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

Call_066_65ff:
    rst $38
    ret nz

    ret nz

    call nz, $bcc4
    cp h
    cp b
    cp c
    db $10
    inc de
    ld a, [bc]
    rrca
    jr jr_066_662d

    db $f4
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop

jr_066_662d:
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    and b
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    db $ec
    di
    xor $f1
    ld h, b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    cp $3b
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    adc h
    rst $38
    ld h, [hl]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld hl, sp-$01
    sbc b
    rst $38
    adc l
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    and b
    rst $38
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld b, d
    rst $38
    and $ff
    di
    rst $38
    ld a, c
    rst $38
    cp a
    ld a, a
    sbc l
    ccf
    add hl, de
    nop
    dec c
    nop
    ld h, e
    add b
    adc b
    nop
    pop bc
    cp $01
    cp $11
    xor $62
    sbc h
    add b

jr_066_66c9:
    ld a, h
    jr nc, jr_066_66c9

jr_066_66cc:
    ld h, b
    ld a, [$ee10]
    inc d
    xor $90
    db $ec
    sbc b
    ldh [$08], a
    ldh a, [$88]
    ld [hl], b
    or b
    ld h, b
    cp b
    ld h, d
    or b
    ld h, d
    or b
    ld h, [hl]
    cp c
    ld h, [hl]
    jr c, jr_066_66cc

    dec sp
    and $a9
    halt
    rst $38
    add hl, bc
    rst $30
    ld b, $ff
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld bc, $8001
    add b
    add b
    add b
    nop

Jump_066_66fd:
    ld bc, $0300
    nop
    rrca
    jr nz, @+$41

    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld b, e
    cp h
    add e
    ld a, h
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $01fe
    cp $01
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
    rst $38
    ld bc, $00fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b

jr_066_6769:
    rst $38
    nop
    rst $38
    nop
    rra
    inc b
    rlca
    ld a, [bc]
    rst $30
    jp nz, $e0ff

    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld b, h
    cp a
    ld bc, $01ff
    rst $38
    nop
    db $fd
    ld [hl-], a
    db $fd
    nop
    rst $38
    jr nz, jr_066_6769

    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [de], a
    db $fd
    ld l, b
    sbc a
    nop
    rst $38
    inc c
    di

Jump_066_6798:
    ld b, $f9
    ld a, h
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld l, h
    di
    cpl
    ldh a, [rNR23]
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld sp, hl
    rlca
    ld e, h
    and e
    sub $e1
    db $e3
    ret nz

    ld sp, hl
    cp $ff
    rst $38
    ldh a, [rIE]
    db $e4
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld e, h
    db $e3
    ld e, l
    ld [c], a
    ld e, $e1
    ld e, $e1
    ld e, l
    db $e3
    ld e, a
    db $e3
    cp e
    ld b, a
    di
    rrca
    or $0f
    ld [$f707], a
    ld [bc], a
    xor l
    ld b, d
    dec l
    jp nz, Jump_066_6798

    inc b
    ei
    and a
    ld e, b
    ld [c], a
    inc e
    ld a, [c]
    inc e
    ld [de], a
    inc a
    inc sp
    ld a, h
    ld e, e
    db $fc
    db $eb
    db $fc
    ret


    cp $69
    cp $38
    jr c, jr_066_6870

    ld a, l
    reti


    db $db
    ldh a, [$fe]
    ldh [rIE], a
    add b
    rst $38

Jump_066_67fc:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$1e
    ldh [$7e], a
    add b
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    ld a, [hl]
    add b
    cp $00
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
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
    ld a, a
    jr nz, jr_066_687b

    ld h, b
    ld h, b
    nop
    nop
    ld bc, $0f01
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, a
    sbc a
    xor l
    rst $18
    add a
    rst $38
    db $d3
    rst $28
    ret nz

    rst $38
    ret c

    rst $28
    ld d, [hl]
    rst $28
    ld d, d
    rst $28

jr_066_6870:
    rst $38
    push bc
    db $fc
    push bc
    db $fc
    adc $fe
    call $ccff
    rst $38

jr_066_687b:
    call z, $dce7
    and $cb
    rla
    ldh [rNR31], a
    ldh [$2f], a
    ldh a, [rSTAT]
    cp $80
    rst $38
    ld a, d
    add a
    adc e
    nop
    inc c
    ldh a, [rSVBK]
    rst $38
    sbc a
    ld a, a
    ld d, a
    cp b
    dec bc
    db $f4
    ld h, e
    inc e
    ld sp, $0000
    nop
    nop
    nop
    add sp, $1f
    sbc b
    ld a, a
    di
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$dd]
    ld [c], a
    ld c, c
    add [hl]
    adc b
    rlca
    ld bc, $0607
    ld bc, $0196
    cp h
    inc bc
    dec l
    ld [de], a
    ld h, $19
    ld a, $01
    inc e
    inc bc
    db $e3
    rra
    add e
    ld a, a
    and b
    ld a, a
    ld [$07ff], sp
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    jp $c4c3


jr_066_68d3:
    call nz, $e2e2
    di
    di

jr_066_68d8:
    sub c
    sub c
    add c
    add c
    ld [bc], a
    add d
    ld [bc], a
    add d
    ld [de], a
    sub d
    ld bc, $8181
    ld bc, $0080
    ret nz

    ld b, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ldh [$e0], a
    ld de, $0191
    ld bc, $0000
    nop
    nop

jr_066_68f8:
    nop
    nop
    rlca
    rlca
    inc a
    inc a
    jr c, jr_066_68f8

    db $10
    sub b
    db $10
    stop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ld b, b
    ld b, b
    nop
    ret nz

    jr nz, @-$3e

    jr nz, jr_066_68d3

    jr nz, @-$3e

    jr nz, jr_066_68d8

    ld hl, $0fef
    ldh [rNR10], a
    ldh a, [rP1]
    and b
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    inc c
    rst $38
    rlca
    ld hl, sp+$00
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    db $ec
    nop
    cp $06
    ld a, [de]
    ld [c], a
    ld [$00f0], sp
    ldh a, [rP1]
    ldh a, [$0c]
    db $fc
    ld a, [de]
    ld [$f616], a
    inc e
    db $fc
    db $ec
    db $ec
    jp hl


    jp hl


    pop af
    pop af
    push af
    push af
    db $f4
    db $f4
    di
    ld hl, sp+$77
    ld hl, sp-$0b
    ld hl, sp-$09
    ld hl, sp-$4b
    ld hl, sp-$4f
    ld hl, sp-$37
    ldh a, [$c6]
    ld hl, sp-$08
    cp $f8
    db $fc
    ld a, b
    cp h
    jr @-$12

    ret z

    inc [hl]

jr_066_697a:
    ld hl, sp-$02
    ld a, [$f0ff]
    ld sp, hl
    ldh a, [$fd]
    ldh a, [rBCPD]
    add sp, $60
    ldh [rBCPS], a
    ldh [$08], a
    ld hl, sp+$04
    db $fc
    db $fd
    sbc a
    ld a, l
    ld [hl], b
    sbc a
    ld hl, $7fff
    nop
    rst $00
    nop
    jr jr_066_697a

    cp e
    ld a, h
    db $e3
    rra
    ld h, e
    ld bc, $0100
    ld [bc], a
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
    jr jr_066_69d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_066_69e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_066_69f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_066_6a03

    ld [hl-], a

jr_066_69d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_066_6a13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_066_69e3:
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

jr_066_69f3:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_066_6a03:
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
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_066_6a13:
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
    jr jr_066_6ad3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_066_6ae3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_066_6af3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_066_6b03

    ld [hl-], a

jr_066_6ad3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_066_6b13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop

jr_066_6ae3:
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop

jr_066_6af3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop

jr_066_6b03:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0001
    nop
    ld bc, $0000
    nop

jr_066_6b13:
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
    ld bc, $0100
    ld b, $01
    ld bc, $0501
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    ld b, $06
    ld bc, $0601
    ld b, $06
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld bc, $0101
    dec b
    ld b, $00
    dec b
    dec b
    dec b
    ld bc, $0205
    ld [bc], a
    ld b, $05
    dec b
    dec b
    ld bc, $0501
    dec b
    nop
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    dec b
    ld bc, $0501
    ld bc, $0000
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $05
    dec b
    ld bc, $0501
    dec b
    nop
    ld b, $04
    inc b
    inc b
    nop
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld bc, $0101
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0605
    ld b, $05
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0105
    dec b
    dec b
    dec b
    ld b, $06
    ld bc, $0606
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    ld [$0e09], sp
    add hl, bc
    add hl, bc
    ld c, $09
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    pop bc
    nop
    daa
    nop
    ld h, a
    nop
    rlca
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$5c], a
    ldh [$df], a
    ld h, b
    or a
    ld a, b
    cp [hl]
    ld a, a
    ld a, a
    cp a
    rst $00
    cp a
    and a
    rst $18
    rst $20
    rst $18
    rst $30
    rst $08
    ei
    rst $00
    ld e, c
    rst $20
    call c, $fee3
    pop hl
    rst $38
    ldh [$a7], a
    ldh a, [$e3]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [rSVBK]
    ld hl, sp+$3c
    ld hl, sp+$7b
    db $fc
    rst $38
    db $fc
    sbc a
    db $fc
    cp h
    rst $18
    adc a
    rst $38
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    push bc
    ei
    ccf
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld [hl], b
    ld h, a
    sbc b
    ld h, e
    sbc h
    add e
    ld a, h
    sub c
    ld l, [hl]
    ldh a, [$2f]
    swap h
    di
    inc e
    ldh [$1f], a
    adc e
    ld a, a
    sbc e
    rst $38
    ld d, $ef
    inc a
    di
    call nc, $c63b
    add hl, sp
    ret nc

    cpl
    cp $01
    cp $01
    ld a, [$fe01]
    ld bc, $01fe
    cp $01
    ld a, [c]
    dec c
    ld hl, sp+$07
    ld hl, sp+$07
    jp hl


    ld b, a
    db $d3
    rst $28
    rst $20
    rst $38
    ld sp, hl
    rst $20
    ld a, [hl]
    pop hl
    cp [hl]
    ld h, c
    ccf
    ldh [$3e], a
    pop hl
    ld de, $02e0
    ldh a, [rTIMA]
    ld a, [c]
    add sp, $17
    jr nz, jr_066_6ce9

    adc $3f
    sbc [hl]
    ld a, a
    db $db
    db $fc
    ldh a, [$f8]
    or h
    ld hl, sp+$54
    cp b
    sbc e
    ld [hl], b
    or a
    ld a, b
    or a
    ld hl, sp+$36
    ret c

    ld a, e
    db $10
    jr nz, jr_066_6cf3

    inc sp
    ld de, $3143
    inc sp
    ld [hl], c
    di

jr_066_6ce9:
    ld sp, $fb35
    ld sp, hl
    rst $38
    sbc e
    rst $38
    ld e, a
    cp a
    ld b, b

jr_066_6cf3:
    ccf
    ld a, $60
    xor a
    ld [hl], b
    ld c, h
    jr nc, @+$51

    jr nc, @+$7d

    inc b
    adc d
    inc b
    ld b, $04
    dec bc
    inc b
    add hl, bc
    ld b, $27
    ld [bc], a
    ld e, b
    rlca
    ld hl, sp+$07
    sbc b
    rst $38
    jp hl


    sbc $ce
    add b
    ld sp, hl
    add a
    adc a
    rra
    ld e, b
    cp a
    daa
    rst $38
    cp a
    ld a, a
    sub $3f
    rst $08
    ccf
    sbc $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    db $dd
    ld [bc], a
    reti


    ld b, $19
    ld b, $18
    rlca
    or b
    rrca
    xor h
    rra
    rst $28
    rra
    ccf
    rst $38
    add hl, sp
    rst $38
    ldh [rIE], a
    set 6, a
    dec c
    di
    adc a
    ldh a, [$8c]
    ldh a, [rNR32]
    ldh [rSVBK], a
    add b
    ld de, $19e0
    ldh [$9f], a
    ld h, b
    add c
    ld a, [hl]
    ret


    ld [hl], $cf
    jr nc, @-$0f

    db $10
    cp a
    ld b, b
    ei
    nop
    rst $30
    nop
    adc c
    ld [hl], a
    rst $38
    rst $38
    cp $ff
    ld [$f8ff], a
    rst $38
    ld [hl], b
    rst $38
    ld c, b
    rst $30
    jp c, $dee5

    pop hl
    ld a, [hl]
    pop bc
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$59], a
    and $69
    or $01
    cp $73
    db $fc
    ld [hl], e
    db $fc
    ld e, e
    db $fc
    cp l
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rrca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    dec hl
    rst $10
    inc d
    rst $28
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    add [hl]
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    jr @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    rst $38
    ldh a, [$f1]
    cp $f7
    ld hl, sp+$77
    ld hl, sp+$37
    ld hl, sp+$3f
    ld hl, sp+$79
    cp [hl]
    db $fd
    ld a, $ee
    ccf
    rst $00
    ccf
    ld e, $01
    ld a, [de]
    ld bc, $000b
    adc a
    nop
    rlc b
    ld a, a
    add b
    or c
    rrca
    rra
    ccf
    rra
    ccf
    ld a, [hl]
    rra
    sub h
    ccf
    ld hl, sp+$1f
    jp hl


    ld e, $d9
    ld a, $e1
    ld a, [hl]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    cp $c0
    rst $38
    ldh [rIE], a
    ld [c], a
    db $fd
    ret nc

    rst $28
    sub h
    rst $28
    add c
    cp $40
    rst $38
    sub [hl]
    ld l, l
    ld a, h
    rlca
    push de
    ld c, $95
    ld c, $b4
    rrca
    cp [hl]
    rrca
    sbc $0f
    ld a, [de]
    rrca
    ld a, [hl]
    rrca
    sbc [hl]
    ld l, a
    sub b
    ld l, a

jr_066_6e0a:
    ret nc

    cpl
    ld [hl], b
    adc a

jr_066_6e0e:
    ld sp, hl
    ld b, $f8
    rlca
    ldh a, [rIE]
    push bc
    ld a, [$fbc4]
    ld [c], a
    rst $38
    ld bc, $7fff
    add b
    ld a, a
    add b
    ld l, a
    add b
    inc a
    jp $c3fc


    cp $c1
    daa
    ret nz

    sub a
    ld h, b
    db $db
    jr nz, jr_066_6e0e

    jr nz, jr_066_6e0a

    jr nz, @-$55

    ld [hl], b
    add hl, sp
    ldh a, [rNR33]
    ldh a, [$f4]
    ld hl, sp-$10
    ld hl, sp-$02
    ld hl, sp-$42
    ld hl, sp-$52
    ret c

    ld [hl], a
    adc b
    adc a
    nop
    ccf
    nop
    ld a, a
    nop
    ld c, $00
    jr jr_066_6e4e

jr_066_6e4e:
    rst $38
    nop
    cp a
    nop
    db $fd
    nop
    db $fd
    nop
    rra
    nop
    rst $10
    nop
    ld a, a
    nop
    ccf
    nop
    cp c
    ld b, $29
    sub $61
    sbc [hl]
    ld h, c
    sbc [hl]
    ld l, a
    sbc [hl]
    xor $1f
    cp a
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, [hl]
    add b
    or a
    ret z

    db $d3
    inc c
    db $ed
    ld [bc], a
    rst $38
    nop
    ei
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
    rst $00
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    and $ff
    ld a, [c]
    rst $38
    ld a, c
    rst $38
    ld bc, $02fe
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, l
    add d
    db $fd
    ld [bc], a
    ld [hl], c
    adc [hl]
    ld h, c
    sbc [hl]
    di
    inc c
    rst $38
    inc c
    db $e3
    inc e
    ld a, e
    inc b
    add l
    ld a, [hl]
    add l
    ld a, [hl]

jr_066_6eb4:
    call $e53e
    ld e, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld e, a
    add b
    ld a, $c1
    ld e, $e1
    db $d3
    jr nz, jr_066_6eb4

    db $10
    rlca
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rst $38
    rra
    cpl
    rra
    scf
    rrca
    sbc c
    rlca
    sub e
    rrca
    add b
    rrca
    adc c
    rlca
    add h
    inc bc
    adc [hl]
    ld bc, $018e
    rst $00
    nop
    ld l, a
    add b
    ld a, a
    add b
    cpl
    ret nz

    ld b, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    ld h, a
    rst $38
    ld [hl], e
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $e4
    rra
    ccf
    rst $38
    ret nz

    ccf
    ld de, $71ee
    adc [hl]
    ld l, a
    ldh a, [rNR41]
    rst $38
    call nc, $9f3b
    ld a, a
    ld h, a
    rst $38
    rst $20
    ld a, a
    ld h, a
    rst $38
    xor a
    ld a, a
    rst $00
    ccf
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    ld e, a
    inc hl
    xor a
    ld [hl], e
    rst $38
    ccf
    ld c, a
    ccf
    dec de
    daa
    ld a, a
    inc bc

jr_066_6f3e:
    ld [hl], a
    inc bc
    di
    inc bc
    pop af
    inc bc
    pop bc
    inc bc
    ld hl, $a1c3
    ld b, e
    pop hl
    inc bc
    add e
    ld bc, $0183
    ld b, e
    ld bc, $0103
    ld [hl], l
    inc bc
    db $fd
    inc bc
    db $e3
    rra
    ld b, c
    ccf
    ld bc, $01ff
    rst $38
    ld sp, hl
    rlca
    db $ed
    inc bc
    ld sp, hl
    rlca
    push hl
    rra
    rlca
    rst $38
    adc a
    ld a, a
    rst $38
    ld bc, $00fd

jr_066_6f70:
    ld hl, $7100
    nop
    rst $38

jr_066_6f75:
    nop
    pop af
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28

jr_066_6f7d:
    jr nc, @-$0f

    jr nc, jr_066_6f70

    jr nc, @+$01

    jr nc, @+$01

    jr nc, jr_066_6f3e

    ld a, b
    ld a, [$fbfd]
    db $fc
    ei
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $30
    ld l, a
    cp l
    ld h, a
    xor a
    ld [hl], c
    xor a
    ld [hl], c
    ld e, [hl]
    or c
    rra
    ldh a, [rNR22]
    ld hl, sp+$3f
    ld hl, sp+$3b
    db $fc
    inc de
    db $fc
    dec sp
    db $f4
    cpl
    ldh a, [$c0]
    jr nc, jr_066_6f75

    ld sp, $1ff0
    ld [hl], e
    inc e
    cpl
    db $10
    xor a
    db $10
    xor a
    db $10
    xor h
    db $10
    xor h
    db $10
    xor d
    inc d
    and [hl]

jr_066_6fc5:
    jr jr_066_6f7d

    jr jr_066_6fc5

    jr @-$23

    inc a
    dec [hl]
    cp $f1
    cp $f0
    rst $38
    or $f9
    db $f4
    ei
    rst $30
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp+$7c
    ld hl, sp+$79
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    rst $38
    ld a, h
    sbc h
    ld a, a
    cp a
    ld a, a
    cp h
    ld a, a
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    or h
    ld a, a
    inc c
    rst $38
    ld a, h
    rst $38
    cp h
    ld a, a
    call c, Call_066_4c3f
    cp a
    ld a, h
    sbc a
    rst $28
    ld e, $fe
    rrca
    sub $0f
    ld b, $ff
    rst $38
    rst $38
    xor a
    ld e, a
    ld l, l
    sbc a
    ld h, b
    sbc a
    sbc c
    ld b, $b7
    nop
    push af
    nop
    db $fc
    inc bc
    ld h, c
    sbc [hl]
    rst $38
    rst $38
    ld a, [$feff]
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
    ldh [rIE], a
    nop

Call_066_7033:
    rst $38
    ld b, b
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    cp $ff
    or $ff
    or $ff
    ld a, [c]
    rst $38
    jp nz, $c3ff

    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    rst $18
    rst $38
    xor $ff
    db $ec
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc bc
    rst $38
    nop
    rst $38
    add c
    ld a, a
    inc bc
    ld a, a
    call $df3f
    ccf
    cp [hl]
    ccf
    ld e, a
    cp a
    sbc $3f
    db $fc
    rra
    adc h
    ld e, a
    add hl, bc
    rst $38
    ret nz

    rst $38
    ld [hl], l
    adc a
    ld [hl], l
    adc a
    db $76
    adc a
    db $76
    adc a
    daa
    rst $08
    daa
    rst $08
    ld l, $c7
    inc l
    rst $00
    inc l
    rst $00
    inc c
    rst $20
    ld c, $e7
    adc [hl]
    ld h, a
    sbc [hl]
    ld h, a
    sub [hl]
    ld l, a
    rla
    rst $28
    ld h, d
    rst $38
    ld l, d
    rst $30
    xor e
    ld [hl], a
    call nz, $df3b
    inc hl
    db $fd
    inc bc
    ld l, a
    inc de
    ld e, $03
    ld d, $03
    rla
    inc bc
    rla
    inc bc
    inc bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld c, $07
    inc hl
    rst $00
    dec de
    rst $20
    ld a, [hl+]
    rst $30
    ret nz

    ccf
    or b
    rrca
    jr c, jr_066_70e3

    jr c, jr_066_70e5

    ld hl, sp+$07
    rlca
    rst $38
    inc bc

jr_066_70e3:
    rst $38
    inc bc

jr_066_70e5:
    rst $38
    ld b, a
    cp a
    scf
    rst $08
    rlca
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $30
    ei
    rlca
    ld a, c
    rlca
    ld a, h
    inc bc
    sbc b
    rlca
    cp e
    inc b
    and [hl]
    add hl, de
    or e
    inc c
    adc [hl]
    cp a
    nop
    cp a
    ld bc, $03df
    rst $08
    jp nz, $c30f

    cp a
    add e
    rst $38
    add c
    rst $38
    or b
    rst $08
    ldh a, [rIE]
    sbc h
    db $e3
    ld a, $c1
    rst $38
    nop
    ccf
    ret nz

    ld a, [hl]
    add c
    rst $38
    nop
    ret nz

    rst $38
    add b
    rst $38
    add b
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

jr_066_7131:
    rst $38
    nop
    rst $38
    jr @+$01

    ld [$00ff], sp
    rst $38
    sbc b
    rst $38

Jump_066_713c:
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    call c, $8cff
    rst $38
    sub h
    rst $28
    inc a
    rst $08
    jr z, jr_066_7131

    ld l, h
    sbc a
    adc $3f
    sub [hl]
    ld a, a
    ld h, [hl]
    rst $38
    sub $ef
    add [hl]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    scf
    rst $38
    ld b, e
    rst $38
    add [hl]
    rst $38
    nop
    rst $38
    inc l
    rst $38
    call z, Call_066_4cff
    rst $38
    ld l, h
    rst $38
    call nz, $ccff
    rst $38
    adc c
    rst $38
    sub a
    ei
    add d
    rst $38
    sub e
    cp $b3
    cp $7a
    rst $38
    ld [hl], e
    rst $38
    or d
    rst $38
    or d
    rst $38
    ld hl, sp-$09
    ld [hl], l
    ei
    scf
    ei
    ld sp, $39ff
    rst $38
    add hl, sp
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc a
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
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rra
    rst $38
    sbc l
    rst $38
    inc d
    rst $38
    sub h
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld hl, sp-$01
    db $fc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld a, $ff
    inc c
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    inc l
    rst $38
    ld h, $ff
    ld h, $ff
    ld [hl], $ff
    scf
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    cp l
    rst $38
    or a
    rst $38
    and a
    rst $38
    or e
    rst $38
    or $ff
    db $76
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    jr jr_066_7285

    jr jr_066_7287

    add hl, de
    ld a, a
    jr c, jr_066_728b

    cp b
    rst $38
    ld de, $f7fe
    ld hl, sp+$01
    ld a, [$1100]
    add a
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$f80f]
    ld b, $fb
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    cp $00
    cp $01
    cp $01
    cp $13
    db $ec
    ld [de], a
    db $ec
    ld de, $11ee
    xor $31
    adc $29
    sbc $a0
    rst $18
    and b
    rst $18
    xor c
    rst $18
    rra
    rst $38
    ld l, a
    rst $38
    cp $ff
    ld l, [hl]
    rst $38
    ld c, $ff
    inc b
    rst $38
    dec b
    cp $04
    cp $0e
    db $fc
    rrca
    db $fc
    inc c
    rst $38
    inc l
    rst $18
    ld c, b
    cp a
    ld [$09ff], sp
    cp $c3
    db $fc
    adc a
    ldh a, [rTAC]
    ld hl, sp+$0d
    ldh a, [$65]
    cp b
    ld l, $f1
    inc c
    di
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp-$16

jr_066_7277:
    ldh a, [$2d]
    ldh a, [$0c]
    ldh a, [rP1]
    di
    call $8833
    ld [hl], a
    rlca
    ld hl, sp+$06

jr_066_7285:
    ld sp, hl
    nop

jr_066_7287:
    ei
    nop
    ei
    ret nz

jr_066_728b:
    cp a
    ld e, c
    and [hl]
    call z, $8fb3
    ldh a, [$9b]
    db $f4
    or b
    rst $18
    jr nz, jr_066_7277

    or b
    ld c, a
    ld e, b
    and a
    ld [$48f7], sp
    or a
    ld [de], a
    rst $38
    ld a, [hl]
    cp a
    ld e, a
    cp a
    ld e, $ff
    ld e, e
    cp $59
    cp $38
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    call $9dff
    rst $38
    dec c
    rst $38
    ld l, b
    sbc a
    inc h
    rst $18
    inc c
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld c, b
    rst $30
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    rst $30
    adc h
    di
    add [hl]
    ei
    rlca
    ei
    add hl, bc
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    sub h
    rst $38
    jr c, @+$01

    jr c, @+$01

    rst $38
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    rst $38
    inc bc
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
    ccf
    rst $38
    ld bc, $07ff
    ld hl, sp+$01
    cp $e0
    rra
    pop af
    ld c, $03
    db $fc
    push de
    nop
    cp $00
    pop af
    ld c, $6f
    nop
    db $dd
    ld [bc], a
    ld a, [$b005]
    rst $38
    jr z, @+$01

jr_066_7324:
    jr c, jr_066_7324

jr_066_7326:
    jr z, jr_066_7326

    ld a, b
    cp $f8
    ld a, [hl]
    ld a, b
    sbc a
    ld e, b
    xor [hl]
    or b
    ld c, h
    ldh [rNR32], a
    ldh [$5f], a
    ret nz

    xor a
    and b
    ld d, h
    ret nc

    inc c
    ret nc

    ld c, b
    ldh a, [$d8]
    add d
    ld hl, sp+$06
    ld hl, sp+$27
    ld hl, sp+$2d
    ldh a, [$3c]
    ld [c], a
    cp d
    ld h, b
    sub d
    ld h, b
    sbc a
    ld h, b
    adc l
    ld [hl], d
    sbc h
    ld h, e
    ld b, e
    cp b
    ld d, e
    cp b
    ld c, a
    or b
    sbc $21
    ld a, [c]

jr_066_735d:
    ld bc, $6192
    and a
    rst $30
    rst $38
    rst $38
    or $7f
    ldh [$7f], a
    add b
    db $e3
    add c
    db $db
    pop hl
    ei
    add e
    rst $38
    add e
    ccf
    ld bc, $20bf
    ccf
    inc h
    ld l, a
    and b
    ld [hl], a
    ldh a, [rOCPD]
    pop hl
    rst $08
    pop bc
    rst $20
    jp $d3f7


    xor e
    reti


    xor a
    rst $08
    cp a
    cp $9f
    cp $bf
    cp h
    ld e, a
    db $fd
    cp a
    dec h
    rst $38
    ld a, [de]
    rst $20
    jr nc, jr_066_735d

    ld a, b
    rst $00
    ld [hl], d
    call $fd42
    ld b, [hl]
    ld sp, hl
    ld b, e
    db $fc
    ei
    db $fd
    ei
    ld a, l
    ei
    ret


    rst $38
    ld l, c
    rst $38
    ld h, l
    rst $38
    rst $20
    rst $28
    call nc, $edfe
    db $10
    rst $28
    add hl, bc
    or $ab
    db $f4
    dec bc
    ldh a, [$08]
    ldh a, [$c6]
    ld sp, hl
    pop bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc hl
    rst $38
    ld bc, $0cfe
    di
    db $e3
    db $fc
    sbc e
    db $e4
    ret nz

    rst $38
    nop
    rst $38
    ld [c], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff

jr_066_73ef:
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add [hl]
    ld sp, hl
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $00
    ccf
    rst $38
    nop
    db $10
    rst $08
    cp e
    ld b, a
    rst $08
    ccf
    ret nc

    ccf
    ld b, b
    ccf
    nop
    rst $38
    pop af
    rrca
    sbc $01
    jr nc, jr_066_73ef

    rst $38
    rst $38
    add $39
    jp nz, $ae3f

    ld d, a
    push af
    rrca
    ld h, a
    sbc a
    ld d, h
    cp a
    ld c, c
    or [hl]
    jp $687c


    rst $38
    inc b
    rst $38
    ld h, c
    sbc [hl]
    add sp, $1f
    ld [c], a
    rra
    ret z

    scf
    call z, $8433
    ld a, e
    adc $7f
    add $ff
    add h
    rst $38
    adc e
    db $f4
    rst $18
    or b
    pop de
    cp [hl]
    ld [hl], $ff
    dec e
    db $e3
    dec e
    ld [c], a
    adc [hl]
    ld h, e
    ld e, a
    and e
    ld c, a
    or e
    inc hl
    rst $38
    ld bc, $7dfe
    add d
    and b
    ld e, a
    ld h, $df
    ld h, [hl]
    sbc a
    ld h, $df
    ld h, $df
    nop
    rst $38
    ld e, a
    and b
    ld a, $c1
    adc $31
    call z, Call_066_4b33
    cp a
    xor b
    ld a, a
    ld h, h
    ei
    db $e3
    ld a, h
    ld l, a
    ldh a, [rNR41]
    rst $38
    cp d
    ld a, l
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld d, $f9
    add [hl]
    ld sp, hl
    nop
    rst $38
    cpl
    rst $18
    ld l, e
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    rst $38
    sbc h
    cp [hl]
    rst $08
    rlca
    rst $28
    add e
    rlca
    ld b, c
    cp [hl]
    db $10
    db $ec
    ld l, $c1
    ld [bc], a
    pop hl
    ld hl, sp-$01
    ld a, h
    rst $38
    db $ed
    ld e, $a4
    ld b, e
    ld c, l
    ld [bc], a
    ld c, $00
    rst $38
    nop
    ld a, b
    rlca
    ld [hl], b
    rst $38
    add b
    rst $38
    sub e
    ldh [$83], a
    db $fc
    ld l, $ff
    add $3f
    db $fc
    inc bc
    pop hl
    rra
    ldh [$1f], a
    cp b
    rlca
    di
    inc c
    ld a, h
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld e, $ff
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    rst $38
    ei
    rst $38
    ldh [rIE], a
    jp nz, $f1fd

    cp $3c
    rst $38
    ld a, h
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
    ld c, $e2
    sbc l
    and $d1
    cp $e1
    xor $f1
    sub e
    ldh [$de], a
    ld hl, $bf7c
    ei
    rst $38
    rst $38
    rst $38
    ei
    ld a, a
    rst $38
    ld a, a
    inc hl
    ld b, h
    dec sp
    ld b, h
    ld b, e
    ld a, h
    ld e, $7f
    ld e, $7f
    inc b
    ld e, e
    ld hl, $415e
    ld a, [hl]
    ld h, b
    ld a, a
    ld [hl], h
    ld a, e
    inc de
    ld a, a
    db $10
    ld a, a
    ld h, e
    ld a, h
    ld b, e
    ld a, h
    nop
    ld a, a
    ld a, b
    ld a, a
    cp b
    rst $38
    inc e
    ld a, e
    ld a, a
    ld hl, sp-$41
    ld hl, sp-$48
    rst $38
    ldh a, [rIE]
    jr nz, jr_066_75dd

    nop
    ld a, a
    add e
    ld a, a
    rrca
    ld a, a
    dec hl
    ld a, a
    cp e
    ld a, a
    ld a, [$0a7f]
    rst $38
    adc d
    ld a, a
    sbc a
    ld a, a
    ccf
    ld a, a
    cpl
    ld a, a
    rlca
    ld a, a
    ld c, $7f
    ld c, $7f
    ld a, $7f
    ld c, [hl]
    cp a
    ld l, $ff
    rrca
    rrca
    dec c
    dec c
    rrca
    rrca
    ccf
    ccf
    ld [hl+], a
    dec a
    dec e
    ld b, $15
    dec c
    sub h
    and a
    ld l, l
    ld b, b
    call nz, Call_066_7ed3
    ld a, [hl]
    ld [$0008], sp
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, e
    ld b, e
    rst $30
    jp hl


    rst $38
    cp $4f
    or [hl]
    sbc a

jr_066_75a7:
    ld l, a
    db $fc
    jp $82f9


    di
    cp h
    db $f4
    db $eb
    ld bc, $03f8
    nop
    ccf
    nop
    rra
    pop hl
    ld e, $e0
    ld l, e
    db $f4
    ld a, e
    db $fd
    ld b, b
    ccf
    ld a, b
    add c
    rra
    ldh [$e2], a
    dec e
    adc b
    rst $00
    add b
    rst $38
    ld a, $c0
    ld a, [hl]
    add c
    ld [$3c07], sp
    rst $00
    or [hl]
    ld c, a
    nop
    rst $38
    jr nc, jr_066_75a7

    ld hl, sp+$07
    add b
    rst $38
    db $10

jr_066_75dd:
    rst $38
    inc c
    di
    rlca
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    inc c
    rst $38
    inc bc
    rst $38
    ld a, l
    rst $38
    nop
    rst $38
    jp Jump_000_1fff


    rst $38
    ret nc

    rst $38
    pop af
    rst $38
    rst $38

jr_066_75f7:
    rst $38
    cp $ff
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [$17f7], sp
    rst $28
    rst $18
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_066_75f7

    nop
    rst $38
    rst $28
    rra
    ld e, a
    ccf
    add c
    ld a, a
    rst $38
    rst $38
    rst $18
    ccf
    rst $00
    ccf
    ld d, $f9
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$8004]
    ld b, [hl]
    jr nc, @-$2f

    jp nz, $feff

    rst $38
    inc e
    rst $38
    rst $20
    ld e, $ca
    rlca
    ld a, b
    add a
    inc c
    rst $38
    inc e
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh a, [$cf]
    call z, Call_000_04ff
    rst $38
    nop
    rst $38
    ld b, $ff
    ld c, $ff
    add b
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld h, e
    ld h, e
    cp [hl]
    cp [hl]
    rst $30
    rst $30
    rst $38
    rst $38
    nop
    rst $18
    sbc h
    ld a, l
    cp a
    ret nz

    push hl
    ld d, $90
    db $10
    ld d, [hl]
    xor c
    ld [$0408], sp
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    rst $38
    rst $30
    rst $38
    dec de
    rst $38
    ld e, a
    ret c

    daa
    ld d, e
    add hl, hl
    db $fc
    ld [hl], e
    add b
    jp $bf5f


    db $fc
    ld hl, sp-$04
    ld a, [hl-]
    dec e
    ld [c], a
    rst $28
    rra
    rst $38
    ldh [rIE], a
    db $fc
    db $fd
    jp z, Jump_000_1fff

    rst $08
    ld a, a
    ccf
    rst $00
    ccf
    rst $18
    push bc
    rst $38
    ld [hl], b
    adc a
    db $e3
    inc e
    sub a
    ld hl, sp-$21
    ldh [$5f], a
    rst $38
    ldh [rIE], a
    ld a, $c0
    nop
    rst $38
    ld b, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    db $fd
    cp $fc
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    or c
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    inc bc
    rst $38

jr_066_76f8:
    ld b, $ff
    adc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    jp $733f


    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    call nz, Call_000_08fb
    rst $38
    inc c
    rst $38
    ld b, a
    cp $fe
    rst $38
    cp $ff
    pop af
    rst $28
    ld a, b
    rst $38
    ccf
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$07
    ld hl, sp-$06
    ld hl, sp-$07
    ld hl, sp-$06
    ld hl, sp-$03
    ld hl, sp-$06
    ld hl, sp-$03
    ld hl, sp+$07
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
    scf
    jr nc, jr_066_76f8

    add b
    rlca
    nop
    ld b, a
    ld b, b
    ld b, $00
    and $e0
    sbc h
    sbc d
    sub b
    sub [hl]
    nop
    ld b, $01
    rlca
    jr jr_066_77a0

    cp $fe
    ld a, [$0afe]
    cp $0e
    xor $5e
    ld e, [hl]
    ret c

    inc a
    jr nc, @-$36

    nop
    db $f4
    ld a, $3e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_066_77c0

jr_066_77a0:
    rst $38
    rst $38
    ret c

    rst $20
    ld [hl], b
    adc a
    dec h
    ld a, [de]
    ld [$2df0], sp
    ld [de], a
    inc l
    rst $38
    ld bc, $07ff
    dec hl
    adc e
    ld [hl], h
    rst $20
    rra
    dec hl
    ldh a, [rIE]
    ldh [$f5], a
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $38

jr_066_77c0:
    rst $38
    rst $38
    pop af
    rst $38
    rst $00
    ldh a, [$75]
    adc e
    ldh [$1f], a
    and b
    rra
    ld h, c
    rra
    ccf
    rst $38
    ei
    rst $38
    ld a, h
    add e
    db $e3
    rra
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    adc e
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    inc c
    rst $38
    ld bc, $dfff
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
    ld hl, sp-$01
    nop
    rst $38
    ld e, $e1
    add hl, de
    rst $20
    inc bc
    rst $38
    rlca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jp Jump_066_67fc


    sbc b
    daa
    ret c

    rst $18
    pop hl
    call c, Call_066_58e3
    rst $20
    reti


    daa
    ld [$6737], a
    cp a
    rst $08
    ccf
    xor $3f
    rrca
    ccf
    rlca
    rrca
    inc bc
    add a
    inc bc
    sub e
    ld bc, $0183
    add h
    nop
    call nc, $d641
    ld d, c
    rst $38
    ld sp, hl
    rst $38
    ld d, e
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    pop bc
    ld a, a
    pop hl
    ld a, a
    pop hl
    ld a, a
    add b
    ld a, a
    rlca
    rst $38
    add a
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nc

    ld a, a
    ldh [$7f], a
    add b
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    jp $e0ff


    rst $38
    ret z

    rst $38
    ld b, b
    rst $38
    db $e3
    db $fc
    ld [c], a
    db $fd
    rst $08
    rst $38
    rst $00
    rst $38
    add h
    rst $38
    add d
    rst $38
    ld [c], a
    rst $38
    db $e3
    rst $38
    ld bc, $01fa
    ld a, [c]
    ld bc, $41fe
    cp $50
    xor $1a
    db $ec
    ld [bc], a
    db $fc
    ld bc, $90fc
    db $fd
    ld a, [bc]
    db $fd
    ld [hl-], a
    call $8d70
    and b
    db $dd
    ld [hl+], a
    db $dd
    db $10
    ld l, a
    ld e, b
    rst $20
    rst $38
    ccf
    ccf
    rst $18
    sbc a
    ld a, l
    rra
    db $fc
    rra
    xor a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $08
    ld [$4887], sp
    rlca
    nop
    rst $38
    ldh a, [rIF]
    ld a, [$0e07]
    ld bc, $8f41
    rlca
    rst $38
    pop hl
    rst $38
    cp $e1
    ld [hl], $c9
    nop
    rst $38
    ld a, b
    rst $38
    jr @+$01

    ld b, a
    ld hl, sp-$80
    rst $38
    add b
    rst $38
    ld e, l
    and d
    add [hl]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    inc a
    rst $38
    rlca
    rst $38
    ld c, $ff
    nop
    rst $38
    rra
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jp $ffff


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
    inc b
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    push hl
    ld a, [$c6b9]
    ld hl, sp+$07
    pop af
    rrca
    and [hl]
    ld e, a
    xor a
    ld e, a
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ldh [$fe], a
    db $fc
    rst $00
    rst $38
    add h
    rst $38
    inc b
    or c
    ld c, $98
    ld h, $55
    ld a, [hl+]
    rst $10
    jr z, jr_066_7974

    call z, $dc2b

Jump_066_793c:
    or e
    ld c, h
    db $e4
    rra
    ld c, $ff
    sbc [hl]
    rst $38
    ld e, $ff
    ld e, l
    cp a
    ld d, [hl]

jr_066_7949:
    cp a
    rst $00
    cp a
    and $9f
    add d
    rst $18
    add d
    rst $18
    jp nc, $54ef

    db $eb
    call nz, Call_066_453b
    dec sp
    push bc
    dec sp
    ld b, c
    cp a
    nop
    rst $38
    add e
    db $fc
    ld l, c
    sbc [hl]
    ret


    ld e, $c0
    rra
    jr nz, jr_066_7949

    inc h
    rst $18
    inc b
    rst $18
    xor b
    ld e, a
    inc b
    dec sp
    inc l
    inc de

jr_066_7974:
    add hl, bc
    rlca
    inc hl
    rrca
    ld h, e
    rrca
    inc hl
    rrca
    ld d, a
    cpl
    xor [hl]
    rrca
    ld c, [hl]
    adc a
    ld a, [hl]
    rrca
    and c
    ld e, $fd
    ld e, $79
    ld c, $d0
    rrca
    db $e4
    dec de
    ld l, b
    sub a
    and b
    rst $18
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    jr nc, @+$01

    ld [de], a
    rst $38
    ld e, $ff
    add [hl]
    rst $38
    adc [hl]
    rst $38
    and a
    rst $18
    and e
    rst $18
    and a
    rst $18
    scf
    rst $08
    inc b
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    db $db
    dec a
    db $db
    dec a
    xor e
    ld e, l
    adc c
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld h, e
    rst $38
    ld h, $ff
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    adc h
    rst $38
    call c, $d4ff
    rst $38
    add c
    rst $38
    add l
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    inc bc
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
    nop
    rst $38
    ld bc, $47ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jp $f9ff


    rst $38
    add b
    ld a, a
    ld h, c
    sbc a
    rrca
    rst $38
    di
    rst $38
    inc bc
    rst $38
    ld bc, $f0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $28
    nop
    rst $18
    nop

jr_066_7a29:
    rst $30
    add b
    ld b, h
    add b
    ld b, b
    add b
    ld b, b
    db $10
    ld c, h
    inc e
    ret z

    sbc h
    ld a, h
    sbc [hl]
    ld a, h
    sbc $1c
    rst $38
    ld e, [hl]

Jump_066_7a3c:
    rst $38
    ccf
    rst $38
    ccf
    inc de
    rst $38
    ld c, c
    rst $30
    dec b
    rst $18
    ld b, $df
    jr nz, jr_066_7a29

    ld c, a
    sub b
    ld a, d
    add c
    ld a, l
    add d
    cp a
    pop de
    swap a
    rst $10
    add hl, hl
    rst $28
    ld bc, $c1ff
    rst $38
    reti


    rst $38
    push hl
    rst $38
    or a
    jp hl


    rla
    jp $d11f


    rrca
    db $fc
    inc bc
    ld [hl], a
    adc b
    ld h, [hl]
    sbc c
    ld h, a
    sbc b
    ld a, a
    adc b
    ld a, e
    adc h
    inc sp
    call z, $ec13
    xor a
    ldh a, [$a9]
    or $33
    db $fc
    ld a, [bc]
    db $fd
    add hl, bc
    rst $38
    adc e
    ld a, a
    and e
    ld a, a
    ld hl, $00ff
    rst $38
    add h
    ld a, e
    add h
    ld a, e
    ld b, $f9
    inc c
    di
    inc c
    di
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    nop
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
    and b
    rst $18
    add b
    rst $38
    add d
    db $fd
    add e
    db $fd
    add b
    rst $38
    add b
    rst $38
    ld bc, $31fe
    cp $1d
    cp $1c
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    rra
    rst $38
    dec de
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    call c, $ddff
    cp $dd
    cp $9c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    sbc h
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    adc $ff
    ld l, [hl]
    rst $38
    ld a, h
    rst $38
    call c, $9dff
    cp $3f
    db $fc
    ccf
    db $fc
    ld l, l
    cp $7f
    db $fc
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, [de]
    db $fd
    db $dd
    cp $f4
    rst $38
    ld a, [c]
    db $fd
    pop af
    cp $a2
    rst $38
    ld bc, $f1ff
    rst $38
    sub b
    rst $28
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
    ld [$001c], sp
    ld c, $00
    ld a, [bc]
    nop
    jr z, jr_066_7b29

jr_066_7b29:
    cp c
    and c
    db $10
    ld hl, $a1f0
    ld h, c
    pop hl
    ld hl, $c121
    ld b, e
    ld h, b
    ld h, e
    ld b, c
    ld h, e
    ld a, l
    ld h, a
    dec sp
    ld a, a
    dec sp
    ld a, a
    ld a, a
    ccf
    ld a, a
    sbc e
    ld a, a
    sub e
    ld a, a
    ld d, a
    cp e
    push af
    dec de
    rst $38
    add hl, de
    db $fd
    add hl, de
    sbc h
    add hl, de
    sbc l
    ld a, h
    sbc l
    inc e
    sbc l
    call z, $ec9c
    call z, $dc9c
    call z, $cccc
    call z, $fcdc
    call z, $cefc
    db $ec
    cp $fc
    cp $fe
    ld c, h
    sub $2d
    and $fb
    rst $30
    ld e, b
    or [hl]
    ld b, b
    ld e, d
    and b
    ld c, b
    and [hl]
    ld e, $e2
    add hl, bc
    ld [hl], d
    call z, Call_066_4933
    or e
    adc b
    di
    ret nz

    ei
    ld c, e
    pop af
    ld b, $f9
    ld h, [hl]
    ld sp, hl
    ldh [$fb], a
    xor $f1
    ld [hl], $f9
    inc bc
    db $fd
    ld hl, $21df
    rst $18
    ld b, $f9
    inc d
    db $eb
    ld a, [de]
    db $e4
    ld e, $e0
    rra
    ldh [rNR31], a
    ldh [$59], a
    ldh [$39], a
    ret nz

    xor l

Jump_066_7ba5:
    ret nc

    and [hl]
    ret c

    inc hl
    call c, $db24
    jr @+$01

    ld e, [hl]
    cp a
    ld a, [hl]
    sbc a
    cpl
    rst $10
    jp $5317


    sub a
    ld l, e
    sub a
    ccf
    jp $ff83


    and c
    rst $18
    xor l
    db $d3
    ld l, $d1
    rra
    ldh [$5c], a
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [rDIV]
    ld hl, sp+$64
    sbc b
    jr nc, @-$32

    ret nc

    db $ec
    ld b, d
    db $fc
    pop hl
    cp $e0
    rst $38
    ld [hl], b
    rst $38
    sub b
    ld a, a
    ret nz

    ccf
    pop de
    ccf
    ld e, a
    cp a
    ld a, a
    cp a
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $18
    ccf
    rst $08
    sub a
    rst $28
    inc hl

Call_066_7c03:
    rst $18
    inc bc
    rst $38
    ld b, e
    rst $38
    ld bc, $85ff
    ld a, a
    ld c, $ff
    ld [$88ff], sp
    db $fc
    adc b
    cp $48
    cp e
    nop
    db $fd
    ld [$98fb], sp
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh [rP1], a
    db $e4
    ld h, b
    db $e4
    ldh a, [$fc]
    ld hl, sp-$0c
    ld e, b
    ldh a, [$09]
    ldh a, [$99]
    ldh [$84], a
    ld sp, hl
    ld l, b
    rst $38
    db $e4
    rst $38

jr_066_7c3c:
    rst $30
    rst $38
    ld a, [c]
    rst $38
    call nz, $e4fb
    ei
    ldh [$fb], a
    ld a, [c]
    ld sp, hl
    ld [c], a
    ld sp, hl
    pop hl
    ld hl, sp-$5f
    ld hl, sp-$2f
    cp b
    ld de, $21f8
    ld hl, sp+$70
    ld hl, sp+$30
    ld hl, sp-$50
    ld a, b
    sub b
    ld a, b
    adc b
    ld a, b
    adc h
    ld a, b
    adc b
    ld a, h
    add sp, $1c
    adc a
    ld a, h
    add l
    ld a, [hl]
    inc c
    ld a, a
    db $dd
    ccf
    rst $18
    ccf
    db $dd
    ccf

jr_066_7c70:
    cp a
    ld a, a
    cp a
    ld h, e
    ld hl, $21f1
    ret nc

    ld bc, $f1f0
    nop
    ldh a, [$91]
    ld hl, sp-$6f
    ld hl, sp+$1b
    ld hl, sp+$1f
    ld sp, hl
    inc e
    cp c
    ld l, h
    db $fd
    dec sp
    rst $38
    ld a, c
    rst $38
    ld e, c
    rst $38
    db $dd
    and d
    db $dd
    add e
    db $fc
    ld c, l
    or d
    rst $20
    jr c, jr_066_7c70

    jr c, @-$23

    inc a
    add b
    ld a, [hl]
    ld b, b
    cp a
    cp a
    ld a, l
    cp l
    ld a, b
    db $fc
    ld b, d
    sbc $62
    ld c, a
    jp nc, $9fc3

    jp $c395


    cp h
    ld [hl-], a
    add b
    sbc h
    add d
    jr jr_066_7c3c

    call nz, $d582
    ld [c], a
    ld a, [c]
    rst $38
    rst $38
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, b
    rst $38
    inc [hl]
    ld hl, sp+$36
    ld hl, sp+$35
    ld hl, sp+$74
    ld sp, hl
    ld [hl], $f9
    or [hl]
    ld a, c
    inc sp
    ld a, b
    db $76
    jr c, @-$27

    jr c, @-$2a

    add hl, sp
    ret nc

    dec a
    db $10
    db $fc
    ld [hl-], a
    db $fc
    or d
    db $fc
    ldh a, [$fc]
    ldh a, [$fc]
    add sp, -$0c
    add sp, -$0c
    ret c

    db $e4
    or b
    call z, $8cf0
    or b
    call z, $8c70

jr_066_7cf4:
    inc [hl]
    adc $94
    rst $08
    or a
    rst $08
    sub h
    rst $28
    add h
    rst $18
    add b
    sbc [hl]
    adc a
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    add c
    rst $38
    jp nz, $c2ff

    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc [hl]
    ld [hl], c
    add [hl]
    ld a, c
    ld h, [hl]
    ld sp, hl
    ld l, a
    ldh a, [$6f]
    ldh a, [rPCM12]
    ld sp, hl
    nop
    add c
    nop
    ld bc, $8100
    nop
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    and b
    ld b, b
    jr nz, jr_066_7cf4

    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ldh [$b1], a
    ldh [$91], a
    ldh [$90], a
    ld h, c
    ld [c], a
    ld sp, $11e3
    db $ec
    inc de
    ld c, h
    add e
    ld c, c
    add d
    rst $08

jr_066_7d4b:
    nop
    rst $08
    nop
    ld b, a
    add b
    nop
    rst $08
    add b
    db $dd
    ld [hl], b
    reti


    ld [hl], b
    di
    jr nz, jr_066_7d4b

    nop
    ld h, d
    nop
    ld h, e
    nop
    ld [bc], a
    add c
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    pop bc
    ld b, $7d
    add d
    dec l
    sbc $ab
    add $a6
    pop bc
    jp $c3e7


    db $e3
    pop bc
    db $e3
    pop bc
    ld h, e
    pop hl
    inc hl
    pop bc
    and e
    pop bc
    and c
    ret nz

    ld hl, $01c1
    pop bc
    ld bc, $0180
    add b
    add c
    add b
    add c
    add b
    ld b, c
    add b
    pop bc
    ret nz

    add c
    ld b, c
    add b
    pop bc
    add b
    add c
    ret nz

    and b
    pop bc
    push af
    db $e3
    push hl
    di
    ld a, b
    rst $30
    ld a, [$3e7f]
    rst $38
    ccf
    rst $38
    jp nz, $c23f

    ccf
    ld d, b
    ccf
    ld [hl], c
    ccf
    ld d, c
    ccf
    add hl, hl
    rra
    dec l
    rra
    ld [hl-], a
    dec c
    ld [hl], $09
    or a
    ld [$0de2], sp
    db $eb
    inc b
    cp $01
    scf
    ret z

    ld hl, sp-$03
    ld hl, sp-$42
    ldh a, [$fe]
    ld [hl], b
    cp $30
    sbc $3c
    sbc $fe
    ccf
    cp a
    rst $18
    ldh [$03], a
    ldh [rSB], a
    ld sp, $1101
    ld bc, $8940
    nop
    ei
    ld b, c
    ei
    ld hl, $2dfb
    di
    dec b
    di
    dec d
    db $e3
    sub e
    ld h, c
    ld h, d
    add c
    ld h, $c1
    cp h
    ld b, e
    ld a, $c1
    inc a
    jp Jump_066_639c


    inc l
    di
    ld a, b
    rst $30
    db $10
    rst $38
    ld c, c
    cp [hl]
    db $eb
    inc e
    jp Jump_066_713c


    sbc [hl]
    ld bc, $19fe
    and $4d
    or d
    ld a, l
    add d
    inc e
    db $e3
    sbc [hl]
    ld h, c
    sbc h
    ld h, e
    inc de
    ldh [$0d], a
    ldh a, [rHDMA3]
    db $fc
    ld a, l
    cp $4d
    cp $5c
    rst $38
    db $fc
    ld a, a
    rst $38
    ccf
    inc hl
    rst $18
    rst $20
    db $db
    ld l, e
    rst $10
    ld l, [hl]
    db $d3
    ld e, h
    db $e3
    ld e, l
    ld [c], a
    ld sp, hl
    ld h, [hl]
    ld l, c
    or $37
    ld h, b
    rlca
    ld [hl], b
    inc c
    ld [hl], e
    rra
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    ld e, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    rra
    cpl
    rra
    cpl
    rra
    dec a
    rra
    ccf
    rra
    cpl
    rra
    rrca
    rra
    ccf
    rrca
    ccf
    rrca
    cp a
    rrca
    ld h, $0f
    daa
    rrca
    ld b, $0f
    daa
    rrca
    ld b, $0f
    rlca
    rrca
    ld b, $0f
    rlca
    rrca
    ld b, $0f
    rlca
    rrca
    and a
    rrca
    xor $07
    ld a, a
    add a
    ld a, a
    add a
    ccf
    rst $00
    inc de
    rst $38
    rst $18
    ccf
    rst $28
    rra
    ld h, a
    sbc a
    rlca
    sbc a
    ld a, [de]
    add a
    ld e, e
    add a
    adc e
    rlca
    adc e
    rlca
    xor a
    inc bc
    xor e
    rlca
    cp e
    rlca
    sub c
    daa
    sub l
    inc hl
    or e
    ld bc, $03b0
    sub b
    inc bc
    or b

jr_066_7e9b:
    inc bc
    ret nc

    inc bc
    ret nc

    inc bc
    ldh a, [$03]
    ld a, [c]
    ld bc, $01f2
    or d
    ld bc, $01b6
    dec bc
    add c
    ld c, [hl]
    add c
    and b
    jp $c3b0


    ld [$cff1], a
    pop af
    ld sp, $7acf
    add a
    db $fd
    inc bc
    cp l
    inc bc
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    or b
    ld c, a
    jr nc, jr_066_7e9b

    cp h
    jp $81fe


    ld bc, $0080

Call_066_7ed3:
    add b
    ld b, c
    add b
    inc l
    ret nz

    inc e
    ldh [$9e], a
    ldh [$83], a
    db $ec
    pop de
    xor $f4
    ei
    cp b
    rst $38
    ld a, l
    cp $9e
    ld a, a
    sbc $3f
    xor a
    rra
    xor e
    rra
    sub e
    rrca
    cp d
    rlca
    ldh a, [rIF]
    ld a, [c]
    rrca
    or e
    ld c, a
    dec sp
    rst $08
    and b
    ld e, a
    xor b
    ld d, a
    cp l
    ld b, e
    dec e
    jp $835d


    cp $01
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
    nop
    rst $38
    inc b
    ei
    ld b, $f9
    rla
    ld hl, sp+$0b
    db $fc
    ld b, e
    db $fc
    ld l, c
    cp $a9
    cp $7f
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
    ccf
    ret nz

    ld [hl], d
    adc l
    adc l
    nop
    adc a
    nop
    rst $18
    nop
    ld [hl], l
    adc d
    ret c

    rst $38
    cp $ff
    db $e3
    rst $38
    and e

Jump_066_7f3f:
    rst $38
    sub b
    rst $38
    rrca
    rst $38
    cpl
    rst $18
    xor h
    rst $00
    xor c
    rst $00
    and e
    rst $00
    and h
    jp $c3a1


    ld hl, $22c3
    pop bc
    ld [hl+], a
    pop bc
    ld [hl+], a
    pop bc
    inc hl
    ret nz

    inc hl
    ret nz

    and e
    ld b, b
    ld [hl+], a
    pop bc

Call_066_7f60:
    db $dd
    db $e3
    sbc [hl]
    pop hl
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    ccf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, $c1
    ld a, a
    add b
    ld a, $c1
    ld a, [hl]
    add c
    ld c, [hl]
    or c
    rra
    ldh [$0b], a
    db $f4
    sbc [hl]
    pop hl
    ld hl, $7180
    add b
    ld b, e
    add b
    ld l, e
    add b
    ld l, a
    add b
    ld [hl], c
    add b
    and a
    ret nz

    daa
    ret nz

    scf
    ret nz

    or a
    ret nz

    push hl
    ret nz

    xor a
    ret nz

    add a
    ldh [$dd], a
    ldh [$d7], a
    add sp, -$5d
    call c, $d9a6
    db $fc
    pop bc
    db $fd
    ret nz

    cp h
    pop bc
    adc b
    pop de
    sbc b
    pop bc
    ld a, [$9e81]
    pop bc
    rst $18
    add b
    rst $08
    add b
    jp $a38c


    call z, $f8e7
    set 6, h
    ld d, a
    ld hl, sp+$53
    db $ec
    sbc h
    ld h, e
    db $f4
    inc bc
    call c, $dd03
    inc bc
    jp z, $f805

    rlca
    db $fc
    inc bc
    ldh a, [rIF]
    rlca
    rst $38
    ld bc, $25ff
    db $db
    and d
    ld e, a
    and d
    ld e, a
    db $ec
    rra
    call z, $983f
    ld a, a
    ld h, $18
    xor $10
    adc $30
    adc [hl]
    ld [hl], b
    xor h
    ld [hl], b
    inc l
    ldh a, [$ac]
    ldh a, [$e9]
    ldh a, [$e9]
    ldh a, [$e1]
    ldh a, [$71]
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
