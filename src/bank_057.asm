SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    ld e, a
    and b
    rra
    ldh [rTAC], a
    sbc b
    cpl
    jr nc, jr_057_4018

    ldh [$0d], a
    ld a, [$fc0b]
    rlca
    ret nz

    rrca
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_057_4018:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    ld bc, $00fc
    ld [hl], c
    add c
    rst $08
    xor a
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $ceff
    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    add hl, bc
    rst $38
    nop
    rst $18
    ld c, $f9
    sbc h
    ld a, a
    inc e
    rst $38
    inc c
    rst $38
    ld l, $fd
    rla
    rst $38
    ld [hl], $ff
    ld [hl], l
    rst $38
    ld h, e
    rst $38
    ld [hl], a
    ei
    ldh a, [$7b]
    ldh [rPCM34], a
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    inc e
    rst $38
    adc [hl]
    rst $38
    rst $00

jr_057_406f:
    rst $38
    ld [c], a
    rst $38
    ld a, [hl]
    rst $38
    ei
    rst $38
    ld a, h
    rst $38
    ld a, e
    rst $38
    ld d, a
    rst $38
    adc c
    rst $38
    ld e, l
    rst $38
    call $ddff
    rst $38
    ld a, [$5dff]
    rst $38
    jp hl


    rst $38
    ld a, c
    rst $38
    xor b
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, [hl]
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    dec e
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $ff
    ccf
    rst $38
    ld a, a

jr_057_40c5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_057_40cb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, h
    sub e
    add hl, sp
    add $3c
    ret nz

    ld hl, sp-$07
    nop
    adc h
    inc bc
    add e
    ld [bc], a
    dec de
    ld b, $f7
    rlca
    rst $00
    ret nz

    jr nz, jr_057_406f

    ld h, b
    ld [hl+], a
    and d
    jr nc, jr_057_4128

    inc c
    ret nz

    inc bc
    inc bc
    ld [hl], b
    rrca
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rst $20
    db $10
    sub b
    ld [hl], e
    add b
    ld b, c
    ldh a, [$08]
    rst $38
    nop
    rst $08
    jr nc, jr_057_40c5

    ld b, h
    cp h
    ld b, b
    ret nc

    cpl
    ld a, e
    add h
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    ld bc, $11ec
    rst $08
    cpl
    rrca
    rst $28
    dec b
    rst $38
    ld h, c
    rst $38
    ld a, c
    rst $38
    ld a, l
    rst $38

jr_057_4128:
    ccf
    rst $38
    rra
    rst $38
    cpl

jr_057_412d:
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
    ld hl, sp-$01
    db $fc
    di
    db $fc
    db $e3
    rst $10
    rst $38
    dec b
    rst $38
    ld bc, $89ff
    rst $38
    ld c, b
    rst $38
    ld a, [bc]
    db $ed
    jr z, jr_057_412d

    inc l
    rst $18
    adc b
    rst $38
    ld d, b
    rst $38
    adc b
    rst $38
    push de
    rst $38
    cp d

jr_057_4159:
    rst $38
    or c
    rst $38
    jp z, $11b7

    rst $38
    jr c, jr_057_4159

    jr nc, @+$01

    db $76
    cp e
    dec a
    rst $38
    sbc e
    rst $28
    call $eaff
    rst $38
    rst $38
    rst $28
    and [hl]
    rst $38
    db $dd
    rst $38
    cp c
    rst $38
    ld a, a
    rst $38
    ld a, d
    rst $38
    ld [hl], l
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld de, $0aff
    rst $38
    sbc l
    rst $38
    adc e
    rst $38
    push de
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    cp $e0
    ld l, l
    ld [bc], a
    add hl, hl
    ld [bc], a
    nop
    sbc [hl]
    ld bc, $018e
    inc c
    ld [$c00a], sp
    dec sp
    add hl, sp
    ld b, b
    jr nz, @+$24

    jr nc, jr_057_4212

    rrca
    nop
    rrca
    nop
    ld [$cc17], sp
    jp $2ccb


    inc bc
    call nz, $8101
    adc a
    rrca
    ld h, h
    db $e4
    ret nz

    ret nz

    ld b, b
    call nz, Call_057_7170
    rlca
    adc b
    rst $00
    ld [$0003], sp
    ld bc, $a402
    inc bc
    rrca
    inc bc
    ccf
    inc bc
    ccf
    rrca
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_4212:
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
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld bc, $92fe
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $18
    ld bc, $89ff
    rst $38
    res 3, a
    rrca
    rst $38
    rrca
    cp $0e
    rst $38
    push de
    cp a
    xor [hl]
    rst $38
    ld [hl], $ff
    ld a, [hl-]
    rst $38
    jr nc, @+$01

    ldh a, [$33]
    ld [hl], b

jr_057_424f:
    or c
    jr nc, jr_057_424f

    inc a
    db $fd
    ld a, h
    rst $38
    ld a, $fd
    ld a, [de]
    rst $38
    sub c
    rst $38
    rst $08
    rst $38
    rst $20
    rst $18
    cp e
    rst $38
    ld [hl], h
    rst $38
    ld a, [$fcff]
    rst $38
    ld a, [$5bff]
    rst $38
    cp e
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    ld d, l
    rst $38
    ld a, [$f3ff]
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    inc d
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    and b
    rst $38
    nop
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld [$e8ff], a
    rst $38
    cp $ff
    db $fc
    rst $38
    adc $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    call $fdff
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

jr_057_42c2:
    rst $38
    rst $38
    sbc a
    sbc a
    dec b
    nop
    nop
    nop
    ld c, $00
    jr nc, jr_057_42d6

    ldh [rP1], a
    db $10
    ld c, $00
    sbc [hl]
    add b
    ld b, e

jr_057_42d6:
    inc b
    db $e4
    inc b
    add h
    add a
    ld l, b
    ld h, e
    sbc h
    pop hl
    jr jr_057_42c2

    nop
    nop
    ret c

    nop
    ret nz

    ld [hl], b
    adc b
    ldh a, [rP1]
    add b
    ld b, b
    and b
    and b
    add b
    add b
    nop
    nop
    inc de
    jr nz, jr_057_430e

    ld h, $98
    ld h, [hl]
    inc de
    db $eb
    rst $38
    rrca
    rst $38
    ccf
    ld a, a
    ld a, a
    add l
    rst $38
    add c
    rst $38
    pop de
    rst $38
    push de
    rst $38
    rst $30
    rst $38
    rst $30

jr_057_430b:
    rst $38
    rst $30
    rst $38

jr_057_430e:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    pop bc
    cp $04
    ei
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [rNR10]
    rst $28
    nop
    rst $38
    jr nz, jr_057_430b

    ret nz

    ccf
    reti


    ld h, $03
    rst $38
    ld bc, $01ff
    xor $22
    reti


    inc c
    rst $18
    rra
    rst $38
    rrca
    rst $38
    ld l, $ff
    ld c, [hl]
    cp a
    and a
    ld a, a
    daa
    rst $38
    db $76
    rst $38
    ld a, c
    cp $6a
    db $fd
    ld h, h
    ei
    ld h, l
    ld a, [$fdfa]
    ld a, b
    rst $38
    cp a
    ld hl, sp+$39
    cp $b2
    ld a, l
    ret c

    db $f4
    sbc d
    db $e4
    jp nz, $a0bd

    db $eb
    ld h, b
    rst $38
    db $fc
    rst $38
    push bc
    rst $38
    ld e, a
    rst $38
    db $d3
    rst $38
    sbc d
    rst $38
    ld d, e
    rst $38
    xor [hl]
    ei
    ld b, c
    rst $38
    add d
    rst $38
    pop hl
    rst $18
    add d
    rst $38
    ld d, c
    rst $38
    ld c, $ff
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    jr nz, @+$01

    nop
    rst $38
    sbc h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld h, e
    rst $38
    and [hl]
    rst $38
    rst $30
    rst $38
    inc sp
    rst $38
    ld de, $99ff
    rst $38
    rra
    rst $38
    ld a, d
    add a
    rst $38
    ret nz

    rst $30
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    db $fd
    cp $ff
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $f4
    ld hl, sp+$5f
    and b
    cp $00
    inc de
    jr nz, @+$42

    jr c, jr_057_4444

    ld [$4837], sp
    ldh a, [$f0]
    inc hl
    xor e
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    ld bc, $00ff
    ei
    inc b
    add [hl]
    db $76
    ld a, [c]
    ld a, [bc]
    cp $01
    ccf
    ld b, b
    sub c
    xor [hl]
    nop
    rrca
    inc c
    inc de
    inc e
    inc bc
    cpl
    jr nz, jr_057_442b

Jump_057_43ef:
    inc sp
    push af
    dec bc
    rst $38
    rlca
    rst $18
    rlca
    sbc a
    ccf
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$cf]
    ld a, b
    add a
    ld hl, sp+$07
    db $fc
    inc bc
    sbc [hl]
    ld h, c
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    di
    inc c
    ld a, [$fc05]
    inc bc
    ld a, [hl]
    add c
    ld a, a

jr_057_442b:
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    di
    push hl
    ld a, [$f22f]
    inc de
    ldh [rDMA], a
    cp c
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    ld c, c
    or $e1
    cp $bd
    ld a, [c]

jr_057_4444:
    jr z, @+$57

    nop
    sbc h
    jr nz, jr_057_4453

    cpl
    jr jr_057_446c

    sbc b
    inc b
    ld sp, hl
    ld b, [hl]
    or c
    ld [de], a

jr_057_4453:
    db $ed
    rst $18
    ld [hl], b
    db $76
    ld sp, hl
    db $e3
    db $f4
    rst $28
    db $e3
    jp z, $f8f7

    cp $7d

jr_057_4461:
    cp $bf
    ld a, a
    ld e, l
    cp e
    ld e, l
    cp e
    ld a, a
    adc a
    db $e4
    rst $38

jr_057_446c:
    cp l
    cp $7f
    rst $38
    or e
    rst $38
    ld a, a
    di
    xor h
    ei
    ld [hl], a
    ei
    dec sp
    rst $38
    dec e
    rst $38
    inc c
    rst $38
    ld e, l
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $e3
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, h
    rst $38
    sub e
    ld a, a
    cp $0f
    rst $30
    rrca
    or $0f
    dec bc
    db $fc
    cp e
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$02
    ld hl, sp-$04
    pop bc
    ldh a, [$c8]
    jp nz, Jump_000_0300

    nop
    rlca
    nop
    ld h, $24
    inc d
    add b
    cp b
    nop
    jr jr_057_44cf

    dec e
    inc de

jr_057_44cf:
    inc l
    dec a
    ld b, e
    add b
    cp [hl]
    inc bc
    sbc h
    rla
    ret nc

    ld [bc], a
    add e
    ld a, l
    cp $6f
    ld [hl], b
    rra
    jr nz, jr_057_4461

    nop
    inc e
    nop
    halt
    inc bc
    nop
    ld [hl-], a
    nop
    inc a
    inc bc
    xor b
    rla
    nop
    rst $38
    add d
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$3e], a
    pop bc
    db $76
    adc c
    ld c, a
    or b
    rrca
    ldh a, [rTMA]
    ld sp, hl
    inc hl
    call c, $8778
    and b
    ld e, a
    ret nz

    ccf
    rst $28
    db $10
    ld l, h
    ld e, $7f
    sbc [hl]
    rrca
    cp [hl]
    ld l, [hl]
    dec c
    db $e4
    rra
    dec [hl]
    ld c, [hl]
    ld [hl], d
    adc l
    ld h, e
    sbc a
    add $ff
    jp hl


    cp $f2
    db $ed
    pop hl
    rst $38
    rst $30
    jp hl


    ld a, [c]
    rst $08
    jp c, $d0ff

    rst $38
    ld [hl-], a
    rst $38
    rst $38
    ld a, [hl]
    ld [hl], d
    cp h

jr_057_4556:
    jr nc, jr_057_4556

    add b
    inc [hl]
    ld [de], a
    add b
    ld [de], a
    ret nz

    ld d, $e1
    ld h, c
    jp z, $fc83

    and $f9
    call $fff7
    rst $30
    rra
    rst $30
    xor [hl]
    rst $30
    rst $38
    rst $30
    xor [hl]
    rst $30
    db $dd
    rst $30
    ld d, [hl]
    cp a

jr_057_4576:
    ld e, a
    rst $38

jr_057_4578:
    cp [hl]
    rst $38
    ld c, l
    rst $38
    adc l
    rst $38
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    sbc b
    rst $38
    db $fc
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $7e
    cp $7e
    rst $38
    xor [hl]
    ld e, a
    rst $38
    inc bc
    ld sp, hl
    rlca

jr_057_45b4:
    daa
    add a
    rlca
    adc a
    rlca
    rst $18
    ld d, a
    rst $10
    nop
    rra
    nop
    ccf
    inc a
    cp l
    ccf
    rst $38
    dec de
    sbc e
    ld de, $c55d
    jp c, Jump_000_201f

    jr jr_057_45b4

    jr jr_057_4576

    dec c
    ld [bc], a
    inc c
    dec c
    sbc b
    ld e, b
    jr nz, jr_057_4578

    nop
    ret nz

    ret nz

    ld [hl-], a
    ld a, [$ff05]
    nop
    nop
    nop
    rlca
    nop
    rrca
    inc bc
    sbc a
    inc bc
    cp a
    ld b, a
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
    db $fc
    rst $38
    xor d
    db $fd
    call nz, $fc3b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    db $f4
    dec bc
    ldh a, [rIF]
    ldh [$1f], a
    ld a, $c1
    ccf
    ret nz

    sbc a
    ld h, b
    db $e3
    inc e
    inc hl
    call c, $fc03
    ret nz

    ccf
    db $e4
    dec de
    add sp, $17
    db $fc
    inc bc
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [$0cf7], sp
    di
    ld c, a
    cp a
    rra
    cp a
    rst $38
    rrca
    rra
    rra
    ld l, a
    sbc a
    call nc, Call_000_1d6f
    db $ec
    or h
    adc e
    jr nc, @+$08

    jp nz, $7804

    ld [bc], a
    ld h, h
    ld b, $bf
    rlca
    rra
    rst $20
    ld [hl+], a
    rlca
    ld l, $13
    dec sp
    inc b
    ld b, $fb
    ld [hl], b
    rst $38
    cp $71
    ldh a, [rSVBK]
    ld h, b
    ld sp, hl
    db $ec
    ld a, a
    ld e, $ff
    ld e, [hl]
    cp a
    dec e
    cp [hl]
    ld a, [hl+]
    sbc l
    call $9a9f
    push hl
    rst $38
    ldh a, [$f4]
    ei
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, a
    ei
    inc a
    ei
    db $fc
    jp $dfb8


    ld [hl], l
    db $db
    adc e
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    db $fc
    add e
    cp $c1
    ld a, l
    add e
    rst $20
    ld hl, sp-$1d
    rst $38
    cp e
    ld a, a
    scf
    rrca
    inc bc
    ret nz

    ldh a, [$fc]
    rst $38
    rst $38
    cp a
    ld a, a
    dec de
    rlca
    add b
    ldh [$bc], a
    rst $38
    cp c
    ld a, a
    scf
    rrca
    ld b, $41
    ld [hl], b
    ld a, b
    ld e, a
    ccf
    dec sp
    dec b
    rlca
    ld b, b
    ld hl, sp-$08
    cp a
    rst $38
    rra
    rst $38
    rrca
    adc a
    ld c, e
    ld [hl], a
    ld [bc], a

jr_057_46c5:
    ld a, $00
    ccf
    jr jr_057_46c5

    adc a
    ld l, a
    sbc a
    sbc a
    cp [hl]
    cp [hl]
    ld [bc], a
    ld bc, $010e
    ld [bc], a
    nop
    ld [bc], a
    nop
    scf
    nop
    sbc e

jr_057_46db:
    rlca
    daa

jr_057_46dd:
    rra
    ccf

