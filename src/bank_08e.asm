SECTION "ROM Bank $08e", ROMX[$4000], BANK[$8e]

    cp $00
    rst $38
    db $fc
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
    add e
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    adc b
    db $76
    pop de
    ld l, $81
    ld a, [hl]
    sub e
    ld l, [hl]
    pop de
    ld l, $94
    ld l, e
    sub e
    ld l, [hl]
    add b
    ld a, a
    ld [$86f7], sp
    ld a, e
    nop
    ld a, a
    adc e
    db $76
    add a
    ld a, d
    and l
    ld e, d
    add c
    ld a, [hl]
    and d
    ld e, a
    add c
    ld a, [hl]
    add e
    ld a, [hl]
    add b
    ld a, a
    adc a
    ld [hl], d
    dec b
    ld a, [$da27]
    or b
    ld c, a
    and c
    ld a, [hl]
    dec b
    cp $bd
    ld b, d
    xor l
    ld d, d
    pop af
    ld b, [hl]
    sbc c
    ld h, [hl]
    ld b, d
    rst $38
    and $1f
    ld b, $1f
    rst $20
    rra
    daa
    rra
    inc h
    rra
    inc h
    rra
    inc h
    rra
    inc l
    rla
    ld l, $17
    dec h
    ld e, $24
    rra
    inc [hl]
    rra
    ld h, $1d
    ld h, $1d
    inc h
    rra
    dec h
    rra
    inc [hl]
    rra
    ld h, $1d
    inc [hl]
    rra
    scf
    inc e
    ld [hl], $1d
    ld l, [hl]
    dec e
    db $76
    dec e
    ld a, [hl]
    dec e
    ld a, [hl]
    dec e
    ld c, h
    ccf
    call nz, $ec3f
    ccf
    call nc, $de3f
    ccf
    db $fd
    ccf
    ld b, [hl]
    dec a
    ld b, d
    dec a
    add $3d
    jp nz, $cf3d

    ccf
    adc $3f
    ret


    ccf
    xor $1f
    rrca
    rra
    push af
    rrca
    db $f4
    rrca
    db $f4
    rst $38
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $fc
    inc de
    inc e
    inc de
    cp $11
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    ldh a, [rIF]
    rst $38
    ldh a, [$df]
    ccf
    ldh a, [rNR22]
    ldh a, [rNR22]
    ldh a, [rNR13]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    db $fc
    db $10
    cp $10
    cp $10
    ld c, [hl]
    or c
    ld l, $d1
    ld c, h
    or c
    ld c, [hl]
    or c
    ld a, [hl+]
    push de
    ld c, [hl]
    or c
    ld b, $f1
    inc b
    pop af
    inc c
    pop af
    ld [$0cf5], sp
    pop af
    jr @-$19

    inc e
    pop hl
    ld d, $e1
    inc d
    pop hl
    ld c, $e1
    ld c, $e1
    ld c, $e1
    ld c, $e1
    ld c, $e1
    ld a, [bc]
    pop hl
    ld b, $e1
    dec b
    ld [c], a
    dec c
    ld [c], a
    dec c
    ld [c], a
    dec l
    ld [c], a
    dec c
    ld [c], a
    inc a
    db $e3
    inc d
    db $e3
    jr @-$17

    ld [$09e7], sp
    and $09
    and $7d
    and d
    ld a, c
    and [hl]
    inc de
    and $d3
    and $da
    daa
    jp c, $fb27

    ld b, $db
    ld h, $eb
    ld d, $ea
    rla
    db $eb
    ld d, $eb
    ld d, $6b
    ld d, $8a
    scf
    jp z, $c237

    ccf
    jp nc, $d22f

    cpl
    rst $10
    ld a, [hl+]
    ret nc

    cpl
    ld [c], a
    rra
    ld d, d
    xor a
    or b
    ld c, a
    add e
    ld a, a
    ld b, c
    cp [hl]
    ld bc, $91fe
    ld l, [hl]
    add e
    ld a, h
    rlca
    db $fc
    ld b, $fc
    ld b, a
    db $fc
    rlca
    db $fc
    ld b, [hl]
    db $fd
    jp nz, $827d

    ld a, l
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    add b
    ldh [$c0], a
    ldh [$e0], a
    rst $38
    jr nz, @+$01

    cpl
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr nz, @+$01

    daa
    ld hl, sp+$27
    rst $38
    daa
    ld hl, sp-$59
    ld a, b
    rst $20
    jr @+$01

    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $fc
    add e
    rst $38
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
    ld a, a
    jr nz, jr_08e_41e1

    push hl
    ld e, $60
    rra
    ld h, a
    rra
    ld h, [hl]
    add hl, de
    ld b, e
    inc e
    ld c, b
    rla
    ld b, [hl]
    add hl, de
    ld b, l
    ld a, [de]
    ld l, l
    ld [de], a
    ld l, d
    dec d
    ld l, $11
    ld c, h
    ld de, $114d
    ld a, [bc]
    ld de, $11ca
    ld l, [hl]

jr_08e_41e1:
    ld de, $116e
    ld l, h
    ld de, $11af
    adc [hl]
    ld de, $138d
    xor c
    rla
    xor $11
    ld [$e715], a
    add hl, de
    adc d
    ld [hl], l
    ld a, [$e615]
    add hl, de
    ld b, [hl]
    cp c
    jp z, Jump_08e_4a35

    or l
    xor [hl]
    ld d, c
    ret nz

    ccf
    jp nc, $6e2d

    sub c
    ld a, [hl]
    add c
    sbc $21
    ld c, h
    or e
    ld c, h
    or e
    call c, $d823
    daa
    db $fc
    inc hl
    call c, $9023
    ld l, a
    ret c

    daa
    ld a, [de]
    rst $20
    ld a, d
    and a
    ld d, c
    xor a
    db $10
    rst $28
    ld [hl-], a
    rst $28
    ld [bc], a
    rst $38
    ld a, [hl+]
    rst $30
    ld [de], a
    rst $28
    ld [hl-], a
    rst $28
    ld [de], a
    rst $28
    jp nz, $92ff

    ld l, a
    ldh a, [$2f]
    or d
    ld l, a
    ld b, d
    cp a
    db $eb
    ccf
    add d
    ld a, a
    sub d
    ld l, a
    sub c
    ld l, a
    sub [hl]
    ld l, a
    add e
    ld a, a
    add d
    ld a, a
    db $fc
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
    ldh [rP1], a
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
    db $fc
    inc bc
    rst $38
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld bc, $01fe
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
    ret nz

    ccf
    db $fc
    jp $fcff


    add a
    rst $38
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    and b
    rst $38
    ld b, d
    db $fd
    ld h, b
    rst $38
    jp nz, Jump_000_02fd

    db $fd
    ld [hl-], a
    db $ed
    adc b

jr_08e_42ad:
    rst $30
    sub d
    db $ed
    db $10
    rst $28
    ld c, $f5
    jr z, jr_08e_42ad

    add hl, bc
    or $0d
    or $d0
    cpl
    ld d, d
    xor l
    ld [$41f7], sp
    cp [hl]
    ld bc, $b1fe
    ld l, [hl]
    inc de
    db $ec
    ld de, $11ee
    xor $10
    rst $28
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    ld a, [bc]
    db $fd
    nop
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld c, a
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$4c
    ld hl, sp+$0c
    ld hl, sp+$4c
    ld hl, sp+$0c
    ld hl, sp+$4c
    ld hl, sp+$4c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp+$34
    ld hl, sp+$14
    ld hl, sp+$04
    ld hl, sp-$6c
    ld hl, sp+$54
    ld hl, sp+$34
    ld hl, sp-$69
    ld hl, sp+$70
    rst $38
    sub b
    rst $38
    add d
    rst $38
    sub b
    rst $38
    or h
    rst $18
    add b
    rst $38
    or h
    rst $18
    or h
    rst $18
    or h
    rst $18
    sub [hl]
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $0f
    rra
    rst $38
    inc e
    ccf
    ld e, $ff
    sbc [hl]
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    inc d
    rst $38
    ld [$0cff], sp
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $df
    ld [$00df], sp
    rst $18
    jr jr_08e_436f

    db $fc
    ld a, a
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    db $fc
    adc a
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
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
    ld h, b
    rst $38
    ld h, b
    rst $38

jr_08e_436f:
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld [$00ff], sp
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    sub c
    rst $38
    jr nz, @+$01

    sub c
    rst $38
    ld bc, $81ff
    rst $38
    ld bc, $80ff
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld de, $80fe
    rst $38
    ld b, b
    rst $38
    add d
    rst $38
    add b

jr_08e_43b9:
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc e
    rst $38
    add b

jr_08e_43c3:
    rst $38
    ld [$20f7], sp
    rst $38
    jr nc, jr_08e_43b9

    jr z, jr_08e_43c3

    ld bc, $20fe
    rst $38
    ld [bc], a
    rst $38
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add c
    nop
    add e
    nop
    add c
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
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

Call_08e_4400:
    ld [$c8ff], sp
    ld a, a
    adc b
    ld a, a
    ret nz

    ld a, a
    nop
    rst $38
    ld c, h
    ei
    ld c, h
    ei
    dec c
    ei
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    inc c
    ei
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38

Call_08e_4422:
    db $10
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    add b
    rst $38
    jp nc, $90ff

    rst $38
    ld [de], a
    rst $38
    ld d, e
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    jp nc, $d3ff

    rst $38
    ld [hl], e
    rst $38
    ld [de], a
    rst $38
    and $3f
    pop hl
    rra
    ld hl, sp+$07
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
    dec e
    ld [c], a
    ld e, h
    and d
    sub l
    ld h, d
    ld d, l
    and d
    ld c, d
    and b
    ld d, b
    and d
    db $10
    ld [c], a
    ld b, h
    and d
    sub c
    ld h, d
    ld sp, hl
    ld [bc], a
    ld d, c
    and d
    call nz, Call_08e_4422
    and d
    jp nc, $f224

    inc b
    jp c, Jump_000_1e24

    ldh [$9a], a
    ld h, h
    cp e
    ld b, h
    dec hl
    call nc, $847b
    dec sp
    call nz, $d40d
    ld a, d
    add h
    add sp, $16
    ld a, [de]
    call nz, $847b
    ld a, d
    add h
    ld a, e
    add h
    ld a, [$9b04]
    ld h, h
    db $e3
    inc e
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $8100
    nop
    pop bc
    nop
    add c
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rra
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
    ld sp, $14df
    rst $38
    scf
    rst $18
    ld e, $f1
    rra
    pop af
    ccf
    pop de
    rrca
    pop af
    ld b, $f9
    ld e, $f1
    ld e, $f1
    dec bc
    pop af
    ld c, $f1
    rrca
    pop af
    inc c
    di
    dec c
    di
    inc l
    di
    adc b
    rst $30
    db $f4
    xor e
    inc l
    di
    ld h, [hl]
    cp e
    and h
    ei
    or [hl]
    db $eb
    cp h
    db $e3
    adc [hl]
    di
    xor d
    rst $30
    ld b, $fb
    ld b, [hl]
    ei
    ld h, $fb
    ret nz

    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    add c
    rst $38
    jp $51ff


    rst $38
    ld a, [de]
    rst $38
    or e
    ld c, a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    add e
    db $10
    dec b
    db $10
    dec b
    stop
    ld de, $0035
    add hl, de
    jr nz, @+$16

    ld hl, $00bd
    db $10
    ld hl, $2198
    ld [$0021], sp
    ld hl, $2100
    nop
    ld hl, $2110
    db $10
    ld hl, $2130
    db $10
    ld hl, $2194
    sub d
    ld hl, $21d2
    call nz, $9033
    ld h, e
    db $10
    db $e3
    sub b
    ld h, e
    sbc b
    ld h, e
    sbc e
    ld h, d
    di
    ld b, d
    cp c
    ld b, d
    ld h, a
    ld c, d
    ld h, l
    ld c, d
    add [hl]
    inc bc
    adc e
    rlca
    ld c, $07
    inc c
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    inc c
    rlca
    rrca
    inc b
    dec bc
    inc b
    dec bc
    inc b
    ld a, [bc]
    dec b
    rrca
    inc b
    dec c
    ld b, $0a
    dec b
    dec bc
    inc b
    ld [$0807], sp
    rlca
    ld [$0e07], sp
    ld bc, $030c
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    inc c
    inc bc
    inc bc
    nop
    rla
    add sp, -$4a
    ld c, b
    rla
    add sp, $07
    ld hl, sp+$05
    ld a, [$f806]
    rlca
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$5e]
    or c
    ld [de], a
    db $fd
    inc de
    db $fc
    ld de, $01fe
    cp $11
    cp $19
    or $82
    ld a, l
    ld [de], a
    db $fd
    db $10
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    ld [de], a
    db $fd
    ld d, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and c
    rst $38
    ld hl, $21ff
    rst $38
    and c
    rst $38
    ld bc, $a0ff
    rst $38
    and b
    rst $38
    add hl, hl
    rst $38
    jr nz, @+$01

