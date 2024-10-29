SECTION "ROM Bank $08b", ROMX[$4000], BANK[$8b]

    inc hl
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld sp, $23ff
    rst $38
    ld [hl-], a
    rst $38
    inc hl
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    inc sp
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
    inc sp
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    ld [hl+], a
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld [hl-], a
    rst $38
    ld sp, $32ff
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld [hl], d
    rst $38
    ld h, e
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], c
    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    ld hl, $60ff
    rst $38
    ld hl, $60ff
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld [hl+], a
    rst $38
    ld h, d
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    ld h, d
    rst $38
    ld hl, $63ff
    rst $38
    ld hl, $63ff
    cp $63
    rst $38
    ld h, c
    rst $38
    ld h, e
    cp $61
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    ld h, a
    cp $63
    rst $38
    ld h, a
    rst $38
    daa
    rst $38
    ld h, a
    cp $67
    rst $38
    ld h, [hl]
    rst $38
    ld h, a
    rst $38
    ld h, $ff
    ld h, [hl]
    rst $38
    ld h, $ff
    ld h, [hl]
    rst $38
    ld [hl], $ff
    ld h, [hl]
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec de
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    dec sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld sp, $31ff
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    jr nc, @+$01

    jr @+$01

    jr nc, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $21ff
    rst $38
    ld sp, $10ff
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld hl, $11ff
    rst $38
    ld sp, $01ff
    rst $38
    ld bc, $21ff
    rst $38
    ld bc, $21ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld hl, $23ff
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld hl, $21ff
    rst $38
    ld bc, $21ff
    rst $38
    inc hl
    rst $38
    ld bc, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $01ff
    rst $38
    ld hl, $71ff
    sbc a
    ld [hl], c
    sbc a
    ld hl, $71ff
    sbc a
    ld sp, $31ff
    rst $38
    ld sp, $31ff
    rst $18
    ld sp, $31ff
    rst $38
    ld bc, $21ff
    rst $38
    ld bc, $21ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    sub e
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    sub e
    rst $38
    or e
    rst $38
    di
    rst $38
    di
    rst $38
    or e
    rst $38
    jp nc, $92ff

    rst $38
    sub d
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $18
    ld [hl-], a
    rst $18
    ld [hl-], a
    rst $18
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $18
    ld [hl], $df
    ld [hl-], a
    rst $18
    sub d
    rst $38
    ld [de], a
    rst $38
    or d
    rst $18
    ld [hl-], a
    rst $18
    inc sp
    rst $18
    ld [hl], $df
    rla
    rst $38
    inc sp
    rst $18
    inc de
    rst $38
    inc de
    rst $38
    inc sp
    rst $18
    inc de
    rst $38
    ld d, $ff
    inc de
    rst $38
    ld d, $ff
    ld d, e
    cp a
    ld d, [hl]
    cp a
    scf
    rst $18
    ld [hl], $df
    rla
    rst $38
    ld d, $ff
    inc de
    rst $38
    ld [hl], $df
    scf
    rst $18
    ld d, $ff
    rla
    rst $38
    rla
    rst $38
    ld e, $f7
    rla
    rst $38
    rla
    rst $38
    rra
    rst $30
    rra
    rst $30
    rra
    di
    ld d, $ff
    ld d, $ff
    ld d, $ff
    rla
    rst $38
    ld d, $ff
    rra
    di
    ccf
    rst $20
    ccf
    db $e3
    rla
    rst $38
    ccf
    db $e3
    ccf
    rst $20
    rla
    ei
    scf
    rst $38
    ld h, $fb
    ld d, [hl]
    ei
    ld [hl+], a
    rst $38
    ld d, $fb
    ld h, $fb
    ld h, $fb
    ld [hl-], a
    rst $38
    ld d, [hl]
    ei
    ld h, $fb
    ld d, d
    rst $38
    ld h, $fb
    ld [hl], $fb
    sub [hl]
    rst $38
    ld [hl], $ff
    sub [hl]
    rst $38
    sub [hl]
    ei
    ld d, $fb
    ld b, $fb
    ld b, $fb
    ld h, $fb
    ld h, $fb
    and [hl]
    ei
    ld h, $fb
    and [hl]
    ei
    ld d, [hl]
    ei
    ld h, $ff
    ld h, [hl]
    rst $38
    ld d, [hl]
    ei
    ld h, $fb
    ld b, [hl]
    ei
    ld h, $fb
    ld b, [hl]
    ei
    ld h, $fb
    ld d, [hl]
    ei
    ld e, [hl]
    di
    ld a, [hl]
    db $e3
    ld [hl], $eb
    db $76
    rst $08
    db $76
    rst $08
    scf
    rst $28
    ld [hl], a
    rst $18
    ld [hl], a
    rst $18
    ld [hl], a
    rst $18
    scf
    rst $28
    scf
    rst $28
    rla
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ei
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    dec sp
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
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    ld e, $ff
    dec de
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    sbc d
    rst $38
    sbc e
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    sbc c
    rst $38
    sbc l
    rst $38
    ld e, l
    rst $38
    dec e
    rst $38
    ld e, l
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    ld e, e
    rst $38
    ld e, l
    rst $38
    ld e, d
    rst $38
    ret


    rst $38
    jp z, Jump_08b_5aff

    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    jp c, $d9ff

    rst $38
    ret z

    rst $38
    ret c

    rst $38
    ld hl, sp-$11
    ld a, b
    rst $28
    ld a, b
    rst $28
    ld hl, sp-$11
    ld hl, sp-$31
    ld a, [$f8ef]
    rst $28
    ld a, [$faff]
    rst $28
    ld hl, sp-$01
    ld a, [$f8df]
    rst $28
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld a, [$f8ff]
    rst $18
    sub $d6
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $10
    rst $10
    rst $38
    rst $38
    rst $30
    rst $30
    rst $18
    rst $18
    rst $38
    cp $d7
    sub $ff
    cp $df
    sbc $ff
    cp $f7
    or $f7
    or $ff
    cp $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $ff
    cp $f7
    or $ff
    cp $f7
    or $ff
    cp $f7
    or $f7
    or $f7
    or $ff
    cp $f7
    or $e7
    and $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $c7
    add $c7
    add $d7
    sub $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $e7
    and $f7
    or $f7
    or $e7
    and $f7
    or $e7
    and $f7
    or $e7
    and $f7
    or $e7
    and $e7
    and $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $f7
    or $ff
    cp $f7
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    inc e
    db $e3
    dec e
    ld [c], a
    ld e, $e1
    add hl, de
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR24], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR23], a
    ldh [rNR30], a
    ldh [rNR31], a
    ldh [rNR22], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR22], a
    ldh [rNR33], a
    ldh [rNR24], a
    ldh [rNR12], a
    ldh [rNR11], a
    ldh [rNR32], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR13], a
    ldh [rNR11], a
    ldh [rNR13], a
    ldh [rNR31], a
    ldh [rNR13], a
    ldh [rNR23], a
    ldh [rNR11], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR23], a
    ldh [rNR13], a
    ldh [rNR31], a
    ldh [rNR11], a

Call_08b_44eb:
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR11], a
    ldh [rNR12], a
    ldh [rNR14], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR14], a
    ldh [rNR23], a
    ldh [rNR12], a
    ldh [rNR13], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR12], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$15], a
    ldh [rNR21], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    inc e
    db $e3
    dec e
    ld [c], a
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$e0], a
    nop
    ld h, b
    add b
    and b
    ret nz

    rst $18
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    ld e, $1e
    ld e, $1e
    ld e, $1e
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld hl, sp+$07
    ld b, b
    rrca
    pop hl
    ld c, $71
    ld c, $e1
    ld c, $f1
    ld c, $f1
    ld c, $e1
    ld c, $e1
    ld c, $61
    ld c, $41
    ld c, $f1
    ld c, $d1
    ld c, $f1
    ld c, $e1
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $71
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $71
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $a1
    ld c, $01
    ld c, $e1
    ld c, $91
    ld c, $41
    ld c, $c1
    ld c, $41
    ld c, $c1
    ld c, $81
    ld c, $51
    ld c, $51
    ld c, $e1
    ld c, $f1
    ld c, $d1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $e1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f8
    rlca
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld d, a
    nop
    rrca
    nop
    adc e
    nop
    dec e
    nop
    inc bc
    nop
    ld c, e
    nop
    dec bc
    nop
    db $f4
    nop
    inc b
    nop
    ld [bc], a
    nop
    dec hl
    nop
    rlca
    nop
    ld c, e
    nop
    ld e, [hl]
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    sbc [hl]
    nop
    sbc $00
    rst $20
    nop
    or $00
    ei
    nop
    cp [hl]
    nop
    rst $38
    nop
    call c, $ff00
    nop
    sbc $00
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0001
    rra
    rra
    nop
    rra
    ldh [rP1], a
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
    rst $38
    nop
    rst $38

Call_08b_467b:
    nop
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
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    ld c, $0b
    inc c
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
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    ld c, $0b
    inc c
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    push af
    nop
    or $00
    di
    nop
    push af
    nop
    db $ed
    nop
    ldh a, [rIF]
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    ld c, [hl]
    ld de, $120c
    ld c, h
    ld [de], a
    db $ec
    ld [de], a
    ld l, h
    ld [de], a
    xor [hl]
    ld de, $106f
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    db $10
    xor a
    db $10
    ld c, a
    db $10
    ld l, [hl]
    ld de, $12ec
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    xor $11

Call_08b_4700:
    xor a
    db $10
    ld c, a
    db $10
    rrca
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    xor $11
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    ld l, h

jr_08b_4715:
    ld [de], a
    xor $11
    rst $08
    db $10
    ld l, a
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    db $10
    rst $28
    db $10
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
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

jr_08b_474c:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ei

jr_08b_4753:
    nop
    cp $00
    db $fd
    nop
    xor a
    nop
    rst $38
    nop
    nop
    rst $38

jr_08b_475e:
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

jr_08b_4768:
    ret nz

    ret nz

    jr nz, jr_08b_474c

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_08b_4771

jr_08b_4771:
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

    jr nz, jr_08b_475e

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_08b_4753

    jr nc, jr_08b_4715

    ld [hl], b
    jr nz, jr_08b_4768

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    ld [hl], c
    nop

jr_08b_47a0:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $6e82
    ld de, $30cf
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    add $39
    ld a, l
    add d
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $7682
    add hl, bc
    rst $20
    jr jr_08b_47a0

    jr z, @-$47

    ld c, b
    add e
    ld a, h
    or $09
    ld a, l
    add d
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $0282
    ld a, l
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    xor $11
    ld a, l
    add d
    add e
    ld a, h
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
    rst $38
    nop
    ld a, a
    nop
    di
    nop
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
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
    rlca
    rlca
    ld [$110f], sp
    ld e, $13
    inc e
    rla
    jr jr_08b_4856

    inc e
    ld [$070f], sp
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
    nop

jr_08b_4856:
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    ld e, $13
    inc e
    rla
    jr jr_08b_4878

    inc e
    ld [$070f], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    db $e3
    nop

jr_08b_4878:
    ld l, e
    nop
    and l
    nop
    ld h, c
    nop
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [$08]
    db $e4
    inc de
    ld c, e
    and h
    ld c, a
    and b
    ld c, h
    and e
    ld c, e
    and h
    add sp, $17
    rst $30
    ld [$07f8], sp
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [$08]
    ldh [rNR22], a
    ld c, e
    and h
    ld c, b
    and a
    ld c, a
    and b
    ld c, e
    and h
    db $ec

Call_08b_48af:
    inc de
    rst $30
    ld [$07f8], sp
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [$08]
    db $e4
    inc de
    ld c, e
    and h
    ld c, h
    and e
    ld c, e
    and h
    ld c, e
    and h
    db $ec
    inc de
    rst $30
    ld [$07f8], sp
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
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    ldh a, [$f0]
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

jr_08b_48ee:
    nop
    rst $38
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38

jr_08b_4900:
    nop
    nop
    nop
    nop
    nop
    nop

jr_08b_4906:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_08b_48ee

    and b
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_08b_4900

    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_08b_4906

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
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    db $e4
    nop
    ret nc

    nop
    ld c, $00
    adc e
    nop
    db $e3
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    jr nz, jr_08b_49bb

    sub c
    or h
    ld c, d
    or h
    ld c, d
    ld [hl], h
    adc d
    db $f4
    ld a, [bc]
    ld l, $d1
    rst $18
    jr nz, jr_08b_499a

    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    jr nz, jr_08b_4993

    pop de
    db $f4
    ld a, [bc]
    ld [hl], h
    adc d
    or h
    ld c, d
    or h
    ld c, d
    ld l, [hl]
    sub c
    rst $18
    jr nz, jr_08b_49b2

    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    jr nz, jr_08b_49eb

    sub c
    or h
    ld c, d
    ld [hl], h
    adc d
    or h
    ld c, d
    or h
    ld c, d
    ld l, [hl]
    sub c
    rst $18
    jr nz, jr_08b_49ca

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08b_4993:
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_08b_499a:
    cp a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    inc h
    inc h

jr_08b_49b2:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop

jr_08b_49bb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    ei
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop

jr_08b_49ca:
    rst $38
    nop
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
    rrca
    rrca
    db $10
    rra
    ld [hl+], a
    dec a
    daa
    jr c, jr_08b_4a10

    jr nc, jr_08b_4a09

    add hl, sp
    db $10
    rra
    rrca
    rrca
    nop
    nop
    nop

jr_08b_49eb:
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    rra
    ld [hl+], a
    dec a
    daa
    jr c, @+$31

    jr nc, @+$28

    add hl, sp
    db $10
    rra
    rrca

jr_08b_4a09:
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_08b_4a10:
    rst $38
    nop
    nop
    rst $38
    db $fd
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld hl, $a000
    nop
    adc $00
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $0282
    ld a, l
    cp e
    ld b, h
    rst $30
    ld [$04fb], sp
    cp e
    ld b, h
    add $39
    ld a, l
    add d
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $4682
    add hl, sp
    cp a
    ld b, b
    add a
    ld a, b
    cp e
    ld b, h
    cp e
    ld b, h
    add $39
    ld a, l
    add d
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld bc, $4682
    add hl, sp
    cp e
    ld b, h
    cp e
    ld b, h
    jp $fb3c


    inc b
    add $39
    ld a, l
    add d
    add e
    ld a, h
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

Call_08b_4a7b:
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
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    rlca
    rst $38
    rst $38
    rlca
    ld hl, sp+$07
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
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
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
    add b
    add b
    ld b, b

Jump_08b_4abd:
    ret nz

    ld b, b
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

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
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    inc b
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld d, b
    nop
    ld c, c
    nop
    inc b
    ldh [$e1], a
    nop
    ld [c], a
    nop
    pop hl
    nop
    and $00
    ldh [rP1], a
    ldh [rP1], a
    ld h, h
    add b
    ld h, l
    add b
    ld h, b
    add b
    ld l, c
    add b
    db $ed
    nop
    pop hl
    nop
    add sp, $00
    and $00
    db $ec
    nop
    ldh [rP1], a
    add sp, $00
    rst $20
    nop
    ld h, d
    add b
    ld l, b
    add b
    ld h, b
    add b
    ld l, d
    add b
    pop hl
    nop
    pop hl
    nop
    db $ec
    nop
    ld [c], a
    nop
    db $e4
    nop
    db $ec
    nop
    ld [c], a
    nop
    push hl
    nop
    ld l, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld l, c
    add b
    and $00
    ld [$e600], a
    nop
    db $e3
    nop
    db $e4
    nop
    db $ed
    nop
    ld [$1b00], a
    ldh [$f9], a
    nop
    db $fc
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc $00
    adc c
    ld b, $90
    rrca
    sub h
    dec bc
    reti


    ld b, $36
    ret nz

    jr jr_08b_4b80