jr_057_46df:
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    ld h, b
    sbc a
    jr nz, jr_057_46db

    jr nz, jr_057_46dd

    jr nz, jr_057_46df

    ret nz

    ccf
    jp $013c


    cp $10
    rst $28
    ld a, [hl-]
    push bc
    ld a, a
    add b
    ld a, h
    add e
    ld a, [hl]
    add c
    rst $38
    nop
    db $fc
    inc bc
    cp h
    ld b, e
    sbc h
    ld h, e
    call c, $dc23
    inc hl
    db $fd
    ld [bc], a
    sbc l
    ld h, d
    inc e
    db $e3
    ld c, $f1
    inc c
    di
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    or $00
    rst $38
    inc b
    ei
    pop bc
    ret z

    adc c
    ret c

    add c
    call z, $ff82
    and e
    db $d3
    inc hl
    jp $a303


    inc bc
    or e
    inc hl
    inc de
    inc bc
    inc bc
    rlca
    inc bc
    ld h, $07
    inc bc
    rlca
    ld c, $81
    ld h, $c1
    inc bc
    ld b, c
    pop bc
    ld sp, $7984
    adc e
    db $10
    ret z

    inc e
    ld a, c
    db $fc
    ld c, b
    cp d
    ld a, [bc]
    rla
    dec bc
    scf
    rst $28
    inc de
    set 7, a
    rst $38
    rst $38
    di
    rst $38
    db $eb
    ld a, l
    dec bc
    ld a, a
    xor a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    db $dd

jr_057_4778:
    ldh [rIE], a
    db $eb
    rst $30
    ldh [rIE], a
    db $e3
    rst $38
    db $e3
    rst $38
    xor c
    rst $30
    adc c
    rst $30

jr_057_4786:
    and c
    rst $38
    nop
    rst $38
    inc c
    di
    ld a, l
    add d
    ld a, a
    add b
    ld a, l
    add d
    rst $38
    nop
    cp a
    ldh [$57], a
    xor h
    rlca
    rst $38
    xor $ff
    rst $30
    rst $30
    ld [hl], a
    rst $30
    scf
    rlca
    rlca
    rst $00
    rst $30
    rst $30
    rst $30
    rst $30
    ld h, a
    rla
    rlca
    add a
    add a
    ld [hl], a
    ld l, a
    adc a
    rst $08
    rst $28
    ld l, a
    rrca
    rrca
    adc a
    rst $28
    rst $28
    xor a
    ld l, a
    ld c, a
    ld l, $8f
    adc b
    rst $08
    ldh [$96], a
    pop af
    db $d3
    db $f4
    ld [hl], b
    ld [hl], b
    jr nc, jr_057_4778

    jr nc, jr_057_47fa

    ldh a, [$f0]
    ld d, b
    ld e, b
    ld [de], a
    ld a, [de]
    inc e
    inc bc
    rrca
    rlca
    ld l, a
    rra
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
    db $fc
    rst $38
    ldh a, [$e3]
    db $fc
    pop bc
    cp $06
    ld sp, hl
    inc b
    ei
    ld bc, $07fe
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    ld [hl], e

Jump_057_47f9:
    adc h

jr_057_47fa:
    dec de
    db $e4
    inc bc
    db $fc
    add a
    ld a, b
    rst $00
    jr c, jr_057_4786

    ld a, h
    ld sp, hl
    ld b, $3f
    ret nz

    inc bc
    db $fc
    rlca
    ld hl, sp-$79
    ld a, b
    rst $20
    jr @-$1e

    rra
    ldh a, [rIF]
    ldh a, [rIF]
    di
    inc c
    sbc e
    ld h, h
    add e
    ld a, h
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    ld b, e
    cp h
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld e, $e1
    ld b, $f9
    ld [bc], a
    db $fd
    ld a, e
    add h
    db $fd
    ld e, $33
    call c, Call_000_1fc0
    sub e
    ld l, a
    and a
    db $db
    pop hl
    add a
    adc a
    jp $c39f


    sub e
    add e
    add e
    inc bc
    dec bc
    add a
    jp z, $cc4f

    adc $fe
    db $fd
    cp h
    cp $fc
    cp $de
    db $fc
    sbc b
    call z, $8932
    ld h, e
    sbc e
    ld b, e
    pop af
    jr nz, jr_057_48a3

    ld d, $2d
    ld e, [hl]
    dec l
    dec sp
    add c
    ld bc, $0183
    db $e3
    call $febc
    cp a
    cp a
    cp $3e
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    ld [$ff00], a
    ld a, $ff
    xor [hl]
    ld a, a
    cp h
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    call nz, $ecff
    rst $38
    inc b
    rst $38
    adc b
    ld [hl], a
    adc a
    ld [hl], b
    inc de
    inc c
    add [hl]
    nop
    pop af
    ld c, $7f
    ret nz

    rst $38
    ldh a, [$b7]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    sub $cc

jr_057_48a3:
    rst $38
    ei
    db $fd
    rst $30
    ld sp, hl
    ld sp, hl
    rst $30
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
    ld sp, hl
    cp $fe
    rst $38
    adc a
    ld a, a
    pop hl
    rra
    nop
    ld bc, $0001
    inc bc
    nop
    add $03
    ld a, c
    add a
    ld a, a
    add a
    cp e
    ld c, a
    sub e
    ld l, a
    rra
    rst $28
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
    rst $30
    rst $38
    jp nz, $f1fd

    adc [hl]
    dec sp
    call nz, $ec13
    sub b
    ld l, a
    and b
    ld e, a
    add c
    ld a, [hl]
    inc de
    db $ec
    ld a, e
    add h
    db $d3
    inc l
    db $e3
    inc e
    ld sp, hl
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rra
    ldh [rNR34], a
    pop hl
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    rst $38
    nop
    sbc a
    ld h, b
    inc a
    jp $c03f


    dec a
    jp nz, $e619

    rrca
    ldh a, [$03]
    db $fc
    ld de, $09ee
    or $09
    ld a, h
    ld c, h
    cp h
    ret nz

    cp h
    ld [$88dc], sp
    inc e
    adc b
    jr jr_057_4945

    jr jr_057_4947

    jr @+$1a

    jr jr_057_495b

    ld a, [de]
    inc c

jr_057_4945:
    ld a, $1e

jr_057_4947:
    ld l, $0b
    ld a, $08
    ld e, $0c
    inc c
    ld c, $cd
    rrca
    sbc a
    rlca
    rst $08
    ld hl, $c5c7
    jp $c0c1


    ld [bc], a

jr_057_495b:
    or e
    ld a, [hl-]
    di
    ld [hl-], a
    ei
    ld b, $f9
    add b
    rst $38
    sbc e
    rst $38
    jp $e7ff


    set 0, e
    rst $38
    ld [hl], a
    ei
    ld [hl], a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $fd
    ld [bc], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $30
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld bc, $c1ff
    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp $fb7f


    rst $00
    and e
    pop bc
    rst $38
    ldh [$d1], a
    cp $db
    rst $30
    rst $38
    ccf
    rst $10
    add hl, sp
    ld a, [$f3fd]
    rst $38
    ei
    rst $00
    rst $38
    rst $00
    rst $30
    rst $28
    rst $20
    rst $38
    rst $28
    cp $fe
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    call nc, $f6ff
    rst $38
    add $fb
    ld [hl], a
    adc e

jr_057_49c2:
    ld c, a
    or a
    ld c, [hl]
    rst $38
    ld a, a
    db $fd
    ld a, a
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
    ld sp, hl
    rst $38
    ldh [rIE], a
    ld b, b
    cp a
    jp z, Jump_000_1f35

    ldh [$1f], a
    ldh [rSCX], a
    cp h
    adc b
    ld [hl], a
    ld c, $f1
    adc [hl]
    ld [hl], c
    ret nz

    ccf
    ret nz

    ccf
    rst $18
    jr nz, jr_057_49c2

    jr nc, @-$37

    jr c, jr_057_4a57

    sbc a
    ld [$1df7], sp
    ld [c], a
    ld e, [hl]
    and c
    adc $31
    add c
    ld a, [hl]
    inc bc

jr_057_4a03:
    db $fc
    dec c
    ld a, [c]
    add [hl]
    ld a, c
    ld b, b
    cp a
    and b
    ld e, a
    or d
    ld c, l
    or c
    ld c, [hl]
    add e
    ld a, h
    add c
    ld a, [hl]
    nop
    rst $38
    ld b, b
    cp a
    ld a, [bc]
    push af
    jr jr_057_4a03

    ccf
    ret nz

    cp a
    ld b, b
    db $fc
    inc bc
    inc e
    db $e3
    inc e
    db $e3
    inc c
    di
    inc c
    di
    adc l
    ld [hl], d
    call c, $de23
    ld hl, $0f1f
    rra
    rra
    ld c, $1f
    ld c, a
    rlca
    ld l, c
    scf
    ccf
    ld a, c
    ld [hl], a
    dec bc
    daa
    inc de
    jp $c101


    ld hl, $01f9
    ld c, e
    inc bc
    ld b, c
    ld c, $80
    ld a, b
    ld hl, sp-$10
    ldh a, [$f0]
    ld hl, sp-$1c
    add sp, -$1a
    and d
    sub $9e

jr_057_4a57:
    rst $38
    ld a, a
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    add hl, bc
    cp $80
    adc a
    and a
    rra
    ld h, h
    cp e
    pop af
    cp $b8
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIF]
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $fd
    cp $fd
    cp $fb
    db $fc
    db $ed
    ld a, [$60ff]
    ei
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc $39
    cp $11
    db $fd
    inc de
    rst $38
    db $db
    rst $28
    rst $38
    rst $38
    add a
    ld sp, hl
    add [hl]
    sbc $e1
    db $fd
    ld a, [hl]
    cp $3f
    jp hl


    rra
    rst $38
    ld [$bb7c], sp
    rst $30
    cp $f3
    rst $28
    cp a
    ei
    ld c, a
    cp a
    ld a, a
    adc a
    adc $ff
    rst $38
    rst $28
    rst $38

jr_057_4ad1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    jr c, @+$01

    ld e, a
    cp l
    jp $c73c


    jr c, jr_057_4aee

    ld hl, sp+$26
    reti


    ld a, e
    add h
    ld a, d
    add l

jr_057_4aee:
    ld [hl], b
    adc a
    jr nz, jr_057_4ad1

    add c
    ld a, [hl]
    db $dd
    ld [hl+], a
    ret nz

    ccf
    adc h
    ld [hl], e
    call z, Call_057_6f33
    sub b
    ld b, a
    cp b
    ld h, e
    sbc h
    inc sp
    call z, Call_057_7d82
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
    ld c, b
    or a
    adc h
    ld [hl], e
    rlca
    ld hl, sp+$22
    db $dd
    ld sp, $3fce
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    ld bc, $58fe
    and a
    ld b, b
    cp a
    rlca
    ld hl, sp+$13
    db $ec
    dec de
    db $e4
    nop
    rst $38
    ld [$38bf], sp
    ld a, b
    dec e
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $e3
    db $e3
    pop hl
    ld b, e
    ldh [rLCDC], a
    and $6e
    ld d, h

jr_057_4b4e:
    db $76
    ld a, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, h
    nop
    dec [hl]
    inc bc
    dec h
    add d
    xor $84
    ld a, [$8e81]
    add b
    rst $08
    rst $00
    rst $28
    adc a
    rst $38
    rrca
    rst $38
    rlca
    cp $0e
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_4b74:
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    cp l
    ld a, a
    db $fc
    ld a, a
    ld a, b
    rst $38
    ld l, b
    di
    ld e, e
    rst $20
    cp $ff
    rst $18
    jr c, jr_057_4b74

    jr c, jr_057_4b4e

    ld [hl], b
    ld [hl], a
    ld hl, sp-$01
    rst $28
    push af
    rst $28
    rst $38
    ld a, a
    ld a, a
    rst $38
    or a
    ld a, a
    rst $38
    rst $20
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    scf
    ld [hl], c
    sbc a
    cp [hl]
    ld h, c
    cp l
    ld [hl], d
    ei
    cp $fb
    rst $38
    rst $30
    ld l, e
    adc $71
    sub $ed
    db $db
    cp $c3
    ld bc, $e0c0
    ld hl, sp-$08
    db $fd
    ld hl, sp-$01
    db $fd
    sbc a
    rst $38
    sbc a
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
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    inc b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld e, $e1
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    ld a, $c1
    add hl, de
    and $f3
    inc c
    db $e3
    inc e
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$03], a
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    pop de
    ld l, $83
    ld a, h
    adc l
    ld [hl], d
    adc h
    ld [hl], e
    add h
    ld a, e
    ldh [$1f], a
    or [hl]
    ld c, c
    ld a, h
    add e
    ld c, a
    or b
    inc bc
    db $fc
    or d
    ld c, l
    and b
    ld e, a
    ld h, [hl]
    sbc c
    ret nc

    ld hl, sp-$1f
    db $fc
    ret


    db $fc
    db $e4
    ret c

    ld hl, sp-$20
    ld l, h
    jp nz, $92cc

    sbc b
    add $80
    add a
    add b
    rst $00
    adc c
    rst $00
    jp $0b17


    scf
    add hl, sp
    ccf
    ld a, l
    ccf
    ld a, a
    ccf
    dec e
    ccf
    ld [hl], b
    add hl, de
    and l
    di
    add hl, hl
    di
    jr c, jr_057_4cd1

    ld [hl], h
    ld a, e
    di
    ld a, a
    rst $30
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
    cp $ff
    call c, $d8ff
    rst $38
    sbc b
    rst $38
    cp $ff
    ld a, a
    cp $fd
    cp $61
    sbc [hl]
    rst $38
    nop
    ld a, [$ff01]
    nop
    cp a
    inc b
    cp a
    adc $7f
    rst $38
    ei
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $30
    add sp, -$29
    add sp, -$01
    ldh [rIE], a
    ld hl, sp-$01
    rst $08
    xor $ff
    rst $38
    ld e, $57
    xor $e2
    rst $38
    db $db
    rst $20
    ld a, a
    rst $38
    ccf
    di
    rst $38
    ld sp, $21df
    ld e, e
    and l
    rst $38
    rra
    dec c
    nop
    add b
    nop
    ld d, b

jr_057_4cd1:
    add b
    ld hl, sp-$20
    or $e4
    db $e4
    db $ec
    jp z, $ffed

    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    cp [hl]
    ld b, c
    call c, $7f23
    add b
    di
    inc c
    rst $18
    jr nz, @-$4f

    ld d, b
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$47
    cp b
    rst $20
    jr jr_057_4d15

    db $fd
    and b

jr_057_4d15:
    ld e, a
    ld a, [hl-]
    push bc
    jp $e13c


    ld e, $38
    rst $00
    inc e
    db $e3
    inc de
    db $ec
    ld b, a
    cp b
    ld c, e
    or h
    inc bc
    db $fc
    jp nz, $f03d

    rrca
    rst $38
    nop
    rst $00
    jr c, jr_057_4d31

jr_057_4d31:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_057_4d64

    ld a, [de]
    dec de
    ld c, $0e
    ld c, $1c
    dec e
    ld e, $1f
    jr nz, jr_057_4d77

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld c, $0e
    ld c, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_057_4d64:
    dec l
    ld l, $2f
    jr nc, jr_057_4d9a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld c, $0e
    ld [hl], $37
    jr c, jr_057_4dac

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_057_4d77:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, $44
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
    ld c, $53
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

jr_057_4d9a:
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_057_4dac:
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
    ld c, $e3
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
    jr nz, jr_057_4e7f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_057_4e8f

    ld c, $0e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_057_4ea1

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    nop

jr_057_4e7f:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop

jr_057_4e8f:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a

jr_057_4ea1:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc

Call_057_4ebc:
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
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
    ld bc, $0101
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0601
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0601
    ld b, $06
    ld bc, $0707
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld b, $06
    rlca
    rlca
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $01
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $09
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0d
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec c
    dec bc
    dec bc
    dec bc
    sbc l
    rst $08
    dec bc
    ld [hl], a
    dec de
    rst $38
    add hl, sp
    ld e, a
    ld c, [hl]
    jr c, jr_057_4fe8

    ld e, $8c
    rst $18
    adc h
    call $cfcc
    inc b
    ld c, $16
    rrca
    daa
    adc a
    rlca
    rrca
    xor l
    inc bc
    ld e, $0d
    sub l
    rrca
    ld d, c
    adc a
    call nc, $e0eb
    db $fc
    ld [hl], b
    db $fc
    ld [hl], b
    rst $38
    ld [hl], a
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    ld d, c
    dec a
    ret


    dec a
    ld l, c
    rra