jr_08e_45ca:
    ldh [$7f], a
    pop hl
    rra
    ld a, [bc]
    rst $20
    and c
    ld e, b
    ret nc

    ld l, $f2
    dec c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    or $09
    or $0a
    push af
    ld [$2ff5], sp
    ret nc

    ld d, b
    xor a
    ld [de], a
    db $ed
    inc e
    db $eb
    ret z

    cpl
    add [hl]
    ld l, c
    inc c
    db $eb
    sub a
    ld l, b
    rra
    add sp, $13
    add sp, $56
    xor c
    rlca
    add sp, $16
    add sp, -$5a
    ld e, c
    dec hl
    rst $18
    dec bc
    call c, $d823
    ld b, a
    sbc b
    ld a, e
    sub b
    ld a, e
    sub b
    ld b, e
    sbc b
    ld a, e
    sub b
    ld a, e
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld c, e
    or b
    ld c, h
    or c
    dec c
    ldh a, [$e9]
    ldh a, [$c6]
    jr nc, jr_08e_45ca

    db $10
    ldh a, [rP1]
    di
    nop
    pop de
    jr nz, @-$29

    jr nz, jr_08e_4692

    jr nz, @+$07

    jr nz, @+$0f

    jr nz, @-$72

    ld hl, $24b9
    sbc [hl]
    ld hl, $21ae
    adc $21
    rst $18
    ld hl, $21d7
    sub [hl]
    ld h, c
    ld c, b
    and a
    adc b
    ld h, a
    ccf
    ld b, c
    dec [hl]
    ld c, e
    ld a, [hl-]
    ld b, l
    ld a, h
    ld b, e
    ld [hl], b
    ld c, a
    ld e, c
    ld h, a
    ld a, b
    ld b, a
    dec bc
    db $76
    jp $837e


    ld a, [hl]
    sbc e
    ld h, [hl]
    dec sp
    add $1b
    and $3b
    add $3a
    add $99
    and $09
    or $01
    cp $83
    db $fc
    add c
    cp $85
    cp $86
    db $fd
    rlca
    db $fc
    add l
    cp $07
    db $fc
    adc l
    or $06
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    dec c
    ld a, [$ff08]
    inc l
    ei
    inc c
    ei
    inc c
    ei

jr_08e_4692:
    ld [$08ff], sp
    rst $38
    inc c
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $10
    ld a, a
    ld d, b
    adc a
    or h
    ld b, e
    inc c
    ldh a, [$e9]
    ld d, $f0
    rrca
    ld sp, hl
    ld b, $fe
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
    jr jr_08e_46f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08e_4703

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08e_4713

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08e_4723

    ld [hl-], a

jr_08e_46f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08e_4733

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08e_4703:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld [hl-], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, b
    ld c, a
    ld d, b

jr_08e_4713:
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
    ld b, b
    ld e, [hl]
    ld e, a

jr_08e_4723:
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
    ld b, b
    ld l, l
    ld l, [hl]

jr_08e_4733:
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
    ld [hl-], a
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
    ld hl, sp-$17
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    jp hl


    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    jp hl


    jp hl


    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08e_480d

    ld [hl+], a
    inc hl
    jp hl


    jp hl


    inc h
    dec h
    ld h, $27
    jr z, jr_08e_481f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08e_482f

    jp hl


    jp hl


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08e_480d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08e_481f:
    nop
    ld bc, $0704
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

jr_08e_482f:
    dec b
    ld bc, $0101
    inc b
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
    ld bc, $0400
    inc b
    ld bc, $0607
    ld b, $06
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
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0404
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $07
    rlca
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    rlca
    rlca
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc b
    inc b
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
    rlca
    inc b
    inc b
    rlca
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    inc l
    ld b, $3e
    rlca
    dec sp
    rlca
    rla
    rlca
    ccf
    rlca
    daa
    rrca
    daa
    rrca
    daa
    rrca
    adc a
    rlca
    adc e
    rlca
    adc c
    inc bc
    pop bc
    dec bc
    call $cd03
    inc bc
    rst $08
    ld bc, $01ec
    call z, Call_000_2501
    nop
    ldh [$03], a
    di
    nop
    di
    nop
    or a
    ld b, b
    ld h, a
    add b
    or a
    nop
    dec [hl]
    add d
    sub a
    nop
    rla
    nop
    scf
    nop
    ld de, $1302
    nop
    dec de
    nop
    ld a, [de]
    ld bc, $40bb
    ld e, d
    and c
    adc [hl]

jr_08e_4985:
    ld [hl], c
    sbc a
    ld h, b
    inc de
    add sp, $11
    add sp, $04
    ld hl, sp+$04
    ld hl, sp+$42
    cp h
    ld b, e
    cp h
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    add c
    ld a, [hl]
    add b
    ld a, a
    ret nc

    cpl
    ret z

    scf
    db $fc
    inc bc
    dec a
    jp nz, Jump_08e_4db2

    ld [hl+], a
    db $dd
    jr z, jr_08e_4985

    sub c
    xor $90
    rst $28
    sub b
    rst $28
    adc b
    rst $30
    xor b
    rst $10
    db $ec
    db $d3
    ld hl, sp-$39
    ldh a, [$cf]
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ld hl, sp+$79
    ldh [$60], a
    ldh a, [rBCPS]
    ldh a, [$34]
    ld hl, sp+$36
    ld hl, sp+$37
    ld hl, sp+$14
    ld hl, sp+$1d
    ld hl, sp+$1d
    ld hl, sp+$3c
    reti


    add hl, hl
    call c, $fc08
    ld c, $fc
    ld c, $fc
    inc b
    cp $0c
    cp $0f
    cp $07
    cp $06
    rst $38
    ld [bc], a
    rst $38
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    ei
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld l, b
    sub a
    nop
    rst $18
    inc [hl]
    rl b
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, l
    ei
    dec b
    ei
    inc bc
    db $fd
    ld [hl+], a
    db $fd
    ld sp, $a0fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld [bc], a
    cp a
    pop de
    cp a
    db $e3
    sbc a
    adc d
    rst $18
    or a
    rst $08
    rst $10

Jump_08e_4a35:
    rst $28
    rst $08
    rst $30
    db $e3
    rst $38
    db $e3
    rst $38
    ld h, l
    ei
    ld [hl], b
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    di
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
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    cp $7f
    cp a
    ld a, a
    cp a
    ld a, a
    ld sp, hl
    ccf
    db $fd
    ccf
    dec e
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ccf
    rra
    cp a
    rra
    xor a
    rra
    xor a
    rra
    rrca
    rra
    rrca
    rra
    cp a
    rrca
    or a
    rrca
    and a
    rra
    ld [hl], a
    adc a
    scf
    rst $08
    ld l, a
    sub a
    ld a, a
    add a
    ld a, a
    add a
    rst $20
    rra
    jp $b33f


    rrca
    or e
    rrca
    ld l, e
    add a
    dec sp
    rst $00
    inc sp
    rst $00
    ld hl, $0dd7
    di
    dec b
    ei
    rlca
    ld sp, hl
    nop
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $82
    ld a, a
    rst $38
    rst $38
    cp $ff
    add b
    cp $af
    nop
    or [hl]
    ld bc, $04d3
    sbc a
    nop
    db $db
    inc b
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    and a
    nop
    or c
    ld b, $07
    db $10
    add c
    db $10
    db $d3
    nop
    db $d3
    nop
    db $d3
    nop
    sub e
    nop
    add a
    nop
    sub [hl]
    nop
    jr nz, jr_08e_4aec

jr_08e_4aec:
    ld [hl], b
    nop
    call nz, $9810
    ld b, h
    ld l, e
    add h
    ld a, l
    add d
    ccf
    ret nz

    cp d
    pop bc
    adc [hl]
    pop af
    db $fd
    jp nz, $c0f7

    ld l, a
    ret nc

    ld d, [hl]
    add sp, $74
    add sp, $7f
    ldh [$ef], a
    ld [hl], b
    cpl
    ldh a, [$3d]
    ld a, [c]
    ccf
    ldh a, [$33]
    ld hl, sp+$17
    ld hl, sp+$1d
    ld a, [$fc1b]
    add hl, bc
    cp $09
    cp $1d
    ld a, [hl]
    ld l, l
    ld a, $dd
    ld a, $3d
    sbc $0f
    cp $16
    rst $28
    ld b, d
    rst $38
    jp $c3ff


    rst $38
    sub e
    rst $38
    db $e3
    rst $38
    ld l, c
    rst $38
    ld sp, $39ff
    rst $38
    add hl, de
    rst $38
    db $10
    rst $38
    inc d
    ld hl, sp-$60
    ret nz

    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    ld h, b
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    rst $08
    ldh [$e7], a
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$e3]
    ldh a, [$e3]
    ldh a, [$e3]
    ldh a, [$f1]
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    sbc h
    cp $de
    cp $de
    cp $8e
    cp $ce
    cp $ce
    cp $ce
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $7f
    cp [hl]
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    rst $38
    ccf
    ld a, a
    ccf
    rst $18
    ccf
    rst $18
    ccf
    ld e, a
    ccf
    cp a
    rra
    sbc a
    rra
    rrca
    rra
    rst $08
    rra
    ld e, a
    cpl
    sbc a
    ld l, a
    rst $18
    cpl
    rst $38
    rrca
    scf
    adc a
    ld d, a
    adc a
    cp a
    rlca
    rst $18
    rlca
    adc a
    ld d, a
    dec hl
    ld d, a
    ei
    rlca
    rst $28
    inc de
    xor l
    inc de
    push bc
    dec sp
    push hl
    dec de
    rst $28
    ld de, $518f
    sbc [hl]
    ld b, c
    db $fc
    inc bc
    xor h
    ld d, e
    add [hl]
    ld a, c
    sub h
    ld l, e
    jp nz, Jump_08e_5a3d

    and l
    sbc e
    ld h, h
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    rst $30
    ld [$8c63], sp
    ld [hl], c
    adc [hl]
    ld h, e
    adc h
    ld a, l
    add d
    pop de
    ld l, $61
    ld e, $c1
    ld a, $c0
    ccf
    ret z

    scf
    add b
    ld a, a
    pop bc
    ccf
    ret nz

    ccf
    or b
    ld c, a
    ld a, $c1
    add d
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    pop de
    cp $cf
    ldh a, [$7e]
    add b
    di
    nop
    call c, $0303
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
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
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
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

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$c0]
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ldh [$fc], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    db $fc
    ld a, b
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
    cp $fc
    cp $fe
    cp $fe
    cp $de
    cp $ee
    cp $ee
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    sbc a
    ld a, a
    ld e, a
    cp a
    jr @+$01

    ret nz

    ccf
    jp nz, $a13d

    rra
    ccf
    rra
    rst $08
    ccf
    ld de, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    nop
    add b

jr_08e_4d64:
    nop
    add b

jr_08e_4d66:
    add b
    ld b, b
    cp [hl]
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_08e_4d78

jr_08e_4d78:
    jr nz, jr_08e_4d7a

jr_08e_4d7a:
    jr nz, jr_08e_4d7c

jr_08e_4d7c:
    jr nz, jr_08e_4d7e

jr_08e_4d7e:
    jr nz, jr_08e_4d80

jr_08e_4d80:
    jr nz, jr_08e_4d82

jr_08e_4d82:
    jr nz, jr_08e_4d84

jr_08e_4d84:
    jr nz, jr_08e_4d86

jr_08e_4d86:
    db $10
    rrca
    db $10
    rrca
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
    rlca
    rrca
    rlca
    rrca
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0407], sp
    inc bc
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    nop

Jump_08e_4db2:
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    jp nz, $c101

    nop
    pop af
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
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
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_08e_4d64

    jr nz, jr_08e_4d66

    or b
    add b
    or b
    add b
    cp b
    add b
    cp b
    add b
    sbc h
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

    rst $28
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$f7], a
    ldh a, [$f7]
    ldh a, [$f7]
    di
    cp $fc
    rst $38
    ldh a, [$fc]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$24
    ld hl, sp-$08
    ld hl, sp-$27
    ld hl, sp+$1f
    ld hl, sp+$3f
    db $fc
    ld a, a
    cp h
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl
    nop
    ld a, b
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, h
    ld bc, $017c
    ld a, h
    ld bc, $01bc
    cp h
    ld bc, $0100
    nop
    ld bc, $3f00
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

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
    ldh [rP1], a
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    add b
    ld a, [hl]
    add b
    ld h, b
    add b
    rra
    add b
    ld a, a
    adc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, $3f
    ld a, $3f
    ld a, $3f
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    rra
    jr jr_08e_4ef2

    jr jr_08e_4ef4

    jr jr_08e_4ef6

    jr jr_08e_4ef8

    db $10
    rra
    db $10
    rra
    db $10
    rrca
    nop
    rrca
    nop
    adc a
    nop
    adc a
    nop
    rst $08
    ld bc, $01ef
    rst $28
    ld c, $ef
    nop
    or $00
    db $f4
    nop