jr_08b_4b80:
    ld c, $00
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
    rla
    nop
    rra
    nop
    ld e, $00
    rla
    nop
    rra
    nop
    dec d
    nop
    inc e
    nop
    ld e, $00
    stop
    inc de
    nop
    ld de, $1500
    nop
    ld [de], a
    nop
    jr jr_08b_4baa

jr_08b_4baa:
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    ld e, $00
    ld e, $00
    dec de
    nop
    inc e
    nop
    inc d
    nop
    inc e
    nop
    inc d
    nop
    inc d
    nop
    add hl, de
    nop
    jr jr_08b_4bc4

jr_08b_4bc4:
    stop
    stop
    inc d
    nop
    stop
    ld [de], a
    nop
    stop
    ld de, $1000
    nop
    inc d
    nop
    inc d
    nop
    stop
    inc d
    nop
    ld [de], a
    nop
    jr jr_08b_4be0

jr_08b_4be0:
    stop
    add sp, $00
    xor b
    nop
    xor b
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld [$9000], sp
    nop
    ld b, b
    nop
    ld d, b
    nop
    add hl, de
    nop
    xor d
    nop
    ld b, b
    nop
    jr nz, jr_08b_4bfe

jr_08b_4bfe:
    add b
    nop

Jump_08b_4c00:
    jr nc, jr_08b_4c02

jr_08b_4c02:
    sub c
    nop
    jr nz, jr_08b_4c06

jr_08b_4c06:
    ld b, b
    nop
    ld [hl+], a
    nop
    add b
    nop
    jr nz, jr_08b_4c0e

jr_08b_4c0e:
    inc d
    nop
    nop
    nop
    ld [$1800], sp
    nop
    ld d, h
    nop
    adc b
    nop
    ld [$2100], sp
    nop
    jr jr_08b_4c20

jr_08b_4c20:
    jr jr_08b_4c22

jr_08b_4c22:
    inc a
    nop
    ld a, h
    nop
    inc e
    nop
    cp h
    nop
    inc e
    nop
    ld [hl], c
    nop
    dec h
    nop
    db $f4
    nop
    ccf
    nop
    cp a

Jump_08b_4c35:
    nop
    ccf
    nop
    cp $00
    cp a
    nop
    sbc [hl]
    nop
    ld e, $00
    ccf
    nop
    rst $18
    nop
    rra
    nop
    ld a, a
    nop
    ld a, c
    ld b, $70
    rrca
    db $f4
    dec bc
    ld sp, hl
    ld b, $3f
    ccf
    ccf
    ccf
    ccf
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
    inc bc
    pop hl
    ld bc, $01e1
    add c
    ld bc, $0181
    pop bc
    ld bc, $01a1
    pop bc
    ld bc, $01c1
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    pop hl
    ld bc, $01c1
    pop bc
    ld bc, $01c1
    ld b, c
    ld bc, $0141
    ld bc, $8101
    ld bc, $01c1
    ld b, c
    ld bc, $01c1
    ld b, c
    ld bc, $01c1
    ld bc, $0101
    ld bc, $0101
    ld bc, $8101
    ld bc, $0141
    add c
    ld bc, $0181
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0181
    add c
    ld bc, $0141
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0181
    ld b, c
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    ld bc, $0101
    ld bc, $8101
    ld bc, $0101
    ld h, c
    ld bc, $0141
    ld bc, $4101
    ld bc, $0141
    pop bc
    ld bc, $0141
    pop bc
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    ld h, c
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop bc
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    pop hl
    ld bc, $01e1
    rra
    ld bc, $031f
    rra
    rlca
    rst $38
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    sbc c
    cp $99
    cp $99
    cp $9d
    cp $9d
    cp $9d
    cp $99
    cp $9d
    cp $9d
    cp $99
    cp $98
    rst $38
    sbc c
    cp $99
    cp $98
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    cp b
    rst $18
    sbc l
    ld a, [$fa9d]
    sbc l
    ld a, [$ff98]
    sbc l
    ld a, [$fe99]
    sbc b
    rst $30
    sbc c
    cp $98
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    ld a, [de]
    db $fd
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    sbc b
    rst $38
    jr @+$01

    adc b
    rst $38
    ld [$18ff], sp
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    ld a, [de]
    db $fd
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc h
    ei
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ld a, [de]
    db $fd
    sbc b

jr_08b_4de1:
    rst $38
    sbc d

jr_08b_4de3:
    db $fd
    sbc b
    rst $38
    ld a, [de]

jr_08b_4de7:
    db $fd
    sbc d
    db $fd
    ld a, [de]

jr_08b_4deb:
    db $fd
    sbc d
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]

jr_08b_4df5:
    db $fd
    ld a, [de]
    db $fd
    sbc b

jr_08b_4df9:
    ld a, a
    sbc d
    ld [hl], l
    sbc b
    ld a, a
    ld a, [de]
    db $fd
    jr c, jr_08b_4de1

    jr c, jr_08b_4de3

    jr @+$01

    jr c, jr_08b_4de7

    jr @+$01

    jr c, jr_08b_4deb

    jr @+$01

    cp b
    ld e, a
    jr @+$01

    jr @+$01

    jr c, jr_08b_4df5

    jr @+$01

    jr c, jr_08b_4df9

    jr @+$01

    ld e, b
    cp a
    sbc b
    ld a, a
    cp b
    ld c, a
    ld e, b
    cp a
    jr @+$01

    sbc b
    ld a, a
    sbc b
    ld a, a
    jr @+$01

    sbc b
    ld a, a
    jr @+$01

    jr @+$01

    sbc b
    ld a, a
    inc c
    ei
    adc h
    ld a, e
    ld [$14ff], sp
    ei
    sub b
    ld a, a
    nop
    rst $38
    sub b
    ld a, a
    sub b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    db $10
    rst $38
    ldh [$3f], a
    ldh a, [$2f]
    ld hl, sp+$27
    ldh a, [$2f]
    add sp, $37
    ldh a, [$2f]
    ld hl, sp+$27
    add sp, $37
    ld l, b
    rst $30
    ld l, b
    rst $30
    ldh [$3f], a
    add sp, $37
    add sp, $37
    add sp, $37
    add sp, $37
    add sp, $37
    ld [$e83d], a
    ccf
    jp hl


    ld a, $ea
    dec a
    ld [$ea35], a
    dec [hl]
    ld [$e935], a
    ld a, $ea
    dec [hl]
    xor c
    ld a, [hl]
    add sp, $3f
    add sp, $37
    add sp, $3f
    add sp, $3f
    add sp, $37
    add sp, $3f
    add sp, $37
    add sp, $37
    add sp, $37
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    add sp, $37
    cp b
    ld h, a
    ld a, b
    and a
    ld l, b
    cp a
    ld a, b
    and a
    ld l, c
    or [hl]
    add hl, sp
    and $29
    or $3a
    push hl
    dec hl
    db $f4
    dec a
    ld [c], a
    inc a
    db $e3
    dec l
    ld a, [c]
    inc a
    db $e3
    dec a
    ld a, [c]
    dec sp
    db $f4
    dec sp
    db $e4
    ld a, [hl-]
    push hl
    add hl, sp
    add $34
    db $eb
    ccf
    ret nz

    inc sp
    db $ec
    dec hl
    db $f4
    dec hl
    db $f4
    dec a
    jp nz, $ec33

    dec a
    ld [c], a
    inc sp
    db $ec
    inc sp
    call z, $e43b
    inc sp
    db $ec
    dec sp
    db $f4
    inc sp
    db $fc
    dec sp
    call nc, $fc33
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    dec sp
    db $f4
    add hl, sp
    add $31
    xor $ce
    ld sp, $31ce
    adc [hl]
    ld [hl], c
    adc $31
    adc $31
    call z, $cc33
    inc sp

Jump_08b_4efe:
    call z, $9c33
    ld h, e
    adc h
    ld [hl], e
    sbc [hl]
    ld h, c
    sbc h
    ld h, e
    adc h
    ld [hl], e
    sbc h
    ld h, e
    sbc h
    ld h, e
    adc h
    ld [hl], e
    ld a, e
    add h
    ld [hl], a
    adc b
    ld [hl], a
    xor b
    ld [hl], e
    adc h
    ld [hl], a
    xor b
    ld [hl], e
    adc h
    or e
    ld l, h
    ld [hl], a
    xor b
    adc h
    ld [hl], e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    xor h
    ld d, e
    xor l
    ld d, d
    xor l
    ld d, d
    xor h
    ld d, e
    xor h
    ld d, e
    cp l
    ld b, d
    xor h
    ld d, e
    cp h
    ld b, e
    xor [hl]
    ld d, c
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    xor [hl]
    ld d, c
    cp [hl]
    ld b, c
    xor a
    ld d, b
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    adc l
    ld a, [hl]
    inc c
    rst $38
    adc h
    ld a, a

Call_08b_4f68:
    adc h
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc h
    ld a, a
    adc b
    ld a, a
    adc h
    ld a, a
    adc c
    ld a, [hl]
    adc c
    cp $89
    cp $89
    cp $89
    cp $84
    ld a, a
    add l
    ld a, [hl]
    add h
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl]
    add e
    ld a, h
    ld a, l
    add d
    ld a, h
    add e
    ld a, l
    add d
    ld [hl], l
    adc d
    ld [hl], d
    adc l
    ld [hl], l
    adc d
    ld [hl-], a
    call $8e71
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    adc a
    ld a, b
    rst $08
    jr nc, jr_08b_4fbe

    ldh a, [$f0]
    rrca
    ldh a, [rIF]
    db $f4
    dec bc
    ldh a, [rIF]
    db $f4
    dec bc
    ld [hl], b
    adc a
    ld hl, sp+$07

jr_08b_4fbe:
    ld hl, sp+$07
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    adc e
    ld a, h
    add e
    ld a, h
    adc e
    ld a, h
    adc e
    ld a, h
    adc e
    ld a, h
    adc e
    ld a, h
    adc e
    ld a, h
    adc e
    ld a, h
    ld bc, $81fe
    ld a, [hl]
    dec bc
    db $fc
    ld a, h
    add e
    ld [hl], h
    adc e
    db $f4
    dec bc
    db $f4
    dec bc
    db $76
    adc c
    cp $01
    ld a, [hl]
    add c
    or $09
    db $76
    adc c
    ld [hl], h
    adc e
    or h
    ld c, e
    ld [hl], h
    adc e
    db $f4
    dec bc
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    adc e
    ld [hl], h
    bit 6, h
    add e
    ld a, h
    bit 6, h
    ld c, c
    or $43
    db $fc
    ld c, e
    db $f4
    ld c, c
    or $43
    db $fc
    ld c, c
    or $43
    db $fc
    ld l, d
    push de
    ld c, d
    push af
    call nz, Call_08b_4a7b
    push af
    call nz, $ca7b
    ld [hl], l
    add $79
    ld c, d
    push af
    ld b, h
    ei
    ld b, [hl]
    ld sp, hl
    ld b, h
    ei
    call nz, $447b
    ei
    call nz, Call_08b_467b
    ld sp, hl
    add $79
    ld b, h
    ei
    add $79
    ld b, h
    ei
    add $79
    call nz, $c67b
    ld a, c
    call nz, Call_08b_467b
    ld sp, hl
    ld b, h
    rst $38
    ld c, [hl]
    pop af
    call z, $c677
    ld a, c
    call nz, $c47b
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $ccff
    rst $38
    call z, $ccff
    rst $38
    call z, $cdff
    cp $dc
    rst $28
    call c, $ccef
    rst $38
    db $ec
    rst $18
    call nc, $dcef
    rst $28
    rst $10
    db $ec
    sbc $e5
    rst $10
    db $ec
    rst $18
    db $e4
    rst $30
    call z, $c5fe
    db $d3
    db $ec
    jp c, $d5e5

    ld [$e2dd], a
    push de
    ld [$fac5], a
    push hl
    jp c, $ead5

    add $f9
    jp nz, $c3fd

    db $fc
    db $db
    db $fc
    db $d3
    db $fc
    db $fd
    ld a, [$fcfb]
    ei
    db $fc
    reti


    cp $f9
    cp $d9
    cp $d9
    cp $fb
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    rst $18
    ld hl, sp-$25
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    reti


    cp $db
    db $fc
    ei
    db $fc
    ei
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    db $db
    db $fc
    reti


    cp $da
    db $fd
    jp c, $d9fd

    cp $d9
    cp $db
    db $fc
    call c, $dafb
    db $fd
    reti


    cp $d8
    rst $38
    jp c, $fafd

    db $dd
    reti


    or $d9
    cp $d9
    or $d8
    rst $38
    ret c

    rst $38
    jp c, $d9f5

    cp $d8
    rst $30
    ret c

    rst $30
    ret c

    rst $30
    ret c

    rst $30
    ret c

    rst $30
    ld hl, sp-$29
    ret c

    rst $30
    ret c

    rst $30
    ret c

    rst $30
    ld hl, sp-$29
    ret c

    rst $38
    ret c

    rst $38
    ld hl, sp-$21
    ret c

    rst $38
    ret c

    rst $38
    ld hl, sp-$21
    ld hl, sp-$31
    ret c

    rst $30
    ld a, [$f8cd]
    rst $10
    ret c

    rst $38
    ret c

    rst $28
    ret c

    rst $30
    ret c

    rst $20
    ret c

    rst $28
    ret c

    rst $20
    ret c

    rst $20
    ret z

    rst $30
    jp nc, $eaed

    push de
    jp z, $e0f5

    rst $18
    add sp, -$29

jr_08b_5142:
    ld [c], a
    db $dd
    add sp, -$29
    ldh [$df], a

jr_08b_5148:
    ldh [$df], a
    ldh [$df], a

jr_08b_514c:
    ldh [$df], a
    ldh [$df], a
    ld c, l
    cp $cc
    ld a, a
    ld c, h
    rst $38
    call z, $4c7f
    rst $38
    call nc, Call_08b_656f
    sbc $5c
    rst $28
    ld [hl], h
    rst $08
    ld l, b
    rst $18

jr_08b_5164:
    ld [hl], l
    adc $60
    rst $18
    ld h, b
    rst $18

jr_08b_516a:
    ld [hl], h
    rst $08
    ld h, b
    rst $18

jr_08b_516e:
    jr nz, @-$1f

    rst $08
    jr nc, jr_08b_5142

    jr nc, jr_08b_51c4

    or b
    swap h
    rst $08
    jr nc, jr_08b_516a

    db $10
    rst $08
    jr nc, jr_08b_516e

    db $10
    rst $28
    db $10
    ld l, e
    sub h
    db $ed
    ld [de], a

jr_08b_5186:
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $08
    jr nc, @-$0f

    db $10
    rst $18
    jr nz, @-$1f

    jr nz, jr_08b_5164

    jr nc, jr_08b_5186

jr_08b_5197:
    db $10

jr_08b_5198:
    rst $18
    jr nz, jr_08b_5198

jr_08b_519b:
    ld [bc], a
    rst $18
    jr nz, @-$03

jr_08b_519f:
    inc b
    rst $38

jr_08b_51a1:
    nop
    rst $38