jr_057_4fe8:
    dec bc
    ld a, a
    dec bc
    rst $38
    call $e5ff
    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    ld a, h
    rst $38
    ld [hl], l
    rst $38
    ld l, h
    ld a, a
    ld [hl], a
    cp $6a
    rst $38
    ld [hl], $7f
    cp $ff
    ld hl, sp-$01
    ld e, a
    and b
    ld sp, hl
    rlca
    rst $28
    rra
    ld c, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    rst $00
    ccf
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    pop af
    rrca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld d, c
    ccf
    ld a, e
    rst $38
    cp b
    ld b, a
    inc c
    di
    add b
    ld a, [hl]
    nop
    cp $40
    cp $74
    ld hl, sp+$31
    ret nz

    scf
    ret z

    rla
    add sp, $1d
    ldh [$80], a
    ld a, [hl]
    add d
    ld a, l
    sbc b
    ld h, a
    ld [hl], e
    rrca
    ld c, $3f
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    ld a, a
    rst $28
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
    ld a, a
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
    rst $08
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
    rst $38
    rst $38
    rst $38
    xor $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $30
    rst $08
    cp $0d
    cp $32
    sbc $1e
    call z, $bc4f
    ld a, a
    adc [hl]
    ld e, [hl]

Call_057_50af:
    adc a
    add e
    ld c, a
    add d
    ld c, $04
    ld [$8c09], sp
    and l
    ld c, $27
    add [hl]
    dec l
    sbc [hl]
    sub l
    adc [hl]
    ret nc

    xor $f0
    rst $08
    jr z, jr_057_513b

    inc a
    pop af
    ld hl, $14fe
    ld a, a
    ccf
    sbc $1f
    rst $38
    rla
    rst $28
    add e
    rst $38
    or e
    db $fd
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $76
    cp a
    ld [de], a
    ei
    ld de, $7bbf
    sbc a
    rst $30
    rst $38
    ld a, [$f6ff]
    rst $38
    ld a, [$cdff]
    cp $43
    db $fc
    ld a, h
    add e
    rst $00
    ccf
    rst $08
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ret nz

    rst $38
    jr nz, @-$1f

    jr @+$01

    ld [hl], c
    cp $01
    cp $85
    ld a, [$ff80]
    nop
    rst $38
    ld b, b
    add e
    ld bc, $0400
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0718
    add b
    ld a, a
    inc bc
    rst $38
    rrca
    ld a, a
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_513b:
    rst $38
    rst $38
    rst $38
    rst $38
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
    and $fb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ei
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
    db $fd

jr_057_5163:
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
    dec bc
    ccf
    jr c, jr_057_5163

    xor l
    ld a, a
    ld a, l
    rst $38
    ld a, l
    ccf
    ld a, h
    ccf
    inc a
    ld a, a
    inc a
    db $fc
    dec a
    ld a, h
    inc e
    inc a
    ld a, [de]
    ld a, h
    dec sp
    ld a, a
    sbc a
    ccf
    rrca
    ld a, a
    scf
    ld a, a
    ld [hl], e
    ccf
    rlca
    ld a, a
    inc bc
    rst $38
    add e
    rst $30
    rst $10
    and e
    add c
    cp $1d
    ld hl, sp+$78
    db $fd
    ld a, d
    db $fd
    ld a, b
    rst $38
    rst $28
    rst $28
    cp a
    rst $28
    dec l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    or a
    rra
    cpl
    rst $38
    ld d, a
    rst $38
    xor [hl]
    db $fd
    call nc, $68ff
    rst $38
    ld b, h
    rst $38
    rla

jr_057_51bd:
    add sp, -$69
    ld l, b
    db $10
    rst $28
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    sbc $ff
    sbc $ff
    cp $ff
    pop af
    xor $42
    cp a
    inc bc
    rst $38
    inc bc
    db $fc
    pop bc
    ld a, $d0
    rrca
    rlc a
    ld b, h
    inc bc
    ld hl, $00c0
    rst $38
    nop
    rst $38
    nop
    db $fc
    db $e4
    jr jr_057_51bd

    jr nz, @-$1e

    nop
    ld a, a
    add b
    nop
    rst $38
    ld bc, $e0ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    ldh [$f9], a
    ldh [$fb], a
    db $e3
    rst $28
    jp Jump_057_43ef


    rst $30
    ld c, c
    ld [hl], a
    inc hl
    ld l, a
    ld d, e
    inc hl
    ld b, e
    inc de
    inc bc
    ld bc, $0107
    inc de
    jp $c319


    add b
    jp $c7d3


    db $d3
    rst $00
    ret z

    rst $20
    jp nz, $9aec

    push af
    sbc l
    ld a, [$fe88]
    daa
    ei
    ld l, a
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    ld [bc], a
    db $fd
    pop hl
    reti


    ret nz

    rst $38
    jp nz, $77ff

    cp $b6
    cp $66
    cp $b7
    rst $38
    ld d, a
    rst $38
    or a
    rst $30
    rst $18
    rst $30
    cp a
    ei
    db $db
    rst $38
    ld e, a
    cp e
    db $e3
    rra
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    ld a, [hl-]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    adc b
    ld [hl], a
    rlca
    ld hl, sp-$7d
    db $fc
    ldh a, [$cf]
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    rst $28
    db $10
    cp $01
    cp $00
    call c, $013e
    jr c, @-$7e

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add sp, -$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    call $fffb
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    di
    rst $38
    rst $18
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
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    inc bc
    rst $38
    inc bc
    rst $20
    dec hl
    rst $30
    xor e
    rst $38
    ld l, [hl]
    db $ec
    db $ec
    db $fc
    ldh [$fd], a
    ldh [$fe], a
    ldh [$ef], a
    ldh [$e6], a
    ret nc

    and $cd
    cp $dd
    cp $fe
    db $fc
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    ld a, $ff
    inc e
    ld a, a
    ccf
    inc e
    add hl, sp
    ld a, $47
    ld a, h
    ret nz

    rst $08
    adc b
    pop de
    add c
    ret c

    nop
    reti


    ld e, l
    ld a, b
    ld a, b
    ld sp, hl
    ld [c], a
    ld sp, hl
    ldh [rIE], a
    ld h, b
    rst $38
    inc b
    rst $38
    add a
    rst $38
    rst $28
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    inc bc
    db $fd
    ld b, $f9
    set 6, h
    db $dd
    rst $38
    call c, $dcff
    rst $38
    db $ec
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    adc $3f
    db $d3
    cpl
    and d
    ld e, a
    ldh a, [rIF]
    pop de
    cpl
    sub h
    ld c, a
    xor [hl]
    ld e, h
    ld c, b
    ld a, $f9
    ld b, $e7
    nop
    rst $38
    add b
    nop
    nop
    nop
    nop

jr_057_53a4:
    ld b, $01
    rrca
    nop
    rrca
    db $10
    ld [bc], a
    ld bc, $0000
    nop
    nop
    rst $30
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $18
    rst $38
    cp $ff
    cp $ff
    ld a, e
    rst $38
    rst $10
    ccf
    di
    rst $38
    di
    db $fd
    ld a, [c]
    rst $38
    rst $28
    rst $38
    di
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
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    add b
    rst $38
    db $ed
    rst $18
    db $fd
    rst $38
    jp hl


    rst $20
    ret nz

    db $e3
    add b
    ret nz

    jr nz, jr_057_53a4

    ret nc

    and b
    ld l, h
    add b
    nop
    ret nz

    inc b
    ld h, b
    ld b, h
    ld h, b
    ld b, d
    ld sp, hl
    ld h, d
    pop bc
    ld d, d
    adc c
    nop
    db $db
    nop
    db $e3
    ld hl, $16d2
    rst $28
    rra
    rst $28
    ld l, a
    sub a
    rlca
    rst $38
    rrca
    rst $00
    rlca
    rst $08
    inc bc
    sbc a
    ld c, a
    rlca
    inc hl
    add a
    inc e
    dec bc
    adc h
    rra
    inc h
    sbc e
    ld d, b
    db $ec
    or b
    db $ed
    adc l
    ld sp, hl
    adc [hl]
    rst $38
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $18
    inc hl
    rst $18
    add b
    ld a, a
    nop
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add c
    cp $00
    rst $38
    rlca
    rst $38
    inc b
    ei
    inc hl
    call c, Call_000_0718
    inc b
    inc bc
    jp nz, Jump_000_1f01

    nop
    inc e
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    db $fd
    rlca
    ld h, e
    add h
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [$f7], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    set 6, a
    rst $28
    rst $38
    rst $20
    rst $38
    ld [hl], c
    rst $08
    reti


    and $b4
    rst $38
    cp a
    rst $38
    ei
    rst $38
    jp c, Jump_000_0e79

    ld sp, hl
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rlca
    rra
    rst $18
    add e
    reti


    ret nz

    ret nc

    add sp, -$01
    cp $de
    cp $ff
    rst $38
    cp [hl]
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
    cp a
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $38
    rst $18
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
    cp b
    rst $38
    ld c, c
    adc a
    jp z, $4acd

    call nz, $ca20
    add c
    ld a, $01
    cp h
    sub b
    dec hl
    jr c, jr_057_5514

    ld [hl-], a
    ld a, c
    ld [hl], b
    ld [hl], c

jr_057_5514:
    ld [hl], d
    ldh a, [$72]
    ldh a, [$32]
    jr nc, jr_057_5550

    ret nc

    ld [bc], a
    pop af
    ret


    ld [hl-], a
    ld [$c1f1], sp
    ld [hl], b
    call nc, $d9ff
    cp $c0
    or $c0
    rst $00
    ldh [$c1], a
    add c
    push hl
    sbc e
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, d
    ld a, l
    inc sp
    db $fc
    inc de

jr_057_553f:
    db $fc
    rrca
    ccf
    ld [$61ff], sp
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_5550:
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jr jr_057_553f

    ld b, $f9
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    add a
    ld a, a
    ld bc, $70ff
    rst $38
    sub $3f
    nop
    rst $38
    dec c
    cp $8c
    rst $38
    jr @+$01

    sbc h
    ld a, [hl]
    ldh [rNR32], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp b
    ld a, a
    jp nz, $483f

    rla
    ldh [rP1], a
    or b
    nop
    db $fc
    nop
    cp $00
    cp $c0
    db $d3
    cp $f7
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
    rst $18
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld a, a
    ccf
    ld sp, $0116
    ld [bc], a
    ld bc, $8000
    add b
    add b
    add b
    ld b, b
    ldh [$e4], a
    ldh [$f7], a
    and $f3
    ld a, [c]
    ei
    di
    ei
    ld sp, hl
    rst $30
    ld sp, hl
    db $fd
    ei
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    or c
    rst $38
    and c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    jp nz, $ceff

    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    and $ff
    db $fd
    rst $38
    ld l, l
    db $fd
    ld l, c
    rst $38
    ld a, b
    rst $38
    ld a, h
    db $fc
    db $fc
    ld a, l
    db $fc
    ld a, l
    ld a, c
    db $fc

jr_057_5612:
    jr c, jr_057_5612

    ld a, l
    di
    di
    ld a, a
    ld a, l
    ccf
    xor a
    rst $18
    cp $cf
    rst $28
    rst $18
    rrca
    rst $38
    add a
    ld a, a
    rlca
    rst $18
    rrca
    adc a
    ld c, a
    cp a
    ld d, e
    or e
    add sp, -$0f
    db $ec
    ld [c], a
    pop bc
    db $ec
    ld b, h
    xor [hl]
    call nz, Call_057_7f3e
    cp $fe
    cp $7f
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    add hl, de
    db $fd
    dec bc
    rst $18
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
    rst $38
    inc bc
    rst $38
    cp d
    dec b
    inc l
    ret nz

    sbc [hl]
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    inc hl
    rst $18
    rlca
    ld hl, sp-$20
    rra
    xor h
    inc bc
    inc e
    inc bc
    and e
    nop
    ld c, $00
    dec bc
    nop
    add b
    cp a
    nop
    rra
    nop
    cpl
    nop
    ld l, a
    rra
    ldh [$3f], a
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    ld sp, hl
    inc b
    ldh a, [rP1]
    ld sp, hl
    nop
    db $fd
    nop
    ld b, b
    add b
    nop
    ld [$c0c0], sp
    ldh a, [$f0]
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    adc a
    push af
    ld sp, hl
    rst $38
    ld sp, hl
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
    rst $30
    rst $38
    di
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc

jr_057_56c7:
    ccf
    add $0f
    jp $8d07


    ld [bc], a
    adc [hl]
    inc bc
    rst $18
    inc bc
    sbc a
    ld l, a
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_057_56fa:
    ld b, e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38

Jump_057_5700:
    db $dd
    rst $38

jr_057_5702:
    ld a, l
    rst $38
    sbc $fe
    sbc l
    ld a, [$be1c]
    inc e
    sbc [hl]
    ld c, c
    sbc [hl]
    ld c, b
    sbc a
    inc c
    rst $08
    ld c, $ff
    or [hl]
    cp $96
    rst $38
    inc e
    cp [hl]
    add hl, sp
    ld a, $32
    db $fc
    or d
    cp $bc
    rst $38
    dec sp
    cp h
    sub c
    ld a, [hl]
    jr c, jr_057_5702

    cp d
    jr jr_057_56c7

    jr jr_057_572d

jr_057_572d:
    inc a
    nop
    ld [hl-], a
    jr nc, jr_057_5743

    jr nz, jr_057_5745

    ld b, b
    jr nc, jr_057_56fa

    ld sp, $f10e
    ld [bc], a
    push af
    add c
    cp $89
    cp $18
    rst $38

jr_057_5742:
    adc b

jr_057_5743:
    rst $38
    adc c

jr_057_5745:
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
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
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    add [hl]
    ld a, c
    inc bc
    db $fc
    nop
    rst $38
    add e
    rst $38
    db $e3
    sbc a
    pop de
    xor a
    ld de, $99ef
    rst $20
    sbc c
    rst $20

jr_057_576c:
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    reti


    daa
    rst $08
    nop
    ccf
    ret nz

    rrca
    ld hl, sp-$1c
    jr jr_057_57f9

    nop
    sbc $20
    jr nc, jr_057_5742

    ld h, l
    dec d
    ld l, h
    inc e
    ld c, $8e
    adc $0e
    ldh [rNR23], a
    add b
    ld b, b
    add b
    ld b, a
    ret nz

    nop
    ldh a, [rNR10]
    ldh a, [rNR22]
    ld hl, sp+$07
    ccf
    ld b, b
    cpl
    jr nz, jr_057_576c

    ret nz

    add b
    adc [hl]
    jp hl


    nop
    db $fc
    ret nz

    rst $20
    ld hl, sp-$47
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    sbc a
    db $fd
    rst $18
    rst $38
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
    ld a, a
    rst $18
    xor a
    ld e, a
    rst $28
    ei
    rst $38
    rst $18
    rst $38
    set 7, a
    rst $28
    db $fd
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    cp $fc
    cp $fc
    db $fc
    rst $38
    ld hl, sp-$08
    ldh a, [rNR13]
    ldh [$a0], a
    ret nz

    pop bc
    ldh [$e1], a
    ldh [$fb], a
    ldh [$fd], a
    ldh [$fd], a
    ldh [rIE], a
    ldh [$e7], a
    ld hl, sp-$09
    add sp, -$01
    ldh [$fd], a

jr_057_57f9:
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ldh [$8f], a
    cp a
    xor l
    rra
    db $10
    inc c
    ld d, b
    nop
    jr jr_057_584b

    ld [hl], a
    nop
    ld [bc], a
    ld bc, $0001
    inc bc
    inc bc
    inc hl
    inc bc
    ccf
    jp $a35d


    jr nz, @+$1b

    ret nc

    add hl, de
    rra
    sub b
    dec c
    sub d
    adc [hl]
    ld sp, $fa27

jr_057_5824:
    db $76
    rst $38
    cp $7f
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp $7c
    ld a, [hl]
    ld a, h
    ld a, c
    ld a, [hl]
    ld hl, sp+$7f
    ld a, h
    rst $38
    sbc $bf
    adc $ff
    rrca
    rst $38
    add a
    ld l, a
    add a
    adc a
    ld c, a
    sbc a
    ld hl, $c1f3
    ei
    ret nz

    rst $18
    adc $ed
    rst $38

jr_057_584b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    ld h, b
    rlca
    jr nz, jr_057_5824

    pop bc
    cp $eb
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    pop af
    rrca
    rst $08
    nop
    add a