jr_08e_4ef2:
    rst $30
    nop

jr_08e_4ef4:
    ld a, [c]
    nop

jr_08e_4ef6:
    ld hl, sp+$18

jr_08e_4ef8:
    add sp, -$20
    ld l, $00
    dec bc
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    ld [c], a
    nop
    ldh [rP1], a
    add b
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add hl, sp
    rst $38
    pop bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    push af
    nop
    ld [hl], l
    add b
    dec [hl]
    ld b, b
    ld hl, $2444
    add b
    inc h
    add b
    inc b
    ret nz

    inc b
    ld b, b
    inc h
    add b
    inc d
    ld b, b
    inc b
    and b
    inc b
    ld d, b
    inc c
    and b
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
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
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    db $fc
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
    ld bc, $7efe
    add c
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $01
    ld c, $01
    ld c, $01
    ld c, $02
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [hl+], a
    dec a
    ld [hl+], a
    dec a
    ld [bc], a
    dec a
    inc b
    dec sp
    ld b, h
    ld a, e
    ld b, h
    ld a, e
    ld b, h
    ld a, e
    ld b, h
    ld a, e
    add h
    ei
    adc h
    rst $30
    adc h
    rst $30
    adc h
    rst $30
    adc h
    db $f4
    add b
    ldh [rP1], a
    nop
    nop
    nop
    add b
    nop
    ld a, [bc]
    nop
    and c
    nop
    ldh a, [rP1]
    ld e, d
    nop
    inc h
    nop
    ld de, $8000
    nop
    ld b, h
    nop
    inc b
    nop
    add b
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    cp $10
    db $fc
    ld [$88ff], sp
    db $fc
    adc b
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    ld a, h
    nop
    ld a, h
    nop
    inc a
    nop
    inc e
    nop
    inc b
    nop
    inc b
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
    nop
    rst $38
    nop
    ldh a, [rIF]
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $18
    rrca
    rst $08
    rlca
    rst $00

jr_08e_507e:
    inc bc
    jp $01ff


    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    db $fc
    nop
    add e
    nop
    ld a, a
    nop
    ld bc, $3f01
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ret z

    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    or [hl]
    ld d, c
    xor [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub d
    ld l, l
    sub b
    ld l, h
    add b
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
    ld [hl], a
    nop
    inc e
    nop
    ld d, b
    nop
    stop
    ld [$0000], sp
    nop
    add b
    nop
    ld bc, $0f00
    nop
    ld a, a
    nop
    rst $38

jr_08e_50e5:
    ld bc, $0efe
    pop af
    ld [hl], b
    rst $08
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

jr_08e_50f1:
    jr nz, jr_08e_50f1

    jr nz, jr_08e_50e5

    jr nz, jr_08e_507e

    nop
    jr jr_08e_50fa

jr_08e_50fa:
    pop hl
    nop
    rlca
    nop
    rra
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
    cp $fe
    ld sp, hl
    nop
    db $fd
    nop
    reti


    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    reti


    nop
    ld sp, hl
    nop
    push af
    nop
    reti


    nop
    ld sp, hl
    nop
    pop af
    nop
    reti


    nop
    cp c
    nop
    pop de
    nop
    xor b
    nop
    ret nc

    nop
    and b
    nop
    stop
    jr nz, jr_08e_5138

jr_08e_5138:
    nop
    nop
    jr nz, jr_08e_513c

jr_08e_513c:
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    ld hl, sp-$79
    add b
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
    rst $38
    add b
    ldh a, [$80]
    adc a
    add b
    rst $38
    add b
    rst $38
    add e
    db $fc
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rra
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    adc b
    ld [hl], a

jr_08e_5198:
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub c
    ld l, a
    ld de, $11ef
    rst $28
    ld de, $11ef
    rst $28
    ld de, $11ef
    rst $28
    ld de, $11ef
    rst $28
    ld de, $23ef
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    jr nz, jr_08e_5198

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
    cp a
    nop
    daa
    nop
    stop
    add b
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$38
    rst $00
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    add a
    nop
    jr jr_08e_51f4

jr_08e_51f4:
    pop hl
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $fe00
    ld bc, $017e
    ld a, [hl]
    ld bc, $013e
    ld a, $01
    ld a, [hl]
    ld bc, $013e
    ld e, $01
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    inc bc
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
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
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

    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    rrca
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
    adc a
    adc a
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc [hl]
    add c
    adc h
    add e
    adc h
    add e
    adc h
    add e
    adc h
    add e
    ret z

    rst $00
    ret z

    rst $00
    ret z

    rst $00
    ret z

    rst $00
    ret nz

    rst $08
    rst $08
    rst $08
    nop
    rst $38
    ld [$fcf7], sp
    nop
    rst $30
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
    ld hl, sp+$00
    ret nz

    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$18
    db $e3
    ldh [$e0], a
    rlca
    nop
    db $e3
    nop
    ldh [rP1], a
    ld hl, sp+$07
    ld hl, sp+$3c
    jp Jump_000_1ce3


    ld e, $e1
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    add e
    nop
    rra
    nop
    ld a, a
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
    inc bc
    nop
    add e
    nop
    rst $00
    nop
    rst $00
    nop
    rst $20
    nop
    rst $28
    nop
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
    add e
    nop
    rst $00
    nop
    rst $28
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld bc, $ff01
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
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    rlca
    nop

jr_08e_5359:
    rst $38
    nop
    rst $38
    nop
    cp $00
    add b
    db $fc
    nop
    add e
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ccf
    add b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    nop
    inc a
    nop
    jr nz, jr_08e_5359

    ret nz

    nop
    nop
    pop bc
    nop
    dec a
    nop
    db $f4
    nop
    jr jr_08e_53a4

jr_08e_53a4:
    add d
    nop
    add c
    nop
    sub b
    nop
    add sp, $00
    ldh [rP1], a
    ld bc, $f000
    rrca
    add b
    ld a, a
    inc bc
    rst $38
    rra
    db $fc
    db $fc
    ldh [$e0], a
    inc e
    nop
    ld hl, sp+$00
    ld sp, hl
    ld bc, $03e0
    add b
    inc b
    inc bc
    inc bc
    inc e
    ld e, $e1
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    db $fc
    nop
    ldh a, [rP1]
    add a
    nop
    rra
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, h
    nop
    inc a
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, $00
    ld a, [hl]
    nop
    inc a
    nop
    ld a, $00
    inc e
    nop
    inc e
    nop
    inc a
    nop
    jr c, jr_08e_5412

jr_08e_5412:
    jr c, jr_08e_5414

jr_08e_5414:
    inc e
    nop
    jr c, jr_08e_5418

jr_08e_5418:
    inc e
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
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
    rra
    ldh [$e0], a
    rra
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    ldh [rP1], a
    rra
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $3f
    add $3f
    add $3f
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    add hl, de
    ret nz

    add hl, de
    ret nz

    add hl, de
    ret nz

    add hl, de
    ret nz

    add hl, de
    ret nz

    ld de, $11c0
    ret nz

    inc bc
    jp $fc3c


    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    rlca
    nop
    and l
    nop
    ld a, $00
    ld [$4100], sp
    nop
    ld [$1000], sp
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    ld bc, $0efe
    pop af
    ld [hl], b
    adc a
    add b
    ld a, a
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    jp Jump_000_1c00


    nop
    ld h, c
    nop
    adc a
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    pop hl
    nop
    adc a
    nop
    ccf
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    jr nc, @+$01

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    inc e
    ld b, b
    ld a, [bc]
    ld b, b
    inc d
    ld b, b
    ld [$1440], sp
    ld b, b
    ld [$0040], sp
    ld b, b
    ld [$0040], sp
    ld b, b
    nop
    ld b, b
    nop
    ld b, c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld a, a
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
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $7e
    add c
    add b
    ld a, a
    nop
    rst $38
    ld bc, $7ffe
    add b
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    jr nc, jr_08e_557e

jr_08e_557e:
    jr c, jr_08e_5580

jr_08e_5580:
    jr c, jr_08e_5582

jr_08e_5582:
    jr c, jr_08e_5584

jr_08e_5584:
    jr c, jr_08e_5586

jr_08e_5586:
    inc a
    nop
    ld a, $00
    ccf
    nop
    ccf
    rlca
    ccf
    inc a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    dec d
    nop
    ld b, c
    nop
    stop
    ld [bc], a
    nop
    jr nz, jr_08e_55a2

jr_08e_55a2:
    nop
    nop
    inc bc
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_08e_557e

    ret z

    ccf
    ld [$08ff], sp
    rst $38
    ld [$00f8], sp
    jp Jump_000_1c00


    nop
    ld h, c
    nop
    adc a
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    nop
    db $e3
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    dec de
    rst $38
    ld h, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    inc bc
    inc sp
    add e
    dec hl
    add e
    inc sp
    add e
    dec hl
    add e
    inc sp
    add e
    inc hl
    add e
    inc sp
    add e
    inc hl
    add e
    inc sp
    add e
    inc hl
    add e
    ld [hl], a
    rlca
    ld h, a
    rlca
    ld [hl], a
    rlca
    ld h, a
    rlca
    ld [hl], a
    rlca
    ld h, a
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
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    pop bc
    ld bc, $3f3f
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
    cp $1f
    cp $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    cp $ff
    cp $ff
    ld e, $ff
    ld e, $1f
    db $fc
    dec e
    db $fc
    dec e
    db $fc
    dec e
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    dec a
    inc a
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    rst $38
    inc c
    adc a
    ld [$087f], sp
    rst $38
    ld [$78ff], sp
    rst $38
    ld hl, sp-$02
    ld hl, sp+$7e
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    rst $30
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ld h, b
    rst $28
    ld hl, $0eef
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_08e_569c

jr_08e_569c:
    nop
    nop
    ld bc, $0f00
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    add sp, -$01
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    ld a, a
    ld [$007f], sp
    rst $38
    nop
    db $fd
    nop
    rst $20
    nop
    rra
    nop
    ld a, a
    ld bc, $0eff
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    pop hl
    ret nz

    pop hl
    ret nz

    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    jp $c380


    add b
    jp nz, $8281

    ld bc, $0182
    add d
    ld bc, $0182
    add d
    ld bc, $0182
    add [hl]
    ld bc, $0186
    adc [hl]
    ld bc, $018e
    sbc [hl]
    ld bc, $031c
    inc e
    inc bc
    inc e
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc

Jump_08e_573e:
    ld hl, sp+$07
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
    ld b, $01
    dec bc
    inc b
    add hl, bc
    inc b
    dec c
    nop
    inc bc
    inc c
    inc bc
    inc c
    ld [$0c07], sp
    inc bc
    add hl, bc
    ld b, $0c
    inc bc
    jr jr_08e_5767

    ld d, b
    rrca
    ld d, b
    rrca
    ld b, b
    rrca
    ld b, b

jr_08e_5767:
    rrca
    ret nz

    rrca
    call nc, $c00b
    rra
    ret nz

    rra
    ret z

    rla
    add a
    ccf
    sbc h
    ccf
    add b
    cpl
    and b
    daa
    or b
    ld sp, $3cbc
    cp [hl]
    ld a, $bf
    ccf
    xor a
    ccf
    add a
    ccf
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    ld bc, $0106
    inc a
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [$7f]
    add b
    cp a
    and b
    rra
    or b
    rrca
    cp b
    rlca
    cp h
    inc bc
    cp [hl]
    ld bc, $00bf
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    ld [hl], a
    nop
    ei
    nop
    rst $38
    inc e
    rst $38
    ld h, b
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
    ld b, b
    ccf
    ld b, b
    ccf
    ld c, c
    ld [hl], $40
    ccf
    ld b, c
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $1f
    jr nz, jr_08e_582a

    ld [$007f], sp
    dec a
    ld b, b
    rra
    ld b, b
    ld e, d
    nop
    ld c, d
    nop
    ld c, e
    nop
    dec sp
    nop
    ld e, $21
    inc e
    ld hl, $211e
    ld a, e
    ld bc, $017d
    ld e, [hl]
    ld hl, $21da
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld a, [$ff03]
    ld [bc], a
    sbc [hl]
    ld h, e
    sub c
    ld h, [hl]
    add b
    ld h, a
    ret nc

    daa
    or $05
    or $05
    or $05
    cp $05

jr_08e_582a:
    db $ec
    dec b
    or a
    inc c
    pop bc
    ld l, $f0
    rrca
    push de
    ld a, [hl+]
    db $dd
    ld a, [hl+]
    cp $09
    db $e4
    dec de
    pop hl
    ld e, $60
    sbc a
    ld b, b
    cp a
    ld h, b
    sbc a
    ret nc

    ccf
    jr nc, @-$1f

    sub b
    ld a, a
    ld a, [c]
    dec e
    ldh a, [$1f]
    ret z

    ccf
    ret nz

    ccf
    ld h, b
    cp a
    ld h, b
    cp a
    xor h
    ld a, e
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [$c1f7], sp
    rst $38
    add c
    rst $38
    cp a
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
    ld a, a
    nop
    rra
    ret nz

    rst $08
    ldh [$e3], a
    ldh a, [$f1]
    ld hl, sp-$08
    ld a, [hl]
    cp $3f
    rst $38
    rra
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    pop bc
    ccf
    pop hl
    rra
    di
    rrca
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
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
    ld a, a
    and b
    sbc e
    ld h, h
    add h
    ld l, c
    and [hl]
    ld c, c
    and $49
    sub [hl]
    ld c, c
    add b
    ld e, e
    add sp, $13
    ld [$64d3], sp
    sub e
    inc [hl]
    add e
    ld h, h
    sub e
    ld h, b
    sub a
    ld [$18b7], sp
    and a
    ret nz

    scf
    ret nc

    daa
    reti


    daa
    ld c, c
    daa
    ld c, c
    daa
    reti


    daa
    ld d, c
    cpl
    reti


    daa
    sbc c

jr_08e_58ff:
    ld h, a
    add hl, de
    rst $20
    sub b
    ld l, a
    sub d

jr_08e_5905:
    ld l, a
    ld [de], a
    ld l, a
    sub d
    ld l, a
    adc d
    ld [hl], a
    add d
    ld a, a
    inc d
    ld l, a
    call nz, $343f
    ld c, a
    inc d
    ld l, a
    inc [hl]
    ld c, a
    and h
    ld e, a
    adc h
    ld a, a
    adc h
    ld a, a
    jr z, jr_08e_58ff

    ld [$08ff], sp
    rst $38
    jr z, jr_08e_5905

    rra
    rst $38
    ld e, $ff
    rra
    ldh a, [rNR31]
    ldh a, [rNR22]
    ldh a, [$0e]
    pop af
    dec a
    ld a, [c]
    cpl
    ldh a, [$3f]
    ldh [$3d], a
    ld [c], a
    rla
    ldh [rNR34], a
    pop hl
    ld e, h
    db $e3
    ld a, [hl]
    pop bc
    ld l, d
    push bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    inc hl
    push de
    cpl
    pop de
    xor c
    rst $10
    cp c
    rst $00
    or c
    rst $08
    and b
    rst $18
    call z, $6eb3
    sub e
    ld h, e
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add [hl]
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ret nc

    db $fc
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    cp $40
    ld hl, sp+$40
    pop hl
    ld b, b
    rst $38
    add b
    rst $38
    add a
    ld hl, sp-$61
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl+], a
    db $fd
    inc hl
    db $fc
    ld a, l
    ld [c], a
    ld l, e
    db $f4
    ld l, c
    or $49
    or $40
    cp $44
    ld a, [$ea55]
    rst $10
    add sp, $53
    db $ec
    rst $10
    add sp, -$2a
    jp hl


    sub d
    db $ed
    sub d
    db $ed
    or l
    res 2, [hl]
    jp hl


    ret