jr_08b_51a3:
    nop
    ld a, a

jr_08b_51a5:
    add b
    rst $18
    jr nz, jr_08b_5148

jr_08b_51a9:
    ld h, b
    rst $18
    jr nz, jr_08b_514c

jr_08b_51ad:
    ld h, b
    rst $18

jr_08b_51af:
    jr nz, jr_08b_51b1

jr_08b_51b1:
    rst $38
    ld [$00ff], sp
    rst $38
    jr z, jr_08b_5197

    ld l, b
    sbc a
    jr z, jr_08b_519b

    xor b
    ld e, a
    jr z, jr_08b_519f

    jr z, jr_08b_51a1

    jr z, jr_08b_51a3

jr_08b_51c4:
    jr z, jr_08b_51a5

    adc b
    ld a, a
    jr z, jr_08b_51a9

    xor b
    ld e, a
    jr z, jr_08b_51ad

    jr z, jr_08b_51af

    jr z, jr_08b_51b1

    jr z, @-$1f

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp

jr_08b_51e7:
    rst $38
    ld [$08ff], sp

jr_08b_51eb:
    rst $38
    ld [$08ff], sp

jr_08b_51ef:
    rst $38
    ld [$08ff], sp

jr_08b_51f3:
    rst $38
    ld c, b

jr_08b_51f5:
    cp a
    ld c, b

jr_08b_51f7:
    cp a
    ld c, b

jr_08b_51f9:
    cp a
    ld [$48ff], sp

jr_08b_51fd:
    cp a
    ld [$08ff], sp

jr_08b_5201:
    rst $38
    ld [$28ff], sp

jr_08b_5205:
    rst $18
    jr z, jr_08b_51e7

    jr z, @-$1f

    jr z, jr_08b_51eb

    jr z, @-$1f

    jr z, jr_08b_51ef

    jr z, @-$1f

    jr z, jr_08b_51f3

    jr nz, jr_08b_51f5

    jr z, jr_08b_51f7

    jr z, jr_08b_51f9

    jr z, @-$1f

    jr nz, jr_08b_51fd

    jr z, @-$1f

    jr z, jr_08b_5201

    jr z, @-$1f

    jr z, jr_08b_5205

    ld [$28ff], sp
    rst $18
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$28ff], sp
    rst $18
    jr z, @-$1f

    jr z, @-$1f

    jr z, @-$1f

    ld [$28ff], sp
    rst $18
    jr c, @-$2f

    nop
    rst $38
    nop
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld a, [bc]

Call_08b_526b:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec d
    ld d, $17
    jr jr_08b_528e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08b_529e

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08b_52b1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_08b_528e:
    jr nc, jr_08b_529a

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $0a
    scf
    ld a, [bc]
    ld a, [bc]

jr_08b_529a:
    ld a, [bc]
    ld a, [bc]
    jr c, jr_08b_52d7

jr_08b_529e:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld b, h

jr_08b_52b1:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_08b_52d7:
    ld e, a
    ld a, [bc]
    ld h, b
    ld h, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
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
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
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
    inc b
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
    nop
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
    nop
    rlca
    rlca
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
    inc b
    inc b
    inc b
    nop
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
    inc b
    inc b
    nop
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
    inc b
    inc b
    inc b
    ld bc, $0707
    rlca
    rlca
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    inc b
    inc b
    inc b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, HeaderLogo
    nop
    nop
    ld bc, $0400
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ld bc, $0000
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
    inc b
    ld bc, $0000
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    inc b
    ld bc, $0005
    nop
    ld bc, $0401
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
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

jr_08b_5487:
    ld bc, $0401
    inc b
    inc b
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    ld [$6f0a], sp
    and d

jr_08b_54d3:
    ld l, a
    inc hl
    ld l, a
    ld [hl], e
    daa
    adc l
    scf
    ld [hl], c
    sub a
    pop de
    cp a
    push af
    sbc e
    ld b, $db
    ld [$845b], sp
    ld e, e
    ld a, [bc]
    ld c, l
    ld c, e
    dec l

Call_08b_54ea:
    ld c, b
    dec l
    dec c
    inc l
    add a
    inc h
    ld b, d
    inc d
    cp c
    ld d, $db
    ld d, $a1
    ld d, $e3
    ld a, [bc]
    call c, $f10b
    dec bc
    ld c, c
    add l
    jr z, jr_08b_5487

    ld l, b
    add l
    ld e, b
    and l
    jr nc, jr_08b_54d3

    dec h
    ld d, d
    jr c, jr_08b_554f

    db $10
    dec hl
    db $10
    dec hl
    ccf
    ld hl, $211f
    ld [de], a
    ld de, $110c
    dec c
    db $10
    ld [bc], a
    ld [$080b], sp
    ld b, $08
    rlca
    ld [$0405], sp
    rlca
    inc b
    inc bc
    inc b
    nop
    ld [bc], a

jr_08b_552a:
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $8101
    ld bc, $0181
    add c
    ld bc, $0080
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ld b, $06
    ld b, b
    ld b, b
    ld l, $d1
    rst $38
    nop
    rst $18
    jr nz, jr_08b_552a

jr_08b_554f:
    inc h
    call nc, $fe2b
    ld bc, $01fe
    xor c
    ld d, a
    rlca
    rst $38
    rrca
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld hl, sp+$67
    ld hl, sp+$7f
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp-$01
    cp b
    cp e
    cp h
    cp e
    db $fc
    sbc a
    db $fc
    reti


    db $fc
    db $db
    db $fc
    jp c, Jump_08b_4efe

    cp $4f
    cp $5e
    xor $46
    rst $38
    dec b
    rst $38
    ld b, $ff
    db $76
    xor a
    rrca
    db $76
    ld a, [de]
    ld [hl], a
    ld a, [c]
    ld e, a
    rra
    ld e, e

jr_08b_55ae:
    ld e, a
    cp e
    add hl, de
    cp a
    res 7, l
    rrca
    call $cd1f
    inc e
    rst $08
    db $e4
    sbc a
    call Call_000_1797
    rst $08
    rlca
    rst $08
    inc bc
    rst $28
    ld b, a
    db $eb
    or a
    db $e3
    or l
    db $e3
    inc hl
    push af
    dec sp
    push af
    rst $00
    ld a, c
    ld d, $79
    reti


    ld a, [hl-]
    add hl, hl
    cp d
    dec bc
    cp b
    ld a, [bc]
    cp h
    xor e
    ld e, h
    ld [c], a
    ld e, l
    or [hl]
    ld b, c
    sbc $20
    rst $18
    jr nz, jr_08b_55ae

    jr nz, jr_08b_5652

    sub b
    rlca
    cp b
    dec h
    sub b
    ld a, e
    add h
    ld a, [hl-]
    ld b, c
    ld c, c
    ld a, a
    ld c, c
    ld l, a
    ld hl, $203f
    dec [hl]
    inc h
    db $fd
    sub h
    db $76
    call nc, $943e
    ld a, [hl]
    ld a, [c]
    rra
    ld c, d
    cp a
    xor b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    or e
    and c
    sub e
    add l
    sub e
    and h
    ld e, e
    or [hl]
    ld c, e
    db $e4
    ld c, e
    ldh [rWX], a
    jp nz, Jump_000_1949

    ld l, l
    ld b, b
    dec l
    ld d, d
    dec l
    ld b, $24
    sub b
    ld h, $a0
    ld b, $82
    inc d
    ld [c], a
    inc d
    ld l, l
    ld [de], a
    inc hl
    ld [de], a
    and c
    ld a, [bc]
    dec c
    adc d
    inc b
    adc e
    nop
    adc e
    ld [hl-], a
    add c
    ld e, d
    add l
    sbc $85

jr_08b_5652:
    sbc b
    push bc
    cp b
    push bc
    or b
    jp $c2a6


    rst $30
    jp nz, $e2c3

    rst $38
    rst $38
    ld hl, $83df
    rst $38
    adc a
    di
    add e
    rst $38
    adc c
    rst $30
    and l
    db $db
    pop de
    rst $28
    push bc
    ei
    rst $10
    rst $38
    rst $18
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    and a
    ld [hl], a
    scf
    ld h, a
    rst $20
    scf
    db $e3
    scf
    cp e
    inc sp
    db $db
    inc sp
    ld e, e
    inc de
    ld de, $7519
    add hl, de
    dec [hl]
    adc c
    ld a, l
    adc c
    push hl
    adc c
    db $10
    call $c4aa
    ld h, [hl]
    call nc, Call_08b_54ea
    ld d, b
    and $61
    ld h, d
    inc de
    ld [$2b90], a
    sbc b
    ld h, c
    swap c
    ld d, h
    ld sp, $b519
    ld d, c
    or l
    cp e
    ld d, c
    sbc $58
    rst $18
    ld e, b
    inc l
    ld e, b
    ld l, h
    inc e
    ld d, l
    inc l
    ld b, a
    xor h
    db $ed
    or h
    ret nz

    cp [hl]
    di
    sub [hl]
    di
    sub $fb
    add $f7
    set 3, e
    db $eb
    push hl
    db $eb
    ld a, [$ece5]
    push af
    ld a, [c]
    push af
    ld hl, sp-$0b
    ld hl, sp-$09
    ldh a, [$fb]
    rst $38
    ld a, [$faff]
    db $fc
    ei
    cp $fd
    cp $fd
    cp $fd
    db $fd
    cp $ff
    cp $ff
    cp $fe
    rst $38
    scf
    rst $38
    scf
    rst $38
    cp a
    cp a
    rst $18
    cp a
    sbc a
    rst $38
    rst $18
    sbc $df
    rst $18
    ei
    sbc $5b
    sbc $4f
    rst $38
    ld c, a
    rst $38
    ld a, l
    rst $28
    ld a, l
    rst $28
    daa
    rst $28
    ld [hl], $ef
    ld e, a
    and a
    ld c, a
    or a
    sbc [hl]
    daa
    ld b, a
    ld [hl], $0b
    db $76
    ld l, e
    ld d, [hl]
    ld b, $5b
    ld l, $5b
    ld c, a
    cp e
    cp l
    sbc e
    add hl, de
    xor a
    ld c, e
    adc l
    call Call_08b_5f0d
    adc l
    ld b, l
    sbc l
    add $9d
    rst $38
    rst $38
    jr nc, @+$01

    ld a, a
    rst $38
    sbc a
    rst $38
    ld d, [hl]
    rst $38
    ld h, a
    rst $38
    di
    rst $38
    di
    rst $38
    rst $30
    rst $38
    or c
    rst $38
    sbc c
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    cp a
    ccf
    cp a
    ccf
    ccf
    cp a
    cp a
    cp a
    rst $18
    sbc a
    rst $18
    sbc a
    rst $18
    sbc a
    sbc a
    rst $18
    cp a
    ld e, a
    xor a
    ld e, a
    rrca
    ld a, a
    rlca
    ld l, a
    sbc a
    daa
    xor a
    rla
    sbc a
    daa
    xor a
    inc sp
    jp $ab37


    rla
    db $e3
    dec de
    add e
    dec de
    ld b, e
    sbc e
    add hl, de
    adc a
    reti


    adc l
    add hl, bc
    adc l
    and c
    call $cda2
    ld [hl+], a
    push bc
    ld h, [hl]
    call nz, Call_08b_63d4
    ld b, b
    ld h, e
    ld [hl], $e3
    dec bc
    db $e3
    cpl
    di
    ld d, l
    or e
    adc a
    ld [hl], c
    jp hl


    ld de, $59e4
    jp hl


    ld e, b
    ld c, a
    sbc b
    reti


    xor b
    db $eb
    adc h
    xor $8c
    cp [hl]
    call z, $ccf6
    jp hl


    sub $d8
    and $f7
    ld [$eef3], a
    db $eb
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$fb], a
    pop hl
    jp z, $c8e5

    rst $20
    ret z

    reti


    ret nz

    jp c, $d865

    dec h
    ret nz

    and l
    db $f4
    push hl
    ld a, c
    ld a, h
    or h
    inc a
    or b
    add h
    ld a, b
    call nz, $f4a2
    ld a, [c]
    db $f4
    cp $78
    ld a, [$fd9c]
    sbc $ba
    ld l, [hl]
    rst $30
    ld l, d
    or l
    ld [hl], d
    ld sp, $1fbb
    cp e
    dec sp
    sbc a
    ld [hl], d
    cp l
    ld d, a
    db $e4
    call nc, $e7e6
    and $a2
    rst $20
    di
    rst $20
    or a
    db $e3
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, l
    rst $38
    rst $08
    rst $38
    ld a, c
    rst $38
    ld sp, $59ff
    rst $38
    dec a
    rst $38
    ld e, d
    rst $38
    dec e
    rst $38
    inc a
    rst $38
    cp [hl]
    rst $38
    xor [hl]
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $18
    ld e, a
    rst $28
    rst $18
    ld l, a
    rst $18
    ld l, a
    ld a, a
    ld a, a
    ld e, a
    ccf
    rst $28
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    sub e
    cp [hl]
    sub e
    cp [hl]
    cp c
    sbc $df
    call c, $dcf9
    ld a, e
    call c, $dc6b
    ld l, b
    sbc $cc
    ld a, [hl]
    ld e, b
    ld l, [hl]
    db $fc
    ld l, [hl]
    ret z

    ld l, [hl]
    inc l
    xor $05
    xor $45
    xor [hl]
    rrca
    and h
    sbc a
    inc h
    call c, $d527
    ld h, $6d
    ld d, $6f
    ld d, $cb
    ld [hl], $be
    jp nc, $de33

    sub [hl]
    dec de
    and a

jr_08b_58c3:
    ld a, [de]
    xor [hl]
    dec de
    adc $1b
    adc d
    dec de
    cp l
    dec bc
    dec bc
    dec sp
    rst $38
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
    cp h
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    cp a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld c, b
    ld c, b
    ld c, b
    ld l, l
    ld c, b
    rst $28
    nop
    ld l, [hl]
    nop
    ei
    jr nz, jr_08b_58c3

    inc h
    xor l
    and l
    dec l
    dec b
    dec h
    ld bc, $0401
    dec l
    ld b, h
    inc [hl]
    nop
    or c
    ld b, b
    adc d
    ld b, h
    dec b
    ret nz

    ld b, $c0
    ld b, $c0
    ld d, $c0
    ld d, $e0
    ld d, $c0
    ld [bc], a
    ld b, b
    ld [de], a
    nop
    sbc [hl]
    nop
    adc a
    add l
    nop
    adc c
    nop
    adc e
    nop
    add e
    ld [$00ca], sp
    add $08
    nop
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    xor h
    rst $38
    cp $ff
    db $dd
    rst $38
    call c, $dfff
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$0b
    ld a, [$fea1]
    cp b
    rst $30
    db $fd
    ld a, [c]
    sbc l
    ld a, [c]
    call c, $def3
    ld sp, hl
    sub d
    cp h
    sub d
    cp h
    or d
    call c, $dc7a
    ld e, d
    call c, $d85d
    ld l, l
    ret c

    ld l, $d8
    ld e, b
    sbc $58
    ld e, d
    ld e, b
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, c
    sbc $49
    db $fc
    ld c, l
    ld a, [hl]
    dec bc
    cp $0d
    cp $09
    xor $0d
    cp $0d
    db $ec
    dec c
    cp $2d
    ld a, [hl]
    dec l
    cp $24
    cp $7e
    inc h
    ccf
    inc [hl]
    cp a
    inc [hl]
    cp a
    inc h
    scf
    inc h
    db $76
    inc d
    ld [hl], h
    ld [hl], h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $9cff
    rst $38
    call c, Call_08b_5cff
    rst $38
    ld e, h
    rst $38
    sbc $ff
    sbc $ff
    ld d, [hl]
    rst $38
    db $76
    rst $38
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    db $76
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd

jr_08b_5a27:
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
    cp $ff
    db $fd
    cp $fd
    cp $fd

jr_08b_5a3d:
    cp $1d
    or $ef
    ld d, $ff

jr_08b_5a43:
    ld b, $ff
    ld b, $fd
    rlca
    xor $15
    pop hl
    rra
    rst $28

jr_08b_5a4d:
    rla
    db $ed
    rla
    inc bc
    ld c, e
    ld b, e
    ld c, a
    add a
    ld e, a
    add a
    ld c, a
    add a
    ld c, a
    add a
    ld l, a
    add c
    ld l, e
    add b
    ld c, e
    add b
    ld [hl+], a
    add b
    ld b, b
    add b
    jr z, jr_08b_5a27

    ld hl, $2180
    add b
    nop
    jp nc, $c200

    jr z, jr_08b_5a43

    ld [$28d4], sp
    ret nc

    ld [$08d0], sp
    ret nc

    jr z, jr_08b_5a4d

    jr z, jr_08b_5a3d

    inc c
    ld b, d
    inc c
    jp nc, $c22d

    dec a
    jp nz, $d33d

    inc l
    sub $29
    jp nz, Jump_000_003d

    rst $38
    rst $38
    rst $38
    ld d, e
    rst $38
    pop hl
    rst $38
    add l
    rst $38
    ld bc, $01ff
    rst $38
    dec d
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    daa
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ldh [rIE], a
    xor $f1
    rst $18
    ldh [$c0], a
    rst $38
    ldh [$f1], a
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld l, e
    sub h
    ld sp, hl
    ld b, $e8
    ld d, $ad
    ld d, d
    cp l

Jump_08b_5aff:
    ld b, d
    cp [hl]
    ld b, c
    db $ec
    ld d, e
    rst $28
    ld d, e
    sbc a
    ld h, e
    cp $43
    rst $00
    ld a, d

jr_08b_5b0c:
    ei
    cp $f9
    cp $b1
    db $fc
    or b
    cp $b1
    db $fc
    sub e
    db $fc
    sub e
    db $fc
    sub e
    db $fc
    di
    db $fc
    di
    db $fc
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ld hl, sp-$0d
    ldh a, [$f3]
    db $fc
    inc de
    ld hl, sp+$13
    call c, $f817
    inc de
    call c, $f817
    rla
    ret nc

    inc de
    call c, $dc13
    inc de
    call c, $dc73
    ld [hl], a
    ret c

    ld [hl], a
    ret c

    ld [hl], a
    ret c

    ld [hl], a
    ret c

    scf
    ret c

    scf
    ret c

    scf
    ret c

    scf
    ret c

    scf
    ret c

    scf
    sbc b
    scf
    jr jr_08b_5b0c

    jr @-$47

    ld e, b
    or a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    add a
    ld e, b
    and a
    ld e, b
    add a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and l
    ld e, b
    or l
    ld c, b
    and l
    ld e, b
    and l
    ld e, b
    or l
    ld c, b
    and a
    ld e, b
    and e
    ld e, h
    rst $28
    jr @-$53

    ld e, h
    and a
    ld e, a
    and e
    ld e, h
    and a
    ld e, b
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$08d7], sp
    rst $10
    ld [$09b6], sp
    di
    inc c
    di
    inc c
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0cf3], sp
    rst $30
    ld [$0877], sp
    ld [hl], a
    adc b
    ld d, e
    adc h
    ld d, e
    xor h
    ld d, e
    xor h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld d, a
    adc b
    ld d, a
    adc b
    ld d, a
    xor b
    ld d, a
    xor b
    ld d, a
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $10
    adc b
    rst $10
    adc b
    rst $30
    adc b
    rst $10
    adc b
    rst $10
    xor b
    rst $00
    cp b
    rst $10
    xor b
    rst $10
    xor b
    rst $10
    xor b
    rst $10
    xor b
    rst $10
    xor b
    db $d3
    xor h
    pop de
    xor h
    db $d3
    xor h
    db $d3
    xor h
    sub e
    db $ec
    sub e
    db $ec
    sub e
    db $ec
    sub e
    db $ec
    and e
    call c, $ff84
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec bc
    db $f4
    ld a, e
    add h
    ld l, a
    sub b
    ld c, e
    or h
    dec b
    ld a, [$f20d]
    ld b, l
    cp d
    rrca
    ldh [rNR33], a
    ld [c], a
    rra
    ldh [$0e], a
    pop af
    ld e, $e1
    ld bc, $2153
    ld d, e
    ld hl, $0851
    ld d, e
    and b
    ld d, l
    jr z, @+$59

    jr z, @+$57

    add c
    ld d, c
    adc c
    ld de, $0189
    xor c
    ld bc, $15a9
    ret z

    dec b
    adc b
    dec b
    ret z

    ld de, $10ca
    jp hl


    db $10
    db $ec
    ld de, $10ed
    xor $00
    cp $01
    jp hl


    inc bc
    jp hl


    inc bc
    xor $01
    xor $01
    call c, $dc03
    ld bc, $00df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $03de
    rst $18
    ld [bc], a
    rst $18
    ld [bc], a
    ld sp, hl
    ld b, $dd
    ld b, $df
    ld c, $cf
    ld c, $fb
    ld b, $ff
    nop
    ld a, [$ff01]
    ld bc, $01ff
    ld hl, sp+$03
    db $fc
    inc bc
    ld hl, sp+$03
    db $fd
    inc bc
    xor a
    inc bc
    sbc [hl]
    ld bc, $00ee
    ld a, [$f600]
    nop
    ld l, [hl]
    nop
    ld a, d
    nop
    ld l, [hl]
    nop
    halt
    or $00
    ld a, d
    nop
    rst $28
    nop
    cp $00
    dec sp
    ret nz

    db $eb
    nop
    di
    nop
    xor c
    nop
    add b
    nop
    xor l
    nop
    and e
    nop
    or l
    nop
    rst $20
    nop
    ld h, l
    nop
    ld h, l
    nop
    push hl
    nop
    push hl
    nop
    and l
    ld b, b
    push af
    nop
    or e
    ld b, b
    db $e3
    nop
    pop af
    nop
    pop hl
    nop
    push hl
    nop
    push hl
    nop
    push af
    nop
    ld l, l
    nop
    ldh a, [rSB]
    ld b, l
    nop
    ld h, l
    nop
    push hl
    nop
    push hl
    nop
    push bc

Call_08b_5cc1:
    nop
    xor a
    ld b, b
    db $eb
    nop
    sbc a
    ld b, b
    rst $10
    nop
    or a
    ld b, b
    sbc a
    ld b, b
    cp a
    ld b, b
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    db $dd
    ld [bc], a
    cp l
    ld b, d
    cp l
    ld b, d
    xor a
    ld b, b
    ld sp, hl
    ld [bc], a
    rst $38
    nop
    cp l
    ld b, d
    or h
    ld c, e
    rst $18
    rst $18
    ret z

    ret z

    db $f4
    db $f4
    add e
    sbc h
    di
    inc c
    ei
    inc b
    ei
    inc b
    ei

Call_08b_5cff:
    inc b
    di
    inc b
    ld a, [$fd04]
    ld [bc], a
    add l
    ld [bc], a
    inc bc
    nop
    jp nz, $c201

    ld bc, $01e0
    cpl
    ld a, e
    ccf
    ld a, a
    ei
    dec a
    rst $38
    add hl, sp
    ld sp, hl
    dec sp
    rst $38
    ccf
    rst $38
    ccf
    rra
    ld a, a
    ld c, a
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    or e
    ld a, a
    rst $38
    scf
    rst $38
    ld h, a
    sbc a
    ld l, a
    sbc a
    ld [hl], a
    ld [hl], a
    rst $30
    rst $20
    rst $30
    rst $30
    rst $28
    ld l, a
    rst $18
    rst $38
    ld e, a
    rst $18
    daa
    cp e
    ld l, a
    rst $30
    ld l, e
    rst $28
    di
    db $db
    rst $30
    xor $df
    or $df
    ld a, [$3fb7]
    rst $30
    db $fc
    ld [hl], h
    cp $76
    rst $38
    ld h, a
    cp $66
    ld a, a
    rst $20
    ld l, a
    rst $20
    cp a
    rst $18
    adc l
    adc a
    inc c
    rrca
    inc c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    add l
    adc a
    add l
    adc a
    dec b
    rrca
    dec b
    rrca
    dec b
    rrca
    dec c
    rrca
    ld [$090f], sp
    rrca
    ld [$080f], sp
    rrca
    dec c
    rrca
    inc c
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld a, [de]
    rra
    ld a, [de]
    rra
    ld a, [de]
    rra
    dec de
    rra
    rla
    rra
    ld d, $1f
    dec de
    rla
    dec e
    rla
    rla
    rra
    dec e
    rla
    dec e
    rla
    ld e, $17
    ld e, $17
    dec e
    rlca
    ld e, $07
    jr jr_08b_5dbf

    add hl, de
    rlca
    ld a, [de]
    rlca
    jr jr_08b_5dc5

    add hl, de

jr_08b_5dbf:
    rlca
    ld a, [hl-]
    daa
    jr c, jr_08b_5deb

    ld [hl-], a

jr_08b_5dc5:
    cpl
    ld sp, $322f
    cpl
    jr c, jr_08b_5dfb

    inc sp
    cpl
    ccf
    cpl
    ld a, [hl-]
    cpl
    ld l, $3f
    cpl
    ccf
    ld a, $2f
    ld a, $2f
    scf
    cpl
    ld [hl], $3f
    inc a
    cpl
    scf
    cpl
    scf
    rra
    ld [hl], b
    ld a, a
    ld d, c
    ld a, a
    ld [hl], c
    ld e, a
    ld b, b

jr_08b_5deb:
    ld a, a
    ld d, e
    ld a, a
    pop de
    ld a, a
    ret nc

    ret nc

    nop
    nop
    rrca
    nop
    cp a
    ld b, b
    rst $38
    nop
    ei

jr_08b_5dfb:
    inc b
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    nop
    jp c, Jump_08b_4c00

    ld [bc], a
    add [hl]
    nop
    add e
    nop
    add c
    nop
    add c
    nop
    inc bc
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    call $ffff
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    sub b
    ldh a, [$80]
    ldh a, [$90]
    ldh [$80], a
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    db $fc
    ld bc, $07ff
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    inc sp
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rrca
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
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    ld e, $ff
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld l, $ff
    rrca
    rst $38
    cpl
    rst $38
    dec hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    ld [hl], c
    rst $38
    inc l
    rst $38
    ld sp, $70ff
    rst $38
    jr c, @+$01

    ld sp, $70ff
    rst $38
    ld [hl], b
    rst $38
    ld d, c
    cp $71
    cp $51
    cp $f9
    cp $70
    cp $68
    cp $fa
    cp $e4
    cp $ee
    db $fc
    and [hl]
    db $fc
    ld l, $fc

jr_08b_5ec6:
    ld [hl+], a
    db $fc
    jr nz, jr_08b_5ec6

    xor b
    db $fc
    add sp, -$04
    ld [hl], b
    db $fc
    db $ec
    db $fc
    db $fc
    db $fc
    db $f4
    db $fc
    db $f4
    ld hl, sp-$74
    ld hl, sp-$54
    ld hl, sp-$01
    cp $f4
    adc e
    nop
    nop
    nop
    rrca
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc d
    nop
    ret


    ld [bc], a
    add [hl]
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld a, b
    nop
    reti


    nop
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
    rst $38

Call_08b_5f0d:
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [$feff]
    rst $38
    cp $ff
    xor $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $ff
    cp $ff
    cp $7e
    cp $fe
    cp $fc
    cp $be
    db $fc
    cp d
    db $fc
    ldh a, [$fc]
    ldh a, [$fc]
    jr c, @+$3e

    inc a
    inc a
    inc a
    inc a
    inc a
    inc a

jr_08b_5f46:
    ld [hl], h
    ld a, b

jr_08b_5f48:
    ld [hl], h
    ld a, b
    ldh a, [$f8]
    jr nc, jr_08b_5f46

    jr nz, jr_08b_5f48

    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ldh a, [$78]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$a0]
    ldh a, [$b0]
    ldh [$d0], a
    ldh [$d0], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ldh [$80], a
    ldh [rNR41], a
    ret nz

    and b
    ret nz

    ldh [$c0], a
    ldh [$c0], a
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

    ret nz

    add b
    ret nz

    add b
    ld b, b
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

jr_08b_5f9e:
    add b
    nop
    dec l
    add b
    dec c
    add b
    dec [hl]
    adc b
    and h
    ld [$00ad], sp
    xor a
    nop
    rra
    nop
    dec de
    nop
    ld e, d
    nop
    rrca
    db $10
    ld e, l
    nop
    ld c, a
    db $10
    ld a, a
    nop
    rst $30
    nop