jr_057_587b:
    nop
    add hl, de
    ld b, $19
    ld b, $3c
    ld b, e
    nop
    ld b, a
    ld [bc], a
    ld a, [c]
    nop
    ldh a, [rP1]
    ld [hl], a
    nop
    rlca
    nop
    add $00
    rst $00
    ld h, d
    ld h, e
    ld a, a
    ld a, a
    rlca
    rlca
    rlca
    add a
    sub e
    inc de
    rst $08
    db $10
    rst $28
    nop
    rrca
    nop
    ld hl, sp+$00
    ld a, a
    nop
    add hl, sp
    nop
    ret nz

    ldh [$6f], a
    ld hl, sp+$7f
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    sbc a
    call c, $fcbf
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

jr_057_58c9:
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    ccf
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    sbc e
    rlca
    add a
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    jr jr_057_58c9

    ld bc, $02fe
    call $fa05
    ld l, a
    sub b
    ld c, a
    jr nz, jr_057_587b

    add b
    adc [hl]
    add b
    ld a, [$7d41]
    jp Jump_057_47f9


    db $fc
    ld b, e
    cp $33
    rst $38
    ld hl, $68b6
    xor [hl]
    ld b, b
    jr nc, jr_057_590b

    inc bc
    sub b
    ld bc, $8082
    inc bc
    sbc b
    and e
    add h

jr_057_590b:
    di
    adc b
    ld h, c
    xor b
    jp $c3b0


    ret nc

    ei
    di
    rst $38
    pop af
    rst $38
    pop af
    ldh a, [rSVBK]

jr_057_591b:
    jp hl


    pop hl
    ei
    ld h, e
    pop af
    inc b
    cp e
    jr z, jr_057_591b

    db $fc
    rst $38
    adc d
    db $dd
    ld [$089f], sp
    rrca
    add hl, de
    ld c, a
    add hl, bc
    ld c, a
    ld [$8cfd], sp
    rst $38
    sbc d
    db $fd
    cp $f9
    db $f4
    db $fd
    ldh a, [$fd]
    pop af
    db $fd
    or l
    db $db
    dec [hl]
    db $db
    dec sp
    db $d3
    rst $20
    rst $38

jr_057_5946:
    adc a
    rst $30
    inc bc
    rst $38
    add l
    ei
    dec de
    db $fd
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, e
    sbc a
    ld bc, $001e
    nop
    nop
    add b
    adc a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    sbc a
    rst $08
    cpl
    rst $08
    rrca
    rst $38
    rst $28
    rst $38
    rst $10
    cpl
    rst $38
    nop
    rst $18
    jr nz, jr_057_5946

    jr c, jr_057_598e

    call $c303
    and h
    and h
    rst $20
    rst $20
    rst $38
    rst $38
    rrca
    rst $28
    rlca
    rst $20

jr_057_598e:
    inc bc
    add e
    ld c, $11
    adc $d1
    pop af
    ld a, [c]
    ld [hl], h
    ld [hl], h
    and $e6
    adc h
    ld c, h
    ldh a, [rP1]
    ld a, [$0006]
    nop
    pop bc
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, [hl-]
    nop
    add b
    nop
    ld [$02f4], sp
    db $fc
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp [hl]
    cp $fe
    cp $ba
    or $fe
    ld [hl-], a
    cp $c6
    cp $fe
    cp $fe
    cp $fe
    ld a, [hl]
    cp $3e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    sbc l
    ld a, l
    ld b, l
    cp l
    db $ed
    dec e
    call $9d3d
    ld a, l
    adc l
    ld a, l
    ld l, c
    db $fd
    db $fd
    ld a, l
    cp l
    ld a, l
    push af
    ld a, l
    db $ed
    ld [hl], l
    db $fc
    ld h, h
    push af
    ld c, l
    db $dd
    ld h, l
    rst $10
    rst $28
    adc [hl]
    rst $30
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    ld hl, sp-$19
    rst $20

jr_057_5a03:
    pop hl
    pop af
    db $eb
    pop af
    rst $30
    pop bc
    rst $30
    db $e3
    rst $30
    pop bc
    rst $20
    pop bc
    pop bc
    push hl
    set 0, a
    jp $c3c7


jr_057_5a16:
    pop bc
    jp $c5c1


    ld c, l
    adc [hl]
    adc [hl]
    rla
    ld l, $97
    nop
    rst $18
    jr nz, jr_057_5a03

    add b
    ld a, a
    jr nc, jr_057_5a16

    ld [hl], b
    push hl
    ld [hl-], a
    db $ed
    ld [$0e3f], sp
    cp a
    xor [hl]
    ld e, a
    call c, Call_000_1c3f
    cp $dc
    cp $fe
    rst $30
    rst $00
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    rst $28
    di
    inc de
    rst $38
    inc sp
    sbc a
    ccf
    rst $38
    rst $30
    rst $38
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
    ld d, b
    rrca
    nop
    nop
    nop
    ret nz

    rst $10
    rst $28
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    jp $e3ff


    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], h
    dec bc
    rrca
    nop
    add [hl]
    add c
    call z, $c0cc
    sbc $c0
    adc $f8
    rst $38
    db $fc
    db $fd
    cp $fe
    db $fc
    db $fd
    ld a, [hl-]
    cp c
    ret nz

    ld [hl+], a
    sbc a
    ld e, a
    ccf
    ccf
    ld bc, $ac01
    xor h
    dec a
    dec a
    ld e, h
    ld e, h
    jr jr_057_5afa

    dec c
    ld a, l
    nop
    rst $38
    nop
    rra
    nop
    add e
    nop
    nop
    add b
    ld [hl], b
    add b
    ld h, b
    ld a, a
    add b
    sbc a
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rra
    ccf
    jp $f0c7


    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $00
    rst $08
    ldh a, [$f1]
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rla
    ld a, $86
    rst $08
    ldh a, [$f1]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    jp $f0cf


    di
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    sbc a
    db $e3
    db $e3
    db $fc
    db $fc
    ld a, $ff

jr_057_5afa:
    sbc a
    ld l, a
    push af
    dec bc
    cp $01
    sub b
    db $fc
    ldh [$fc], a
    ldh [$fc], a
    xor $f0
    ldh [$f1], a
    ldh [$e1], a
    and $e0
    jp nz, $c8e0

    or $88
    rst $38
    sbc b
    db $fc
    sbc h
    ei
    ei
    db $fd
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    ld a, a
    rst $38
    ei
    ld a, a
    ld a, c
    rst $38
    pop af
    cp $e0
    rst $38
    ld hl, $117f
    ld a, a
    rra
    ld a, a
    dec sp
    rst $18
    sub e
    ld a, l
    add e
    sbc $e2
    rst $18
    and $ff
    pop hl
    rst $38
    pop hl
    rst $38
    adc c
    or $e0
    rst $38
    pop hl
    cp $f3
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
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
    rla
    rst $28
    inc l
    inc bc
    nop
    nop
    ld b, b
    add b
    add d
    rst $38
    add a
    cp a
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    cp a
    rst $38

jr_057_5b76:
    ccf
    rst $38
    daa
    rst $38
    or e
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add a
    ld h, a
    ld h, b
    stop
    add b
    dec c
    db $ed
    rrca
    ld c, a
    ld bc, $00f9
    rlca
    ld [$402f], sp
    add e
    and $e6
    jp c, Jump_000_08da

    ld [$8181], sp
    sbc c
    sbc c
    sub c
    sub a
    ld a, $a0
    ld e, $21
    inc a
    inc bc
    jr jr_057_5bcd

    rra
    ret nz

    ld a, a
    ld b, b
    rra
    jr nz, jr_057_5bae

    inc c

jr_057_5bae:
    nop
    nop
    rst $00
    nop
    inc bc
    nop
    jr nz, jr_057_5b76

    ld a, b
    db $fc
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_5bcd:
    rst $38
    ld a, a
    ld a, a
    adc a
    adc a
    pop af
    pop af
    cp $fe
    rst $38
    rst $38
    ld a, a
    ei
    rst $30
    ld hl, sp+$3f
    ld a, b
    dec de
    sbc h
    pop hl
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    adc a
    inc e
    ld [hl], e
    add b
    sbc a
    pop hl
    rst $20
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $00
    rst $20
    pop af
    ld sp, hl
    or $f8
    sbc $bf
    ld e, a
    rst $38
    rra
    ld a, a
    ccf
    ccf
    rra
    ccf
    ld e, $1f
    ld e, $3f
    ld e, $3f
    ld c, $ef
    rst $08
    rst $38
    xor $ff
    sbc $fe
    db $fc
    db $fd
    ld sp, hl
    rst $30
    ld [hl], a
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    db $ec
    di
    jp hl


    or $f1
    rst $20
    di
    ld sp, hl
    ret c

    ld sp, hl
    add [hl]
    db $ed
    sub h
    rst $28
    ld b, a
    xor a
    and e
    sub a
    sub c
    rst $20
    rst $30
    daa
    ld h, a
    rst $38
    ld a, [$ffff]
    rst $30
    cp e
    rst $30
    ld [hl], a
    sbc a
    ld a, e
    sbc a
    xor a
    rst $00
    rst $00
    rst $38
    rst $30
    rst $38
    db $e4
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
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
    ld [hl], e
    rst $38
    jr nz, @+$19

    nop
    nop
    inc c
    ldh a, [$e0]
    rst $38
    db $e3
    rst $38

jr_057_5c6e:
    db $e3
    rst $38
    db $e3
    rst $38
    set 6, a
    rst $00
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    call c, $ff3f
    nop
    ld sp, hl
    nop
    dec d
    add sp, $27
    ret c

    ld h, l
    jr jr_057_5d04

    ld [$ef08], sp

jr_057_5c92:
    jr jr_057_5c92

    ld b, $68
    rrca
    ld h, b
    rlca
    jr nc, jr_057_5c9b

jr_057_5c9b:
    ld a, c
    add b
    cp l
    inc bc
    inc e
    rra
    ldh [$1f], a
    and b
    jr nc, jr_057_5c6e

    ld a, [$ff07]
    nop
    rst $38
    nop
    db $fc
    nop
    db $fd
    ld bc, $00e0
    ldh a, [rP1]
    ld a, a
    nop
    ld a, $00
    ld [c], a
    nop
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    add a
    adc a
    ldh a, [$f1]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    add a
    adc a
    ldh a, [$f2]
    db $fc
    db $fc
    cp [hl]
    ld e, [hl]
    cp [hl]
    ld c, [hl]
    ld l, [hl]
    sub d
    ld h, $d8
    ld bc, $e11d
    push hl
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    ld a, l
    db $fd
    dec a
    db $fd

jr_057_5cf0:
    inc sp
    ei
    dec de
    add hl, sp
    jp $f3cb


    di
    ei
    ei
    ei
    ei
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    and h
    rrca
    ld c, [hl]
    xor a

jr_057_5d04:
    ld c, $9f
    ld e, $1e
    inc e
    sbc [hl]
    inc c
    dec e
    jr nc, @+$47

    db $10
    push bc
    nop
    add h
    ld b, d
    dec b
    jr nz, @+$0a

    ld h, [hl]
    adc b
    ld b, b
    add e
    sbc e
    pop bc
    jp Jump_000_1a01


    pop hl
    sub $21
    ld h, c
    adc d
    ld h, b
    xor [hl]

jr_057_5d26:
    jr nc, jr_057_5d26

    jr c, @+$01

    ld a, h
    ei
    add hl, sp
    cp $3e
    db $fd
    jr jr_057_5cf0

    or h
    rst $38
    db $fc
    rst $38
    ld e, l
    cp [hl]
    sbc [hl]
    ld a, l
    ldh a, [$3f]
    inc sp
    di
    dec hl
    rst $30
    add e
    rst $38
    add c
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    or $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    nop
    ccf
    nop
    nop
    db $10
    ldh [$dc], a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rst $18
    cp a
    sbc a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $20
    ccf
    ld sp, hl
    rlca
    ld bc, $e000
    nop
    or e
    nop
    or d
    ld bc, $0001
    ldh a, [rP1]
    sbc [hl]
    ld h, b
    adc a
    ld [hl], b
    ld h, a
    jr jr_057_5da7

    jr nc, jr_057_5de4

    jr c, jr_057_5e0a

    ld e, $3d
    cp l
    add sp, $16
    ld e, $e1
    nop

jr_057_5da7:
    ld bc, $0af1
    jr nc, jr_057_5dec

    ret nc

    db $d3
    add b
    add e
    inc bc
    add h
    rst $20
    nop
    ccf
    nop
    rlca
    add b
    ld bc, $0100
    nop
    jr c, jr_057_5dc1

    jr c, jr_057_5dc7

    ld a, a

jr_057_5dc1:
    ldh a, [$fb]
    rst $30
    db $fd
    rst $38
    cp a

jr_057_5dc7:
    cp a
    cp a
    cp a
    ccf
    ccf
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
    ld a, a
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
    rst $30

jr_057_5de4:
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    rst $38
    xor $f6

jr_057_5dec:
    db $fc
    db $fc
    ld hl, sp-$04
    ldh [$79], a
    ld h, b
    ldh [$6c], a
    ldh [$e0], a
    xor $c0
    ld [c], a
    ld d, b
    jp nz, $e2d4

    pop hl
    jp nz, $ffab

    add e
    ei
    add e
    di
    db $e3
    rst $38
    rst $38
    rst $38

jr_057_5e0a:
    ld [hl], a
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $08
    rst $38
    set 7, a
    rst $30
    rst $08
    rst $08
    and e
    inc bc
    rst $38
    inc hl
    rst $18
    ld h, $ff
    ld e, [hl]
    rst $38
    sbc [hl]

jr_057_5e25:
    rst $38
    ld a, $ef
    xor a
    ld [hl], b
    ld h, e
    jr c, jr_057_5ea0

    ccf
    ld [hl], a
    cp a
    rlca

jr_057_5e31:
    rst $38

jr_057_5e32:
    add a
    ld h, a
    jr nz, jr_057_5e25

    jr c, jr_057_5e31

    jr nc, jr_057_5e32

    inc [hl]
    ld a, [c]
    ld a, [hl-]
    rst $30
    scf
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
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    sub b
    ldh [$fc], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff

jr_057_5e6a:
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
    ld a, a
    rst $38
    rst $20
    rra
    ld a, $01
    add b
    nop
    dec de
    ldh [$f3], a
    di
    ld [bc], a
    db $ec
    scf
    ret z

    rra
    nop
    nop
    rst $38
    inc e
    ld h, e
    jr nz, jr_057_5e6a

    nop
    ld a, h
    inc de
    inc l
    nop
    rrca
    inc b
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, $01
    adc b
    adc b
    ld hl, sp-$08

jr_057_5ea0:
    ldh [$e0], a
    ld h, h
    ld h, h
    or $06
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    ldh [$80], a
    ld hl, sp-$38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fd0f]
    ld c, $ff
    rst $38
    di
    ccf
    call $ffbf
    rst $38
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
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
    ld a, a
    scf
    rrca
    rra
    rlca
    ldh a, [$5a]
    add hl, sp
    ld a, h
    jr c, jr_057_5f32

    ld e, $3c
    db $10
    ld a, [de]
    nop
    jr nz, jr_057_5efd

jr_057_5efd:
    ld b, e
    sub b
    ld b, e
    ret z

    pop bc
    add c
    ret nz

    adc b
    pop bc
    adc h
    pop bc
    sub e
    adc [hl]
    and e
    adc a
    inc bc
    rlca
    ld [de], a
    dec b
    nop
    cp a
    jr z, @-$77

    inc h
    dec hl
    ld d, b
    rst $28
    call $e0f6
    db $fc
    call nz, Call_057_4ebc
    cp a
    ld c, $5f
    cp a
    rra
    ccf
    rst $38
    ld a, d
    rst $38
    or $ff
    add $fe
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38

jr_057_5f32:
    pop hl
    rst $30
    ld b, c
    rst $38
    ld h, c
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    ld a, a
    dec e
    ld a, [hl-]
    sbc b
    dec a
    add c
    rst $38
    add e
    rst $38
    add a
    ei
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $00
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
    rrca
    rst $38
    jr nz, jr_057_5f7b

    nop
    nop
    nop
    nop
    nop
    add b
    rrca
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    rra
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    sbc a
    rst $38
    rst $18
    cp a
    rra
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    inc de

jr_057_5f7b:
    rst $38
    nop
    ccf
    inc b
    inc bc
    adc a
    or b
    db $fc
    db $fc
    sbc a
    ld a, a
    pop bc
    add hl, sp
    inc b
    inc bc
    nop
    sbc a
    ld c, $e9