jr_08e_59e3:
    or a
    reti


jr_08e_59e5:
    and a
    ld a, [hl-]
    push bc
    ld a, b
    add a
    ld l, b
    sub a
    ld [$14f7], sp
    db $eb
    rla
    ld [$ee11], a
    dec e
    and $01
    cp $07
    db $fc
    inc c
    or $01
    cp $8d
    cp $20
    rst $18
    jr z, jr_08e_59e3

    jr z, jr_08e_59e5

    ld a, [bc]
    db $fd
    dec c
    ld a, [$fb04]
    inc b
    ei
    inc d
    ei
    inc e
    di
    jr @-$07

    jr nc, @+$01

    ldh [rIE], a
    xor b
    rst $30
    jr z, @-$07

    xor b
    ld [hl], a
    and b
    ld a, a
    sub b
    ld l, a
    ret nc

    ld l, a
    pop de
    ld l, a
    ld c, e
    rst $38
    push bc
    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    and d
    rst $18
    and d
    rst $18
    or d
    rst $18
    add d
    rst $38
    ld b, $ff
    rlca
    rst $38
    dec b

Jump_08e_5a3d:
    rst $38
    dec h
    rst $38
    ld h, c
    cp a
    rla
    rst $38
    dec de
    rst $38
    rra
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

jr_08e_5a60:
    nop
    rst $38
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
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
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
    cp $00
    ldh a, [rP1]
    jp $0f00


    nop
    ld a, a
    rlca
    ld hl, sp+$3f
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
    sbc $21
    rst $38
    jr nz, jr_08e_5a60

    ld h, h
    sbc d
    ld h, h
    rst $10
    ld l, b
    ret z

    ld [hl], l
    adc $71
    ld c, b
    di
    ld a, b
    jp $c730


    ld a, [c]
    add l
    db $d3
    xor l
    push hl
    adc e
    push de
    adc e
    ld l, l
    sub e
    ld l, c
    sub a
    ld l, e
    sub a
    adc d
    ld [hl], a
    jp nz, Jump_000_123f

    ld l, a
    pop bc
    ccf
    add [hl]
    ccf
    push bc
    ccf
    add $3f
    dec b
    ld a, a
    inc c
    ld a, a
    adc h
    ld a, a
    adc d
    ld a, a
    add hl, bc
    rst $38
    ld [$0aff], sp
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    jr @+$01

    cp h
    ld a, a
    inc a
    rst $38
    dec a
    rst $38
    ld a, b
    rst $38
    add hl, sp
    rst $38
    inc [hl]
    rst $38
    ld [hl], b
    rst $38
    ld c, b
    rst $38
    ld h, b
    rst $38
    ld b, h
    rst $38
    ld c, h
    rst $38
    call nz, $d4ff
    rst $38
    db $ed
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    adc b
    rst $38
    call $fbfb
    rst $38
    di
    rst $38
    ld [hl], l
    rst $38
    di
    rst $38
    ld h, e
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    and $ff
    xor $ff
    adc $ff
    call z, $d4ff
    rst $38
    ld e, h
    rst $38
    adc h
    rst $38
    adc d
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
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
    pop af
    ld bc, $01c3
    rrca
    ld bc, $077f
    ld sp, hl
    ld a, $c3
    cp $03
    cp $03
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
    and c
    ld a, [hl]
    ret nz

    ld a, a
    ld h, b
    ld e, a
    ld d, b
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    or b
    rst $28
    and b
    rst $38
    add h
    ei
    adc b
    rst $30
    ld [$18f7], sp
    rst $30
    inc c
    di
    ld d, l
    cp e
    ld h, c
    cp a
    ld bc, $01ff
    rst $38
    ld hl, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $18
    ld b, $ff
    ld h, h
    rst $18
    inc h
    rst $18
    and h
    rst $18
    xor h
    rst $18
    xor b
    rst $18
    adc h
    rst $38
    ret z

    cp a
    ret z

    cp a
    ld hl, sp-$41
    jr c, @+$01

    sbc b
    rst $38
    jr @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    or [hl]
    ld a, a
    ld [hl+], a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld l, d
    rst $38
    ld h, h
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    db $d3
    rst $38
    call nz, $81fb
    cp $81
    cp $82
    db $fd
    add b
    rst $38
    nop
    rst $38
    ld [$c4f7], sp
    dec sp
    inc d
    db $eb
    dec hl
    push de
    ld de, $29ef
    rst $10
    add hl, de
    rst $20
    dec bc
    rst $30
    ld e, a
    and e
    ld h, e
    sbc a
    ld b, d
    cp a
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    ld [$0bff], sp
    rst $38
    ld c, b
    cp a
    jr @+$01

    db $10
    rst $38
    ret nc

    rst $38
    ld a, [c]
    rst $38
    ld a, h
    rst $38
    ld c, $ff
    ld bc, $00ff
    db $fc
    nop
    ldh a, [rP1]
    add b
    ld bc, $0103
    rrca
    inc bc
    rra
    inc bc
    ld a, a
    inc bc
    rst $38
    ld b, e
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    add h
    rst $38
    add l
    rst $38
    adc c
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    rla
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    cpl
    rst $20
    add hl, hl
    di
    ld hl, $21fc
    cp $60
    rst $18
    ld [hl], b
    rst $08
    ld hl, sp+$07
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
    nop
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
    nop
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
    ld e, $00
    rra
    jr nz, jr_08e_5ca5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08e_5cb5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_08e_5cc6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08e_5cd6

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_08e_5ca5:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, $0e
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_08e_5cb5:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, $0e
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_08e_5cc6:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, $68
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_08e_5cd6:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld c, $77
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
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
    sbc e
    sbc [hl]
    sbc a
    and b
    and c
    ld c, $a2
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
    ld c, $b1
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
    ld c, $c0
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $0ece
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
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
    ld c, $ed
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
    jr jr_08e_5da6

    ld a, [de]
    dec de
    inc c
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08e_5db7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08e_5dc7

    ld a, [hl+]
    inc c
    nop
    nop
    nop
    nop
    nop
    nop

jr_08e_5da6:
    nop
    nop
    nop
    nop
    ld bc, $0000
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

jr_08e_5db7:
    ld bc, $0101
    ld bc, $0000
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

jr_08e_5dc7:
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
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
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0005
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld [$0808], sp
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_08e_5f02:
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $10
    jr c, jr_08e_5f02

    ld e, $c9
    scf
    ld bc, $813f
    ccf
    pop bc
    ccf
    pop af
    cpl
    ldh a, [$3f]
    ret z

    ccf
    ld a, [$5c27]
    inc hl
    ld c, $73
    jp c, $9627

    ld l, e
    cp [hl]
    ld b, e
    jr c, jr_08e_5f6f

    ld sp, $6146
    ld b, [hl]
    xor c
    ld b, [hl]
    cp c
    ld b, [hl]
    cp b
    ld b, a
    ld sp, hl
    ld b, $39
    add $31
    adc $24
    rst $18
    inc l
    rst $10
    db $10
    rst $28
    or b
    rst $08
    ld sp, hl
    add a
    jr z, @-$27

    ld de, $70ef
    adc a
    ld d, b
    xor a
    ldh a, [rIF]
    or b
    ld c, a
    sub b
    ld l, a
    ret nc

    cpl
    ldh a, [rIF]
    ldh [$1f], a
    add sp, $17
    ld a, [c]
    rra
    ret nc

    ccf
    ldh a, [$1f]
    ld [hl-], a
    ld e, a
    or [hl]
    ld e, e
    sub b
    ld a, a
    add d
    ld a, a
    sub b
    ld a, a
    db $10
    rst $38
    rlca
    ei
    ld bc, $22ff

jr_08e_5f6f:
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    inc a
    rst $30
    ld h, $ff
    ld [hl+], a
    rst $38
    rlca
    rst $38
    dec h
    cp $00
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [$f00f], sp
    di
    db $fc
    db $fc
    ld a, a
    rst $38
    ld c, c
    rst $38
    ld l, c
    rst $38
    ld l, b
    rst $38
    ld l, c
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld bc, $f9ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $ff3c


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add c
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld bc, $1fe0
    xor l
    rst $30
    adc h

jr_08e_5fff:
    rst $30
    sub b
    rst $28
    add hl, de
    and $08
    rst $30
    add c
    cp $c8
    rst $30
    ret nz

    rst $38
    inc b
    ei
    ld h, h
    db $db
    ld h, h
    db $db
    inc d
    db $eb
    ld bc, $30ff
    rst $08
    inc sp
    call $cd33
    ld h, e
    sbc l
    jr nz, jr_08e_5fff

    inc bc
    db $fd
    ld [hl+], a
    db $dd
    ld [c], a
    sbc l
    ld l, h

jr_08e_6027:
    sub e
    ld d, h
    cp e
    ld b, b
    cp a
    inc [hl]
    db $db
    jr jr_08e_6027

    ld b, $fb
    dec b
    ei
    ld h, $fb
    inc b
    ei
    ld b, $fb
    ld h, $fb
    nop
    rst $38
    ld hl, $2fff
    ldh a, [$28]
    ldh a, [$28]
    ldh a, [$29]
    ldh a, [$29]
    ldh a, [rBCPD]
    ldh a, [rOBP1]
    ldh a, [$29]
    ldh a, [rOBP1]
    ldh a, [rWY]
    ldh a, [rHDMA2]
    ldh [rHDMA3], a
    ldh [rHDMA3], a
    ldh [rHDMA3], a
    ldh [$93], a
    ldh [$93], a
    ldh [rNR10], a
    ldh [$90], a
    ldh [$9f], a
    ldh [$81], a
    rst $38
    add c
    rst $38
    add c
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub c
    rst $38
    or b
    rst $38
    and b
    rst $38
    or d
    rst $38
    ld [de], a
    ld a, a
    add c
    adc a
    ldh a, [$f1]
    ld a, [hl]
    cp $3f
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [c]
    ld a, a
    ld a, [c]
    rst $38
    di
    rst $38
    ldh a, [rIE]
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    db $f4
    rst $38
    or $ff
    or $ff
    ld l, h
    rst $38
    ldh a, [$6f]
    ld h, b
    rst $38
    ldh [rIE], a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ret nz

    rst $38
    add b
    rst $38
    add b
    add a
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    nop
    nop
    inc bc