jr_08b_5fbc:
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    sbc e
    jr nz, jr_08b_5f9e

    ld [hl+], a
    db $ed
    ld [bc], a
    db $dd
    ld [hl+], a
    rst $08
    jr nz, jr_08b_5fbc

    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp e
    ld b, b
    cp e
    ld b, h
    cp e
    ld b, h
    rlca
    rst $10
    ret z

    ret z

    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld e, [hl]
    ld bc, $03dc
    ld l, $01
    ldh [$e1], a
    ret z

    ret z

    ldh [$e0], a
    ret z

    ret z

    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld l, b
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    cp a
    sbc a
    cp e
    sbc e
    rst $38
    sbc d
    rst $38
    cp [hl]
    rst $38
    cp a
    ld a, a
    cp a
    ld a, h
    sbc [hl]
    ld e, a
    ld e, h
    cp a
    ld e, h
    ld a, h
    ld a, [hl]
    ld [hl], a
    cp $77
    or $f6
    rst $38
    cp $7f
    db $db
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    db $fd
    ccf
    sbc a
    ld l, a
    ld e, a
    rst $28
    ld l, d
    db $dd
    db $e3
    ld e, h
    rst $28
    ld e, b
    xor a
    ld e, c
    cp $19
    rst $38
    db $10
    xor $11
    xor $11
    rst $28
    db $10
    adc $31
    rst $18
    ld hl, $21df
    ld e, a
    ld hl, $21df
    rst $18
    ld hl, $01f7
    rst $30
    inc bc
    xor a
    ld b, a
    ld a, [hl-]
    ld b, l
    cpl
    ld b, l
    and a
    ld c, l
    ld h, $4f
    xor [hl]
    ld b, e
    db $fd
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    push de
    inc bc
    ld d, a
    add e
    ld e, e
    add a
    rst $18
    inc c
    rst $18
    inc c
    ld e, a
    adc h
    ld l, e
    adc h
    rst $30
    add hl, bc
    cp l
    inc bc
    xor a
    nop
    sbc a
    nop
    sbc e
    nop
    cp a
    nop
    sbc a
    nop
    cp h
    ld bc, $01fe
    ld a, [hl]
    ld bc, $007b
    ld a, a
    nop
    ld a, a
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    ld bc, $07fb
    db $fd
    dec b
    db $fd
    dec b
    rst $30
    rlca
    ei
    rlca
    db $fc
    inc bc
    push af
    dec bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ei
    dec b
    ld sp, hl
    rlca
    jp hl


    rlca
    db $e3
    rlca
    db $e3
    rra
    ei
    rrca
    jp c, $df0f

    cpl
    db $db
    dec hl
    srl e
    rst $08
    rra
    or e
    rla
    or d
    ld d, a
    sub e
    ld e, a
    sbc d
    ld d, a
    sbc [hl]
    ld [hl], a
    rst $30
    ld [$196e], sp
    jp nz, $bc39

    inc bc
    ld b, a
    cp a
    rst $38
    rst $38
    rrca
    rst $38
    ld e, c
    cp $09
    cp $11
    xor $1c
    rst $20
    add hl, bc
    rst $30
    adc a
    ld [hl], e
    add a
    ld a, e
    ld d, l
    xor e
    ld bc, $ecff
    rla
    rst $38
    ld c, $fe
    rrca
    ld sp, hl
    rrca
    ld a, [$fc0d]
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    sbc a
    xor $9c
    rst $08
    or $cd
    ei
    pop hl
    rst $30
    rst $28
    ld a, l
    ei
    ei
    ld [hl], c
    or l
    ld [hl], c
    ld [hl], l
    ld [hl], e
    push hl
    di
    ei
    db $e3
    ld b, e
    and a
    rst $30
    rlca
    rst $18
    rlca
    rst $38
    rrca
    pop bc
    rra
    cp b
    dec [hl]
    rst $38
    ld h, b
    daa
    and b
    jp hl


    inc b
    db $e4
    dec b
    ld a, [$e2e5]
    jp hl


    ei
    ret z

    rst $08
    reti


    push de
    ld e, e
    add hl, de
    ld d, e
    rst $30
    db $d3
    or a
    di
    cp l
    inc sp
    di
    dec a
    rst $20
    db $fd
    xor $ed
    call z, $fefd
    rst $38
    cp $f7
    cp $e3
    ld sp, hl
    and d
    ld hl, sp-$7e
    dec a
    jp nz, Jump_08b_70ff

    ret c

    scf
    ld [hl], a
    adc [hl]
    rst $38
    adc [hl]
    db $ed
    sbc $ea
    db $fd
    rst $38
    ld a, c
    rst $30
    ld a, e
    rst $28
    inc de
    rst $30
    dec de
    rst $38
    dec sp
    ei
    ccf
    rst $08
    scf
    rst $38
    add a
    ld [hl], a
    adc e
    push af
    dec de
    ld e, c
    cp a
    sbc [hl]
    db $fd
    sbc [hl]
    db $fd
    ld a, c
    cp a
    ld a, e
    cp a
    ccf
    rst $38
    ld d, c
    rst $38
    ld e, a
    rst $30
    rst $08
    rst $30
    rst $08
    rst $38
    and $ff
    push af
    ld l, [hl]
    push de
    ld l, [hl]
    push de
    ld l, [hl]
    ld [hl], a
    adc $ef
    sbc $3d
    call c, $9c7b
    add hl, hl
    ld hl, sp-$3d
    ld hl, sp-$12
    ret c

    and [hl]
    reti


    or [hl]
    reti


    or $d9
    xor h
    ld a, [c]
    xor h
    di
    inc l
    ld [c], a
    call z, $cce3
    db $e3
    ld a, c
    db $e3
    ld sp, hl
    rst $20
    ld sp, hl
    push hl
    jp hl


    rst $30
    reti


    rst $00
    ld a, [c]
    bit 6, d

jr_08b_61b7:
    rst $00
    ld [hl-], a
    ld c, a
    jp nc, $c4cf

    rst $28
    ld h, h
    ld e, $7f
    add h
    cp b
    add h
    ld a, [$5584]
    adc b
    cp l
    ld c, b
    call c, Call_08b_4f68
    add sp, $25
    jr jr_08b_61b7

    add hl, de
    xor $11
    db $fc
    inc de
    rla
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ld a, a
    add b
    ld [$08f7], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [hl], a
    adc b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    add hl, sp
    add $81
    ld a, [hl]
    ret nc

    cpl
    add b
    ld a, a
    ld a, a
    ld a, h
    ld a, b
    ld a, a
    ld sp, hl
    ld a, [hl]
    ei
    db $fc
    db $eb
    db $fc
    ld e, a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    sbc a
    rst $38
    db $db
    cp a
    rst $30
    cp e
    ld a, a
    cp e
    cp a
    dec sp
    ei
    dec sp
    xor $3b
    rrca
    ld a, [hl]
    rst $18
    cpl
    rra
    ld l, a
    ld c, [hl]
    ld a, [hl]
    ld e, c
    ld l, h
    di
    ld l, b
    reti


    ld h, e
    rst $10
    db $e3
    push bc
    rst $20
    pop hl
    rst $08
    rst $18
    rst $28
    rst $38
    cp a
    cp $aa
    db $eb
    inc l
    rst $28
    ccf
    rst $38
    ccf
    db $fd
    inc a
    ei
    add hl, sp
    ld sp, hl
    ld sp, $11f8
    ld a, [$3b41]
    ld b, c
    ld a, l
    add e
    add a
    ei
    xor e
    rst $10
    db $eb
    sub a
    cp e
    rst $00
    xor [hl]
    rst $10
    or $cf
    di
    rst $08
    rst $38
    rst $08
    adc a
    rst $38
    rrca
    rst $38
    sbc a
    ld h, a
    ld e, $e7
    or a
    rst $08
    cp a
    rst $08
    ccf
    rst $08
    rlca
    rst $38
    cpl
    rst $18
    jp nc, $f2bf

    cp a
    sub $ff
    sub a
    rst $38
    and $1f
    xor $1f
    rst $08
    cp a
    call Call_08b_48af
    dec a
    adc c
    dec a
    sbc c
    ld e, e
    sbc b
    ld e, a
    sub c
    ld a, c
    sub c
    ld e, l
    sub c
    ld e, l
    add a
    ld sp, $338d
    ld e, l
    inc hl
    ld e, d
    inc hl
    rst $18
    ld [hl+], a
    rrca
    ld h, a
    ld h, a
    ld c, e
    xor a
    ld c, a
    sub [hl]
    ld c, l
    ld e, $c6
    ld e, [hl]
    add [hl]
    rst $30
    add [hl]
    ccf
    add [hl]
    cp a
    ld [$18f1], sp
    ei
    db $10
    db $d3
    db $10
    pop hl
    ld [bc], a
    call nc, $b503
    inc bc
    db $e3
    dec b
    jp hl


    rlca
    xor h
    inc bc
    rst $00
    ld a, [bc]
    rlca
    ld c, d
    reti


    ld c, $fd
    ld b, $4d
    sub [hl]
    cpl
    sub h
    add [hl]
    inc e
    rst $18
    inc c
    xor d
    inc c
    inc e
    dec hl
    adc l
    dec sp
    sbc e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    rst $28
    or a
    ld a, a
    rst $38
    ld a, $f3
    inc e
    ld sp, hl
    ld e, $cd
    ld a, $f4
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $f789
    inc h
    ei
    inc b
    ei
    nop
    rst $38
    ld de, $88ee
    rst $30
    ret z

    rst $30
    and [hl]
    ld sp, hl
    ld e, a
    rst $38
    rst $08
    rst $18
    rst $28
    rst $08
    rst $08
    db $dd
    rst $08
    db $dd
    db $dd
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ei
    rst $38
    ld a, [$feff]
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
    ret nc

    rst $38
    sub $bf
    cp $8f
    cp a
    sbc [hl]
    rst $18
    cp [hl]
    cp e
    cp $ec
    cp $fe
    db $fd
    sub $fd
    sbc $fc
    sub [hl]
    db $fc
    sbc c
    db $fc
    xor $b8
    ld l, a

jr_08b_633b:
    cp b
    daa
    ld sp, hl
    rst $10
    ei
    ei
    ld [hl], e
    ld a, e
    ld [hl], e
    db $fd
    ld a, [c]
    cp $f1
    db $fd
    cp $ff
    rst $30
    rst $38
    pop hl
    push de
    db $e3
    ld a, l
    jp $427d


    rst $38
    ld b, d
    rst $08
    ld [c], a
    rst $38
    and $9f
    adc $df
    sbc a
    and a
    sbc $bf
    call nz, $e7f9
    di
    cp $7f
    cp b
    rst $30
    ld a, [hl-]
    cp [hl]
    ld [hl], e
    ld h, a
    ei
    sbc a
    ld h, a
    ld c, a
    ld e, $b5
    ld e, $fb
    inc [hl]
    inc sp
    db $ec
    and a
    add hl, hl
    ld c, a
    ld l, c
    rst $18
    jp hl


    rst $30
    reti


    db $fd
    db $d3
    or a
    ld c, e
    or $eb
    db $eb
    or $fa
    or $f9
    sub $d0
    rst $38
    ld [c], a
    db $fd
    sub $ed
    ld sp, hl
    ld c, h
    rst $20
    ld [$f8ce], sp
    ld a, a
    ld hl, sp+$76
    add hl, de
    cp $91
    sbc b
    push af
    db $ed
    or d
    db $fd
    and d
    ld a, l
    and d
    sbc c
    ld h, [hl]
    ei
    ld b, h
    db $e3
    ld d, h
    inc sp
    call z, $c8a0
    sbc [hl]
    ret


    db $e3
    adc c
    ld h, a
    sbc c
    jr c, jr_08b_633b

    xor $13
    ld a, [$5103]
    and a
    xor l
    daa
    db $fd
    daa
    ld [$fa47], a
    ld c, a
    dec bc
    adc $37
    adc $6c
    sub a
    ld d, h
    sbc a
    ld c, [hl]
    sbc l
    jp hl


    rra
    rst $38
    ccf

Call_08b_63d4:
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
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    ld l, l
    sbc a
    ld l, $df
    rst $08
    cp a
    cp a
    rst $08
    or e
    rst $08
    ld c, e
    rst $30
    ld c, e
    rst $30
    jp hl


    ld [hl], a
    or c
    ld a, a
    sub $39
    ld l, d
    dec e
    ccf
    rst $38
    dec sp
    rst $38
    ei
    ld a, l
    db $f4
    rst $38
    rst $30
    cp $ff
    or $fc
    or $fd
    rst $30
    rst $08
    rst $30
    xor h
    db $dd
    cp l
    db $fd
    or a
    rst $38
    cp a
    rst $18
    ld a, a
    sbc a
    ld a, a
    sbc a
    cp l
    ccf
    db $fd
    ccf
    cp $3f
    or a
    ld a, a
    push hl
    ld a, a
    ld h, l
    xor a
    rla
    xor a
    rst $18
    xor a
    rst $10
    rst $08
    rst $38
    rst $08
    rst $38
    ld c, a
    rla
    ld e, a
    rra
    ld [hl], a
    di
    scf
    ld a, b
    rst $20
    db $fd
    push hl
    ei
    push af
    inc sp
    db $fd
    db $fd
    ld a, e
    ld a, a
    ei
    ld a, [hl]
    db $eb
    jp c, $c3ef

    cp $ff
    rst $30
    rst $38
    rst $30
    rst $00
    db $fc
    ld [hl], a
    db $ec
    ccf
    ld l, a
    rst $38
    cpl
    cp a
    ld a, a
    rst $38
    rst $38
    ei
    rst $18
    ld d, a
    ei
    cp $f3
    rst $38
    or $f6
    rst $38
    rst $30
    cp e
    rst $30
    inc sp
    ld a, [$7f63]
    ld [c], a
    rst $10
    ld [c], a
    jp hl


    or $ef
    db $f4
    jp nc, Jump_000_29cc

    call nz, $8857
    db $f4
    adc c
    scf
    adc c
    push hl
    add hl, de
    db $ec
    inc de
    rrca
    ld d, d
    ld e, a
    ld [hl-], a
    ld a, h
    and e
    ei
    dec h
    reti


    daa
    cp c
    ld b, a
    ei
    ld b, a
    ld [hl], a
    ld c, e
    inc sp
    adc $6f
    sub [hl]
    rst $38
    sub [hl]
    db $f4
    sbc a
    cp $0d
    adc $3d
    xor b
    ccf
    ld l, c
    dec sp
    inc de
    ld a, l
    ld e, c
    ld [hl], a
    ld a, [de]
    ld [hl], a
    ld h, d
    cp a
    ld h, e
    cp [hl]
    or b
    xor $63
    db $fc
    ld b, a
    db $fd
    ld b, l
    cp $c8
    rst $38
    sbc l
    db $eb
    and a
    db $db
    sub l
    ei
    rra
    di
    sbc [hl]
    ld [hl], e
    ld a, a
    ld [hl+], a
    xor d
    ld h, l
    dec h
    ld l, a
    rst $28
    ld c, h
    ld [hl], a
    call z, $cc73
    inc sp
    call z, $88ff
    add e
    db $fc
    add e
    db $fc
    add $f9
    and $f9
    di
    db $fc
    pop af
    cp $f8
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $28
    rst $38
    xor l
    rst $38
    ld [$d57d], a
    ld a, d
    ld d, [hl]
    ld a, [$f9d6]
    and [hl]
    ld sp, hl
    and a
    push af
    db $fd
    push af
    db $ed
    rst $30
    push af
    rst $28
    ld a, l
    rst $28
    sbc $ef
    rst $38
    rst $08
    rst $28
    rst $18
    cp e
    rst $18
    sbc d
    cp $bd
    cp $7e
    db $dd
    rst $18
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    cp $7a
    ld sp, hl
    rst $18
    ld sp, hl
    ld a, a
    cp c
    push af
    ld a, e
    or [hl]
    di
    ld a, $f3
    or $fb
    reti


    rst $30
    adc a
    push af
    pop hl
    rst $38
    ld sp, hl
    rst $08
    cpl
    set 1, a
    dec bc
    ld h, d
    sbc a
    ld a, a
    sub a
    ccf
    sub a
    rst $28
    rla
    rst $38
    dec l
    rst $18
    dec l
    rst $08
    dec a
    dec de
    ld a, a
    ld a, a

Call_08b_656f:
    ld e, e
    dec a
    ld a, a
    add hl, sp
    rst $38
    ld a, c
    cp e
    inc sp
    ei
    dec sp
    rst $38
    rst $38
    ld l, a
    rst $38
    ld l, a
    ld e, a
    rst $20
    rst $30
    sbc $ff
    sbc $bf
    rst $18
    rst $38
    cp a
    cp l
    cp a
    ld c, [hl]
    db $fd
    ld a, a
    ret c

    db $dd
    ld a, [$fefb]
    db $fd
    cp $ff
    db $fc
    ld a, a
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$41
    ret c

    sub a
    ld hl, sp-$0a
    cp c
    cp a
    pop af
    dec a
    pop af
    ld a, a
    ldh a, [$7b]
    ldh [$5e], a
    pop hl
    sbc [hl]
    pop hl
    cp $c1
    db $fc
    jp $c0ff


    cp e
    call nz, $c03f
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp $01
    cp $01
    call c, $df03
    ld [bc], a
    cp c
    ld b, $ba
    ld b, l
    ld a, [hl-]
    push bc
    ld [hl], c
    adc [hl]
    ld l, l
    sbc d
    push hl
    ld a, [de]
    di
    inc e
    db $db
    inc [hl]
    rst $00
    jr c, @-$47

    ld l, b
    sub a
    ld l, b
    adc [hl]
    ld [hl], c
    ld l, $d1
    adc h
    di
    db $dd
    ld [c], a
    db $dd
    ld [c], a
    db $eb
    db $f4
    ld a, [c]
    db $fd
    ld hl, sp-$01
    rst $38
    ld hl, sp-$02
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
    jr jr_08b_6633

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08b_6643

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08b_6653

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08b_6663

    ld [hl-], a