jr_057_5f8e:
    ld [$c58b], sp
    dec b
    db $e4
    ld a, [de]
    ld e, a
    jr nz, jr_057_5f8e

    ld [$06f9], sp
    rst $30
    ld [$0000], sp
    nop
    nop
    ld [$0008], sp
    nop
    nop
    add b
    ld [$e2e8], sp
    ld [bc], a
    db $e4
    nop
    cp $00
    cp $00
    rlca
    nop
    nop
    nop
    rlca
    nop
    add c
    nop
    add hl, sp
    ret nz

    rst $38
    db $fd
    rst $30
    rst $38
    rst $30
    rst $38

jr_057_5fc0:
    rst $38
    rst $38
    ccf
    rst $38
    ld a, h
    db $e3
    ld [$fffc], a
    db $fd
    cp $ff
    rst $08
    ld a, a
    ccf
    rrca
    ei
    rlca
    ei
    rst $38
    ld [hl], a
    cp a
    and a
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
    cp a
    rst $00
    rst $28
    db $fd
    db $eb
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    jp hl


    ld h, b
    pop af
    ld h, e
    ld l, c
    ld h, c
    ld h, l
    ld b, d
    db $e4

jr_057_5ffa:
    inc bc
    ld a, b
    db $10
    ret z

    jr c, jr_057_5fc0

    pop hl
    ret nz

    pop bc
    ldh [$80], a
    ret nz

    inc c
    add b
    jr c, jr_057_5ffa

    ld [hl], d
    db $fc
    db $f4
    ldh [$f4], a
    add e
    call nz, Call_000_0439
    ldh a, [$3f]
    add $c6
    rst $38
    sub h
    rst $28
    rra
    rst $08
    rst $00
    rst $38
    jp $c3ff


    rst $28
    ld [c], a
    rst $38
    or $fb
    ld a, [c]
    rst $38
    ld a, a
    di
    add hl, sp
    ld [hl], a
    push af
    ei
    ei
    db $fc
    rst $38
    db $fc
    db $ec
    rst $38
    add l
    cp $14
    cp $1c
    rst $18
    ld e, a
    ld c, $0f
    rst $18
    ld c, $df
    sbc $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ccf
    rst $38
    nop
    ccf
    ld b, $01
    nop
    nop
    nop
    ret nz

    pop hl
    cp $c3
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fe
    db $fc
    cp $fc
    rst $38
    db $fc
    db $fd

jr_057_607d:
    db $fc
    jr jr_057_607d

    push bc
    ccf
    dec a
    ld b, e
    pop af
    or $66
    ld h, a
    nop
    call z, $a9a8
    jr nz, jr_057_60b5

    nop
    inc bc
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    rrc b
    add sp, $0b
    jp nc, $f021

    nop
    jr nc, jr_057_609f

    nop

jr_057_609f:
    ld sp, $0000
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $10
    ld de, $6020
    ld b, b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_057_60b5:
    nop
    add c
    nop
    ret nz

    nop
    ld a, h
    add b
    rlca
    ld hl, sp+$1b
    db $e4
    rrca
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld a, [c]
    pop hl
    db $ed
    ldh a, [$eb]
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
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    sbc a
    inc bc
    ld a, [c]
    pop bc
    or $c8
    ret nc

    add [hl]
    ret nz

    ld [$10c0], sp
    ld b, b
    sbc b
    ld h, b
    sub d
    ld h, b
    db $10
    ret nz

    add b
    ld b, b
    dec b
    add b
    dec b
    add d
    inc b
    ld [bc], a
    inc bc
    inc c
    ld d, h
    ld a, [bc]
    ld c, [hl]
    ld [de], a
    ld bc, $a11e
    ld c, $21
    xor $44
    rst $38
    ret


    call c, $f7c9
    ld [hl+], a
    cp a
    ld [bc], a
    cp a
    ld c, $7e
    adc l
    ld a, [hl]
    inc e
    rst $08
    rst $18
    ccf
    ld a, a
    rst $38
    cp $ff
    ld a, [$feff]
    rst $38
    adc h
    ld e, $1c
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

jr_057_613d:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld bc, $0eff
    add c
    nop
    ld bc, $3947
    sbc c
    ld h, a
    dec c
    di
    push bc
    dec sp
    ld sp, $8d4f
    ld [hl], e
    adc l
    inc sp
    inc h
    dec de
    db $fd
    inc bc
    jr c, jr_057_613d

    ld [c], a
    ld de, $19a0
    and b
    add hl, de
    ld l, [hl]
    add c
    ld [hl], l
    add e
    ld b, a
    rst $38
    inc b
    rst $38
    rst $38
    nop
    rra
    jr nz, jr_057_6189

jr_057_6189:
    ld hl, $c1c0
    and $e6
    or $f6
    ld a, h
    ld a, h
    ccf
    ccf
    rst $28
    rrca
    ld a, h
    add b
    inc e
    cp l
    rrca
    rst $28
    rlca
    rst $30
    inc bc
    ld e, e
    ld a, l
    add e
    ld e, a
    and e

jr_057_61a4:
    ccf
    jp $c33f


    ld a, e
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld [hl], a
    adc a
    or $0f
    db $fc
    ld c, $2e
    call c, Call_000_1f20
    inc c
    inc bc
    add b
    nop
    ldh [rP1], a
    add b
    nop
    jr c, jr_057_61a4

    rst $18
    db $e4
    ei
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $30
    rra
    rst $38
    rlca
    cp e
    rst $00
    rst $28
    di
    ld [hl], e
    rst $38
    ld a, l
    cp $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    ld a, a
    db $fc
    xor a
    cp $e7
    rst $38
    db $eb
    rst $30
    rst $20
    rst $38
    rst $28
    or $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld h, b
    adc d
    ld h, b
    ld hl, $0060
    ld b, b
    add b
    ret nc

    add b
    ld b, b
    ld [bc], a
    ret nz

    ld b, b
    add b
    ld a, [bc]
    add c
    inc b
    add e
    inc hl
    add e
    dec b
    inc bc
    cpl
    ld bc, $0f13
    ld sp, $0f4e
    ld [hl], b
    ld [bc], a
    dec a
    ret nz

    cpl
    jr nz, jr_057_6275

    ld [hl], c
    adc $cb
    push de
    sbc a
    rst $38
    ld d, e
    cp a
    ld [bc], a
    sbc a
    add b
    or $fc
    add $f4
    call z, $fc8e
    call z, $3bff
    db $db
    dec sp
    rst $38
    dec sp
    cp a
    rst $28
    ld a, a
    xor $ff
    db $ec
    cp $ef
    cp $e6
    cp $e6

jr_057_623b:
    cp $e7
    cp [hl]
    xor a
    cp $ee
    cp a
    rst $28
    rst $38
    rst $28
    rst $38
    push bc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $28
    rra
    rst $38

jr_057_6259:
    rst $28
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
    scf
    ld a, a
    inc sp
    ld a, a
    ld [hl+], a
    ld a, a
    and $7b
    db $ed
    ld [hl], e
    ld c, d
    di
    jr jr_057_6259

    jr z, jr_057_623b

    cp b

jr_057_6275:
    ld b, a
    ld hl, sp+$07
    jr z, jr_057_6281

    inc de
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    add c

jr_057_6281:
    sbc $01
    rst $38
    add b
    ld hl, sp-$40
    ldh a, [$e0]
    db $f4
    ldh a, [$f0]
    add b
    ld sp, hl
    add b
    di
    inc e
    db $e3
    add $39
    nop
    rra
    dec c
    ld [bc], a
    rst $18
    nop
    cp $01
    cpl
    db $10
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld hl, sp-$21
    db $fd
    ld l, e
    rst $38
    pop de
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    cp a
    rst $18
    rst $18
    rst $38
    sbc a
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    cp $0f
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    rst $38
    ei
    scf
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    cp $c1
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec d
    ld d, $17
    jr jr_057_630e

    ld a, [de]
    dec de
    add hl, bc
    inc e
    dec e
    ld e, $1f
    jr nz, jr_057_631f

    ld [hl+], a
    add hl, bc
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_057_6310

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    ld a, [hl+]
    dec hl

jr_057_630e:
    inc l
    dec l

jr_057_6310:
    ld l, $2f
    jr nc, jr_057_6345

    ld [hl-], a
    inc sp
    inc [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    dec [hl]
    ld [hl], $37
    jr c, jr_057_6358

jr_057_631f:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    add hl, bc
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

jr_057_6345:
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_057_6358:
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
    jr jr_057_6419

    ld a, [de]
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
    jr z, @+$2b

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_057_6419:
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0303
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0301
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0603
    ld b, $06
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld b, $01
    inc bc
    ld b, $03
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld b, $06
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld b, $01
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc bc
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    dec bc
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
    add hl, bc
    add hl, bc
    ld c, $0e
    nop
    inc bc
    nop
    add c
    nop
    ld b, b
    ld h, b
    ld l, h
    ld [c], a
    rst $28
    di
    rst $38
    ei
    rst $38
    db $db
    rst $38
    db $e4
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    jr nc, jr_057_65e9

    jr nz, jr_057_65e4

    nop
    call c, $5e00
    nop
    ld c, a
    nop
    rrca
    ld [bc], a
    ld c, $06
    rst $28
    inc hl
    ld [hl], a
    scf
    ld a, a
    ld l, $71
    dec a
    ld h, d
    ld h, h
    ld a, e
    di
    db $fd
    di
    db $fd
    or $f9
    db $f4
    ei
    ld hl, sp-$01
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
    db $fc
    ld a, a
    db $fc
    ld a, a
    sbc $7f
    adc [hl]
    ld a, a
    ld c, [hl]
    ccf
    rrca
    ccf
    rlca
    ccf
    rlca
    rra
    rlca
    rra
    ld [hl], e
    rra
    ld [hl], e
    rst $38
    di
    adc a
    pop af
    adc a
    ld sp, hl
    rst $28
    ld a, l
    rst $38
    rst $38
    ld a, a
    add c
    ld a, a
    ld a, $7f
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $30
    rst $08
    rst $38
    rrca
    rst $38
    rst $20
    ei
    rst $20
    ld hl, sp-$01
    rst $38
    rst $38
    cp $cf
    cp $cf
    rst $38
    rst $08
    cp $cf
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

jr_057_65e4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_65e9:
    rst $38

jr_057_65ea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    db $fd
    inc d
    rst $20
    ld c, $37
    dec b
    sbc [hl]
    inc b
    rst $08
    add c
    ld h, [hl]
    ld bc, $cece
    call z, $ec44
    jr nz, jr_057_65ea

    dec h
    ld a, [c]
    dec b
    di
    ld bc, $01d3
    rst $38
    ld bc, $0377
    ld [hl], c
    inc hl
    ld [hl], h
    add a
    db $76
    rrca
    cp $2f
    cp $2a
    rst $38
    rst $38
    rst $38
    dec e
    db $e3
    rst $38
    nop
    nop
    rst $38
    rst $10
    rst $38
    db $e3
    rst $38
    rst $38
    di
    rst $18
    db $e3
    rst $38
    db $e3
    rst $30
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    ld [$a275], a
    ld a, l
    ld h, $f9
    ld de, $10ff
    rst $38
    nop
    rst $38
    ld [$a4ff], sp
    db $db
    add b
    rst $38
    add c
    rst $38
    di
    rst $08
    rst $38
    jp $fbff


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0303
    ld bc, $0101
    ld bc, $8181
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

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, [de]
    ld a, [de]
    ld a, h
    jr jr_057_6723

    ld [$787d], sp
    inc c
    jr jr_057_66eb

    ld de, $c10f
    ccf
    ld bc, $f461
    ld bc, $31cc
    sbc c
    rst $20
    db $eb
    add a
    cp e
    or a
    sbc e
    sbc c
    call $ff99
    rst $38
    rst $30
    rst $38
    ld l, e
    rst $38
    ld [hl], l
    rst $38
    rst $28
    ld a, a
    rst $30
    ld a, a
    cp $ff
    pop bc
    ld a, $00
    rst $38
    cp b
    rst $30
    db $fc
    or e
    sub e
    db $fc
    rst $10
    ld hl, sp-$68
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $28
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_057_66eb:
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    dec a
    rst $38
    ld a, b
    rst $38
    cp $ff
    sbc $ff
    db $fc
    rst $38
    ld hl, sp-$09
    rst $38
    add b
    rst $38
    add [hl]
    cp $c1
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    sbc a
    sub e
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
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf

jr_057_6723:
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rrca
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
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add c
    inc bc
    jp $e581


    add c
    and b
    pop bc
    ldh a, [$c0]
    ret nz

    add b
    adc b
    ldh a, [$80]
    rst $38
    add c
    ret nz

    call c, $ffe0
    ret nz

    ret nz

    ldh [$dc], a
    ldh [$ee], a
    ldh a, [rIE]
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
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
    rst $38
    rst $38
    inc c
    adc a
    add [hl]
    inc e
    ld b, $9c
    and d
    jr nz, jr_057_67eb

    ldh [$61], a
    ld [c], a
    pop de
    db $e4
    jr z, @-$2a

    ld b, $9e
    sbc a
    add a
    add e
    sbc $c0
    rst $20
    jp z, $dec1

    db $ec
    sbc $fe
    rst $38
    cp $ff
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    ld b, e
    cp a
    ld a, e
    db $fc
    ld a, a
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    di
    db $fd
    rst $30
    ei
    ld [hl], l
    ei
    push bc
    dec sp
    jp $e33d


    dec e
    adc [hl]
    ld a, c
    rst $28
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

jr_057_67eb:
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    ccf
    cp a
    rra
    rst $38
    rra
    rst $38
    ld e, $7f
    jr @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ei
    inc b
    ld [hl], l
    cp [hl]
    ld hl, $21ff
    cp $ff
    inc e
    and b
    ld [hl], b
    ldh a, [$a0]
    rst $38
    add b
    db $ec
    rst $38
    cp a
    db $e3
    rst $18
    ld hl, sp-$01
    add sp, -$11
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    rst $38
    db $fc
    ld a, [c]
    dec a
    ld [hl-], a
    ld a, a
    ld a, e
    cp [hl]
    inc e
    dec sp
    dec e
    ld e, d
    add hl, bc
    ld a, [hl]
    ld d, c
    jp z, $c940

    push bc
    ret nz

    call nz, $c963
    ld [hl], a
    ld [hl], c
    rst $38
    ld hl, sp-$1b
    db $fc
    db $f4
    ld [hl], a
    cp $7f
    cp $ff
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    pop bc
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    db $fd
    cp $f9
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ei
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
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
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
    db $fd
    or $fb
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    cp $e0
    ldh [$c0], a
    call z, $df80
    nop
    cp a
    ld a, d
    rst $18
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01ff
    ld a, [$ef83]
    cp $bf
    ld c, b
    adc $31
    ld l, l

Call_057_68e3:
    rla
    nop
    nop
    stop
    db $fc
    nop
    cp a
    rst $38
    rst $38
    inc a
    rst $18
    inc a
    sbc [hl]

jr_057_68f1:
    ld a, h
    ld a, [hl]
    ld b, $fd
    ld [bc], a
    rst $38
    ld bc, $e1ff
    pop af
    ld [hl], b
    ei
    db $10
    jr nc, jr_057_6900

jr_057_6900:
    sbc h
    ld a, h
    dec de
    inc a
    sbc h
    ld e, $0f
    sub a
    inc bc
    add e
    nop
    ld bc, $0081
    add c
    ld h, b
    ret c

    jr nz, jr_057_68f1

    dec a
    sbc a
    sbc h
    adc l
    adc [hl]
    push hl
    ld [$4064], a
    inc hl
    inc [hl]
    db $e4
    ccf
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    inc sp
    nop

jr_057_6946:
    cp $00
    ldh a, [rP1]
    pop af
    jr nz, jr_057_6946

    ld a, b
    ei
    ld a, b
    rst $38
    ld a, h
    ld a, a
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $18
    rst $38
    rst $18
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    db $fd
    ld a, [$f2fd]
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$c5ff]
    rst $38
    push af
    ei
    rst $18
    and a
    ei
    rlca
    rst $28
    or a
    rst $18
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
    db $fd
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, [c]
    ldh [$e4], a
    call nz, $cec0
    add c
    and b
    ld de, $10e2
    and h
    nop
    and h
    nop
    ccf
    add b
    and a
    ld e, b
    db $e4
    dec de
    ld l, $d0
    rst $38
    db $fc
    call nz, $06d4
    nop
    ld b, c
    ld b, c
    cp a
    ld c, b
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
    rst $28
    nop
    db $fd
    ld [bc], a
    ld e, d
    cp a
    rst $38
    rst $38
    ld e, e
    db $fc
    ld l, a
    inc e
    rst $28
    db $10
    rst $08
    cp $e3
    rlca
    rst $20
    ld bc, $0013
    rra
    nop
    dec b
    nop
    db $db
    db $e4
    rst $38
    rst $38
    db $fc
    ld a, b
    inc a
    inc e
    jr c, jr_057_6a0c

    rst $18
    ldh [rIE], a
    ret nz

    ei
    call nz, $e4fb
    ld [$f5ff], a
    rst $38
    ld [$f0ff], a
    rst $38
    ld e, a
    ccf
    rra
    cp a
    sbc a
    sbc a
    rra
    sbc a
    rst $38
    rra
    ld a, a
    cp a