jr_08e_60d5:
    nop
    ccf

jr_08e_60d7:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ff0
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub c
    cp $80
    rst $38
    nop
    rst $38
    jr nz, jr_08e_60d5

    jr nc, jr_08e_60d7

    nop
    rst $38
    ld bc, $11fe
    cp $01
    cp $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld hl, $21fe
    cp $21
    cp $80
    rst $38
    ld hl, $81fe
    cp $22
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    dec b
    cp $81
    cp $08
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    adc $61
    sbc $69
    sbc $41
    cp $29
    sbc $28
    sbc $00
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $fe00
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add [hl]
    nop
    rlca
    nop
    ld c, $00
    ld b, $00
    nop
    nop
    nop
    nop
    add b
    nop
    db $e3
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    ld e, h
    db $fc
    rrca
    rst $38
    ld c, c
    rst $38
    ld b, l
    rst $38
    ld b, e
    rst $38
    ld b, e

jr_08e_617f:
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc l
    rst $38
    sbc e
    rst $38
    dec bc
    rst $38
    adc a
    rst $38

jr_08e_618e:
    sub a
    rst $38
    adc e
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $e3
    rra
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $06
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $7f
    and $07
    cp $06
    rst $30
    rlca
    rst $18
    rra
    rlca
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
    cp $01
    di
    inc e
    ld a, [bc]
    ld [hl], h
    ret nz

    inc a
    jr z, jr_08e_618e

    ld b, b
    cp h
    ld c, c
    or h
    ld b, c
    cp h
    inc c
    ld hl, sp-$80
    ld a, h
    ld a, h
    add b
    db $f4
    ld [$48b4], sp
    ld [hl], h
    adc b
    cp h
    ld b, b
    ld a, h
    add b
    db $10
    ret z

    ld e, b
    add b
    add c
    ld c, b
    reti


    nop
    push hl
    ld [$09e4], sp
    jr jr_08e_617f

    ret nc

    add hl, bc
    ld e, b
    add c
    ld h, d
    sub c
    ld h, b
    sub c
    ld l, b
    sub c
    ld c, h
    or c
    ld l, [hl]
    sub c
    xor [hl]
    ld d, c
    adc $31
    ld de, $91ff
    ld a, a
    ld de, $1bff
    rst $30
    dec bc
    rst $30
    jp nc, Jump_000_3fff

    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld a, h
    nop
    inc e
    nop
    inc c
    nop
    inc c
    nop
    inc b
    nop
    rlca
    inc bc
    ld b, $06
    inc c
    inc c
    ld [$1c08], sp
    inc c
    ld a, [hl]
    ld b, $ff
    inc bc
    ld bc, $0101
    ld bc, $0101
    rst $38
    ld bc, $ff05
    ld sp, $01ff
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    xor e
    ld d, a
    dec bc
    rst $30
    dec hl
    rst $10
    inc hl
    rst $18
    inc hl
    rst $18
    inc sp
    rst $08
    inc de
    rst $28
    db $d3
    xor a
    adc e
    rst $38
    add e
    rst $38
    dec bc
    rst $38
    dec bc
    rra

jr_08e_6268:
    rst $20
    rst $20
    cp a
    rst $38
    adc [hl]
    rst $38
    add a
    rst $38
    and a
    rst $18
    cp [hl]
    rst $08
    adc [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]

jr_08e_6279:
    rst $38
    sub [hl]
    rst $38
    rrca
    rst $38
    scf
    rst $18
    ccf
    rst $18
    add a
    ld a, a
    sbc [hl]
    rst $38
    adc a
    ld a, [hl]
    ld e, $ef
    adc h
    ld a, a
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    sbc b
    rst $38
    sbc b
    nop
    nop
    nop
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
    cp $01
    pop af
    ld e, $10
    rst $28
    sbc c
    ld l, [hl]
    call z, $a37b
    ld c, h
    di
    inc c
    db $e4
    ld a, [bc]
    jr nz, jr_08e_6268

    dec h
    adc d
    and l
    ld a, [bc]
    or l
    ld a, [bc]
    or c
    ld c, $16
    adc c
    jr nc, jr_08e_6279

    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $10
    adc a
    jp nc, $c20d

    dec e
    or d
    dec c
    add d
    dec e
    xor d
    dec d
    add d
    dec e
    nop
    dec e
    ld [bc], a
    dec e
    add d
    dec e
    add e
    inc e
    add d
    dec e
    add b
    rra
    add l
    dec de
    add l
    ld a, [de]
    and c
    ld a, [de]
    ld e, d
    cp a
    ld e, [hl]
    cp e
    ld c, [hl]
    cp e
    ld e, [hl]
    cp e
    xor d
    ld a, a
    ld a, [hl+]
    rst $38
    cp $3f
    ld a, a
    ld a, $77
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld a, e
    ld h, $79
    ld h, $5c
    inc hl
    ld h, b
    rra
    ld b, [hl]
    dec sp
    ret nz

    rst $38
    ldh [$7f], a
    or b
    ld a, a
    sub b
    ld a, a
    or b
    ld a, a
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    cp e
    call nz, $c5ba
    cp a
    call nz, $c7bc
    cp h
    rst $00
    sbc c
    and $bb
    call nz, $c4bb
    ld e, e

jr_08e_6351:
    and h
    pop af
    adc [hl]
    or c
    adc $30
    rst $08
    db $10
    rst $28
    sub b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr jr_08e_6351

    ld d, b
    xor a
    xor b
    rst $18
    sbc b
    rst $28
    sbc b
    rst $28
    sbc b
    rst $28
    sbc b
    rst $28
    adc b
    rst $38
    nop
    rst $38
    adc d
    rst $38
    adc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc b

jr_08e_6381:
    rst $38
    ld bc, $15ff
    rst $38
    cp c
    ld b, [hl]
    inc bc
    db $fc
    inc l
    db $d3
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
    rrca

jr_08e_6399:
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

jr_08e_63a3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $18eb
    pop de
    xor b

jr_08e_63ae:
    ld d, h
    xor b
    ld d, h
    xor b
    ld [hl-], a
    ret z

    inc sp
    ret z

    rla
    add sp, $5d
    and b
    ld b, b
    cp b
    ld d, h

jr_08e_63bd:
    xor b
    ld c, c
    or b
    ld h, c
    sub b
    add hl, hl
    ret nc

    dec h
    ret nc

    push hl
    db $10
    ld l, e
    sub b
    xor c
    ld d, b
    dec c
    or b
    xor l
    ld d, b
    ldh [rNR10], a
    ld l, b
    sub b
    and d
    ld d, b
    add [hl]
    ld d, b
    ld [hl+], a
    ret nc

    xor b
    ld d, b
    jr nz, jr_08e_63ae

    ld h, $d0
    jp nz, $a230

    ld d, b
    jp c, $d820

    jr nz, jr_08e_63bd

    jr nz, jr_08e_63a3

    ldh [$9c], a
    jr nz, jr_08e_646b

    nop
    ld e, b
    jr nz, jr_08e_6443

    jr nz, jr_08e_644f

    jr nz, jr_08e_6448

    jr nz, @-$26

    jr nz, jr_08e_6457

    jr nz, jr_08e_6399

    jr nz, jr_08e_6443

    jr nz, jr_08e_6381

    ld [hl+], a
    inc d
    ld [hl+], a
    ld e, b
    inc h
    ret c

    inc h
    sbc l

jr_08e_6409:
    jr nz, jr_08e_6450

jr_08e_640b:
    jr c, jr_08e_640b

    nop
    sbc $20
    jp z, $c334

    inc [hl]
    sbc e
    ld h, h
    sbc e
    ld h, h
    sub d
    ld h, l
    sbc c
    ld h, [hl]
    sbc e
    ld h, h
    inc bc
    db $f4
    ld c, c
    or $f9
    ld a, [hl]
    add hl, hl
    sub $2b
    call nc, $d669
    ld [hl+], a
    db $dd
    ld l, l
    jp nc, $de21

    add hl, hl
    sub $00
    rst $18
    ld sp, $60ce
    sbc a
    jr nc, jr_08e_6409

    dec h
    jp c, $aed1

    ld [hl], c
    adc [hl]
    ld sp, $31ce

jr_08e_6443:
    adc $41
    cp [hl]
    pop af
    adc [hl]

jr_08e_6448:
    ret nz

    cp a
    ld de, $d1ee

jr_08e_644d:
    xor [hl]
    or b

jr_08e_644f:
    rst $08

jr_08e_6450:
    ret nz

    cp a
    ld bc, $28fe
    rst $18
    nop

jr_08e_6457:
    rst $38
    ld [$88ff], sp
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl]
    add c
    add b

jr_08e_646b:
    ld a, a
    jr nz, jr_08e_644d

    add b
    ld a, a
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    pop hl
    inc e
    ld hl, $21d0
    ret nc

    ld hl, $21d0
    ret nc

    pop hl
    db $10
    ret nz

    ld sp, $11e0
    add c
    ld [hl], b
    ld hl, $01d0
    db $10
    ld bc, $8110
    db $10
    and c
    db $10
    ld de, $1000
    ld bc, $0110
    db $10
    ld bc, $0100
    db $10
    ld bc, $0100
    db $10
    ld bc, $0100
    nop
    ld bc, $0001
    ld hl, $0100
    jr nz, jr_08e_64de

    nop
    nop
    ld hl, $0021
    ld b, c
    jr nz, @+$03

    jr nz, @+$05

    jr nz, @+$09

    jr nz, jr_08e_64cb

jr_08e_64cb:
    inc hl
    inc hl
    nop
    inc bc
    jr nz, jr_08e_6502

    ld [bc], a
    jr nz, @+$04

    ld hl, $0102
    ld [hl+], a
    ld bc, $2322
    ld [bc], a
    daa
    ld [bc], a

jr_08e_64de:
    ld h, l

jr_08e_64df:
    ld [bc], a
    ld l, e

jr_08e_64e1:
    ld [bc], a
    ld l, d

jr_08e_64e3:
    inc bc
    ld h, b
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], h
    inc bc
    ld h, l
    ld [bc], a
    rst $20
    ld [bc], a
    inc bc
    ld b, d
    ld c, l
    ld [bc], a
    add hl, bc
    ld b, [hl]
    inc d

jr_08e_64f5:
    ld c, d
    ld h, b
    ld e, $28
    ld d, [hl]
    ld [hl], h
    ld c, d
    sbc b
    ld b, [hl]
    cp c
    ld b, [hl]
    add hl, hl
    ld d, [hl]

jr_08e_6502:
    add hl, bc
    db $76
    add hl, bc
    db $76
    add b
    ld a, a
    ld h, b
    ld a, a
    add c
    ld b, [hl]
    or b
    ld b, a
    db $10
    rst $00
    and b
    ld b, a
    ld [bc], a

jr_08e_6513:
    push bc
    db $10
    rst $00
    jr nz, jr_08e_64df

    jr nz, jr_08e_64e1

    jr nz, jr_08e_64e3

    ld [$70c7], sp
    add a
    ld a, $c5
    ld a, h
    add a
    ld a, b
    add a
    ld a, c
    add [hl]
    ld a, b
    add a
    ret c

    and a
    jr c, jr_08e_64f5

    db $fc
    add a
    ret c

    and a
    ldh a, [$8f]
    sbc $a5
    db $fc
    add a
    db $dd
    and a
    ret


    or a
    add b
    rst $38
    add b
    rst $38
    sub c
    rst $28
    jr nc, jr_08e_6513

    ld [hl], e
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $fcfe
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
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08e_6569:
    nop
    rst $38
    nop
    rst $38

jr_08e_656d:
    nop
    rst $38
    nop
    cp $01
    db $e4
    ld a, [de]
    dec b
    ld [$4ab5], a
    ld d, $f9
    push af
    adc d
    ld d, $08
    ld h, $08
    ld [bc], a
    ld [$0842], sp
    ld [bc], a
    ld [$020c], sp
    ld a, [de]
    nop
    ld d, $08
    ld e, $00
    add hl, bc
    ld [de], a
    dec e
    ld [bc], a
    ld e, l
    ld [bc], a
    dec e

jr_08e_6595:
    ld [bc], a
    dec e
    ld [bc], a
    add hl, de
    ld b, $1a
    inc b
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    rra
    nop
    dec e
    ld [bc], a
    ld e, $00
    ld a, [de]
    inc b
    rra
    nop
    ld e, $01
    rra
    nop
    rrca

jr_08e_65af:
    db $10
    ld a, [bc]
    dec d
    ld c, $11
    ld [$0115], sp
    inc e
    inc c
    ld de, $1508
    jr @+$17

    inc c
    ld de, $110c
    inc e
    ld de, $116c
    ld c, $10
    jr @+$20

    jr jr_08e_65cc