jr_08b_6633:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08b_6673

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08b_6643:
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

jr_08b_6653:
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

jr_08b_6663:
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

jr_08b_6673:
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret nz

    ret nz

    ret


    ret nz

    jp z, $cbc0

    ret nz

    ret nz

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    push de
    sub $d7
    ret c

    reti


    jp c, $c0db

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    call c, $dedd
    rst $18
    ldh [$c0], a
    ret nz

    ret nz

    pop hl
    ret nz

    ld [c], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    db $e3
    db $e4
    push hl
    and $e7
    ret nz

    add sp, -$17
    ld [$c0eb], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    db $ec
    db $ed
    xor $ef
    ldh a, [$e9]
    pop af
    db $eb
    ret


    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, [c]
    di
    db $f4
    db $eb
    push af
    or $f7
    pop af
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld hl, sp-$07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    inc b
    ld [bc], a
    ld bc, $0202
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b
    ld bc, $0400
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    nop
    nop
    inc b
    nop
    nop
    ld bc, $0606
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    dec b
    dec b
    nop
    inc b
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0505
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
    ld bc, $0404
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
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08b_6825

jr_08b_6825:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08b_6866

jr_08b_6866:
    nop
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
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ccf
    dec [hl]
    ei
    ld a, [hl]
    pop af
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
    cp $ff
    cp $df
    cp $ff
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    cp a
    rst $18
    ld a, a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    cp a
    ccf
    rst $18
    rst $38
    ld e, a
    rst $18
    rst $38
    rst $18
    rst $38
    adc a
    rst $30
    rst $30
    rst $38
    rst $20
    rst $38
    di
    rst $28
    db $eb
    rst $30
    rst $38
    di
    rst $28
    di
    rst $28
    di
    push af
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, [c]
    db $fd
    ld a, [$fffd]
    db $fc
    ld a, a
    db $fc
    rst $38
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp [hl]
    ccf
    ld a, [hl]
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rst $18
    rst $18
    ld a, a
    rst $18
    ld c, a
    rst $18
    ld c, a
    rst $38
    ccf
    rst $28
    cpl
    rst $28
    ld [hl], a
    rst $28
    ld a, a
    rst $30
    rst $18
    rst $30
    ld a, e
    rst $10
    rra
    di
    db $d3
    cp e
    or a
    db $db
    dec l
    db $db
    ld l, l
    ret


    ld sp, $77cd
    adc l
    push de
    ld l, h
    ld c, a
    db $f4
    jp nz, $c7f6

    cp $cb
    cp $72
    rst $28
    ld h, [hl]
    ld sp, hl
    ld a, [c]
    db $fd
    or e
    rst $38
    rst $38
    ei
    db $fd
    ei
    ld [hl], l
    ei
    ld [hl], d
    ei
    ld [hl], c
    cp $be
    ld a, a
    cp e
    ld a, a
    ei
    ccf
    ld a, c
    cp a
    ld e, e
    cp a
    rra
    cp $5f
    cp $6e
    rst $18
    sbc $ff
    ld l, a
    rst $38
    cpl
    ld a, a
    cpl
    ccf
    rst $18
    ccf
    sub $1f
    add l
    rra
    ld sp, $11cf
    rst $08
    push bc
    sbc a
    dec e
    rst $30
    rrca
    rst $30
    db $e3
    ld a, a
    dec sp
    rst $28
    ld h, a
    cp a
    ld [hl], a
    sbc a
    cp l
    ld d, e
    ld sp, $01d7
    rst $18
    sub c
    rst $28
    rst $08
    xor l
    or b
    ld l, a
    cp c
    ld h, a
    dec b
    ld [hl], a
    rst $38
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
    nop
    dec a
    nop
    add b
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    pop bc
    add b
    ldh [$80], a
    db $eb
    add b
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ret nz

    db $fd
    ret nz

    db $fd
    cp a
    add h
    cp a
    add h
    sbc a
    add h
    sbc a
    add h
    sbc a
    add a
    rst $18
    add b
    rst $38
    rst $38
    rst $38
    cp a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    xor $fd
    push hl
    cp $e6
    db $fd
    push af
    xor $ef
    or $ef
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    di
    cp a
    ei
    or [hl]
    ei
    rst $28
    ld sp, hl
    jp hl


    rst $38
    ret


    rst $38
    db $db
    db $fd
    jp nc, $fffd

    db $fc
    ei
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ld a, [c]
    db $fc
    ld [hl], h
    ld a, [$f832]
    ld [hl-], a
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$1f
    ld hl, sp-$44
    ld hl, sp-$44
    ld hl, sp-$68
    db $fc
    cp h
    db $fc
    sbc h
    db $fc
    sbc [hl]
    db $fc
    adc [hl]
    db $fc
    cp a
    call nz, $cebf
    db $dd
    xor $df
    xor $df
    rst $28
    pop de
    rst $28
    ld sp, hl
    rst $28
    push hl
    rst $38
    or $ff
    ld [c], a
    rst $38
    pop af
    rst $38
    ld sp, hl
    cp $fd
    cp $fe
    db $fd
    ld a, l
    cp $7e
    rst $38
    ld a, h
    ld a, a
    db $fd
    ld a, [hl]
    ld a, h
    ccf
    cp [hl]
    cp a
    rst $38
    cp a
    cp $9f
    cp [hl]
    rst $18
    sbc a
    sbc $1e
    rst $18
    ld l, [hl]
    rst $18
    rst $18
    rst $08
    ld a, a
    rst $08
    ld l, a
    xor a
    or $af
    ld [hl], a
    xor a
    rst $08
    scf
    ld e, a
    or a
    rst $38
    ld d, a
    rst $30
    ld e, a
    or $ff
    xor [hl]
    rst $38
    cp [hl]
    rst $28
    sbc a
    rst $28
    and l
    rst $38
    db $fd
    rst $30
    push bc
    rst $38
    ld [hl], a
    rst $28
    set 5, a
    di
    rst $08
    call $bff7
    rst $20
    or e
    rst $28
    and e
    rst $38
    db $db
    ei
    rst $38
    ei
    ld e, a
    rst $38
    ld b, a
    rst $38
    ld a, e
    rst $28
    db $eb
    ld a, a
    ld l, a
    xor a
    rst $38
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
    rlca
    rrca
    rlca
    rst $28
    inc bc
    rrca
    inc bc
    cpl
    inc bc
    daa
    inc bc
    cpl
    inc bc
    daa
    inc bc
    cpl
    inc bc

jr_08b_6a9d:
    rla
    ld bc, $0117
    sub e
    ld bc, $01b7
    sub e
    nop
    adc e
    nop
    adc c
    nop
    ld c, e
    nop
    ld c, c
    nop
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld e, h
    ld e, h
    ret nz

    ret nz

    rra
    rra
    rst $38
    ld hl, sp-$01
    nop
    ld [bc], a
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp [hl]
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    jr jr_08b_6ad4

jr_08b_6ad4:
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_08b_6adc

jr_08b_6adc:
    add d
    nop
    ld bc, $f100
    nop
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, d
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld h, h
    add b
    ld a, b
    add b
    inc [hl]
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    ld b, b
    nop
    nop
    jr nz, jr_08b_6a9d

    ld b, b
    ld l, b
    add b
    sub b
    jr nz, @+$72

jr_08b_6b03:
    nop
    add b
    db $10
    jr nc, jr_08b_6b08

jr_08b_6b08:
    ld h, b
    stop
    db $10
    inc b
    db $10
    ld d, b
    inc c
    cp b
    jr nz, jr_08b_6b03

    nop
    cp $00
    or $08
    db $dd
    nop
    ld [hl], b
    inc b
    ld a, b
    inc b
    jr z, jr_08b_6b24

    ret nc

    inc b
    ld [hl+], a
    inc c

jr_08b_6b24:
    ld h, h
    adc b
    inc b
    add b
    inc d
    jp nz, $c204

    inc b
    db $e3
    inc d
    db $e3
    db $fd
    ld b, d
    ld [hl-], a
    xor h
    rlca
    ld hl, sp-$3e
    ld a, l
    ld [hl+], a
    db $dd
    ld a, [bc]
    push af
    ld a, h
    add c
    dec a
    ret nz

    ei
    inc b
    rst $38
    nop
    ld e, a
    add b
    ld [hl], a
    adc b
    ld a, a
    add b
    rst $28
    sub b
    ld a, a
    add b
    db $76
    adc c
    ld a, [hl]

jr_08b_6b51:
    add c
    ld a, e
    add b
    rst $30
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, l
    add b
    rra
    ret nz

    cp e
    call nz, $c4bb
    ld e, e
    call nz, Call_08b_44eb
    ld a, e
    and h

jr_08b_6b68:
    jr c, jr_08b_6b51

    ld h, b
    rst $38
    and c
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ld hl, sp-$11
    db $e4
    ei
    and h
    ei
    ldh [rIE], a
    and a
    ld hl, sp-$49
    ld hl, sp-$29
    ld e, b
    or [hl]
    ld a, c
    rst $20
    add hl, sp
    rst $30
    jr nc, jr_08b_6b68

    jr c, jr_08b_6b51

    ld hl, $18ef
    rst $20
    db $10
    db $db
    db $10
    jp hl


    nop
    cp c
    ld [$04bd], sp
    xor b
    nop
    xor l
    inc c
    dec l
    ld [$0c6c], sp
    adc h
    inc b
    adc [hl]
    ld [bc], a
    adc $00
    add $00
    and $02
    and $00
    and $02
    or $00
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $f1
    add b
    rst $38
    ld de, $00fe
    rst $38
    nop
    rst $38
    add c
    cp $e0
    rra
    rst $30
    ld [$00ff], sp
    dec l
    ld [bc], a
    adc a
    db $10
    ld sp, $0800
    nop
    ld b, e
    inc b
    inc sp
    inc b
    ld a, [de]
    nop
    ld a, [hl+]
    nop
    dec l
    db $10
    or a
    ld [$008f], sp
    ld [de], a
    add b
    call z, Call_08b_4700
    nop
    ld b, b
    ld [bc], a
    nop
    ld bc, $0000
    jr nz, jr_08b_6bf4

jr_08b_6bf4:
    nop
    nop
    stop
    ld [$0000], sp
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    ld bc, $0140

jr_08b_6c0c:
    add b
    nop
    jr nz, jr_08b_6c10

jr_08b_6c10:
    jr z, jr_08b_6c12

jr_08b_6c12:
    ldh [rP1], a
    ld h, b
    add b
    or c
    ld b, b
    call $e732
    jr jr_08b_6c0c

    db $10
    db $e3
    jr @-$72

    inc b
    ld [$9000], sp
    nop
    nop
    inc b
    and l
    db $10
    ld b, b
    sbc d
    inc b
    and d
    ld [de], a
    and c
    inc sp
    call z, $fd02
    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld a, a
    add b
    ld e, e
    and b
    ld a, e
    add b
    cp a
    ld b, b
    dec l
    ret nz

    dec [hl]
    ret nz

jr_08b_6c4c:
    cpl
    ret nz

    sbc a
    ld b, b
    db $eb
    ld b, b
    cp a
    ld b, b
    rst $08
    jr nz, @+$01

    jr nz, jr_08b_6cd8

    jr nz, jr_08b_6c4c

    inc l
    jp $eb2c


    inc e
    db $fd
    jr jr_08b_6ce2

    jr @+$7d

    inc e
    add hl, sp
    rst $18
    xor e
    rst $10
    adc a
    di
    sub e
    rst $28
    sbc [hl]
    db $eb
    ld [bc], a
    rst $38
    ccf
    rst $08
    dec e
    rst $28
    sbc a
    ld l, a
    add $3f
    ld c, [hl]
    or a
    ccf
    rst $10
    ld l, a
    sub a
    rst $28
    ld [hl], d
    or e
    ld e, h
    sbc e
    ld [hl], h
    jp $073c


    db $fc
    rst $28
    sub b
    ld e, e
    and h
    ld [$dc15], a
    ld bc, $35c8
    jr z, @+$16

    inc [hl]
    adc b
    cp h
    nop
    jr nz, jr_08b_6ca4

    ld b, b
    db $10
    ld c, b
    nop
    nop
    ld [$0008], sp

jr_08b_6ca4:
    ld c, c
    nop
    add hl, bc
    nop
    ld hl, $2300
    nop
    inc sp
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_08b_6cb6:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$0005]
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc e
    ld h, b
    ld [hl], h
    nop
    xor [hl]
    ld d, b
    ld h, [hl]
    sbc b

jr_08b_6cd8:
    sub d
    ld c, b
    xor [hl]
    ld b, b
    ld sp, $6e0e
    ld de, $10eb

jr_08b_6ce2:
    ld a, c
    add b
    ld [hl], l
    add b
    add [hl]
    ld bc, $0241
    daa
    nop
    dec l
    db $10
    inc c
    db $10
    ld [hl+], a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    nop
    ld hl, $0800
    db $10
    db $10
    ld b, $00
    ld [bc], a
    ld bc, $0800
    nop
    ld [$0800], sp
    dec b
    add hl, bc
    add [hl]
    adc h
    inc bc
    or h
    inc [hl]
    jp nc, $c892

    adc b
    ld c, h
    ld [$0000], sp
    ld [bc], a
    jr nz, jr_08b_6d6e

    nop
    jr nz, jr_08b_6d30

    nop
    ld de, $0822
    ld [de], a
    ld [$0c41], sp
    ld b, c
    ld b, $00
    ld b, $00
    add d
    jr nz, jr_08b_6cb6

jr_08b_6d30:
    cp $03
    cp $01
    cp $01
    cp $01
    cp $01
    ld d, b
    xor a
    ld d, b
    cp a
    ld c, h
    ei
    inc c
    ei
    ld de, $09fe
    cp $08
    ei
    inc e
    ld l, l
    ccf
    xor $5c
    and a
    ld a, [hl+]
    rst $10
    ld a, [hl]
    rst $10
    ld [bc], a
    rst $38
    dec b
    ei
    dec e
    db $eb
    add hl, de
    rst $28
    ld de, $1d7f
    sub a
    inc e
    or a
    db $10
    rst $38
    db $10
    rst $38
    inc de
    cp $30
    rst $38
    ld a, d
    rst $38
    ld e, e
    db $fd
    ld e, l
    rst $38

jr_08b_6d6e:
    db $dd
    rst $38
    ei
    call z, $8ef5
    ld c, l
    or [hl]
    ld c, h
    rst $38
    ld a, [$fbc7]
    add a
    ld [$7e57], a
    jp $ef7f


    srl e
    ei
    dec bc
    di
    dec bc
    pop hl
    dec de
    di
    dec bc
    db $fc
    rlca
    db $f4
    dec c
    cp $05
    db $fc
    rlca
    db $fd
    inc b
    reti


    inc h
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld [bc], a
    db $fd
    nop
    dec sp
    add d
    or a
    ld [bc], a
    inc hl
    ld [bc], a
    sub e
    nop