jr_057_6a0c:
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
    rst $30
    rst $38
    ei
    rst $38
    push af
    rst $38
    db $fc
    nop
    db $fc
    nop
    sbc [hl]
    nop
    db $dd
    nop
    sub $0e
    rst $38
    rrca
    ld a, a
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    nop
    nop
    nop
    nop
    ld a, a
    nop
    jr nz, jr_057_6a3a

jr_057_6a3a:
    sbc h
    nop
    call c, $fe0e
    ld e, $ff
    rra
    rst $18
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
    rst $18
    ccf
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    db $ed
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $38

jr_057_6a73:
    sub d
    db $eb
    cp $ea
    cp $ca
    ldh a, [rNR24]
    ldh a, [$bf]
    ld [hl], c
    cp a
    ld [hl], c
    rst $30
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
    cp $fe
    db $f4
    db $fc
    ld hl, sp-$0f
    ldh [$c0], a
    add b
    add e
    nop
    pop bc
    add d
    ret nz

    add d
    dec a
    ld b, b
    ld a, e
    rlca
    ld a, d
    ld [bc], a
    ld [hl], h
    inc c
    ldh a, [rSC]
    ldh [rNR14], a
    ld hl, sp+$1e
    ldh a, [rNR32]
    ldh [$28], a
    ret nz

    nop
    and b
    jr nz, jr_057_6a73

    inc a
    ld [hl], e
    db $eb
    ccf
    nop
    ccf
    nop
    sbc $e1
    cp e
    ld h, l
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ei
    ld bc, $fd3b
    sub $6d
    ld [c], a
    dec e
    rst $38
    inc de
    cp $3b
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $20
    db $e3
    rst $38
    db $e3
    db $e3
    dec sp
    ei
    reti


    rst $38
    rst $38
    sbc l
    rrca
    rrca
    nop
    ld b, $00
    rst $38
    ld bc, $01ff
    cp h
    ld b, e
    cp [hl]
    ld b, c
    ld hl, $41ff
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rst $38
    ld [$e2fd], a
    db $fd
    rst $08
    ldh a, [$d5]
    ld [$f7c8], a
    db $db
    db $e4
    reti


    and $cf
    ldh a, [$fb]
    call nz, $fbc4
    ret c

    rst $20
    db $e4
    ei
    db $f4
    ei
    ld a, [$ffff]
    rst $38
    add b
    nop
    rst $38
    nop
    ld l, a
    nop
    ld b, a
    nop
    ld a, e
    inc b
    add hl, sp
    ld b, $be
    rrca
    adc a
    rra
    cp a
    rst $18
    db $fd
    inc bc
    ccf
    ld bc, $01ff
    dec sp
    ld bc, HeaderManufacturerCode
    ccf
    ld bc, HeaderManufacturerCode
    rlca
    ld bc, $0187
    sbc a
    add c
    sbc [hl]
    add c

jr_057_6b48:
    cp $81
    cp [hl]
    pop bc
    rst $38
    ret nz

    pop af
    ret nz

    db $f4
    dec bc
    cp [hl]
    ld b, c
    db $fd
    inc bc
    scf
    rst $38
    cp $ff
    cp $ff
    rst $30
    ei
    ld a, [de]
    pop hl
    jp nc, $dde4

    ldh [$98], a
    ldh [$be], a

jr_057_6b67:
    ret nz

    jr z, jr_057_6b48

    add [hl]
    adc b
    cp h
    cp b

jr_057_6b6e:
    db $fc
    ld hl, sp-$13
    ld hl, sp-$07
    jr c, jr_057_6b6e

    jr nc, jr_057_6b67

    jr nz, jr_057_6b67

    ld b, b
    db $ec
    cp $fe
    cp $fe
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $30
    ld hl, sp-$14
    db $e3
    db $ec
    jp $c7ec


    pop af
    ld hl, sp-$07
    jr nc, jr_057_6c00

    add b
    ld l, a
    add b
    call c, $fc22
    nop
    db $fd
    ld bc, $42be
    ld a, d
    add d
    ld a, [$7802]
    nop
    ret c

    add sp, $3c
    inc l
    jr nz, jr_057_6bd8

    jr nc, jr_057_6bda

    jr jr_057_6bc4

    jr c, @+$3a

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl+], a
    inc hl
    ld h, d
    ld h, c
    rst $20
    ret c

    ccf
    nop
    ccf
    nop
    nop
    rla
    nop
    ld [bc], a
    dec a
    ld [c], a
    cp $21

jr_057_6bc4:
    rst $18
    ld h, b
    rst $18
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    rst $30
    adc b
    call c, $f3ef
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38

jr_057_6bd8:
    rst $38
    ld sp, hl

jr_057_6bda:
    cpl
    reti


    rst $38
    add e
    rst $30
    ei
    rst $38
    rst $38
    sub a
    rst $28
    rst $30
    add sp, -$01
    rst $38
    rst $38
    rst $38
    ld a, e
    cp a
    rst $20
    rlca
    add c
    inc bc
    inc hl
    ld de, $2102

jr_057_6bf4:
    add d
    and l
    adc b

jr_057_6bf7:
    cp c
    ld a, b
    ld a, b
    jr nc, jr_057_6c6c

    ld [bc], a
    ld a, c
    ld d, c
    dec hl

jr_057_6c00:
    rla
    rrca
    rlca
    rlca
    adc a
    ld b, d
    ld b, e
    nop
    ld [hl], c
    ld h, e
    ret nz

    or $3e
    rst $00
    cp $07
    inc c
    di
    dec b
    ei
    nop
    rst $38
    jr nz, jr_057_6bf7

    inc d
    db $eb
    ld [$1ef7], sp
    db $fd
    sbc [hl]
    rst $38
    ld a, c
    ld b, $ff
    nop
    cp d
    rlca
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    dec sp
    rlca
    cp a
    inc bc
    ccf

jr_057_6c31:
    add e
    ld a, a
    add e
    rst $38
    add e
    cp [hl]
    jp $ffff


    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$21
    ldh a, [$df]
    ld hl, sp-$01
    ret c

    sbc a
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    ld a, [c]
    ld e, a
    ldh [rIE], a
    nop
    sbc l
    db $10
    sbc l
    jr jr_057_6bf4

    ld e, $c1
    ccf
    ld h, e
    ccf
    pop af
    ld a, $af
    ld b, b
    rst $00
    nop

jr_057_6c6c:
    rst $00
    nop
    rst $08
    nop
    ld [c], a
    nop
    db $f4
    jr nz, jr_057_6c31

    ld a, b
    cp $7c
    rst $38
    ld bc, $073b
    ld a, a
    ccf
    ld h, e
    ccf
    ld h, e
    ld h, e
    ld [c], a
    ld h, e
    xor a

jr_057_6c85:
    daa
    db $fc
    rst $20
    ld sp, hl
    rst $20
    ldh [rIE], a
    ld [hl], d
    rst $38
    di
    rst $38
    db $ed
    rst $30
    add d
    ld a, a
    jp Jump_000_057e


    rst $38
    rst $38
    ld [hl], $ff
    ld [$14ff], sp
    rst $38
    inc c
    cp a
    ld b, b
    sbc a
    ld [c], a
    rst $38
    ldh [$fd], a
    ld b, e
    rst $38
    jp c, $b2eb

    cp e
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    add d
    ld c, [hl]

jr_057_6cb2:
    inc b
    inc b
    ld a, h
    sbc h
    db $fc
    inc c
    or b
    ld b, b
    jr c, jr_057_6c85

    cpl
    ld e, a
    adc a
    xor a
    sub $fd
    rst $38
    pop de
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    sbc a
    ei
    ld c, l
    rst $38
    ldh a, [rIF]
    db $f4
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
    rrca
    rst $28
    inc bc
    db $fd
    add e
    rst $38
    jp $ffff


    rst $18
    cp $88
    or a
    and h
    rst $18
    add [hl]
    xor $05
    ld a, [c]
    jr jr_057_6d5b

    add hl, sp
    rst $00
    nop
    ld e, a
    jr jr_057_6d1f

    jr jr_057_6cb2

    db $10
    or b
    db $10
    db $fd
    jr z, @+$01

    jr c, @+$01

    ld e, b
    ld hl, sp+$38
    db $fd
    dec sp
    db $fd
    ld l, a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cpl
    rst $38
    rst $38

jr_057_6d1f:
    rst $38
    ret nz

    ccf
    cp $00
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    set 7, a
    rrca
    rst $38
    push bc
    ei
    add e
    rst $38
    dec hl
    rst $30
    or a
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    db $f4
    ld c, e
    db $fc
    inc bc

jr_057_6d48:
    xor l
    ld [hl], e
    pop af
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    ei

jr_057_6d5b:
    ld a, [hl]
    db $db
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld c, a
    inc bc
    db $eb
    rlca
    rlca
    ld a, [bc]
    and d
    adc [hl]
    ld [hl], d
    ld h, e
    ld b, b
    db $e3
    ld h, b
    inc sp
    ld h, c
    pop hl
    ld [hl], c
    db $fd
    ldh a, [rIE]
    add b
    cp l
    add e
    rst $38
    add e
    pop bc
    add c
    ld sp, hl
    ldh [rIE], a
    ret nz

    jr nz, jr_057_6d48

    sbc l
    pop hl
    and b
    db $e3
    or c
    ldh a, [$39]
    ret nc

    add h
    and d
    sbc $c1
    sbc a
    and b
    cp e
    call nz, $5e21
    ld a, h
    inc bc
    adc h
    di
    db $e4
    ld [$7ee1], a
    ld sp, hl
    ccf
    ld a, c
    cp $eb
    ld [hl], a
    db $e3
    ld a, a
    rst $30
    ld l, [hl]
    rst $38
    ld d, e
    rst $38
    dec sp
    adc d
    xor d
    jp $dac3


    db $db
    ld bc, $0131
    add l
    ld [hl+], a
    ld [hl+], a
    ld [$806f], sp
    rst $20
    or $38
    rst $20
    ld e, c
    cp $11
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @-$3f

    ld h, b
    ld a, a
    jr nz, @+$01

    ld h, b
    or l
    rst $38
    db $fd
    rst $38
    ld a, c
    rst $38
    ld a, a
    add a
    db $fd
    add d
    jp hl


    rst $10
    jp hl


    rst $30
    pop af
    rst $28
    push hl
    rst $38
    db $fd
    cp [hl]
    cp $ff
    rst $28
    rst $38
    cp $e1
    or a
    ldh [$0c], a
    sbc a
    ld e, $0c
    ld [$00be], sp
    db $e4
    add b
    rst $08
    add b
    add $00
    add a
    ld bc, $d193
    ccf
    cp b
    ccf
    xor b
    db $fd
    sub c
    rst $38
    ld d, e
    rst $20
    ld hl, $297f
    ld [hl], a
    add e
    ld h, a
    add e
    or a
    push af
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, h
    inc bc
    rst $00
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    daa
    rst $38
    and a
    rst $38
    and $ff
    rst $20
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp a
    rst $00
    ld a, $ff
    rra
    rst $38
    sbc a
    jr @+$01

    sbc [hl]
    ld a, c
    ld e, $e9
    rst $38
    add b
    and a
    ret c

    dec sp
    call $078f
    rra
    rlca
    sub a
    rst $28
    rst $30
    ei
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    or c
    or c
    jr jr_057_6e89

    ld a, [de]
    dec e
    pop de
    jr nz, jr_057_6ee1

    ld bc, $fbff
    db $fd
    ld sp, hl
    ld a, c
    ldh a, [$d9]
    nop
    call z, $8400
    nop
    add d
    add c
    pop bc
    add c
    jp $0381


    rlca
    add a

jr_057_6e89:
    rlca
    inc b
    inc bc
    add l
    inc bc
    call $d603
    ld l, a
    jr jr_057_6f13

    rst $20
    ld a, a
    ld h, [hl]
    ld a, a
    ld sp, hl
    ld a, a
    db $fd
    ld a, e
    ld [hl], a
    ld hl, sp+$77
    rst $38
    sbc e
    dec de
    ld a, [$7c05]
    add e
    jr nz, jr_057_6f07

    rst $08
    ret nz

    di
    ldh a, [$81]
    add d
    ld bc, $0802
    rr b
    sbc c
    db $10
    ld de, $7100
    nop
    dec bc
    inc b
    db $db
    nop
    ld a, a
    db $10
    rst $28
    inc c
    ld [bc], a
    db $eb
    rst $38
    adc e
    ld a, a
    rst $18
    cpl
    ld a, l
    sbc $fb
    inc b
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    xor a
    ldh a, [$f3]
    cp $e6
    rst $38
    cp e
    rst $08
    cp l
    jp nz, Jump_000_02c1

    jp Jump_057_5700


jr_057_6ee1:
    cp $ff
    cp $8d
    cp $fb
    adc a
    rra
    ldh [$7b], a
    db $fc
    rst $18
    db $fc
    ccf
    call z, $f860
    ld a, b

jr_057_6ef3:
    db $76
    db $76
    ld a, l

jr_057_6ef6:
    inc a
    ld [hl], l
    ld [hl], h
    cp c
    jr c, jr_057_6ef3

    jr nz, jr_057_6ef6

    nop
    db $fc
    jr nz, jr_057_6e89

    ld [bc], a
    dec h
    ld [bc], a
    xor a

jr_057_6f06:
    inc bc

jr_057_6f07:
    cp a
    inc bc
    db $fd
    add c
    cp a
    adc b
    sbc a
    sbc c
    db $ec
    jp hl


    db $ec
    db $ed

jr_057_6f13:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    adc h
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd

Call_057_6f33:
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld b, [hl]
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [de]
    db $fd
    add e
    db $fd
    jp $01fd


    rst $38
    sbc c
    ld a, [hl]
    rst $38
    db $fc
    ld c, a
    db $fc
    add e
    ld a, h
    and a
    ld e, b
    dec de
    db $fc
    push de
    cp $e3
    cp $ff
    rst $38
    cp $ff
    jp $d1fc


    ld hl, sp-$2f
    ld hl, sp+$18
    rst $18
    ld hl, $a822
    xor e
    ret nz

    rst $10
    nop
    db $10
    cp [hl]
    cp [hl]
    jr jr_057_6f06

    ret nz

    ld bc, $3c40
    ld c, b
    db $fc
    ret nz

    db $fc
    ldh [$9c], a
    sbc h
    adc b
    sbc h
    adc b
    jr c, @+$1a

    jr c, @+$12

    ld hl, sp+$18
    call c, $fe1c
    ld c, $6f
    and $c7
    db $e3
    adc $c1
    rst $18
    rst $28
    jp nz, $fdff

    rst $38
    sbc a
    rst $38
    rra
    cp $fe
    cp $fe
    xor [hl]
    db $fc
    call z, $e0b8
    ldh a, [$c0]
    rst $28
    ldh [$cf], a
    ld b, b
    rst $00
    ld b, b
    rst $28
    ld l, b
    rst $38
    ld c, b
    ccf
    adc b
    ld c, e
    ld hl, sp+$4b
    add sp, -$3c
    adc b
    ret z

    nop
    jr jr_057_6fb6

jr_057_6fb6:
    ld [$9800], sp
    nop
    sbc e
    nop
    db $db
    nop
    pop de
    nop
    call nc, $ff7c
    cp $d8
    cp b
    ld hl, sp-$18
    db $db

jr_057_6fc9:
    jr nz, jr_057_6fc9