jr_08e_65cc:
    ld d, b
    nop
    ld d, h
    nop
    ld d, b
    nop
    stop
    ld d, b
    nop
    ld b, b
    nop
    ld h, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh [rP1], a
    ld b, b
    jr nz, @-$36

    jr nz, jr_08e_65eb

    and b
    add [hl]

jr_08e_65e7:
    jr nz, jr_08e_6569

    jr nz, @-$3e

jr_08e_65eb:
    jr nz, jr_08e_656d

    jr nz, jr_08e_65af

    jr nz, @-$76

    jr nz, @-$36

    jr nz, @-$76

    jr nz, jr_08e_65e7

    nop
    ret z

    jr nz, jr_08e_6595

    ld h, b
    sbc d
    ld h, b
    sub d
    ld h, b
    adc d
    ld h, b
    adc b
    ld h, d
    inc d
    ld [c], a
    sbc h
    ld h, d
    sbc [hl]
    ld h, b
    sbc h
    ld h, d
    inc b
    ld a, [$ea14]
    inc b
    ld a, [$ea14]
    inc b
    ld a, [$fe40]
    ld b, $f8
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld h, $f8

jr_08e_6620:
    jr nz, jr_08e_6620

    ld b, b
    cp $00
    cp $00
    cp $00
    cp $20
    cp $00
    cp $00
    cp $c2
    ld a, h
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld b, b
    cp $00
    cp $9e
    ld h, b
    sub $28
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_08e_665e:
    db $e4
    inc e
    xor d
    call nc, $b609
    cp e
    add h
    ld a, c
    add h
    ld a, a
    add b
    ld c, c
    or h
    ld a, [hl+]
    call nc, $d42a
    ld c, d
    or h
    ld h, e
    sbc h
    inc l
    ret nc

    inc e
    ret nz

    dec a
    ret nz

    ld a, $c0
    ld [hl], l
    adc b
    db $76
    adc b
    inc [hl]
    ret z

    ld d, l
    adc b
    ld [hl], e
    adc h
    ld [hl], c
    adc h
    ld [hl], b
    adc h
    ld h, h
    sbc b
    ld h, b
    adc h
    push af
    ld [$8c70], sp
    ld d, b
    xor h
    jr nc, jr_08e_665e

    ld d, l
    xor b
    ld [hl], b
    adc b
    db $f4
    ld [$08f6], sp
    or $08
    add $08
    ld [$93f8], sp
    add sp, -$6f
    ld [$0883], sp
    and h
    ld [$0892], sp
    sub e
    ld [$0895], sp
    add l
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ccf
    nop
    jr nz, jr_08e_66be

jr_08e_66be:
    jr nz, jr_08e_66c0

jr_08e_66c0:
    cpl
    nop
    jr z, jr_08e_66c4

jr_08e_66c4:
    jr z, jr_08e_66c6

jr_08e_66c6:
    jr z, jr_08e_66c8

jr_08e_66c8:
    jr z, jr_08e_66ca

jr_08e_66ca:
    jr z, jr_08e_66cc

jr_08e_66cc:
    jr z, jr_08e_66ce

jr_08e_66ce:
    jr z, jr_08e_66d0

jr_08e_66d0:
    jr nz, jr_08e_66d2

jr_08e_66d2:
    jr nc, jr_08e_66d4

jr_08e_66d4:
    ccf
    nop
    inc l
    db $10
    inc l
    db $10
    inc l
    db $10
    inc l
    db $10
    ld l, $10
    ld l, $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    rrca
    db $10
    cpl
    db $10
    ld [hl], b
    rrca
    ld a, a
    nop
    ccf
    ld b, b
    jr nc, jr_08e_674d

    inc [hl]
    ld c, b
    ld d, $68
    rla
    ld l, b
    rla
    ld l, b
    rla
    ld l, b
    rla
    ld l, b
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
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    nop
    ld [hl], b
    nop
    ld a, [hl]
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $0b
    db $f4
    ld c, d
    inc [hl]
    ld c, $70
    ld [bc], a
    ld a, h
    ld a, [bc]
    ld [hl], h
    ld h, b
    inc e
    ld h, d
    inc e
    ld h, d
    inc e
    sbc [hl]

jr_08e_674d:
    ld a, h
    jr z, jr_08e_6796

    ld a, [hl+]
    inc b
    ld l, [hl]
    nop
    ld l, d
    inc b
    ld l, d
    inc b
    ld h, h
    nop
    add $00
    call nz, $4600
    nop
    call nz, Call_08e_4400
    nop
    ld b, h
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, h
    nop
    ld b, $00
    ld [bc], a
    nop
    inc b
    nop
    ld b, b
    inc b
    inc b
    ld b, b
    ld b, [hl]
    nop
    add h
    nop
    sbc b
    inc b
    add d
    inc b
    ld [bc], a
    inc b
    xor b
    inc b
    db $10
    inc b
    adc b
    inc b
    add d
    inc b
    nop
    inc b
    ld bc, $0004
    inc b
    jr nc, jr_08e_6794

    jr nz, jr_08e_6796

    nop
    nop

jr_08e_6794:
    nop
    nop

jr_08e_6796:
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rra
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
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
    add b

jr_08e_67d7:
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    and b
    nop
    and b
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
    rst $38
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
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ld [bc], a
    db $fd
    adc e
    dec [hl]
    rrca
    ccf
    ld c, $31
    ld a, [hl-]
    ld bc, $012e
    dec sp
    inc b
    ld e, a
    jr nz, jr_08e_67d7

    jr nz, jr_08e_686a

    nop
    ld l, $01
    cpl
    nop
    ld [hl+], a
    ld bc, HeaderTitle
    dec b
    jr nz, jr_08e_685e

    jr nz, jr_08e_684f

    ld hl, $003e
    rrca
    jr nz, jr_08e_688b

jr_08e_684f:
    nop
    jr nc, jr_08e_6852

jr_08e_6852:
    inc [hl]
    nop
    ld [de], a
    jr nz, jr_08e_6879

    db $10
    ld a, [hl+]
    db $10
    jr @+$22

    jr @+$22

jr_08e_685e:
    jr nc, jr_08e_6860

jr_08e_6860:
    jr nz, @+$12

    ld h, b
    db $10
    jr nz, @+$12

    jr z, jr_08e_6878

    jr z, jr_08e_687a

jr_08e_686a:
    jr nz, @+$12

    xor d
    db $10
    and b
    jr jr_08e_68ba

    jr nc, jr_08e_68bb

    jr nc, jr_08e_687d

    jr nc, jr_08e_68e1

    db $10

jr_08e_6878:
    db $ec

jr_08e_6879:
    db $10

jr_08e_687a:
    ld [$0b30], sp

jr_08e_687d:
    jr nc, jr_08e_6887

    ld [hl-], a
    ld c, b
    jr nc, jr_08e_6883

jr_08e_6883:
    nop
    nop
    nop
    ccf

jr_08e_6887:
    nop
    ret nz

    nop
    nop

jr_08e_688b:
    nop
    nop
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop

jr_08e_68ba:
    inc b

jr_08e_68bb:
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    call nz, $e400
    nop
    nop
    db $fc
    db $fc
    nop
    cp $00
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc bc
    inc b
    add e
    inc b
    db $d3
    inc b
    sbc e
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei

jr_08e_68e1:
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    inc bc
    nop
    inc bc

jr_08e_68f1:
    db $fc
    nop
    rst $38
    add b
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
    nop
    db $fc
    inc bc
    db $ec
    rra
    adc b
    rst $30
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    ld c, h
    or a
    ld b, h
    or a
    ld d, h
    and a
    jr nz, jr_08e_68f1

    inc c
    rst $30
    ld c, b
    or a
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $38
    nop
    rst $38
    ld c, h
    or a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    ld c, $f5
    ld c, $f5
    adc h
    rst $30
    inc c
    rst $30
    ret z

    or a
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    ret z

    or a
    adc b
    rst $30
    inc c
    rst $30
    adc h
    rst $30
    adc d
    rst $30
    sbc l
    and $08
    rst $30
    add hl, bc
    or $99
    and $80
    rst $30
    adc b
    rst $30
    sbc c
    and $cb
    or [hl]
    add c
    cp $31
    ld a, $35
    ld a, $3d
    ld [hl-], a
    dec a
    ld [hl-], a
    jr c, jr_08e_699c

    jr c, jr_08e_699e

    dec a
    ld [hl-], a
    jr c, jr_08e_69a6

    jr nc, jr_08e_69a4

    add hl, sp
    ld [hl-], a
    dec a
    ld [hl-], a
    ccf
    ld [hl-], a
    dec sp
    ld [hl-], a
    inc sp
    ld a, [hl-]
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ld a, $33
    dec sp
    ld [hl-], a
    dec sp
    ld [hl-], a
    ld [hl-], a
    dec sp
    ld [hl-], a
    dec sp
    ld a, [hl-]
    inc sp
    ld [hl-], a
    dec sp
    ld [hl-], a
    dec sp
    inc sp
    ld a, [hl-]
    inc [hl]
    dec sp

jr_08e_699c:
    ccf
    ld [hl-], a

jr_08e_699e:
    inc a
    dec sp
    ld e, $1b
    inc e
    dec de

jr_08e_69a4:
    jr jr_08e_69c5

jr_08e_69a6:
    jr @+$21

    inc e
    dec de
    ld e, $1b
    inc e
    dec de
    ld e, $1b
    ld e, $1b
    ld a, [de]
    dec de
    dec e
    dec de
    inc e
    dec de
    ld e, $1b
    jr jr_08e_69db

    add hl, de
    rra
    jr jr_08e_69df

    dec e
    dec de
    add hl, de
    rra
    add hl, de

jr_08e_69c5:
    rra
    jr @+$21

    add hl, de
    rra
    add hl, de
    rra
    add hl, de
    rra
    add hl, de
    rra
    add hl, de
    rra
    jr jr_08e_69f3

    add hl, de
    rra
    sbc c
    rra
    reti


    rra
    ret c

jr_08e_69db:
    rra
    reti


    rra
    rst $18

jr_08e_69df:
    rra
    ret nz

    nop
    nop

jr_08e_69e3:
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $f1
    inc b

jr_08e_69f3:
    ld sp, hl
    jr nc, jr_08e_69e3

    ld h, b
    cp l
    ld l, d
    or l
    jr jr_08e_69e3

    jr z, @-$07

    inc b
    ei
    dec b
    ld a, [$fa05]
    ld hl, $03fe
    db $fc
    inc bc
    db $fc
    dec bc
    db $f4
    ld [bc], a
    db $fd
    ld c, d
    or l
    ld a, [bc]
    push af
    nop
    rst $38
    ld d, $f9
    inc d
    ei
    db $10
    rst $38
    ld bc, $14fe
    ei
    inc bc
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    add hl, de
    or $19
    or $13
    db $fc
    add hl, de
    or $19
    or $15
    ld a, [$fa15]
    ld de, $13fe
    db $fc
    db $10
    rst $38
    ld d, b
    cp a
    ld [hl], c
    cp $88
    rst $30
    ld hl, sp+$17
    add sp, $17
    add b
    ld a, a
    sbc b
    ld [hl], a
    call nz, $c43b

jr_08e_6a49:
    dec sp
    add b
    ld a, a
    pop bc
    ld a, $d9
    ld [hl], $41
    cp [hl]
    pop hl
    ld e, $c7
    jr c, @-$39

    ld a, [hl-]
    pop bc
    ld a, $c0
    ccf
    add sp, $1f
    ldh [$1f], a
    db $e4
    dec de
    ld h, b
    sbc a
    xor b
    ld e, a
    and b
    ld e, a
    jr z, jr_08e_6a49

    sbc b
    ld l, a
    ld d, b
    xor a
    ret c

    cpl
    ret nz

    ccf
    adc b
    ld a, a
    adc b
    ld a, a
    xor b
    ld e, a
    adc b
    ld a, a
    ret z

    ccf
    adc b
    ld a, a
    adc a
    ld a, a
    adc b
    ld a, a
    inc c
    ei
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, d
    cp l
    nop
    rst $38
    xor [hl]
    ld e, c
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    ld [$08ff], sp
    rst $38
    ld [$0eff], sp
    db $fd
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    db $fd
    ld [$00ff], sp
    rst $38
    ld [$24ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    ld h, $fd
    jr z, @+$01

    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, $fd
    ld b, h
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    ld l, h
    rst $38
    ld b, [hl]
    db $fd
    inc h
    rst $38
    ldh [$1f], a
    dec sp
    ret nz

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
    ld b, d
    db $fd
    add d
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    ld b, $fd
    sbc a
    ld [hl], h
    dec e
    or $3e
    db $fd
    add l
    cp $a5
    ld e, [hl]
    adc l
    db $76
    dec l
    sub $25
    sbc $11
    xor $98
    ld h, a
    ld e, b
    and a
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], e
    adc h
    ld e, c
    add [hl]
    add hl, bc
    add $68
    add [hl]
    ld a, h