jr_08b_6da8:
    sbc e
    nop
    cp e
    nop
    rst $38
    ld [bc], a
    cp l
    ld bc, $00fe
    cp $00
    rst $38
    ld bc, $0101
    ld hl, sp+$07
    ldh [$1f], a
    ld b, b
    cp a
    nop
    rst $38
    adc b
    di
    ld [bc], a
    db $fd
    ld bc, $04fe
    rst $38
    add b
    ld a, a
    adc d
    ld [hl], l
    db $fc
    inc bc
    cp $01
    rst $28
    db $10
    rst $10
    ld [$006f], sp
    scf
    nop
    ld de, $8000
    nop
    add b
    nop
    ld b, b
    nop
    nop
    add b
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_08b_6da8

    ret nz

    stop
    ld [$0880], sp
    nop
    nop
    ld bc, $1300
    inc b
    dec e
    nop
    ld [$0000], sp
    ld [$004c], sp
    and b
    inc b
    ld [hl+], a
    add b
    ld e, c
    nop
    ld bc, $0040
    nop
    ld hl, $5000
    nop
    ld a, [c]
    nop
    jp $f818


    rlca
    ld b, d
    ld b, b
    ld de, $4282
    ld bc, $11a4
    ld b, c
    ld [$0460], sp
    ld de, $9006
    inc b
    cp [hl]
    ld b, c
    rst $08
    jr nc, @-$32

    inc sp
    db $e4
    dec de
    ldh [$1f], a
    db $e4
    rra
    jp nz, $e73f

    dec de
    push hl
    dec de
    ld h, e
    sbc a
    ld de, $31ef
    rst $08
    db $f4
    adc e
    ld a, [de]
    push hl
    add hl, bc
    or $6f
    jp nc, $e758

    inc l
    di
    and [hl]
    ld sp, hl
    and l
    ld a, d
    call nc, $983b
    ld a, a
    cp h
    ld e, a
    cp b
    ld e, a
    ld e, h
    cpl
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $08
    inc de
    rst $08
    cp e
    rst $08
    or e
    rst $08
    xor a
    jp $f78f


    ret


    rst $30
    ld c, l
    pop af
    and h
    ld a, e
    sbc e
    ld a, h
    ld hl, sp+$3f
    sub d
    ld a, l
    ld h, d
    sbc h
    rst $38
    nop
    ei
    inc b
    di
    ld c, $6f
    sub b
    or $19
    db $ec
    dec de
    xor e
    ld e, [hl]
    cp a
    ld c, [hl]
    sbc a
    call c, $dc9f
    ld c, a
    call c, $dcd7
    ld c, e
    call c, Call_08b_5cc1
    add a
    ld e, b
    add e
    ld a, h
    jp $956c


    ld c, d
    pop bc
    ld a, $81
    ld l, [hl]
    jp $c10c


    ld l, $c1
    ld l, $c3
    inc l
    cp [hl]
    ccf
    xor [hl]
    ld l, a
    and [hl]
    ld l, a
    ld l, $ef
    and [hl]
    ld h, a
    add [hl]
    ld h, a
    and [hl]
    ld h, a
    and a
    daa
    ret nz

    rla
    ldh [rNR22], a
    ldh [rTAC], a
    ld [hl], b
    sub a
    ld sp, $8cfe
    ld a, a
    dec sp
    rst $00
    rst $38
    nop
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr @-$0f

    ld a, [c]
    dec c
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $00
    jr c, @-$35

    ld [hl], $2c
    pop de
    ld [hl], a
    add b
    nop
    ld bc, $00d7
    inc hl
    inc b
    ld a, [bc]
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
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_08b_6efa

jr_08b_6efa:
    jr nz, jr_08b_6efc

jr_08b_6efc:
    jr nz, jr_08b_6efe

jr_08b_6efe:
    ld [$dd00], sp
    reti


    ld c, $00
    ld a, [hl]
    nop
    ld a, a
    nop
    halt
    ld [hl], l
    nop
    pop af
    nop
    pop de
    ld [$08e0], sp
    cp d
    ld b, h
    push af
    nop
    ld d, d
    xor l
    ld b, [hl]
    xor b
    ld b, e
    add b
    ld b, b
    nop
    nop
    ld b, b
    sbc $21
    inc e
    db $e3
    xor e
    ld d, h
    ld b, [hl]
    cp c
    inc bc
    db $fc
    inc b
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    cp $01
    cp a
    pop bc
    cp a
    ret nz

    cp a
    ldh [$67], a
    ld hl, sp-$07
    cp $fd
    ld a, [hl]
    db $f4
    dec sp
    cp a
    ld a, b
    ld a, [$ef5d]
    ld e, h
    ld c, l
    cp [hl]
    call z, $ef3f
    rra
    rst $38
    rrca
    rst $38
    rlca
    inc hl
    rst $18
    ld hl, $11df
    rst $28
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    cp $81
    sbc [hl]
    pop hl
    rst $00
    cp h
    or e
    cp $78
    or $91
    ld a, [hl]
    cp a
    ld a, c
    sbc c
    ld a, h
    db $fc
    ld a, $ff
    ld a, [hl]
    or $7f
    ld e, $ff
    ld l, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $28
    ld a, a
    sub l
    dec bc
    sbc a
    ld bc, $019f
    xor a
    ld bc, $030d
    ld c, $01
    rla
    ld bc, $0196
    rst $38
    rst $38
    add b
    rst $38
    add b
    ldh a, [$80]
    ldh [$80], a
    ret nc

    add b
    add sp, -$40
    push af
    ret nz

    cp $c0
    db $fd
    pop bc
    cp $cc
    di
    pop bc
    cp $c4
    ei
    jp nc, $e9ed

    sub $e9
    sub $e7
    ret c

    rst $28
    ret nc

    rst $38
    ret nz

    ld a, [$fec5]
    pop bc
    sbc $e1
    ld e, a
    ldh [rP1], a
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    inc hl
    db $fc
    add hl, bc
    or $b8
    ld b, a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld a, $01
    call $8200
    nop
    and b
    ld b, b
    ld [hl], h
    add b
    and b
    ld [$0040], sp
    dec bc
    nop
    rlca
    ld [$0004], sp
    stop
    ld [$2000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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
    ld [bc], a
    nop
    ld b, b
    ld bc, $7f7f
    ld c, a
    ld c, a
    ld b, a
    rlca
    db $d3
    inc bc
    add [hl]
    nop
    add e
    ld b, b
    ld b, b
    jr nz, jr_08b_704f

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    call c, $e723
    sbc c
    ld b, d
    cp a
    rra
    rst $38
    dec l
    rst $38
    ldh [$1f], a
    di
    inc c
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ld a, a
    add d
    ld a, l
    add d
    cp h
    ld b, e
    ld e, [hl]
    and c
    rrca
    ldh a, [$bf]
    ldh [rIE], a
    ld d, b
    sub a
    ld a, b
    adc c
    ld a, [hl]
    db $db
    ld l, $fa
    ld d, $16
    rst $38
    ld c, $fb
    add e
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld h, d
    rst $38
    db $e4
    rst $38
    ret nz

jr_08b_704f:
    rst $38
    ccf
    db $e4
    ld a, l
    ld [c], a
    ld l, d
    pop af
    rst $20
    ld sp, hl
    db $db
    db $fd
    rst $38
    db $fc
    db $d3
    ld a, [hl]
    ld a, l
    ld a, [$ff7d]
    rst $38
    ld a, [hl]
    cp a
    ld e, [hl]
    cp [hl]
    ld a, a
    ld d, a
    rst $38
    rst $28
    ld e, a
    rst $38
    ld c, a
    db $db
    rst $28
    cp e
    ld h, a
    and e
    ld a, a
    or $7f
    and $ff
    ld c, l
    cp [hl]
    add sp, -$69
    sbc e
    rst $38
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    db $f4
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    ei
    rst $38
    ei
    rst $18
    db $db
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $db
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    rst $20
    rst $38
    rst $18
    rst $20
    rst $10
    rst $28
    rst $08
    rst $30
    push hl
    rst $38
    jp hl


    rst $30
    xor $f3
    adc $f7
    xor [hl]
    ld d, a
    rst $30
    ccf
    rst $10
    ccf
    rst $00
    ccf
    rst $10
    ccf
    rlca
    rst $38
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $20
    rra
    db $e3
    rra
    ld h, a
    rra
    inc hl
    rra
    cpl
    rra
    rlca
    rra
    inc bc
    rra
    inc de
    rrca
    jp Jump_000_231f


    rra
    inc de
    rra
    rrca
    rra
    rra
    rrca
    dec bc
    rlca
    inc bc
    ld bc, $0006
    ld [hl+], a
    nop
    ld [$6f10], sp
    nop
    inc [hl]
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [de], a
    nop
    rra

Jump_08b_70ff:
    nop
    ld a, [hl]
    ld [hl], b
    add sp, -$58
    ldh [$c0], a
    add h
    add h
    ld [$0800], sp
    nop
    add h
    ld [bc], a
    ld h, d
    jr nz, jr_08b_7139

    nop
    ld b, b
    nop
    sub c
    jr nz, jr_08b_711f

    ld h, b
    inc d
    ld [hl+], a
    nop
    db $fc
    nop
    cp $00

jr_08b_711f:
    rst $38
    ld e, a
    and b
    rst $38
    db $10
    ld [hl], a
    adc b
    ei
    inc b
    db $db
    inc h
    db $fd
    ld [bc], a
    call c, Call_08b_7d23
    add d
    ld bc, $c0ff
    rst $18
    nop
    rst $38
    nop
    rst $38
    inc h

jr_08b_7139:
    di
    and b

jr_08b_713b:
    rst $38
    inc e
    rst $08
    add c
    ld a, a
    ld b, h
    cp a
    inc hl
    rst $18
    sub c
    rst $28
    add c
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    cp a
    ld l, a
    sub c
    push af
    ld c, $b7
    ld c, [hl]
    ld e, a
    and d
    sbc [hl]
    pop hl
    jr nc, jr_08b_713b

    call c, Call_08b_526b
    rst $28
    xor h
    ld [hl], a
    and $7f
    rst $10
    ld a, $d9
    ccf
    rst $28
    dec e
    ld b, a
    cp [hl]
    or a
    or $b7
    rst $18
    rst $28
    rst $18
    ei
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    sub $7f
    rst $20
    ld a, a
    ld l, a
    rst $38
    sbc $ff
    xor $df
    rst $08
    rst $38
    cp $ef
    sbc a
    cp $ff
    rst $38
    sub $ff
    rst $38
    adc $df
    and $f4
    rst $08
    call z, $deff
    rst $28
    rst $18
    rst $28
    push de
    rst $28
    call z, $eae7
    rst $20
    cp e
    rst $20
    db $eb
    rst $20
    set 4, a
    adc [hl]
    rst $20
    adc d
    rst $20
    ret


    rst $20
    sbc l
    rst $20
    rst $38
    and $fd
    and $dd
    and $fb
    add $be
    jp $c7fe


    db $fd
    add $fa
    rst $00
    or $cf
    or $cf
    ld hl, sp-$39
    pop af
    adc $fc
    rst $00
    cp $c7
    jp nc, $daef

    rst $20
    jp nc, $fdef

    jp nz, $c0ff

    db $ed
    jp nz, $c0f7

    db $eb
    ret nz

    ldh a, [$c6]
    call c, $d5e2
    ld [c], a
    rst $18
    ldh [$d9], a
    and $d9
    and $db
    db $e4
    pop de
    xor $f5
    adc $55
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    ld c, a
    rrca
    rra
    inc bc
    rrca
    ld bc, $001f
    adc a
    nop
    ld a, a
    nop
    rrca
    nop
    inc de
    inc b
    add l
    nop
    ld a, [hl+]
    nop
    add hl, sp
    inc b
    jr jr_08b_720c

jr_08b_720c:
    ld b, $00
    ld [hl+], a
    ld [$8221], sp
    db $10
    ld b, c
    ld b, b
    ld sp, $1100
    nop
    inc c
    add b
    ld b, $00
    inc bc
    ld c, b
    add c
    inc e
    db $e3
    nop
    rst $38
    jr z, @+$01

    adc b
    rst $38
    ld c, h
    rst $38
    ld [bc], a
    rst $38
    xor d
    rst $30
    add [hl]
    ld sp, hl
    inc b
    ei
    nop
    rst $38
    ld [hl+], a
    db $fd
    ld bc, $02ff
    rst $38
    ld b, $ff
    ld b, [hl]
    rst $38
    ld b, $ff
    srl a
    pop hl
    cp $e0
    ccf
    ldh [rIE], a
    pop bc
    cp [hl]
    sbc l
    ld [c], a
    call z, $6bf3
    db $f4
    cp e
    call nc, Call_08b_74bb
    ld a, d
    db $fd
    sbc h
    ld a, a
    ld e, [hl]
    cp a
    ccf
    rst $18
    sbc a
    rst $38
    ld e, $ef
    jp c, $aca7

    di
    adc a
    pop af
    ld d, b

jr_08b_7267:
    rst $38
    ld a, [bc]
    db $fd
    adc c
    cp $79
    cp $58
    rst $38
    ld l, $ff
    push af
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ccf
    ld a, [hl]
    rst $38
    or $ff
    cp $ff
    ld b, l
    db $fd
    ld l, a
    db $fd
    ret


    rst $38
    add hl, hl
    rst $38
    dec h
    rst $38
    rst $18
    rst $30
    ld d, a
    rst $38
    inc hl
    db $fd
    ld [hl], a
    adc l
    or l
    rst $28
    add a
    db $fd
    sbc e
    push af
    rst $18
    or c
    add a
    ld sp, hl
    ld d, a
    xor c
    scf
    ret


    ld [hl], a
    adc c
    sbc c
    db $eb
    db $fd
    rlc c
    ei
    rst $00
    add hl, sp
    ld b, a
    cp c
    res 7, l
    rst $00
    add hl, sp
    push hl
    cp e
    push de
    dec sp
    ei
    cp c
    jp $c5b9


    cp c
    db $76
    sbc c
    call nc, $c43b
    cp e
    ld c, [hl]
    or c
    add $b9
    jp nz, Jump_08b_4abd

    or l
    jp z, Jump_08b_4c35

    or e
    ld a, h
    sub e
    jr nz, jr_08b_7267

    ld h, h
    sub e
    xor h
    inc de
    add sp, $17
    ldh [rNR22], a
    db $e4
    inc de
    ld [$a015], a
    ld d, a
    xor h
    ld d, e
    and d
    ld e, a
    jp z, $8837

    ld [hl], a
    add d
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    or d
    ld a, a
    ld [hl], a
    ei
    ld b, c
    rst $38
    db $d3
    rst $38
    ld [hl], d
    rst $38
    ld a, [$fe7f]
    ccf
    rst $28
    rra
    rst $00
    ccf
    pop af
    rrca
    ldh a, [rIF]

jr_08b_7306:
    and h
    ld e, e
    ld a, [hl]
    add c
    rst $38
    nop
    rst $18
    jr nz, jr_08b_7306

    ld [$04fb], sp
    ret


    ld [hl], $24
    db $db
    ld [de], a
    db $fd
    ld hl, $87de
    ld a, h
    ld h, [hl]
    sbc a
    ld l, a
    sbc a
    dec de
    rst $28
    dec bc
    rst $30
    inc c
    di
    ld b, [hl]
    cp c
    dec c
    cp $89
    db $76
    sbc d
    rst $20
    and l
    db $db
    ld d, a
    db $eb
    ld hl, $11ff
    rst $38
    ld a, [bc]
    db $fd
    inc b
    rst $38
    ld a, [bc]
    rst $30
    ld bc, $12ff
    db $fd
    rlca
    ld hl, sp-$5d
    call c, $f75e
    jp nc, $347f

    ei
    db $10
    rst $38
    ld a, a
    cp h
    rst $38
    ld c, [hl]
    add [hl]
    ld a, a
    ld l, a
    sbc a
    db $e3
    rra
    db $fd
    rlca
    db $fc
    rlca
    ld a, a
    add e
    ld a, [$ff87]
    pop bc
    or $e1
    and $f9
    ld a, a
    ld hl, sp-$01
    cp h
    ccf
    db $fc
    cpl
    call c, Call_08b_7e85
    call c, $3d2b
    db $db
    ld e, l
    cp a
    dec a
    sbc $ac
    rst $38
    xor d
    rst $38
    ld c, a
    db $fd
    ld [hl+], a
    rst $38
    ld e, a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    db $fd
    cp a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    ld a, a
    rst $38
    ld a, a
    ld a, l
    rst $38
    rst $38
    ld a, a
    rst $28
    ld a, a
    db $ed
    ld a, a
    ld d, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $28
    ld a, a
    ld l, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld a, e
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld [hl], e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    rst $10
    cpl
    db $dd
    inc hl
    ld h, d
    sbc a
    and b
    ld e, a
    db $10
    rst $38
    ld l, $ff
    sub b
    ld a, a
    inc e
    rst $38
    inc d
    rst $28
    ld c, $ff
    rst $18
    and c
    rst $38
    ret z

    ld a, a
    ldh [$67], a
    ld hl, sp-$69
    ld a, b
    rst $18
    inc a
    or $0f
    rst $38
    inc bc
    add l
    ei
    ld [c], a
    db $fd
    ldh [rIE], a
    ld a, b
    rst $38
    ld e, h
    rst $38
    inc a
    rst $18
    ld e, $ff
    adc a
    rst $30
    call nz, Call_000_32fb
    db $fd
    db $10
    rst $38
    ld bc, $8cfe
    rst $38
    add d
    rst $38
    ld b, [hl]
    rst $38
    inc hl
    rst $38
    ld a, [$ef31]
    sbc b
    cp e
    call z, $c6df
    push af
    ld b, d
    cp $e1
    scf
    ldh a, [$fb]
    ld hl, sp-$05
    db $fc
    rst $10
    cp $be
    ld a, a
    pop de
    ccf
    rst $00
    add hl, de
    db $f4
    rrca
    xor $07
    ld h, a
    inc de
    ld a, l
    add e
    ei
    add l
    ld sp, hl
    add $5e
    pop hl
    xor $71
    ld a, a
    ld hl, sp-$25
    cp h
    cp l
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
    ld a, a
    rst $38
    rst $38
    rra
    ld a, a
    adc a
    db $db
    daa
    push af
    dec bc

jr_08b_74ac:
    rst $20
    ld [$00ff], sp
    ld a, l
    add d
    rra
    ldh [$af], a
    ld [hl], b
    rst $18
    jr nc, jr_08b_74ac

    inc c
    ld sp, hl

Call_08b_74bb:
    ld b, $fd
    inc bc
    rst $18
    ldh [$fb], a
    call nz, $76d9
    or a
    ld a, c
    cp a
    ld a, h
    xor $1f
    rst $38
    rrca
    rst $30
    rrca
    ld e, a
    and l
    rst $18
    di
    add h
    ld a, e
    add sp, $37
    add d
    ld a, l
    cp l
    ld l, [hl]
    rst $20
    ccf
    cpl
    rst $18
    sbc a
    ld a, a
    db $e3
    rst $18
    add sp, $7f
    cp [hl]
    ld a, c
    ei
    inc a
    db $db
    ld a, $db
    xor $5f
    rst $20
    cp e
    ld d, a
    xor a
    inc de
    db $ed
    inc de
    db $76
    add hl, bc
    sbc $e9
    ld a, [$d6ed]
    db $ed
    ld h, a
    ld hl, sp-$11
    db $fc
    db $fc
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $18
    ld c, a
    rst $38
    rst $28
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    call $fe3b
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
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
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
    ld a, a
    ccf
    rst $38
    rra
    cp a
    ld c, a
    ei
    rlca
    ld sp, hl
    rlca
    db $f4
    dec bc
    ld hl, sp+$07
    and $19
    db $f4
    adc a
    sub [hl]
    ld h, a
    sub $29
    and $1d
    or e
    call z, $c739
    ld e, a
    or c
    db $eb
    call c, $efc6
    rst $28
    di
    pop af
    rst $38
    cp [hl]
    ld a, a
    cp h
    rst $38
    rst $30
    ld a, a
    ld sp, hl
    rst $38
    xor $9d
    push de
    cp [hl]
    ld a, [$ebc7]
    rst $30
    ld a, [c]
    rst $38
    rst $38
    ld a, h
    cp a
    ld a, [hl]
    cp a
    ccf
    rst $18
    rrca
    rst $38
    jp $efb1


    rst $30
    rst $28
    rst $28
    ld [hl], a
    ld [hl], a
    ei
    ld a, b
    cp a
    ld a, $ff
    ei
    rst $38
    ld a, h
    rst $30
    rst $18
    rst $38
    call $f9ff
    cp $be
    db $fd
    rst $38
    db $fd
    rst $38
    cp $de
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
    ccf
    rst $38
    rst $18
    ccf
    scf
    rst $08
    xor e
    ld d, a
    ld b, l
    ei
    push hl
    ld a, [$7fb4]
    ld a, e
    cp a
    push bc
    cp a
    rst $18
    rst $20
    and l
    ld a, e
    jp c, $f63d

    adc a
    ld b, d
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    sbc $ff
    rst $20
    rst $18
    ld h, a
    rst $38
    rst $38
    cp a
    rst $18
    cp a
    cp e
    rst $38
    di
    rst $38
    ld e, $7f
    rst $08
    ccf
    rst $20
    rra
    and c
    rst $18
    xor $f3
    and a
    ei
    rst $38
    ld hl, sp-$21
    db $fc
    ld a, [hl]
    rst $38
    ld a, a
    cp a
    cp a
    ld e, a
    add a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp c
    rst $38
    adc e
    rst $38
    rst $10
    rst $28
    ld a, a
    rst $38
    add c
    ld a, a
    ld a, l
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    xor a
    rra
    or a
    rst $08
    call Call_08b_76f3
    ld sp, hl
    dec sp
    db $fc
    ld c, l
    cp [hl]
    ld b, l
    cp a
    or h
    rst $08
    rst $08
    or $6f
    rst $38
    jr z, @+$01

    sub l
    cp $d5
    cp $f1
    rst $38
    rst $30
    rst $38
    sbc $ff
    rst $38
    rst $28
    ld [hl], h
    rst $38
    ld [hl], e
    rst $38
    cp c
    rst $38
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    dec sp
    rst $18
    set 7, a
    db $ed
    rst $38
    rst $38
    db $fd
    db $fc
    cp $ff
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    xor a
    rst $18
    ld e, a
    rst $20
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld e, a
    ccf
    rst $38
    rrca
    cp e
    rst $00
    db $dd
    db $e3
    ld a, e
    db $f4
    sbc c
    cp $f4
    rst $28
    rst $30
    ld a, a
    rst $28
    ccf
    rst $18
    rst $38
    cp l
    rst $38
    call nz, $d7ff
    rst $38
    sbc a
    rst $38
    ei
    db $dd
    rst $28
    cp $e7
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $18
    or $ef
    or $ff
    ei
    rst $38
    ld a, a

Call_08b_76f3:
    rst $38
    rst $18
    ccf
    rst $30
    adc a
    ld d, e
    rst $28
    ei
    rst $38
    pop hl
    rst $38
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    sbc a
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
    cp a
    ld a, a
    rst $18
    ccf
    sbc a
    ld l, a
    ld h, a
    sbc a
    add e
    rst $38
    ret c

    rst $38
    db $eb
    rst $38
    ld [hl], a
    rst $38
    inc a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $d3
    rst $28
    db $fd
    rst $38
    ldh a, [rIE]
    cp a
    rst $38
    db $ed
    rst $38
    dec a
    rst $38
    sbc $ff
    ei
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    ld e, [hl]
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
    ld a, a
    rst $38
    ccf
    rst $38
    add a
    rst $38
    add e
    rst $38
    ldh [rIE], a
    cp h
    di
    jp c, Jump_08b_7efd

    rst $38
    sbc a
    rst $38
    rst $10
    rst $28
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $10
    rst $38
    ld a, e
    ei
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
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ccf
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
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    sbc a
    cp a
    rst $08
    jp $eeff


    ld sp, hl
    ei
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    ld l, l
    rst $38
    push af
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
    ld bc, $0202
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
    inc bc
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_08b_78b7

    ld a, [de]
    rrca
    dec de
    ld de, $1d1c
    inc e
    dec e
    inc e
    dec e
    inc d
    ld e, $1f
    jr nz, jr_08b_78ce

    ld [hl+], a
    inc hl
    rrca
    dec de
    ld de, $1312
    ld [de], a
    inc de
    ld [de], a

jr_08b_78b7:
    inc de
    inc d
    inc h
    dec h
    ld h, $27
    jr z, @+$25

    rrca
    dec de
    ld de, $1d1c
    inc e
    dec e
    inc e
    dec e
    inc d
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_08b_78ce:
    inc hl
    rrca
    dec de
    ld de, $1312
    ld [de], a
    inc de
    ld [de], a
    inc de
    inc d
    ld l, $2f
    jr nc, jr_08b_790e

    ld [hl-], a
    inc hl
    rrca
    inc sp
    ld de, $1d1c
    inc e
    dec e
    inc e
    dec e
    inc d
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $0f
    add hl, bc
    scf
    jr c, jr_08b_792c

    jr c, jr_08b_792e

    jr c, jr_08b_7930

    add hl, sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [hl-]
    rrca
    dec sp
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a

jr_08b_790e:
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08b_792c:
    nop
    nop

jr_08b_792e:
    nop
    nop

jr_08b_7930:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $00
    cp $00
    cp $00
    cp $01
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
    rra
    rst $38
    jr nz, @-$1e

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    rrca
    ldh a, [rIF]
    ldh a, [$0d]
    di
    ld a, [bc]
    rst $30
    dec bc
    or $0c
    di
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    dec c
    di
    rrca
    ld a, [c]
    ld c, $f3
    ld c, $f1
    rrca
    ldh a, [rIF]
    ldh a, [$f8]
    nop
    ld a, b
    add b
    cp b
    ret nz

    ret c

    ldh [$ef], a
    ldh a, [rIE]
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
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    rrca
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop

jr_08b_7b95:
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
    nop
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    ld hl, sp+$07
    pop af
    ld c, $e7
    jr jr_08b_7b95

    inc sp
    adc e
    ld [hl], a
    adc a
    ld [hl], a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    swap a
    call nz, $e33b
    inc e
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
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
    rrca
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
    cp $11
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    cp $11
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
    db $10
    rst $38
    db $10
    cp $11
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    cp $11
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
    db $10
    rst $38
    db $10
    cp $11
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    cp $11
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $18
    nop
    cpl
    ret nz

    rst $00
    ldh [$e7], a
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$e7]
    ldh a, [$c7]
    ldh [rIF], a
    ret nz

    rra
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
    cp e
    ld a, h
    ld b, l
    jp nz, $8182

    db $10
    ld de, $1110
    db $10
    ld de, $1110
    add d
    add c
    ld b, l
    jp nz, Jump_08b_7cbb

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    ld a, h
    ld b, l
    jp nz, $8182

    jr nz, jr_08b_7ccb

    jr nz, jr_08b_7ccd

    jr nc, jr_08b_7cdf

    jr c, jr_08b_7ce9

    sub d
    sub c
    ld b, l
    jp nz, Jump_08b_7cbb

    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_08b_7cbb:
    nop
    cp e
    ld a, h
    ld b, l
    jp nz, $8182

    jr c, jr_08b_7cfd

    ld [$1009], sp
    ld de, $1110
    add d