jr_057_6fcb:
    ld [$08f8], sp
    ld hl, sp+$08
    db $fc
    ld [$0cf4], sp
    cp $0c
    ld a, h
    db $fc
    ld a, h
    adc b
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    nop
    rst $38
    ld [bc], a
    ei
    inc b
    rst $38
    db $10
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    add b
    rst $28
    db $10
    rst $38
    stop
    nop
    nop
    add b
    nop
    and b
    nop
    add b

jr_057_6ff8:
    nop

jr_057_6ff9:
    xor h
    jr z, jr_057_6fcb

    jr nz, jr_057_6ff9

    jr nc, jr_057_6ff8

    ld h, b
    db $f4
    nop
    dec c
    nop
    adc a
    ld bc, $43f1
    di
    db $e3
    rst $38
    or e
    rst $38
    and e
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $18
    rst $28
    rst $18
    ld l, a
    rst $18
    rst $08
    rst $38
    xor a
    rst $18
    rst $38
    rst $08
    xor a
    rst $18
    xor a
    rst $38
    scf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, e
    sbc a
    ccf
    rst $18
    or a
    ld a, a

jr_057_704c:
    cp a
    ld a, a
    rst $18
    ccf
    db $fd
    ld e, $9c
    ld a, a
    db $fc
    ld a, a
    ld a, [hl]
    rst $38
    dec c
    adc $dc
    rrca
    rst $38
    rrca
    db $ec
    rrca
    ld l, a
    adc h
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$4f
    adc b
    rst $18
    ld [$0956], sp
    jr c, jr_057_7074

jr_057_7074:
    jr c, jr_057_7086

    rra
    inc e
    rra
    rra
    rra
    rra
    ld c, $0d
    rlca
    nop
    inc bc
    rlca
    rlca
    inc bc
    ld c, $07

jr_057_7086:
    cp a
    rrca
    ccf
    dec e
    inc sp
    dec e
    scf
    rra
    inc de
    rra
    rst $28
    rst $08
    push af
    di
    ld e, $b1
    cpl
    ret nz

    xor [hl]
    ld b, c
    ld h, $d9
    inc hl
    call c, Call_057_50af
    cpl
    sub b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    add a
    db $10
    cp l
    ld a, h
    cp $3f
    db $e3
    inc hl
    db $e3
    inc hl
    ld a, [hl]
    ld hl, $201f
    daa
    jr nz, jr_057_70e6

    jr nz, @+$41

    jr nz, jr_057_70ea

    jr nc, @+$69

    inc a
    ld a, l
    ld a, $ff
    ccf
    ccf
    jr nc, jr_057_704c

    ld [$28c7], sp
    rst $38
    nop
    and a
    ld b, b
    rst $20
    db $10
    db $d3
    inc h
    ei
    inc b
    ei
    inc b
    pop af
    ld c, $f9
    inc b
    ld [$ef16], a
    ld de, $407e
    ld a, d
    ld b, l
    ld a, [hl]
    ld b, c
    db $fc
    jp nz, Jump_000_003e

jr_057_70e6:
    ccf
    ld bc, HeaderManufacturerCode

jr_057_70ea:
    ccf
    ld bc, HeaderManufacturerCode
    ld a, [hl]
    nop
    db $10
    db $fd
    jr nz, @+$01

    nop
    daa
    ld bc, $001b
    ld sp, $6501
    nop
    pop de
    nop
    pop bc
    nop
    add e
    ld b, $8f
    ld [$3098], sp
    ldh a, [$f0]
    pop af
    ldh [$f0], a
    ret nz

    and $00
    call nz, $e6c0
    jp nz, $e2e7

    rst $20
    xor $ff
    cp $ff
    add $ff
    db $e4
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    jp $c1ff


    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    add b
    ld a, a
    inc bc
    db $fc
    ld [de], a
    db $ed
    rlca
    rst $38
    rst $20
    rra
    cp a
    ld c, a
    ld l, a
    sbc a
    ld h, a
    sbc a
    cpl
    rst $18
    adc a
    ld a, a
    ld e, a
    rst $38
    rra
    rst $38
    rst $38
    rra
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38

Call_057_7170:
    ccf
    rst $38
    ei
    ccf
    db $db
    ccf
    jr c, jr_057_7190

    inc e
    ld [$8c9e], sp
    rst $38
    ld a, a
    ld a, c
    rst $38
    ei
    ld hl, sp-$08
    ld hl, sp-$01
    db $fc
    ld a, a
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $20
    rst $18
    rst $20
    rst $38

jr_057_7190:
    and $ff
    rst $38
    rst $38
    di
    rst $38
    ld [hl], a
    ld a, a
    rst $38
    ccf
    db $fd
    ccf
    pop bc
    ccf
    adc a
    ld a, b
    ld a, a
    pop bc
    ld e, a
    ld l, a
    ld e, a
    ld h, d
    reti


    ld h, [hl]
    ld a, h
    rst $28
    ld a, a
    ld l, a
    ccf
    ld a, e
    rst $28
    dec sp
    rst $38
    di
    rst $18
    ld l, d
    rst $38
    ld a, b
    and $78
    cp d
    ld [hl], h
    dec a
    or $be
    ld h, h
    xor h
    ld h, b
    db $dd
    jp nz, Jump_000_16c9

    ret nz

    daa
    ldh [rNR31], a
    xor [hl]
    ld d, b
    call z, $8533
    ld a, d
    sub e
    ld l, h
    reti


    ld [hl+], a
    db $dd
    ld [hl+], a
    reti


    nop
    db $fd
    ld b, $fc
    inc bc
    rst $38
    nop
    cp a
    add b
    rra
    nop
    cp $f0
    cp $de
    xor $de
    cp [hl]
    add $2f

jr_057_71e9:
    push af
    rlca

jr_057_71eb:
    rst $38
    xor $f7
    rst $28
    ei
    jr nc, jr_057_71eb

    jr nc, @-$0d

    jr nz, jr_057_71e9

    ld h, b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$07
    ldh a, [$f9]
    ld [hl], b
    ld sp, hl
    ld [hl], b
    db $fd
    ld [hl], b
    cp $70
    ld a, [$b330]
    jr nc, @+$3c

    jr nz, jr_057_7287

    jr nz, jr_057_724d

    jr nc, @+$40

    jr nc, jr_057_7290

    nop
    ld a, [hl-]
    nop
    ld e, $00
    sbc h
    nop
    call c, $fcc8
    ret z

    add sp, -$38
    ret z

    call nz, $c0d8
    ei
    ld h, b
    cp $04
    cp $00
    rst $38
    nop
    db $fd
    ld bc, $01fd
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    db $fc
    rrca
    db $fc
    rrca

jr_057_724d:
    cp $ff
    rst $38
    rlca
    rst $38
    db $fc
    inc bc
    ret c

    daa
    db $fc
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fd
    cp $ff
    rst $38
    ld sp, hl
    cp $f3
    db $ec
    pop af
    rst $38
    ld a, [c]
    db $fc
    or b
    db $fc
    db $d3
    inc a
    ei
    inc a
    or $0c
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    sub e
    ld a, a
    ld a, a
    rst $38
    ccf
    ccf
    cp a
    rra
    cp a
    dec e
    ret c

    inc [hl]
    ld a, h
    jr jr_057_72e1

    inc c
    rst $28

jr_057_7287:
    ld b, $9a
    ld h, a
    inc bc
    add b
    and $c0
    and $e2

jr_057_7290:
    ld a, [c]
    db $e3
    rst $38
    ldh a, [$f5]
    ret z

    ret c

    ldh [$30], a
    ldh [$f0], a
    ldh [rSVBK], a
    and b
    di
    and b
    ldh a, [$80]
    ldh a, [$80]
    db $fd
    adc [hl]
    db $fc
    dec bc
    ld [hl], h
    sbc a
    ldh a, [$9f]
    rst $28
    db $dd
    rst $38
    db $ed
    sbc $e5
    cp $65
    rst $38
    ld [hl], h
    push af
    ld [hl], $e4
    inc de
    cpl
    sbc $46
    rrca
    ld c, $07
    ld d, d
    xor [hl]
    pop bc
    dec h
    rlca
    pop hl
    ld bc, $11f5
    inc hl
    inc de
    dec l
    sbc [hl]
    dec b
    add e
    ld e, b
    jp $f338


    inc b
    rst $30
    ld [$20c7], sp
    dec sp
    db $fc
    ld a, l
    cp $fd
    ld a, $ff
    ld e, $fc

jr_057_72e1:
    dec c
    cp $0e
    ld a, [c]
    ld [bc], a
    ld sp, hl
    ld bc, $01f9
    ld a, l
    ld bc, $0139
    add hl, sp
    dec b
    nop
    ldh [rLCDC], a
    ldh a, [$c0]
    ldh [$c0], a
    pop hl
    and b
    ei
    ld [bc], a
    rst $28
    ld [bc], a
    ld l, [hl]
    nop
    ld c, [hl]
    ld [bc], a
    rlca
    inc bc
    daa
    rlca
    rrca
    rrca
    rlca
    rrca
    rst $00
    rlca
    adc a
    rlca
    adc a
    ld b, $0f
    ld c, $1f
    rra
    rra
    dec c
    rra
    nop
    rrca
    ld bc, $0177
    ld a, e
    nop
    ld h, a
    ld [bc], a
    daa
    ld [bc], a
    rrca
    ld [bc], a
    rst $08
    ld b, $9f
    inc bc
    sbc a
    inc hl
    db $e3
    ld b, d
    jp $d380


    add b
    reti


    add b
    db $db
    ret c

    rst $38
    ld hl, sp+$7d
    ld hl, sp+$0f
    ld a, h
    rrca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [$6f]
    pop af
    ld l, a
    ld hl, sp+$7f
    pop af
    ccf
    pop af
    rra
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    db $ed
    ld [de], a
    ld [de], a
    db $ed
    ld b, b
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    cp a
    ld e, a
    sub a
    jr jr_057_73c8

    ld b, $77
    rrca
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    inc sp
    cp a
    add hl, de
    rst $28
    add hl, de
    ld c, a

jr_057_7381:
    add c
    ld b, [hl]
    ld bc, $19e6
    add a
    inc c
    dec b
    ld c, $8f
    rrca
    rlca
    rrca
    ld bc, $ff0f
    rlca
    ld a, a
    add e
    ld a, e
    rst $00
    rst $30
    ccf
    ld a, [hl]
    ccf
    inc a
    rra
    rra
    rra
    rra
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    pop af
    cp c
    ld hl, sp+$0e
    ld hl, sp-$11
    ld hl, sp+$79
    cp $71
    rst $38
    jr nc, @+$01

    sub b
    ld a, a
    jr z, @-$27

    jr c, jr_057_7381

    nop
    rst $38
    add b
    ld a, a
    add e
    ld a, h
    db $10
    db $10
    ld e, $1e
    or [hl]
    or $f1
    push af

jr_057_73c8:
    or c
    or l
    add c
    add c
    jp Jump_057_40cb


    ret


    and b
    ld hl, $35f0
    ldh [$03], a
    ldh [rNR13], a
    ld [c], a
    dec e
    di
    inc b
    di
    inc c
    ld sp, hl
    ld b, $fb
    rlca
    db $fd
    inc bc
    ld a, l
    ld bc, $073b
    dec sp
    inc bc
    ld e, a
    ld h, b
    rst $28
    ldh a, [$8f]
    sub b
    ld [bc], a
    add a
    nop
    rlca
    nop
    dec b
    nop
    ld de, $0000
    nop
    ld b, b
    ld b, b
    ld b, e
    jp nz, $82dc

    sbc h
    add b
    call z, $cc80
    add b
    ret c

    adc c
    ld sp, hl
    inc de
    dec de
    ld a, $3f
    ld a, $7f
    ld a, h
    cp $74
    db $fc
    inc h
    db $fc
    nop
    adc h
    nop
    adc l
    ld [bc], a
    adc a
    ld b, $5f
    inc b
    ccf
    ld h, h
    dec a
    daa
    rst $38
    scf
    rst $38
    ld hl, $11ff
    rst $38
    inc de
    ei
    ld d, e
    ei
    inc bc
    rst $38
    ld bc, $61e2
    ret nz

    ld b, b
    db $d3
    ld bc, $fbf7
    rst $10
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    di
    cp a
    db $e3
    sbc a
    db $e3
    cp a
    db $e3
    ccf
    rst $00
    ccf
    rst $38
    rst $38
    ld [c], a
    rst $38
    add l
    ld a, d
    nop
    rst $38
    ld b, $ff
    rst $20
    sbc a
    rst $28
    sub a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $00
    ld a, a
    push hl
    dec de
    add c
    ccf
    rlca
    ccf
    rst $00
    ccf
    jp z, $9cf7

    ld h, a
    call nz, $ffe3
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp l
    ld [bc], a
    rst $08
    add c
    rst $00
    add c
    jp $d281


    pop bc
    add $c0
    ldh [$c0], a
    ld [hl], b
    ldh [$3f], a
    ld hl, sp-$65
    db $fc
    rst $00
    adc $c3
    adc $f1
    rst $08
    rst $28
    rst $38
    db $fd
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    ld a, [$78fd]
    rst $38
    cp c
    cp $fc
    ei
    inc a
    inc bc
    ld a, $01
    rst $38
    nop
    cp $00
    add $d9
    ld hl, sp-$05
    cp h
    cp a
    db $ec
    db $ed
    inc l
    inc l
    inc h
    inc h
    inc e
    inc e
    xor l
    xor l
    ld h, c
    ld h, c
    db $dd
    db $dd
    ld d, $16
    ld [$0139], sp
    ld [hl-], a
    add d
    sub [hl]
    ld d, a
    rst $10
    ld e, $9f
    ldh a, [rNR32]
    ldh a, [rNR23]
    ret nc

    jr c, jr_057_7507

    ldh a, [$f0]
    ldh [$ef], a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    cp a
    rst $28
    db $fd
    di
    rst $38
    db $fd
    cp $7f
    ld a, a
    ccf
    ccf
    dec sp
    nop
    rst $38
    ldh [$de], a
    add h
    cp $02
    cp [hl]
    ld [bc], a
    ld c, [hl]
    nop
    adc [hl]
    inc b
    ld b, $00
    inc b
    ld bc, $0183
    rlca
    ld b, c
    rst $28
    ld c, e

jr_057_7507:
    rst $08
    rrca
    sbc a
    ld [bc], a
    ld b, $02
    ld c, $00
    ld e, $00
    ld d, a
    ld b, $47
    ld [bc], a
    rla
    ld bc, $00d3
    ldh [rP1], a
    ld a, c
    ld h, h
    ld sp, hl
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$f8]
    and d
    rst $30
    sub a
    cp $d6
    rst $38
    pop bc
    rst $38
    ret


    push af
    ld de, $00ef
    sbc l
    inc b
    adc a
    add b
    rrca
    inc d
    xor [hl]
    inc c
    or h
    sub l
    rst $38
    rst $30
    cp a
    rst $20
    ccf
    db $e3
    ccf
    jp $c77e


    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add l
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld c, $f1
    or c
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $28
    rst $30
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, a
    call c, $fd7e
    cp $7d
    cp d
    ld a, l
    cp [hl]
    ld a, c
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    ei
    rlca
    jp c, $eee7

    di
    db $fc
    di
    pop hl
    rst $38
    ld b, e
    ccf
    rra
    rra
    cpl
    rra
    cp l
    rrca
    rst $30
    rra
    ld b, b
    ccf
    nop
    ccf
    rra
    ld e, a
    rra
    ld a, a
    rst $08
    rst $38
    cp $fe
    db $fd
    db $fc
    add e
    and [hl]
    add $e2
    call nz, $c0f8
    or $e0
    sub a
    ld h, b
    rra
    ld a, d
    rlca
    cp l
    pop bc
    rst $18
    pop hl
    xor a
    or b
    cp a
    ldh a, [$f7]
    sub b
    ccf
    ld [$cc4f], sp
    ld a, h
    ld c, a
    ld e, l
    ld b, [hl]
    dec sp
    ld h, b
    ld [$0c77], sp
    ld [hl], e
    inc e
    ld [hl], e
    inc b
    adc b
    inc b
    ld a, [$7c0a]
    ld h, l
    ld h, l
    rst $38
    rst $38
    rra
    rra
    jp Jump_000_0033


    nop
    ld bc, $0100
    nop
    ld sp, $3f01
    db $10
    rst $38
    inc bc
    rst $38
    rra
    cp a
    dec de
    rst $30
    ld l, d
    ei
    adc a
    db $fd
    xor a
    rst $30
    inc bc
    rst $20
    ld b, e
    di
    add e
    or c
    pop bc
    or c
    ret nz

    ld b, $0b
    nop
    rlca
    nop
    ld b, $00
    inc b
    nop
    inc e
    nop
    ld c, $80
    ret nc

    add b
    ret c

    add b
    cp h
    ld bc, $0189
    adc e
    nop
    sbc l
    db $10
    db $fc
    ld [de], a
    ld [hl], h
    ld [hl-], a
    ld a, h
    ld [hl], h
    ld a, e
    ld hl, sp-$05
    ld hl, sp-$04
    add sp, -$23
    add c
    rst $38
    ld c, c
    cp a
    adc c
    ld a, a
    dec c
    rst $38
    inc c
    rst $38
    jr nz, jr_057_763b

    ld bc, $c199
    rst $08
    ld b, d
    adc a
    ld [bc], a
    rst $00
    sub [hl]
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp [hl]
    ld a, a
    cp $ff
    cp $ff