jr_08e_6b0d:
    add e
    ld e, b
    and a
    ld a, a
    add d
    dec a
    add d
    ld e, c
    and [hl]
    ld l, e
    add [hl]
    ld [hl], c
    adc [hl]
    dec hl
    sub $ab
    sub $6b
    sub [hl]
    ld h, e
    sbc [hl]
    ld h, d
    sbc a
    ld [hl], d
    adc a
    ld a, [bc]
    or a
    jp Jump_08e_573e


    xor d
    add b
    ccf
    inc d
    xor e
    adc $33
    adc $33
    sbc b
    daa
    ret nz

    ccf
    call nz, $b43b
    dec bc
    db $ec
    inc de
    call c, Call_08e_7c03
    add e
    ld a, h
    add e
    jr jr_08e_6b0d

    ld c, c
    rst $20
    jr @-$17

    rra
    pop hl
    daa
    pop de
    cpl
    pop de
    scf
    ret


    sub l
    ld l, e
    add e
    ld a, l
    rla
    jp hl


    ld bc, $03fb
    ld sp, hl
    ret nz

    ld a, e
    ld b, b
    ei
    and b
    ld e, e
    push bc
    ld a, e
    add h
    ld a, e
    add c
    ld a, a
    add b
    ld a, a
    adc b
    ld [hl], a
    ld b, d
    db $fd
    jp nz, Jump_000_00fd

    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    inc [hl]
    rst $38
    ld [$00ff], sp
    rst $38
    jr z, @+$01

    ld [hl+], a
    db $fd
    ld b, $fd
    inc h
    rst $38
    ld b, $fd
    and b
    ld a, a
    inc h
    rst $38
    ld h, $fd
    inc b
    rst $38
    xor [hl]
    ld a, l
    inc h
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld c, $ff
    inc h
    rst $38
    rla
    cp $27
    cp $2a
    rst $38
    ld e, $ff
    ld a, $ff
    inc e
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    db $76

jr_08e_6bb7:
    rst $38
    sbc a
    rst $38
    inc a
    rst $38
    rra
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld d, h
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ld b, b
    cp a
    ret nc

    ccf
    or b
    ld e, a
    or b
    ld e, a
    jr c, @-$27

    ld a, b
    sub a
    jr c, jr_08e_6bb7

    ld a, b
    sub a
    cp b
    ld d, a
    inc l
    db $d3
    push hl
    ld a, [de]
    or b
    ld e, a
    and b
    ld e, a
    ldh a, [$1f]
    and h
    ld e, e
    ret nz

    ccf
    db $ec
    dec de
    or b
    ld c, a
    db $e4
    dec de
    ret z

    ccf
    ld c, h
    cp e
    ld l, b
    sbc a
    xor h
    ld e, e
    inc c
    db $db
    db $ec
    dec de
    ld a, a
    ld [$1ceb], sp
    ret z

    ccf
    ret c

    cpl
    ld e, b
    xor a
    ld c, c
    xor [hl]
    ld d, h
    xor a
    sub b
    ld l, a
    inc b
    rst $38
    add b
    ld a, a
    ld b, h
    cp a
    ld b, h
    cp a
    inc b
    cp a
    ld b, h
    cp a
    ld b, h
    cp a
    inc h
    rst $18
    ld h, h
    sbc a
    or h
    ld c, a
    inc h
    rst $18
    ld b, h
    cp a
    inc b
    rst $38
    add $3f
    add h
    ld a, a
    ld d, [hl]
    xor a
    ld b, $ff
    add l
    ld a, a
    dec h
    rst $18
    ld b, h
    cp a
    push de
    cpl
    ld d, [hl]
    xor a
    ld b, $ff
    ld b, d
    cp a
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, h
    cp a
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld [hl], $df
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, $86bf

    rst $38
    add d
    rst $38
    ld a, [bc]
    rst $38
    and e
    rst $38
    inc bc
    rst $38
    cp $ff
    add c
    rst $38
    sub l
    db $eb
    push bc
    cp e
    sub $ab
    push bc
    cp e
    adc e
    push af
    call z, $f5b3
    adc e
    sbc [hl]
    pop hl
    sbc a
    ldh [$b7], a
    ret nz

    and a
    ret nc

    add a
    ldh a, [$86]
    pop af
    sub b
    rst $28
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $28
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $00
    rst $38
    jp $89ff


    rst $30
    ld c, b
    rst $30
    ld b, d
    db $fc
    ld b, c
    rst $38
    ld b, e
    db $fd
    pop bc
    rst $38
    ld a, b
    rst $28
    ret z

    rst $38
    add sp, -$01
    ret z

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $c0
    ld a, a
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
    xor $3f
    rst $38
    nop
    ld d, l
    rst $38
    ld b, c
    rst $38
    call nz, $047f
    rst $38
    ld b, b
    rst $38
    call nz, Call_000_007f
    rst $38
    ld [bc], a
    rst $38
    ld [hl], d
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    ld c, $ff
    ld l, $ff
    ld h, $ff
    daa
    rst $38
    ld l, $ff
    ld l, a
    cp a
    ld l, [hl]
    cp a
    ld h, l
    cp a
    ld a, [hl]
    cp a
    ld c, $ff
    inc de
    rst $38
    ld d, $ff
    sub a
    ld a, a
    ld d, [hl]
    cp a
    ld c, a
    cp a
    dec a
    rst $18
    inc bc
    rst $38
    ld b, b
    cp a
    ld [hl], l
    sbc a
    dec [hl]
    rst $18
    ld [hl], a
    sbc a
    cp e
    ld e, a
    or [hl]
    ld e, a
    ld a, $df
    adc [hl]
    ld a, a
    adc d
    ld a, a
    ld b, $ff
    ld b, c
    cp a
    ld a, [hl+]
    rst $18
    ld a, [hl+]

jr_08e_6d11:
    rst $18
    ld [bc], a
    rst $38
    sub d

jr_08e_6d15:
    ld a, a
    ret


    ld a, a
    sbc b
    ld a, a
    adc a
    ld a, a
    ld c, l
    cp a
    ld a, [hl+]
    db $dd
    jr jr_08e_6d11

    ld [hl], $e9
    jr nc, jr_08e_6d15

    ld d, d
    xor l
    jp nc, $12ad

    db $ed
    inc d
    db $eb
    nop
    rst $38
    ld c, h
    or e
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    db $ed
    ld [hl+], a
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    inc b
    rst $38
    inc b
    rst $38
    ld b, $fd
    inc b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr z, @+$01

    inc l
    rst $38
    inc c
    rst $38
    adc [hl]
    rst $38
    inc b
    rst $38
    rla
    cp $8e
    rst $38
    ld a, [bc]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    ld l, $ff
    adc $7f
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, a
    rst $38
    inc l
    rst $38
    ld l, h
    rst $38
    ld c, l
    cp $ec
    rst $38
    call z, $dcff
    rst $38
    xor $ff
    db $fd
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    cp $fd
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
    ld a, l
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, [hl]
    cp a
    cp $0f
    ld l, d
    rst $38
    db $db
    rst $38
    db $dd
    rst $38
    adc e
    rst $38
    call $ebff
    rst $38
    and e
    rst $38
    ei
    rst $38
    cp c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    or l
    rst $38
    and l
    rst $38
    and l
    rst $38
    adc l
    rst $38
    ld e, l
    rst $38
    rst $10
    rst $38
    and $ff
    ld c, [hl]
    rst $38
    ld e, h
    rst $38
    ld d, h
    rst $38
    ld e, h
    rst $38
    ld l, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld a, l
    rst $38
    ld e, [hl]
    rst $38
    ld d, [hl]
    rst $38
    ld c, d
    rst $38
    ld l, b
    rst $38
    ld l, [hl]
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ccf
    rst $38
    ld a, a

jr_08e_6df3:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, d
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld hl, $50ff
    rst $38
    jr nc, @+$01

    ld h, b

jr_08e_6e09:
    rst $38
    ld a, [c]
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, jr_08e_6df3

    inc d
    ei
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @-$1f

    nop
    rst $38
    add hl, bc
    rst $38
    jr z, @-$1f

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$28ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$28ff], sp
    rst $18
    jr c, jr_08e_6e09

    ld [$0cff], sp
    rst $38
    ld a, [de]
    rst $28
    jr @-$0f

    inc e
    rst $28
    ld e, $ef
    dec e
    rst $28
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, [hl]
    rst $38
    add $ff
    ld c, [hl]
    rst $30
    ld c, $f7
    ld c, a
    rst $30
    ld b, d
    rst $38
    add e
    rst $38
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    cp a
    rra
    sbc a
    rra
    sbc a
    ld bc, $00df
    rst $08
    nop
    rst $08
    nop
    rst $28
    add b
    ld h, a
    nop
    rst $30
    add b
    di
    add b
    di
    call nz, $c6bb
    cp c
    add $b9
    ld b, e
    cp h
    inc bc
    db $fc
    inc hl
    rst $18
    ld [hl+], a
    sbc a
    ld [bc], a
    adc a
    adc a
    adc a
    ccf
    cp a
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc

jr_08e_6eab:
    rst $38
    inc bc
    rst $38
    ld bc, $50ff
    rst $30
    jr jr_08e_6eab

    sbc b
    rst $30
    ld e, b
    rst $30
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    jr z, @+$01

    ld [$00ff], sp
    rst $38
    ld c, b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    sub c
    rst $38
    ld d, b
    rst $38
    ld c, e
    db $fd
    ret nc

    rst $38
    sub b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ret


    cp $88
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    call nc, $c0ff
    rst $38
    ld d, h
    rst $38
    ld d, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, e
    cp $61
    cp $50
    rst $38
    ld b, l
    cp $70
    rst $38
    ld [hl], b
    rst $38
    ld l, h
    rst $38
    ld [hl], h
    rst $38
    or c
    rst $38
    add hl, hl
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl+]
    rst $38
    daa
    rst $38
    daa
    rst $38
    dec [hl]
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    ld d, [hl]
    rst $38
    ld e, a
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    ld a, h
    rst $38
    ld e, h
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    ld e, a
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld l, a
    rst $38
    add hl, hl
    rst $38
    cp c
    rst $38
    reti


    rst $38
    add hl, sp
    rst $38
    inc e
    rst $38
    dec de
    rst $38
    adc h
    rst $38
    ld c, h
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld [$8cff], sp
    rst $38
    xor h
    rst $38
    or h
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    or [hl]
    rst $38
    and [hl]
    rst $38
    inc h
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    ret nz

    add b
    inc a
    ret nz

    inc bc
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop

jr_08e_6fa7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc d
    add sp, $1e
    ldh [rNR23], a
    db $e4
    sbc d
    db $e4
    inc de
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    add hl, bc
    db $e4
    jr jr_08e_6fa7

    ld a, [bc]
    push af
    dec de
    db $e4
    ld a, [de]
    push hl
    dec e
    ld [c], a
    dec b
    ld a, [c]
    ld bc, $05f6
    ld a, [c]
    dec c
    ld a, [c]
    rrca
    ld a, [c]
    dec c
    ld a, [c]
    inc c
    di
    rrca
    ld a, [c]
    inc c
    di
    ld b, $f9
    inc b
    ei
    inc b
    ei
    ld b, $f9
    ld b, c
    ei
    adc [hl]
    ld sp, hl
    add a
    ld sp, hl
    ld c, d
    cp l
    ld [bc], a
    db $fd
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ld a, [hl+]
    db $dd
    ld [de], a
    db $fd
    ld a, [de]
    push af
    ld c, $f1
    dec b
    ld a, [$d827]
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$2d
    jp nc, $d22d

    rla
    add sp, $16
    jp hl


    rrca
    ldh a, [rNR13]
    db $ec
    dec b
    ld a, [$e817]
    ld b, $f9
    ld b, $f9
    inc b
    ld sp, hl
    ld h, $f9
    ld [hl], $e9
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    dec bc
    db $f4
    ld a, [de]
    push af
    ld [bc], a
    db $fd
    inc bc
    db $fc
    dec bc
    db $f4
    inc bc
    db $fc
    ld b, e
    db $fc
    ld d, e
    db $fc
    inc bc
    db $fc
    ld d, c
    cp $f3
    db $fc
    ldh [rIE], a
    add c
    cp $41
    cp $88
    rst $38
    add c
    cp $c1
    cp $c1
    cp $c1
    cp $81
    cp $40
    rst $38
    ld b, b
    ld b, b
    ld e, b
    ld d, b
    jr nz, jr_08e_7076

    sub b
    sub a
    db $10
    rla

jr_08e_705a:
    jr nc, jr_08e_7093

    jr nc, jr_08e_7095

    jr nc, jr_08e_7097

    db $10
    rla
    jr nc, jr_08e_709b

    ld d, b
    ld d, a
    ld d, b
    ld d, a
    add b
    add e
    or b
    or e
    ld b, b
    ld b, e
    ret c

    db $db
    nop
    inc bc
    ld bc, $ff00
    nop