jr_08b_7ccb:
    add c
    ld b, l

jr_08b_7ccd:
    jp nz, Jump_08b_7cbb

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

jr_08b_7cdf:
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei

jr_08b_7ce9:
    rlca
    db $f4
    inc c
    add sp, $18
    di
    inc de
    ldh a, [rNR10]
    pop af
    ld de, $13f3
    add sp, $18
    db $f4
    inc c
    ei
    rlca
    rst $38

jr_08b_7cfd:
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    db $f4
    inc c
    add sp, $18
    di
    inc de
    di
    inc de
    ldh a, [rNR10]
    di
    inc de
    add sp, $18
    db $f4
    inc c
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    db $f4
    inc c
    add sp, $18
    di

Call_08b_7d23:
    inc de
    ld a, [c]
    ld [de], a
    di
    inc de
    di
    inc de
    add sp, $18
    db $f4
    inc c
    ei
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    ld e, [hl]
    ld hl, $132d
    ld c, $12
    adc [hl]
    sub d
    ld c, $12
    adc [hl]
    sub d
    dec l
    inc de
    ld e, [hl]
    ld hl, $c0bf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    ld e, [hl]
    ld hl, $132d
    adc [hl]
    sub d
    ld c, $12
    adc [hl]
    sub d
    adc [hl]
    sub d
    dec l
    inc de
    ld e, [hl]
    ld hl, $c0bf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    ld e, [hl]
    ld hl, $132d
    adc [hl]
    sub d
    adc [hl]
    sub d
    adc [hl]
    sub d
    adc [hl]
    sub d
    dec l
    inc de
    ld e, [hl]
    ld hl, $c0bf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    ld hl, sp-$75
    add h
    dec b
    ld [bc], a
    ld [hl], c
    ld [hl], d
    ld de, $3112
    ld [hl-], a
    ld [hl], c
    ld [hl], d
    dec b
    ld [bc], a
    adc e
    add h
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    ld hl, sp-$75
    add h
    dec b
    ld [bc], a
    ld [hl], c
    ld [hl], d
    ld b, c
    ld b, d
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], d
    dec b
    ld [bc], a
    adc e
    add h
    ld [hl], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    ld hl, sp-$75
    add h
    dec b
    ld [bc], a
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], d
    ld de, $7112
    ld [hl], d
    dec b
    ld [bc], a
    adc e
    add h
    ld [hl], a
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    ld [$070f], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh [$ef], a
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f7
    dec c
    rst $30
    rrca
    db $fc
    rlca
    rst $38
    ret nz

    cp a
    add b
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    cp a
    add b
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld b, $f0
    rrca
    or $0d
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $18
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $c301
    ld bc, $01c3
    jp $c301


    ld bc, $01c3
    jp $c301


    ld bc, $01c3
    jp $c301


    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    rst $38
    ccf
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b

Call_08b_7e85:
    dec b
    ld b, $07
    ld [$0909], sp
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
    dec d
    ld d, $17
    jr @+$1b

    add hl, bc
    add hl, bc
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08b_7ec9

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08b_7ed9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08b_7ee9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08b_7ef9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08b_7ec9:
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

jr_08b_7ed9:
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

jr_08b_7ee9:
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

jr_08b_7ef9:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76

Jump_08b_7efd:
    ld [hl], a
    ld a, b
    ld a, c
    add hl, bc
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
    add hl, bc
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
    jr nz, jr_08b_7fc9

    rra
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_08b_7fdd

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08b_7fed

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b

jr_08b_7fc9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b

jr_08b_7fdd:
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_08b_7fed:
    dec b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    db $06