jr_057_763b:
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    cp $f3
    ld a, [$fcf1]
    di
    cp $ff
    cp $ff
    rst $08
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, [$faff]
    rst $38
    rst $28
    rst $38
    and $ff
    daa
    rst $38
    daa
    rst $38
    ld [hl], a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld c, [hl]
    rst $30
    ld e, $f7
    inc e
    rst $30
    sbc h
    rst $20
    call nc, Call_057_68e3
    rst $30
    ld a, b
    rst $20
    ld hl, sp-$09
    db $fd
    cp $f7
    rst $38
    rst $30
    rst $38
    di
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $08
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    cp a
    rra
    ccf
    rrca
    ccf
    rlca
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    sub $03
    jp $e101


    ld bc, $8071
    ld hl, $38d0
    ld a, a
    ld [hl], e
    ld a, $69
    scf
    cp h
    inc de
    db $fc
    inc de
    ld e, $09
    rrca
    ld [$0d0a], sp
    push hl
    dec d
    rlca
    rst $08
    inc bc
    add e
    inc bc
    db $e3
    pop bc
    rst $18
    db $fd
    db $fd
    and h
    sbc d
    and $d9
    inc a
    ld b, b
    ld a, e
    inc b
    rst $28
    db $10
    rst $38
    sub b
    rst $30
    ld hl, sp+$72
    db $fc
    cp $bf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    ccf
    rst $38
    add a
    rst $00
    add d
    rst $00
    jp nz, $c0c3

    ld bc, $0106
    rlca
    nop
    inc bc
    nop
    ld b, $00
    nop
    jr nz, jr_057_770c

    nop
    dec c
    nop
    inc b
    add b
    add b
    add b
    cp a
    nop
    ld a, $00
    ld l, $08
    add h
    nop
    adc b

jr_057_770c:
    nop
    jr c, jr_057_770f

jr_057_770f:
    ld sp, hl
    ld de, $27ff
    ld [hl], a
    rst $30
    rst $38
    db $fc
    rst $38
    ld hl, sp-$04
    ret nz

    ret c

    adc b
    call z, $8c08
    adc b
    jr jr_057_772b

    ld e, l
    rrca
    cp a
    dec bc
    ld a, a
    inc bc
    rst $30
    ld l, a

jr_057_772b:
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    jp $c37e


    ld a, [hl]
    jp $877e


    cp $87
    rst $38
    rrca
    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp+$1f
    db $fc
    rra
    cp $1f
    rst $38
    ccf
    pop af
    ccf
    rst $38
    ccf
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    pop hl
    db $fc
    ei
    ldh a, [$fb]
    cp $ff
    cp $ff
    ld a, d
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    call nz, $bb7f
    ld a, a
    dec hl
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ei
    cp a
    ld [hl], l
    rst $38
    ld h, d
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $f3ff


    rrca
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    sbc h
    cp [hl]
    sub a
    cp [hl]
    db $d3
    ld a, $e3
    ld [bc], a
    push hl
    ld e, h
    rst $20
    inc c
    rst $30
    nop
    rst $38
    jp Jump_000_22fe


    rst $38
    inc bc
    rst $38
    add d
    rst $38
    add b
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    di
    rst $38
    ldh a, [rIE]
    db $fc
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
    rlca
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jp $023e


    rst $38
    ld [c], a
    rst $38
    pop af
    cp $c2
    add b
    jp $e200


    nop
    rrca
    sub b
    sbc l
    ld [hl], d
    rla
    or b
    ld c, a
    xor b
    dec bc
    ldh a, [$9d]
    ld h, d
    ld e, h
    and d
    ld l, h
    ld [de], a
    nop
    ccf
    nop
    rst $38
    ld a, b
    dec b
    cp b
    push bc
    rst $28
    ret nc

    add sp, -$09
    xor $e1
    rrca
    stop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    ld c, $0e
    dec e
    ld e, $1f
    jr nz, jr_057_7836

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_057_7846

    ld a, [hl+]
    ld c, $0e
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_057_7858

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_057_7868

    ld c, $3a
    dec sp
    inc a
    dec a
    ld a, $3f

jr_057_7836:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, $0e
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_057_7846:
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
    ld e, a

jr_057_7858:
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_057_7868:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld c, $0e
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
    ld c, $85
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
    ld c, $94
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

    ld c, $0e
    ld c, $d1
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld c, $0e
    ld c, $de
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
    di
    db $f4
    ld c, $f5
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    ld c, $05
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld c, $0e
    ld c, $0e
    ld c, $15
    ld d, $17
    jr jr_057_7931

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [bc], a

jr_057_7931:
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0601
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $01
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    inc bc
    ld b, $06
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0601
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
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
    sub c
    add b
    add hl, de
    ret nz

    ld hl, sp+$40
    ldh a, [$e0]
    ld hl, sp-$18
    db $fc
    ld h, b
    db $dd
    ldh [$e9], a
    ld h, h
    ld l, l
    ld a, h
    cpl
    ld [hl], h
    scf
    ld l, l

jr_057_7a86:
    ld a, a
    add hl, sp
    ld a, c
    ld sp, $3071
    ld a, [$f970]
    ld a, [c]
    ei
    ld [hl], e
    ld a, [c]
    ld [bc], a
    rst $28
    jr nc, jr_057_7a86

    sbc b
    ld a, b
    sbc h
    ccf
    db $f4
    cp a
    rst $38
    rst $38
    sbc $ff
    sbc [hl]
    cp a
    rst $38
    db $fd
    ld e, a
    sbc a
    ld a, l
    rst $38
    sbc $ff
    xor $ff
    xor $ef
    cp $ff
    xor $ff
    rst $30
    cp $f7
    rst $30
    cp $fe
    pop af
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    call z, $ceff
    rst $18
    ld a, [hl]
    rst $18
    ld a, a
    ld [hl], a
    ld c, a
    ld a, a
    add [hl]
    ld a, l
    dec de
    ld h, e
    ld h, c
    cpl
    jr nz, @+$51

    ccf
    rra
    inc l
    cp h
    ld a, b
    ld hl, sp+$7c
    db $fd
    db $fc
    db $ec
    db $fd
    ld hl, sp-$20
    di
    ld hl, sp-$38
    ret c

    db $fc
    db $dd
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    daa
    rst $38
    scf
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    di
    rst $38
    inc bc
    rst $38
    and l
    rst $38
    rrca
    rst $18
    inc bc
    db $fd
    ld l, d
    rst $38
    ld e, b
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld [hl-], a
    ld a, a
    inc d
    rst $38
    ld bc, $d1ff
    rst $38
    sub b
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld b, $ff
    rst $38
    rst $38
    ld a, h
    rst $30
    ld [$88f7], sp
    rst $38
    rst $28
    rst $38
    dec c
    rst $38
    add hl, de
    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld h, c
    rst $38
    ld b, h
    rst $38
    inc hl
    rst $30
    ld a, a
    rst $38
    inc sp
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
    rst $20
    jp $e7e3


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
    sbc a
    cp a
    cp a
    sbc a
    rst $18
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    cp a
    rst $08
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, c
    ld h, l
    ccf
    ld h, c
    rst $38
    ld a, e
    rst $38
    ld a, e
    sbc a
    ld l, a
    adc l
    ld a, a
    rst $28
    ld a, a
    db $fd
    ld [$fefd], a
    db $fd
    cp $ff
    rst $38
    cp $7f
    cp $7c
    db $fc
    ld a, $be
    ld a, [hl]
    cp $be
    cp $be
    cp $1e
    rst $38
    ld a, $bf
    rra
    cp a
    ld e, $bf
    sbc [hl]
    sbc a
    adc $cf
    sub $df
    add $df
    rst $00
    adc a
    rst $18
    rra
    adc a
    scf
    ld b, a
    ccf
    rlca
    adc e
    rlca
    adc a
    ret nz

    push bc
    inc bc
    rst $20
    ld b, a
    rst $28
    rst $00
    rst $08
    ld h, a
    ld l, a
    add a
    rst $20
    ld b, $cf
    ldh [$ef], a
    and $6f
    db $e4
    rst $20
    pop hl
    daa
    ld [hl], c
    or e
    push af
    rst $38
    ldh a, [rIE]
    ldh a, [$fb]
    cp $ff
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $38
    rst $30
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    call nz, $c0ff
    rst $38
    xor $ff
    ld l, a
    ld a, a
    rlca
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $18
    ei
    ld [hl], c
    rst $08
    ld [hl], c
    rst $28
    rst $10
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
    rlca
    rlca
    ldh a, [rSB]
    db $ec
    ld hl, sp-$04
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fc
    ld a, [$fef6]
    db $e4
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
    cp $ff
    rst $38
    cp $fd
    cp h
    rst $38
    inc a
    ccf
    rra
    ccf
    ld l, e
    inc h
    ld [$0000], sp
    nop
    nop
    ld h, h
    jr nz, jr_057_7cbf

    jr nz, jr_057_7c89

    call nz, Call_000_0c02
    rlca
    rlca
    ld d, a
    rlca
    ccf

jr_057_7c89:
    ld a, a
    dec bc
    ld a, a
    db $e3
    ld c, c
    ld sp, hl
    ld b, a
    call nz, $fd5c
    rst $28
    rst $30
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $dd
    ei
    ld sp, hl
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$06
    ld a, h
    rst $38
    inc a
    rst $38
    dec sp
    rst $38
    dec sp
    db $fd
    ld e, $9f
    ccf
    rst $38
    daa
    cp $0f
    ld l, $87
    rrca
    and a
    rst $28
    pop hl
    rst $20

jr_057_7cbf:
    jp hl


    ld a, a
    jp hl


    ld l, a
    cp $ef
    and $fe
    rst $20
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    di
    rst $38
    rst $30
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    add hl, sp
    rst $38
    add l
    rst $38
    add $ff
    ld [c], a
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    jr nc, @+$01

    or b
    rst $38
    rst $08
    rst $38
    scf
    rst $38
    nop
    rst $38
    sub b
    rst $38
    cp a
    rst $38
    rra
    ld a, a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    sub d
    cp a
    sub $ff
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    inc bc
    reti


    ld bc, $00d9
    ret c

    nop
    nop
    add b
    ld h, b
    nop
    ldh [$60], a
    ldh [rP1], a
    inc bc
    nop
    daa
    inc bc
    ld a, a
    inc bc
    ld a, a
    ld l, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    push hl
    rst $38
    set 1, a
    ret


    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $28
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    cpl
    rra
    ccf
    ccf
    rra
    dec de
    dec b
    dec bc
    ld bc, $8080
    add b
    and b
    ret nz

    ret nc

    ret nz

    sub b
    ret nz

    add b
    add b
    add c
    ld [bc], a
    rrca
    ld c, $0e
    rrca
    ld a, $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18

Call_057_7d82:
    rst $28
    sbc a
    sbc a
    rst $18
    rst $38
    rst $38
    ld a, a
    rra
    ccf
    rrca
    rst $30
    rst $28
    rst $38
    ld a, c
    ld a, c

jr_057_7d91:
    jr c, jr_057_7d91

    dec a
    rst $38
    ld a, a
    rst $38
    di
    db $fc
    ld h, d
    inc a
    ld [c], a
    and l
    xor $9e
    rst $20
    db $eb
    sub a
    rst $28
    sbc e
    add a
    rst $38
    rst $00
    ld a, a
    ld b, a
    xor $d3
    xor $cb
    rst $20
    db $db
    rst $20
    db $e3
    rst $38
    db $e3
    ei
    db $eb
    di
    push hl
    ei
    rst $30
    pop af
    db $ed
    di
    push hl
    ei
    cp $f1
    db $fc
    di
    ldh a, [$fd]
    ld hl, sp-$03
    or $f9
    cp $f9
    rst $38
    ld a, h
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    ld a, a
    cp [hl]
    rst $38
    cp $ff
    db $fc
    ld a, a
    rst $38
    cp $ff
    rst $38
    cp $3f
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    cp $ff
    cp $3f
    cp $bf
    db $fd
    sub $ff
    sub d
    rst $38
    inc de
    rst $38
    ld de, $01fe
    cp [hl]
    add hl, bc
    rst $38
    ld de, $ffff
    rst $20
    rst $38
    db $d3
    rst $28
    db $d3
    rst $28
    rst $28
    rst $38
    ld c, a
    cp a
    ld e, $ff
    rst $38
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
    rst $20
    ld e, a
    and a
    ld a, a
    rrca
    dec de
    rla
    dec e
    add hl, bc
    add hl, de
    inc c
    ld de, $9f0e
    rra
    adc a
    sbc a
    xor $8f
    rst $28
    ldh [$fb], a
    push af
    ld a, [$f6f8]
    ldh a, [$fe]
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38

jr_057_7e50:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    ei
    pop bc
    add b
    or b
    ld b, h
    jr z, jr_057_7ea5

    nop
    ld [bc], a
    nop
    adc $00
    db $ec
    jr jr_057_7e50

    ld bc, $e0c3
    ei
    ldh a, [$9b]
    cp c
    ei
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $f8
    rst $28
    db $fc
    rst $38
    ld e, $1f
    ld c, $bf
    ld c, $bf
    ld c, $9f
    ld a, $2f
    sbc a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    ld bc, $e4ff
    rst $38
    add $ff
    adc $ff
    xor b
    rst $38

jr_057_7ea5:
    and b
    rst $38
    or h
    rst $38
    jr nz, @+$01

    cp a
    rst $38
    add [hl]
    rst $38
    adc [hl]
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    and $7f
    or b
    ld a, a
    adc d
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    and h
    ld a, a
    and e
    ld a, $e3
    ld a, $c1
    ccf
    pop de
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    rlca
    cp e
    rlca
    rst $28
    sbc a
    rst $38
    ld [hl], c
    rst $38
    add d
    ld a, l
    add b
    ld a, a
    push bc
    ld a, [hl-]
    add b
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    cp a
    rst $38
    cp a
    rst $38
    db $fc
    di
    rst $38
    ldh a, [$f8]
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$0c
    ldh a, [$fc]
    ldh a, [$fe]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld e, a
    cp a
    cp a
    rst $18
    rst $38
    inc a
    ld e, $3f
    sbc [hl]
    ccf
    cp $9f
    adc a
    adc a
    rst $20
    add b
    push af
    rst $20
    rst $30
    rst $20
    ret nc

    rst $20
    ldh [$c1], a
    ldh [$80], a
    ld hl, sp+$02
    cp $e4
    or $f1
    db $fc
    cp b
    cp $be
    rst $38
    ld h, [hl]
    rst $38
    ld a, [de]
    rst $38
    or d
    rst $38
    ld a, [c]
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [hl], a

Call_057_7f3e:
    rst $38
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    dec c
    rst $18
    ld [$cedf], sp
    rst $18
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rra
    sbc a
    rra
    sbc a
    rra
    cp a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $20
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
    ei
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $30

jr_057_7f8d:
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld c, a
    db $e3
    rst $38
    ld [hl], e
    sbc a
    rst $38
    rra
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
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $30
    rst $30
    rst $38
    ld h, b
    rst $38
    jr nc, jr_057_7f8d

    ccf
    ret nz

    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    cp $ff
    db $fc
    di
    db $fc
    di
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f9
    cp $f9
    cp $fe
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fe
    rst $38
    ld a, [$f1ff]
    cp $3f
    ld a, $3f
    cp [hl]
    ccf
    ld a, $7f
    ccf
    ld a, a
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