jr_08e_7076:
    nop
    rst $38
    rrca
    rst $38
    ret nz

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
    db $fd
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38

jr_08e_7090:
    nop
    rst $38
    nop

jr_08e_7093:
    rst $38
    nop

jr_08e_7095:
    rst $38
    nop

jr_08e_7097:
    rst $38

jr_08e_7098:
    nop

jr_08e_7099:
    rra
    rst $38

jr_08e_709b:
    rst $38

jr_08e_709c:
    nop
    rst $38
    nop
    rst $38
    ld l, e
    add h
    ld c, b
    and a
    ld a, b
    add a
    ld a, e
    add h
    ld a, e
    add h
    inc a
    jp $e013


    cp a
    ld b, b
    or l
    ld b, d
    scf
    ld b, b
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc e
    ld b, h
    xor c
    ld b, b
    ld sp, $cf48
    jr nc, jr_08e_7098

    ld a, [hl+]
    rst $18
    jr nz, jr_08e_7090

    ld [hl-], a
    ret c

    inc hl
    adc a

jr_08e_70cb:
    jr nz, jr_08e_709c

    jr nz, jr_08e_7099

    jr nz, jr_08e_705a

    ld [hl+], a
    pop de
    ld [hl+], a
    push af
    ld [bc], a
    add sp, $13
    ld l, b
    sub e
    add sp, $13
    ld c, d
    sub c
    ld a, [hl+]
    pop de
    ld a, d
    sub c
    ld l, e
    sub b
    ld a, [hl+]
    pop de
    add hl, hl
    ret nc

    dec hl
    ret nc

    rst $10
    xor b
    ld h, [hl]
    sbc c
    dec [hl]
    jp z, $ea15

    or [hl]
    ret


    scf
    ret z

    ld [hl], $c9
    inc d
    jp hl


    ld [hl], $c9
    jr nc, jr_08e_70cb

    pop af
    ld c, h
    ld l, b
    push de
    ld l, b
    push de
    adc b
    ld [hl], l
    ld [$88f5], sp
    ld [hl], l
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $61
    cp [hl]
    and b
    ld a, a
    add l
    ld a, d
    call nc, $852b
    ld a, d
    add c
    ld a, [hl]
    nop
    cp $01
    cp $51
    cp [hl]
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
    cp a
    dec c
    rst $38
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    ld b, $f9
    ld b, $f9
    ld b, $f9
    push bc
    ld a, d
    jp nz, $c0fa

    ld a, [$fde0]
    ret nz

    db $fd
    ld h, d
    ld sp, hl
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, b
    add b
    ld a, b
    add b
    ld [$00f0], sp
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
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    add b
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
    ld b, $07
    ld [$0a09], sp
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
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_08e_71dd

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    add hl, de
    add hl, de
    dec h
    ld h, $27
    ld [$2928], sp
    ld a, [hl+]
    dec hl

jr_08e_71dd:
    inc l
    nop
    nop
    dec l
    ld l, $2f
    add hl, de
    jr nc, jr_08e_7217

    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08e_7228

    nop
    ld a, [hl-]
    dec sp
    add hl, de
    add hl, de
    inc a
    dec a
    ld a, $32
    ld [hl-], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    add hl, de
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld [hl-], a
    ld [hl-], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add hl, de
    ld d, h
    ld d, l
    nop
    nop

jr_08e_7217:
    nop
    ld d, [hl]
    ld [hl-], a
    ld c, $57
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    add hl, de
    ld e, [hl]
    ld e, a
    nop
    nop
    nop

jr_08e_7228:
    nop
    ld h, b
    ld h, c
    ld h, d
    add hl, de
    add hl, de
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    add hl, de
    add hl, de
    ld l, h
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], d
    add hl, de
    add hl, de
    ld [hl], e
    nop
    nop
    ld [hl], h
    ld [hl], l
    ld [hl-], a
    halt
    nop
    nop
    nop
    ld [hl], a
    ld a, b
    ld d, e
    add hl, de
    add hl, de
    ld a, c
    nop
    nop
    ld [hl-], a
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    add hl, de
    add hl, de
    add hl, de
    add c
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    add d
    add e
    add h
    add l
    nop
    add [hl]
    add a
    add hl, de
    add hl, de
    add hl, de
    adc b
    nop
    nop
    nop
    adc c
    ld [hl-], a
    adc d
    adc e
    ld c, $8c
    adc l
    adc [hl]
    adc a
    add hl, de
    add hl, de
    add hl, de
    sub b
    nop
    nop
    nop
    sub c
    sub d
    ld [hl-], a
    sub e
    sub h
    ld [hl-], a
    sub l
    sub [hl]
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    sub a
    nop
    nop
    sbc b
    sbc c
    sbc d
    ld sp, $9b32
    sbc h
    adc d
    sbc l
    add hl, de
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
    ld [hl-], a
    ld [hl-], a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    add hl, de
    add hl, de
    add hl, de
    or b
    or c
    or d
    or e
    ld [hl-], a
    or h
    or l
    ld [hl-], a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    jr nz, jr_08e_73e4

jr_08e_73e4:
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
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    dec b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    dec b
    nop
    ld bc, $0001
    nop
    nop
    inc b
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    call nc, $e000
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
    ret nc

    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    add sp, $00
    db $f4
    nop
    or $00
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    stop
    add hl, de
    ld bc, $0767
    add e
    inc bc
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
    inc bc
    nop
    rrca
    nop
    rla
    nop
    ld b, h
    nop
    ld b, b
    nop
    ret nc

    nop
    ldh a, [rP1]
    add sp, $00
    ld hl, sp+$00
    ld a, [$fa00]
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    ld bc, $01fe
    cp $00
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
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
    ret nz

    nop
    nop
    nop
    ld bc, $0f01
    rrca
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0100
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    ld sp, hl
    nop
    and $00
    jr c, jr_08e_7544

jr_08e_7544:
    pop bc
    nop
    rra
    nop
    inc a
    nop
    db $d3
    nop
    inc e
    nop
    jr nz, jr_08e_7550

jr_08e_7550:
    nop
    nop
    dec b
    nop
    add h
    nop
    ld bc, $8000
    nop
    jr nz, jr_08e_755c

jr_08e_755c:
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc b
    rst $38
    adc b
    ld sp, hl
    sub b
    pop af
    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld a, b
    ld a, [hl]
    ld a, a
    ccf
    ccf
    inc a
    ccf
    inc d
    rra
    ld [de], a
    sbc a
    ld [bc], a
    sbc a
    ld bc, $00df
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    ld bc, $0f01
    rrca
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
    rst $38
    ld a, a
    cp $3f
    db $fc
    rra
    ld h, b
    rra
    sub b
    rrca
    jr @+$09

    ldh a, [rTAC]
    db $ec
    inc bc
    ld [hl-], a
    ld bc, $00c3
    ld b, $00
    inc l
    nop
    inc sp
    nop
    call nz, Call_000_2800
    nop
    add b
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
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    add b
    xor b
    ld d, b
    db $ec
    db $10
    cp h
    ld b, b
    or [hl]
    ret z

    ld a, [$ddc5]
    ld [c], a
    ei
    ld h, h
    db $fd
    ld [hl], d
    cp $71
    ld a, [hl]
    cp c
    ld a, l
    sbc d
    cp l
    ld e, d
    sbc $29
    db $db
    inc h
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$06f9], sp
    ld sp, hl
    ld b, $fd
    ld [bc], a
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
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR23], a
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
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
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    db $10
    rlca
    ld b, b
    inc bc
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
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld e, $00
    cp l
    nop
    ld [hl], a
    add b
    db $dd
    nop
    sub $20
    ld l, e
    sub b
    ld h, h
    sub b
    or e
    ld c, b
    sub $28
    ld l, [hl]
    sub b
    jp hl


    ld d, $67
    sbc b
    cp d
    ld b, l
    ld l, d
    sub l
    ld h, l
    sbc d
    ld [hl], d
    adc l
    or c
    ld c, [hl]
    sbc d
    ld h, l
    dec [hl]
    jp z, Jump_08e_4db2

    sbc c
    ld h, [hl]
    swap h
    jp hl


    ld d, $e4
    dec de
    ld a, [c]
    dec c
    ld hl, sp+$07
    ld sp, hl
    ld b, $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    ld e, l
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc b
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
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
    rst $38
    rst $38
    db $fc
    rst $38
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
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    ld [bc], a
    ld bc, $0118
    ld h, l
    nop
    sub e
    nop
    ld c, a
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
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    xor $00
    or e
    nop
    ld h, a
    nop
    sbc a
    nop
    cp a
    nop
    ld a, [hl]
    add c
    cp d
    ld b, l
    ld e, e
    and h
    ld h, a
    sbc b
    xor d
    ld d, l
    and h
    ld e, e
    ld h, $d9
    inc b
    ei
    ld b, $f9
    ld d, $e9
    add h
    ld a, e
    ld b, [hl]
    cp c
    ld b, $f9
    ld h, $d9
    adc [hl]
    ld [hl], c
    ld b, a
    cp b

jr_08e_779e:
    ld c, $f1
    daa
    ret c

    add e
    ld a, h
    db $d3
    inc l
    jp $e73c


    jr jr_08e_779e

    inc c
    di
    inc c
    ei
    inc b
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    cp $f0
    ld hl, sp+$00
    ret nz

    nop
    nop
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    di
    nop
    rst $08
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    inc bc
    pop af
    ld c, $cf
    jr nc, jr_08e_788a

    and d
    cp b
    ld b, a
    ldh [$1f], a
    jp $073c


    ld hl, sp+$17
    rst $28
    ccf
    rst $38
    ccf
    rst $38
    rra
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
    adc a
    ld a, a
    rrca
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    pop hl
    rra
    rst $38
    nop
    rst $38
    nop
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add a
    rst $38
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_08e_788a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38

jr_08e_78b5:
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

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_08e_78d3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    add b
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    sub b
    ld l, a
    jr nc, jr_08e_78b5

    ldh [$1f], a
    ret nz

    ld a, $06
    ld sp, hl
    dec c
    ld a, [c]
    ld [hl-], a
    call Call_000_17e8
    jr nz, jr_08e_78d3

    ld b, b
    cp a
    nop
    rst $38
    add b
    rst $38
    ret nz

    cp [hl]
    push bc
    cp e
    db $e3
    sub a
    db $fc
    adc a
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [$8f]
    pop af
    adc a
    ld a, [c]
    adc a
    ldh a, [$cf]
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $03fc


    cp $01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld hl, sp-$07
    inc bc
    inc bc
    rra
    rra
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
    inc bc
    db $fc
    rrca
    ldh a, [$7f]
    add b
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
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
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
    add b
    nop
    ret nz

    ld bc, $07e1
    rst $30
    rrca
    rst $38
    cpl
    rst $18
    sbc a
    ld a, a
    ld l, a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    and a
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
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh a, [rIE]
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
    ld bc, $0ffe
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
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    ld bc, $0701
    rlca
    rrca
    rrca
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
    cp $ff
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
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
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
    rlca
    ld hl, sp+$1f
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
    db $fc
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
    ld bc, $0701
    rlca
    rrca
    rrca
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
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    add c
    nop
    ret nz

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
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
    ld bc, $0301
    inc bc
    rrca
    rrca
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
    rst $38
    cp $ff
    ld hl, sp-$01
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    cp $80
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0301
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
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
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $c000
    nop
    ldh [rP1], a
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add b

Call_08e_7c03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
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
    db $fc
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    add b
    nop
    ret nz

    nop
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
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
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
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
    add a
    add b
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, e
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
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
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
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
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
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add b
    ccf
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, $ff
    add b
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    ld [bc], a
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
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
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
    cp $ff
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
    ld bc, $c03f
    sbc a
    ldh [$8f], a
    ldh a, [$c7]
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    rst $28
    cp $ff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    inc bc
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
    rrca
    nop
    rlca
    nop
    ld bc, $8000
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    add a
    add a
    inc bc
    inc bc
    nop
    add b
    nop
    ret nz

    add b
    ldh [$c0], a
    ld hl, sp-$20
    db $fc
    ldh a, [$fe]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$c7]
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $ff
    ld hl, sp-$01
    db $fc
    ld a, a
    cp $7f
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld hl, sp-$19
    db $fc
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]

jr_08e_7ed9:
    ldh a, [rIE]
    ld hl, sp+$7f
    ld a, b
    ccf
    jr c, jr_08e_7ed9

    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fc
    add b
    ld hl, sp-$40
    ld hl, sp-$20
    ld hl, sp-$10
    ei
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
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
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$1d
    db $fc
    ldh a, [$fe]
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
    nop
    rst $38
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
    rrca
    nop
    rlca
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
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
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    ldh a, [$80]
    ld hl, sp-$40
    db $fc
    rrca
    ldh a, [rTAC]
    ld hl, sp-$7d
    db $fc
    pop bc
    cp $e0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0b
    inc c
    dec c
    ld c, $0f
